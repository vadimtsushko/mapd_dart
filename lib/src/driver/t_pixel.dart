/**
 * Autogenerated by Thrift Compiler (0.10.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library mapd.src.t_pixel;

import 'dart:typed_data' show Uint8List;
import 'package:mapd/src/thrift/thrift.dart';
import '../driver.dart';

class TPixel implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("TPixel");
  static final TField _X_FIELD_DESC = new TField("x", TType.I64, 1);
  static final TField _Y_FIELD_DESC = new TField("y", TType.I64, 2);

  int _x = 0;
  static const int X = 1;
  int _y = 0;
  static const int Y = 2;

  bool __isset_x = false;
  bool __isset_y = false;

  TPixel() {
  }

  // x
  int get x => this._x;

  set x(int x) {
    this._x = x;
    this.__isset_x = true;
  }

  bool isSetX() => this.__isset_x;

  unsetX() {
    this.__isset_x = false;
  }

  // y
  int get y => this._y;

  set y(int y) {
    this._y = y;
    this.__isset_y = true;
  }

  bool isSetY() => this.__isset_y;

  unsetY() {
    this.__isset_y = false;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case X:
        return this.x;
      case Y:
        return this.y;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object value) {
    switch (fieldID) {
      case X:
        if (value == null) {
          unsetX();
        } else {
          this.x = value;
        }
        break;

      case Y:
        if (value == null) {
          unsetY();
        } else {
          this.y = value;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch (fieldID) {
      case X:
        return isSetX();
      case Y:
        return isSetY();
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
        case X:
          if (field.type == TType.I64) {
            this.x = iprot.readI64();
            this.__isset_x = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case Y:
          if (field.type == TType.I64) {
            this.y = iprot.readI64();
            this.__isset_y = true;
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
    oprot.writeFieldBegin(_X_FIELD_DESC);
    oprot.writeI64(this.x);
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(_Y_FIELD_DESC);
    oprot.writeI64(this.y);
    oprot.writeFieldEnd();
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("TPixel(");

    ret.write("x:");
    ret.write(this.x);

    ret.write(", ");
    ret.write("y:");
    ret.write(this.y);

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }

}

