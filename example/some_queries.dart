import 'package:mapd/src/sample_script/sample_script.dart';
import 'package:mapd/console.dart';
main() async {

//  TProtocol protocol = new TProtocol(transport)
  var connector = new MapdConnectorConsole()
    ..url = 'http:/localhost:9092'
    ..dbName = 'mapd'
    ..user = 'mapd'
    ..password = 'HyperInteractive';

  var proxyConnector = new MapdConnectorConsole();
  runExample(connector, proxyConnector);

//  connector.connect('mapd', 'mapd', 'HyperInteractive');
}
