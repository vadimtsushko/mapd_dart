import 'connector.dart';
import '../mapd.dart';
import 'package:thrift/thrift.dart';
import 'dart:async';
import 'package:http/browser_client.dart';

class MapdConnectorBrowser extends MapdConnector {
  initTransport() async {
    transport = new THttpClientTransport(
        new BrowserClient(), new THttpConfig(Uri.parse(url), {}));
    await transport.open();
    var protocol = new TJsonProtocol(transport);
    client = new MapDClient(protocol);
  }
}
