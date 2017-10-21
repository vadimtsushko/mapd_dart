import 'connector.dart';
import '../driver.dart';
import 'package:mapd/src/thrift/thrift.dart';
import 'package:mapd/src/thrift/src/console/t_tcp_socket.dart';
import 'dart:async';
import 'dart:io';



class MapdConnectorBinary extends MapdConnector {
  RawSynchronousSocket socket;
  initTransport() async {
//    var uri = Uri.parse(url);
//    socket = RawSynchronousSocket.connectSync(uri.host, uri.port);
//
//    var tsocket = new TTcpSocket(socket);
//    var factory = new TBinaryProtocolFactory();
//    transport = new TClientSocketTransport(tsocket);
//    var protocol = new TBinaryProtocol(transport);
//    await transport.open();
//    client = new MapDClient(protocol);
  }
  disconnect() async {
    await super.disconnect();
    await socket.shutdown(SocketDirection.BOTH);
  }

}

