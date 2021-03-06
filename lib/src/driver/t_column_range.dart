/**
 * Autogenerated by Thrift Compiler (0.10.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library mapd.src.t_column_range;

import 'dart:typed_data' show Uint8List;
import 'package:mapd/src/thrift/thrift.dart';
import 'package:mapd/src/driver.dart';

class TColumnRange implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("TColumnRange");
  static final TField _TYPE_FIELD_DESC = new TField("type", TType.I32, 1);
  static final TField _COL_ID_FIELD_DESC = new TField("col_id", TType.I32, 2);
  static final TField _TABLE_ID_FIELD_DESC = new TField("table_id", TType.I32, 3);
  static final TField _HAS_NULLS_FIELD_DESC = new TField("has_nulls", TType.BOOL, 4);
  static final TField _INT_MIN_FIELD_DESC = new TField("int_min", TType.I64, 5);
  static final TField _INT_MAX_FIELD_DESC = new TField("int_max", TType.I64, 6);
  static final TField _BUCKET_FIELD_DESC = new TField("bucket", TType.I64, 7);
  static final TField _FP_MIN_FIELD_DESC = new TField("fp_min", TType.DOUBLE, 8);
  static final TField _FP_MAX_FIELD_DESC = new TField("fp_max", TType.DOUBLE, 9);

  int _type;
  static const int TYPE = 1;
  int _col_id = 0;
  static const int COL_ID = 2;
  int _table_id = 0;
  static const int TABLE_ID = 3;
  bool _has_nulls = false;
  static const int HAS_NULLS = 4;
  int _int_min = 0;
  static const int INT_MIN = 5;
  int _int_max = 0;
  static const int INT_MAX = 6;
  int _bucket = 0;
  static const int BUCKET = 7;
  double _fp_min = 0.0;
  static const int FP_MIN = 8;
  double _fp_max = 0.0;
  static const int FP_MAX = 9;

  bool __isset_type = false;
  bool __isset_col_id = false;
  bool __isset_table_id = false;
  bool __isset_has_nulls = false;
  bool __isset_int_min = false;
  bool __isset_int_max = false;
  bool __isset_bucket = false;
  bool __isset_fp_min = false;
  bool __isset_fp_max = false;

  TColumnRange() {
  }

  // type
  int get type => this._type;

  set type(int type) {
    this._type = type;
    this.__isset_type = true;
  }

  bool isSetType() => this.__isset_type;

  unsetType() {
    this.__isset_type = false;
  }

  // col_id
  int get col_id => this._col_id;

  set col_id(int col_id) {
    this._col_id = col_id;
    this.__isset_col_id = true;
  }

  bool isSetCol_id() => this.__isset_col_id;

  unsetCol_id() {
    this.__isset_col_id = false;
  }

  // table_id
  int get table_id => this._table_id;

  set table_id(int table_id) {
    this._table_id = table_id;
    this.__isset_table_id = true;
  }

  bool isSetTable_id() => this.__isset_table_id;

  unsetTable_id() {
    this.__isset_table_id = false;
  }

  // has_nulls
  bool get has_nulls => this._has_nulls;

  set has_nulls(bool has_nulls) {
    this._has_nulls = has_nulls;
    this.__isset_has_nulls = true;
  }

  bool isSetHas_nulls() => this.__isset_has_nulls;

  unsetHas_nulls() {
    this.__isset_has_nulls = false;
  }

  // int_min
  int get int_min => this._int_min;

  set int_min(int int_min) {
    this._int_min = int_min;
    this.__isset_int_min = true;
  }

  bool isSetInt_min() => this.__isset_int_min;

  unsetInt_min() {
    this.__isset_int_min = false;
  }

  // int_max
  int get int_max => this._int_max;

  set int_max(int int_max) {
    this._int_max = int_max;
    this.__isset_int_max = true;
  }

  bool isSetInt_max() => this.__isset_int_max;

  unsetInt_max() {
    this.__isset_int_max = false;
  }

  // bucket
  int get bucket => this._bucket;

  set bucket(int bucket) {
    this._bucket = bucket;
    this.__isset_bucket = true;
  }

  bool isSetBucket() => this.__isset_bucket;

  unsetBucket() {
    this.__isset_bucket = false;
  }

  // fp_min
  double get fp_min => this._fp_min;

  set fp_min(double fp_min) {
    this._fp_min = fp_min;
    this.__isset_fp_min = true;
  }

  bool isSetFp_min() => this.__isset_fp_min;

  unsetFp_min() {
    this.__isset_fp_min = false;
  }

  // fp_max
  double get fp_max => this._fp_max;

  set fp_max(double fp_max) {
    this._fp_max = fp_max;
    this.__isset_fp_max = true;
  }

  bool isSetFp_max() => this.__isset_fp_max;

  unsetFp_max() {
    this.__isset_fp_max = false;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case TYPE:
        return this.type;
      case COL_ID:
        return this.col_id;
      case TABLE_ID:
        return this.table_id;
      case HAS_NULLS:
        return this.has_nulls;
      case INT_MIN:
        return this.int_min;
      case INT_MAX:
        return this.int_max;
      case BUCKET:
        return this.bucket;
      case FP_MIN:
        return this.fp_min;
      case FP_MAX:
        return this.fp_max;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object value) {
    switch (fieldID) {
      case TYPE:
        if (value == null) {
          unsetType();
        } else {
          this.type = value;
        }
        break;

      case COL_ID:
        if (value == null) {
          unsetCol_id();
        } else {
          this.col_id = value;
        }
        break;

      case TABLE_ID:
        if (value == null) {
          unsetTable_id();
        } else {
          this.table_id = value;
        }
        break;

      case HAS_NULLS:
        if (value == null) {
          unsetHas_nulls();
        } else {
          this.has_nulls = value;
        }
        break;

      case INT_MIN:
        if (value == null) {
          unsetInt_min();
        } else {
          this.int_min = value;
        }
        break;

      case INT_MAX:
        if (value == null) {
          unsetInt_max();
        } else {
          this.int_max = value;
        }
        break;

      case BUCKET:
        if (value == null) {
          unsetBucket();
        } else {
          this.bucket = value;
        }
        break;

      case FP_MIN:
        if (value == null) {
          unsetFp_min();
        } else {
          this.fp_min = value;
        }
        break;

      case FP_MAX:
        if (value == null) {
          unsetFp_max();
        } else {
          this.fp_max = value;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch (fieldID) {
      case TYPE:
        return isSetType();
      case COL_ID:
        return isSetCol_id();
      case TABLE_ID:
        return isSetTable_id();
      case HAS_NULLS:
        return isSetHas_nulls();
      case INT_MIN:
        return isSetInt_min();
      case INT_MAX:
        return isSetInt_max();
      case BUCKET:
        return isSetBucket();
      case FP_MIN:
        return isSetFp_min();
      case FP_MAX:
        return isSetFp_max();
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  read(TProtocol iprot) {
    TField field;
    iprot.readStructBegin();
    while (true) {
      field = iprot.readFieldBegin();
      if (field.type == TType.STOP) {
        break;
      }
      switch (field.id) {
        case TYPE:
          if (field.type == TType.I32) {
            this.type = iprot.readI32();
            this.__isset_type = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case COL_ID:
          if (field.type == TType.I32) {
            this.col_id = iprot.readI32();
            this.__isset_col_id = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case TABLE_ID:
          if (field.type == TType.I32) {
            this.table_id = iprot.readI32();
            this.__isset_table_id = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case HAS_NULLS:
          if (field.type == TType.BOOL) {
            this.has_nulls = iprot.readBool();
            this.__isset_has_nulls = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case INT_MIN:
          if (field.type == TType.I64) {
            this.int_min = iprot.readI64();
            this.__isset_int_min = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case INT_MAX:
          if (field.type == TType.I64) {
            this.int_max = iprot.readI64();
            this.__isset_int_max = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case BUCKET:
          if (field.type == TType.I64) {
            this.bucket = iprot.readI64();
            this.__isset_bucket = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case FP_MIN:
          if (field.type == TType.DOUBLE) {
            this.fp_min = iprot.readDouble();
            this.__isset_fp_min = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case FP_MAX:
          if (field.type == TType.DOUBLE) {
            this.fp_max = iprot.readDouble();
            this.__isset_fp_max = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        default:
          TProtocolUtil.skip(iprot, field.type);
          break;
      }
      iprot.readFieldEnd();
    }
    iprot.readStructEnd();

    // check for required fields of primitive type, which can't be checked in the validate method
    validate();
  }

  write(TProtocol oprot) {
    validate();

    oprot.writeStructBegin(_STRUCT_DESC);
    oprot.writeFieldBegin(_TYPE_FIELD_DESC);
    oprot.writeI32(this.type);
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(_COL_ID_FIELD_DESC);
    oprot.writeI32(this.col_id);
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(_TABLE_ID_FIELD_DESC);
    oprot.writeI32(this.table_id);
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(_HAS_NULLS_FIELD_DESC);
    oprot.writeBool(this.has_nulls);
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(_INT_MIN_FIELD_DESC);
    oprot.writeI64(this.int_min);
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(_INT_MAX_FIELD_DESC);
    oprot.writeI64(this.int_max);
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(_BUCKET_FIELD_DESC);
    oprot.writeI64(this.bucket);
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(_FP_MIN_FIELD_DESC);
    oprot.writeDouble(this.fp_min);
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(_FP_MAX_FIELD_DESC);
    oprot.writeDouble(this.fp_max);
    oprot.writeFieldEnd();
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("TColumnRange(");

    ret.write("type:");
    String type_name = TExpressionRangeType.VALUES_TO_NAMES[this.type];
    if (type_name != null) {
      ret.write(type_name);
      ret.write(" (");
    }
    ret.write(this.type);
    if (type_name != null) {
      ret.write(")");
    }

    ret.write(", ");
    ret.write("col_id:");
    ret.write(this.col_id);

    ret.write(", ");
    ret.write("table_id:");
    ret.write(this.table_id);

    ret.write(", ");
    ret.write("has_nulls:");
    ret.write(this.has_nulls);

    ret.write(", ");
    ret.write("int_min:");
    ret.write(this.int_min);

    ret.write(", ");
    ret.write("int_max:");
    ret.write(this.int_max);

    ret.write(", ");
    ret.write("bucket:");
    ret.write(this.bucket);

    ret.write(", ");
    ret.write("fp_min:");
    ret.write(this.fp_min);

    ret.write(", ");
    ret.write("fp_max:");
    ret.write(this.fp_max);

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
    if (isSetType() && !TExpressionRangeType.VALID_VALUES.contains(type)) {
      throw new TProtocolError(TProtocolErrorType.UNKNOWN, "The field 'type' has been assigned the invalid value $type");
    }
  }

}

