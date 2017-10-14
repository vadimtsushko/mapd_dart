import 'connector.dart';

runExample(MapdConnector connector) async {

  if (!await connector.connect()) {
    print('Error connecting to MapD');
    return;
  }
  var version = await connector.getVersion();
  print('Version: $version');

  var status = await connector.getServerStatus();
  print('Server status: $status');

//  var memorySummary = await connector.getMemorySummary();
//  print('Memory summary: $memorySummary');

//  var memoryGPU = await connector.getMemoryGPU();
//  print('Memory GPU: $memoryGPU');

  var tables = await connector.getTables();
  print('Tables: $tables');

  var fields = await connector.getFields('flights_2008_10k');
  print('Fields for "tweets_nov_feb" table');
  for (var each in fields) {
    print('   col_name: ${each.col_name}, col_type: ${each.col_type}');
  }


  const query = "SELECT carrier_name as key0, AVG(airtime) AS val FROM flights_2008_10k WHERE airtime IS NOT NULL GROUP BY key0 ORDER BY val DESC LIMIT 100";

  var success = await connector.validateQuery(query);

  print('Validation result: $success');
  try {
    var fail = await connector.validateQuery(
        "SELECT carrier_name as key0, AVG(airtime32124) AS val FROM flights_2008_10k WHERE airtime IS NOT NULL GROUP BY key0 ORDER BY val DESC LIMIT 100");
    print('Validation result 2: $fail');
  } catch (e) {
    print(e);
  }

  var queryResult = await connector.query(query);
  print('Query: $query');
  print('Query result:');
  for (var each in queryResult) {
    print('    $each');
  }

  await connector.disconnect();
}
