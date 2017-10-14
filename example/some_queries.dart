import 'package:mapd/console.dart';
import 'package:logging_handlers/logging_handlers_shared.dart';
import 'package:mapd/src/connector/example_scipt.dart';
main() async {

//  TProtocol protocol = new TProtocol(transport)
  var connector = new MapdConnectorConsole()
    ..url = 'http://18.194.148.181:9090'
    ..dbName = 'mapd'
    ..user = 'mapd'
    ..password = 'HyperInteractive';


  runExample(connector);

//  connector.connect('mapd', 'mapd', 'HyperInteractive');
}
