import 'package:mapd/src/sample_script/sample_script.dart';
import 'package:mapd/console.dart';
main() async {

//  TProtocol protocol = new TProtocol(transport)
  var connector = new MapdConnectorConsole()
    ..url = 'http://dev.infovizion.ru:9092'
    ..dbName = 'mapd'
    ..user = 'mapd'
    ..password = 'HyperInteractive';
  var query = '''
  SELECT
 itemName,
 (-sum(case when documentType = 'Sales' then measure2 else 0 end))*30 as SalesAmount
     FROM main_data
        JOIN invent_table ON main_data.itemKey = invent_table.itemKey
        WHERE documentType = 'Sales'
            GROUP BY itemName
            ORDER BY SalesAmount desc
  ''';
  await connector.connect();
  var result = await connector.query(query,offset: 1000, logTiming: true);

  print(result.first);
  connector.disconnect();

//  connector.connect('mapd', 'mapd', 'HyperInteractive');
}
