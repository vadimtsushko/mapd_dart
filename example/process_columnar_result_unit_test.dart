import 'package:test/test.dart';
import 'package:thrift/thrift.dart';

main() {
  test('should process columnar results', () {
    final data = {
      "row_desc": [
        {
          "col_name": "val",
          "col_type": {
            "type": 1,
            "encoding": 0,
            "nullable": true,
            "is_array": false
          }
        }
      ],
      "rows": [],
      "columns": [
        {
          "data": {
            "int_col": [7009728],
            "real_col": [],
            "str_col": [],
            "arr_col": []
          },
          "nulls": [false]
        }
      ],
      "is_columnar": true
    };
  });
}
