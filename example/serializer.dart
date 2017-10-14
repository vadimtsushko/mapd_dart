import 'package:mapd/src/thrift/thrift.dart';
import 'package:mapd/console.dart';
import 'dart:convert';
main() {
  var deserializer = new TDeserializer();
  var serializer = new TSerializer();
  serializer.protocol = new TJsonProtocol(serializer.transport);
  deserializer.protocol = new TJsonProtocol(deserializer.transport);
  var source = new TQueryResult();
  source.row_set = new TRowSet();
  source.row_set.row_desc = [];
  source.row_set.row_desc.add(new TColumnType()..col_name = 'Test');
  var s = serializer.writeString(source);

  print(s);

//  var result = new TQueryResult();
//  final data = {
//    "row_desc": [
//      {
//        "col_name": "val",
//        "col_type": {
//          "type": 1,
//          "encoding": 0,
//          "nullable": true,
//          "is_array": false
//        }
//      }
//    ],
//    "rows": [],
//    "columns": [
//      {
//        "data": {
//          "int_col": [7009728],
//          "real_col": [],
//          "str_col": [],
//          "arr_col": []
//        },
//        "nulls": [false]
//      }
//    ],
//    "is_columnar": true
//  };
// deserializer.readString(result , JSON.encode(data));
// print(result);
}