import 'package:mapd_connector/console.dart';
import 'package:logging_handlers/logging_handlers_shared.dart';
import 'package:mapd_connector/src/connector/example_scipt.dart';
main() async {
  startQuickLogging();
//  TProtocol protocol = new TProtocol(transport)
  var connector = new MapdConnectorConsole();
  runExample(connector);

//  connector.connect('mapd', 'mapd', 'HyperInteractive');
}
