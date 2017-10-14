import '../mapd.dart';
import 'package:thrift/thrift.dart';
import 'dart:async';
import 'package:logging/logging.dart';

class _FieldMiniDesc {
  final String name;
  final int type;
  final bool isArray;
  _FieldMiniDesc(this.name, this.type, this.isArray);
}

List<Map<String, dynamic>> processRowResults(
    TQueryResult data, bool eliminateNullRows) {
  final numCols = data.row_set.row_desc.length;
  List<_FieldMiniDesc> fields = <_FieldMiniDesc>[];
  for (var each in data.row_set.row_desc) {
    fields.add(new _FieldMiniDesc(
        each.col_name, each.col_type.type, each.col_type.is_array));
  }
  var result = new List<Map<String, dynamic>>();
  int numRows = data.row_set.rows?.length ?? 0;
//  if (typeof data.rows !== "undefined" && data.rows !== null) {
//    numRows = data.rows.length // so won't throw if data.rows is missing
//  }
  for (int r = 0; r < numRows; r++) {
    var row = <String, dynamic>{};
    for (int c = 0; c < numCols; c++) {
      final fieldName = fields[c].name;
      final fieldType = fields[c].type;
      final fieldIsArray = fields[c].isArray;

      if (fieldIsArray) {
        if (data.row_set.rows[r].cols[c].is_null) {
          row[fieldName] = null;
          continue; // eslint-disable-line no-continue
        }
        var fieldArrayData = [];
        row[fieldName] = fieldArrayData;
        final arrayNumElems = data.row_set.rows[r].cols[c].val.arr_val.length;
        for (int e = 0; e < arrayNumElems; e++) {
          final elemDatum = data.row_set.rows[r].cols[c].val.arr_val[e];
          if (elemDatum.is_null) {
            fieldArrayData.add(null);
            continue;
          }
          switch (fieldType) {
            case TDatumType.BOOL:
              row[fieldName] = elemDatum.val.int_val == 1;
              break;
            case TDatumType.SMALLINT:
            case TDatumType.INT:
            case TDatumType.BIGINT:
              row[fieldName] = elemDatum.val.int_val;
              break;
            case TDatumType.FLOAT:
            case TDatumType.DOUBLE:
            case TDatumType.DECIMAL:
              row[fieldName] = elemDatum.val.real_val;
              break;
            case TDatumType.STR:
              row[fieldName] = elemDatum.val.str_val;
              break;
            case TDatumType.TIME:
            case TDatumType.TIMESTAMP:
            case TDatumType.DATE:
              row[fieldName] = new DateTime.fromMicrosecondsSinceEpoch(elemDatum
                  .val.int_val); // eslint-disable-line no-magic-numbers
              break;
            default:
              break;
          }
        }
      } else {
        final scalarDatum = data.row_set.rows[r].cols[c];
        if (scalarDatum.is_null) {
          row[fieldName] = null;
          continue; // eslint-disable-line no-continue
        }

        switch (fieldType) {
          case TDatumType.BOOL:
            row[fieldName] = scalarDatum.val.int_val == 1;
            break;
          case TDatumType.SMALLINT:
          case TDatumType.INT:
          case TDatumType.BIGINT:
            row[fieldName] = scalarDatum.val.int_val;
            break;
          case TDatumType.FLOAT:
          case TDatumType.DOUBLE:
          case TDatumType.DECIMAL:
            row[fieldName] = scalarDatum.val.real_val;
            break;
          case TDatumType.STR:
            row[fieldName] = scalarDatum.val.str_val;
            break;
          case TDatumType.TIME:
          case TDatumType.TIMESTAMP:
          case TDatumType.DATE:
            row[fieldName] = new DateTime.fromMicrosecondsSinceEpoch(scalarDatum
                .val.int_val); // eslint-disable-line no-magic-numbers
            break;
          default:
            break;
        }
      }
    }
    result.add(row);
  }
  return result;
}

List<Map<String, dynamic>> processColumnarResults(
    TQueryResult data, bool eliminateNullRows) {
  final numCols = data.row_set.row_desc.length;
  List<_FieldMiniDesc> fields = <_FieldMiniDesc>[];
  for (var each in data.row_set.row_desc) {
    fields.add(new _FieldMiniDesc(
        each.col_name, each.col_type.type, each.col_type.is_array));
  }
  var result = new List<Map<String, dynamic>>();
  int numRows = data.row_set.columns[0].nulls.length;
//  if (typeof data.rows !== "undefined" && data.rows !== null) {
//    numRows = data.rows.length // so won't throw if data.rows is missing
//  }
  for (int r = 0; r < numRows; r++) {
    var row = <String, dynamic>{};
    for (int c = 0; c < numCols; c++) {
      final fieldName = fields[c].name;
      final fieldType = fields[c].type;
      final fieldIsArray = fields[c].isArray;
      final isNull = data.row_set.columns[c].nulls[r];
      if (isNull) {
        row[fieldName] = null;
        continue; // eslint-disable-line no-continue
      }

      if (fieldIsArray) {
        var fieldArrayData = [];
        row[fieldName] = fieldArrayData;
        final arrayNumElems =
            data.row_set.columns[c].data.arr_col[r].data.arr_col.length;
        for (int e = 0; e < arrayNumElems; e++) {
          if (data.row_set.columns[c].data.arr_col[r].nulls[e]) {
            fieldArrayData.add(null);
            continue;
          }
          final elemDatum =
              data.row_set.columns[c].data.arr_col[r].data.arr_col[e].data;
          switch (fieldType) {
            case TDatumType.BOOL:
              row[fieldName] = elemDatum.int_col[e] == 1;
              break;
            case TDatumType.SMALLINT:
            case TDatumType.INT:
            case TDatumType.BIGINT:
              row[fieldName] = elemDatum.int_col[e];
              break;
            case TDatumType.FLOAT:
            case TDatumType.DOUBLE:
            case TDatumType.DECIMAL:
              row[fieldName] = elemDatum.real_col[e];
              break;
            case TDatumType.STR:
              row[fieldName] = elemDatum.real_col[e];
              break;
            case TDatumType.TIME:
            case TDatumType.TIMESTAMP:
            case TDatumType.DATE:
              row[fieldName] = new DateTime.fromMicrosecondsSinceEpoch(
                  elemDatum.int_col[e]); // eslint-disable-line no-magic-numbers
              break;
            default:
              break;
          }
        }
      } else {
        final columnData = data.row_set.columns[c].data;

        switch (fieldType) {
          case TDatumType.BOOL:
            row[fieldName] = columnData.int_col[r] == 1;
            break;
          case TDatumType.SMALLINT:
          case TDatumType.INT:
          case TDatumType.BIGINT:
            row[fieldName] = columnData.int_col[r];
            break;
          case TDatumType.FLOAT:
          case TDatumType.DOUBLE:
          case TDatumType.DECIMAL:
            row[fieldName] = columnData.real_col[r];
            break;
          case TDatumType.STR:
            row[fieldName] = columnData.str_col[r];
            break;
          case TDatumType.TIME:
          case TDatumType.TIMESTAMP:
          case TDatumType.DATE:
            row[fieldName] =
                new DateTime.fromMicrosecondsSinceEpoch(columnData.int_col[r]);
            break;
          default:
            break;
        }
      }
    }
    result.add(row);
  }
  return result;
}
