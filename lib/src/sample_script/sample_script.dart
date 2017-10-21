import 'package:mapd/common.dart';

runExample(MapdConnector connector) async {
  if (!await connector.connect()) {
    throw new Exception('Error connecting to MapD');
  }
  var version = await connector.getVersion();
  print('Version: $version');

  var status = await connector.getServerStatus();
  print('Server status: $status');


  for (var each in await connector.getMemory('GPU')) {
    print('  =>  max_num_pages: ${each.max_num_pages},num_pages_allocated: ${each.num_pages_allocated},page_size: ${each.page_size} ');
  }

  /////// Currently breaks with error message:  Invalid method name: 'get_memory_summary'
  //  var memorySummary = await connector.getMemorySummary();
  //  print('Memory summary: $memorySummary');

  //  var memoryGPU = await connector.getMemoryGPU();
  //  print('Memory GPU: $memoryGPU');

//  print(await connector.getMemoryCPU());

  var tables = await connector.getTables();
  print('Tables: $tables');

  var fields = await connector.getFields('flights_2008_7M');
  print('Fields for "flights_2008_7M" table');
  for (var each in fields) {
    print('   col_name: ${each.col_name}, col_type: ${each.col_type}');
  }

  const query =
      "SELECT carrier_name as key0, AVG(airtime) AS val FROM flights_2008_7M WHERE airtime IS NOT NULL GROUP BY key0 ORDER BY val DESC LIMIT 100";

  var success = await connector.validateQuery(query);

  print('Validation result: $success');
  try {
    var fail = await connector.validateQuery(
        "SELECT carrier_name as key0, AVG(airtime32124) AS val FROM flights_2008_7M WHERE airtime IS NOT NULL GROUP BY key0 ORDER BY val DESC LIMIT 100");
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
