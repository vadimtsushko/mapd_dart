import 'package:mapd/browser.dart';
import 'dart:html';
import 'package:mapd/src/connector/example_scipt.dart';
//import 'package:mapd/src/thrift/thrift.dart';
//import '../driver.dart';
//import 'dart:io';
main () async {
  var connector = new MapdConnectorBrowser();
  runExample(connector);

}