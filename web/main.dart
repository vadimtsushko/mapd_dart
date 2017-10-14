import 'package:mapd_connector/browser.dart';
import 'dart:html';
import 'package:mapd_connector/src/connector/example_scipt.dart';
//import 'package:thrift/thrift.dart';
//import '../mapd.dart';
//import 'dart:io';
main () async {
  var connector = new MapdConnectorBrowser();
  runExample(connector);

}