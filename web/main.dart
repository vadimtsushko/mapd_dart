import 'package:mapd/browser.dart';
import 'dart:html';
import 'package:mapd/src/sample_script/sample_script.dart';

//import 'package:mapd/src/thrift/thrift.dart';
//import '../driver.dart';
//import 'dart:io';
main() async {
  var connector = new MapdConnectorBrowser()
    ..url = 'http://18.194.148.181:9090'
    ..dbName = 'mapd'
    ..user = 'mapd'
    ..password = 'HyperInteractive';

  runExample(connector);
}
