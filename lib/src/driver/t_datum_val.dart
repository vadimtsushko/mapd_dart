/**
 * Autogenerated by Thrift Compiler (0.10.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library mapd.src.t_datum_val;

import 'dart:typed_data' show Uint8List;
import 'package:mapd/src/thrift/thrift.dart';
import 'package:mapd/src/driver.dart';

class TDatumVal implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("TDatumVal");
  static final TField _INT_VAL_FIELD_DESC = new TField("int_val", TType.I64, 1);
  static final TField _REAL_VAL_FIELD_DESC = new TField("real_val", TType.DOUBLE, 2);
  static final TField _STR_VAL_FIELD_DESC = new TField("str_val", TType.STRING, 3);
  static final TField _ARR_VAL_FIELD_DESC = new TField("arr_val", TType.LIST, 4);

  int _int_val = 0;
  static const int INT_VAL = 1;
  double _real_val = 0.0;
  static const int REAL_VAL = 2;
  String _str_val;
  static const int STR_VAL = 3;
  List<TDatum> _arr_val;
  static const int ARR_VAL = 4;

  bool __isset_int_val = false;
  bool __isset_real_val = false;

  TDatumVal() {
  }

  // int_val
  int get int_val => this._int_val;

  set int_val(int int_val) {
    this._int_val = int_val;
    this.__isset_int_val = true;
  }

  bool isSetInt_val() => this.__isset_int_val;

  unsetInt_val() {
    this.__isset_int_val = false;
  }

  // real_val
  double get real_val => this._real_val;

  set real_val(double real_val) {
    this._real_val = real_val;
    this.__isset_real_val = true;
  }

  bool isSetReal_val() => this.__isset_real_val;

  unsetReal_val() {
    this.__isset_real_val = false;
  }

  // str_val
  String get str_val => this._str_val;

  set str_val(String str_val) {
    this._str_val = str_val;
  }

  bool isSetStr_val() => this.str_val != null;

  unsetStr_val() {
    this.str_val = null;
  }

  // arr_val
  List<TDatum> get arr_val => this._arr_val;

  set arr_val(List<TDatum> arr_val) {
    this._arr_val = arr_val;
  }

  bool isSetArr_val() => this.arr_val != null;

  unsetArr_val() {
    this.arr_val = null;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case INT_VAL:
        return this.int_val;
      case REAL_VAL:
        return this.real_val;
      case STR_VAL:
        return this.str_val;
      case ARR_VAL:
        return this.arr_val;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object value) {
    switch (fieldID) {
      case INT_VAL:
        if (value == null) {
          unsetInt_val();
        } else {
          this.int_val = value;
        }
        break;

      case REAL_VAL:
        if (value == null) {
          unsetReal_val();
        } else {
          this.real_val = value;
        }
        break;

      case STR_VAL:
        if (value == null) {
          unsetStr_val();
        } else {
          this.str_val = value;
        }
        break;

      case ARR_VAL:
        if (value == null) {
          unsetArr_val();
        } else {
          this.arr_val = value;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch (fieldID) {
      case INT_VAL:
        return isSetInt_val();
      case REAL_VAL:
        return isSetReal_val();
      case STR_VAL:
        return isSetStr_val();
      case ARR_VAL:
        return isSetArr_val();
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
        case INT_VAL:
          if (field.type == TType.I64) {
            this.int_val = iprot.readI64();
            this.__isset_int_val = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case REAL_VAL:
          if (field.type == TType.DOUBLE) {
            this.real_val = iprot.readDouble();
            this.__isset_real_val = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case STR_VAL:
          if (field.type == TType.STRING) {
            this.str_val = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case ARR_VAL:
          if (field.type == TType.LIST) {
            {
              TList _list0 = iprot.readListBegin();
              this.arr_val = new List<TDatum>();
              for (int _i1 = 0; _i1 < _list0.length; ++_i1) {
                TDatum _elem2;
                _elem2 = new TDatum();
                _elem2.read(iprot);
                this.arr_val.add(_elem2);
              }
              iprot.readListEnd();
            }
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
    oprot.writeFieldBegin(_INT_VAL_FIELD_DESC);
    oprot.writeI64(this.int_val);
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(_REAL_VAL_FIELD_DESC);
    oprot.writeDouble(this.real_val);
    oprot.writeFieldEnd();
    if (this.str_val != null) {
      oprot.writeFieldBegin(_STR_VAL_FIELD_DESC);
      oprot.writeString(this.str_val);
      oprot.writeFieldEnd();
    }
    if (this.arr_val != null) {
      oprot.writeFieldBegin(_ARR_VAL_FIELD_DESC);
      {
        oprot.writeListBegin(new TList(TType.STRUCT, this.arr_val.length));
        for (var elem3 in this.arr_val) {
          elem3.write(oprot);
        }
        oprot.writeListEnd();
      }
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("TDatumVal(");

    ret.write("int_val:");
    ret.write(this.int_val);

    ret.write(", ");
    ret.write("real_val:");
    ret.write(this.real_val);

    ret.write(", ");
    ret.write("str_val:");
    if (this.str_val == null) {
      ret.write("null");
    } else {
      ret.write(this.str_val);
    }

    ret.write(", ");
    ret.write("arr_val:");
    if (this.arr_val == null) {
      ret.write("null");
    } else {
      ret.write(this.arr_val);
    }

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }

}

