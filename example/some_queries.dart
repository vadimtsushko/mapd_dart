import 'package:mapd/console.dart';
import 'package:logging_handlers/logging_handlers_shared.dart';
import 'package:mapd/src/connector/example_scipt.dart';
main() async {
  startQuickLogging();
//  TProtocol protocol = new TProtocol(transport)
  var connector = new MapdConnectorConsole();
  runExample(connector);

//  connector.connect('mapd', 'mapd', 'HyperInteractive');
}
