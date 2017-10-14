import 'connector.dart';
import '../driver.dart';
import 'package:mapd/src/thrift/thrift.dart';
import 'dart:async';
import 'package:http/http.dart';

class MapdConnectorConsole extends MapdConnector {
  initTransport() async {
    transport = new THttpClientTransport(
        new IOClient(), new THttpConfig(Uri.parse(url), {}));
    await transport.open();
    var protocol = new TJsonProtocol(transport);
    client = new MapDClient(protocol);
  }
}
