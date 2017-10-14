import '../mapd.dart';
import 'package:thrift/thrift.dart';
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

  Future<TServerStatus> getServerStatus() async {
    checkConnection();
    return client.get_server_status(session);
  }


/////////// Похоже эти методы не поддерживаются, а жаль
  Future<TMemorySummary> getMemorySummary() async {
    checkConnection();
    return client.get_memory_summary(session);
  }

  Future<String> getMemoryGPU() async {
    checkConnection();
    return client.get_memory_gpu(session);
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

  query(String query, {bool columnFormat: true, int limit: -1, bool eliminateNullRows: false}) async {
    checkConnection();
    var data = await client.sql_execute(
        session, query, columnFormat, _getNonce(), limit);
    if (columnFormat) {
      return processColumnarResults(data, eliminateNullRows);
    } else {
      return processRowResults(data, eliminateNullRows);
    }

  }
}
