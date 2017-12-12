import '../driver.dart';
import 'package:mapd/src/thrift/thrift.dart';
import 'dart:async';
import 'package:logging/logging.dart';
import 'query_result_processing.dart';

class MapdConnector {
  String url;
  String dbName;
  String user;
  String session;
  int _nonce = 0;
  _getNonce() => (++_nonce).toString();
  TTransport transport;
  final logger = new Logger('MapdConnector');
  String password;
  TProtocol _protocol;
  MapDClient client;
  MapdConnector({this.url, this.dbName, this.user, this.password});
  initTransport() async {
    throw new UnimplementedError();
  }

  Future<bool> connect() async {
    if (user == null) {
      logger.severe("Please enter a username.");
      return false;
    } else if (password == null) {
      logger.severe("Please enter a password.");
      return false;
    } else if (dbName == null) {
      logger.severe("Please enter a database.");
      return false;
    } else if (url == null) {
      logger.severe("Please enter a url.");
      return false;
    }
    session = null;
    await initTransport();
    session = await client.connect(user, password, dbName);
    return true;
  }

  Future<bool> connectWithSession(String session) async {
    if (url == null) {
      logger.severe("Please enter a url.");
      return false;
    }
    this.session = session;
    await initTransport();
    return true;
  }

  disconnect() async {
    await client.disconnect(session);
    session = null;
    client = null;
    transport.close();
  }

  checkConnection() {
    if (client == null || session == null) {
      throw new Exception('Cannot run mapd command: invalid connection state');
    }
  }

  Future<String> getVersion() async {
    checkConnection();
    return client.get_version();
  }
//  loadTable(String tableName, List<TStringRow> rows) async {
//    checkConnection();
//    client.load_table(session, tableName, rows);
//    TColumn
//    client.load_table_binary_columnar(session, table_name, cols)
//    TRow;
//    client.load_table_binary(session, table_name, rows)
//  }

  Future loadTableColumnar(String tableName, List<TColumn> columns,
      {logTiming: false}) async {
    checkConnection();
    Stopwatch stopwatch;
    if (logTiming) {
      stopwatch = new Stopwatch();
      stopwatch.start();
    }
    await client.load_table_binary_columnar(session, tableName, columns);
    if (logTiming) {
      stopwatch.stop();
      var duration2 = stopwatch.elapsed;
      int count = columns.first.nulls.length;
      print(
          '-------------------------\n $count rows inserted. Browser execution time: ${duration2.inMilliseconds}');
      stopwatch.reset();
    }
  }

  Future<TServerStatus> getServerStatus() async {
    checkConnection();
    return client.get_server_status(session);
  }

///////////// Похоже эти методы не поддерживаются, а жаль
//  Future<TMemorySummary> getMemorySummary() async {
//    checkConnection();
//    return client.get_memory_summary(session);
//  }

//  Future<String> getMemoryGPU() async {
//    checkConnection();
//    return client.get_memory_gpu(session);
//  }
//
//  Future<String> getMemoryCPU() async {
//    checkConnection();
//    return client.get_memory_cpu(session);
//  }
  Future<List<TNodeMemoryInfo>> getMemory(String memoryLevel) async {
    checkConnection();
    return client.get_memory(session, memoryLevel);
  }

  Future<List<String>> getTables() async {
    checkConnection();
    return client.get_tables(session);
  }

  Future<List<TColumnType>> getFields(String tableName) async {
    checkConnection();
    var fields = await client.get_table_details(session, tableName);
    return fields?.row_desc;
  }

  Future<bool> validateQuery(String query) async {
    checkConnection();
    var res = await client.sql_validate(session, query);
    return res != null;
  }

  Future<List<Map<String, dynamic>>> query(String query,
      {bool columnFormat: true,
      int limit: -1,
      int offset: -1,
      bool eliminateNullRows: false,
      bool logTiming: false}) async {
    Stopwatch stopwatch;
    if (logTiming) {
      stopwatch = new Stopwatch();
      stopwatch.start();
    }
    checkConnection();
//    try {
    var data = await client.sql_execute(
        session, query, columnFormat, _getNonce(), offset, limit);

    List<Map<String, dynamic>> result;
    if (columnFormat) {
      result = processColumnarResults(data, eliminateNullRows);
    } else {
      result = processRowResults(data, eliminateNullRows);
    }
    if (logTiming) {
      stopwatch.stop();
      var duration2 = stopwatch.elapsed;
      print('----------------------------------\n'
          '${result
                .length} rows returned. Browser query time: ${duration2.inMilliseconds}, MapD execution_time_ms: ${data
                .execution_time_ms}, MapD total_time_ms: ${data
                .total_time_ms}\n--------\n$query');
      stopwatch.reset();
    }
    return result;
  }
}
