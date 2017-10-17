/**
 * Autogenerated by Thrift Compiler (0.10.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library mapd.src.t_datum;

import 'dart:typed_data' show Uint8List;
import 'package:mapd/src/thrift/thrift.dart';
import 'package:mapd/src/driver.dart';

class TDatum implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("TDatum");
  static final TField _VAL_FIELD_DESC = new TField("val", TType.STRUCT, 1);
  static final TField _IS_NULL_FIELD_DESC = new TField("is_null", TType.BOOL, 2);

  TDatumVal _val;
  static const int VAL = 1;
  bool _is_null = false;
  static const int IS_NULL = 2;

  bool __isset_is_null = false;

  TDatum() {
  }

  // val
  TDatumVal get val => this._val;

  set val(TDatumVal val) {
    this._val = val;
  }

  bool isSetVal() => this.val != null;

  unsetVal() {
    this.val = null;
  }

  // is_null
  bool get is_null => this._is_null;

  set is_null(bool is_null) {
    this._is_null = is_null;
    this.__isset_is_null = true;
  }

  bool isSetIs_null() => this.__isset_is_null;

  unsetIs_null() {
    this.__isset_is_null = false;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case VAL:
        return this.val;
      case IS_NULL:
        return this.is_null;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object value) {
    switch (fieldID) {
      case VAL:
        if (value == null) {
          unsetVal();
        } else {
          this.val = value;
        }
        break;

      case IS_NULL:
        if (value == null) {
          unsetIs_null();
        } else {
          this.is_null = value;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch (fieldID) {
      case VAL:
        return isSetVal();
      case IS_NULL:
        return isSetIs_null();
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
        case VAL:
          if (field.type == TType.STRUCT) {
            this.val = new TDatumVal();
            this.val.read(iprot);
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case IS_NULL:
          if (field.type == TType.BOOL) {
            this.is_null = iprot.readBool();
            this.__isset_is_null = true;
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
    if (this.val != null) {
      oprot.writeFieldBegin(_VAL_FIELD_DESC);
      this.val.write(oprot);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldBegin(_IS_NULL_FIELD_DESC);
    oprot.writeBool(this.is_null);
    oprot.writeFieldEnd();
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("TDatum(");

    ret.write("val:");
    if (this.val == null) {
      ret.write("null");
    } else {
      ret.write(this.val);
    }

    ret.write(", ");
    ret.write("is_null:");
    ret.write(this.is_null);

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }

}

