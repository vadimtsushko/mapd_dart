/**
 * Autogenerated by Thrift Compiler (0.10.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library mapd.src.t_pixel_result;

import 'dart:typed_data' show Uint8List;
import 'package:mapd/src/thrift/thrift.dart';
import '../driver.dart';

class TPixelResult implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("TPixelResult");
  static final TField _PIXEL_ROWS_FIELD_DESC = new TField("pixel_rows", TType.LIST, 1);
  static final TField _NONCE_FIELD_DESC = new TField("nonce", TType.STRING, 2);

  List<TPixelRows> _pixel_rows;
  static const int PIXEL_ROWS = 1;
  String _nonce;
  static const int NONCE = 2;


  TPixelResult() {
  }

  // pixel_rows
  List<TPixelRows> get pixel_rows => this._pixel_rows;

  set pixel_rows(List<TPixelRows> pixel_rows) {
    this._pixel_rows = pixel_rows;
  }

  bool isSetPixel_rows() => this.pixel_rows != null;

  unsetPixel_rows() {
    this.pixel_rows = null;
  }

  // nonce
  String get nonce => this._nonce;

  set nonce(String nonce) {
    this._nonce = nonce;
  }

  bool isSetNonce() => this.nonce != null;

  unsetNonce() {
    this.nonce = null;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case PIXEL_ROWS:
        return this.pixel_rows;
      case NONCE:
        return this.nonce;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object value) {
    switch (fieldID) {
      case PIXEL_ROWS:
        if (value == null) {
          unsetPixel_rows();
        } else {
          this.pixel_rows = value;
        }
        break;

      case NONCE:
        if (value == null) {
          unsetNonce();
        } else {
          this.nonce = value;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch (fieldID) {
      case PIXEL_ROWS:
        return isSetPixel_rows();
      case NONCE:
        return isSetNonce();
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
        case PIXEL_ROWS:
          if (field.type == TType.LIST) {
            {
              TList _list48 = iprot.readListBegin();
              this.pixel_rows = new List<TPixelRows>();
              for (int _i49 = 0; _i49 < _list48.length; ++_i49) {
                TPixelRows _elem50;
                _elem50 = new TPixelRows();
                _elem50.read(iprot);
                this.pixel_rows.add(_elem50);
              }
              iprot.readListEnd();
            }
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case NONCE:
          if (field.type == TType.STRING) {
            this.nonce = iprot.readString();
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
    if (this.pixel_rows != null) {
      oprot.writeFieldBegin(_PIXEL_ROWS_FIELD_DESC);
      {
        oprot.writeListBegin(new TList(TType.STRUCT, this.pixel_rows.length));
        for (var elem51 in this.pixel_rows) {
          elem51.write(oprot);
        }
        oprot.writeListEnd();
      }
      oprot.writeFieldEnd();
    }
    if (this.nonce != null) {
      oprot.writeFieldBegin(_NONCE_FIELD_DESC);
      oprot.writeString(this.nonce);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("TPixelResult(");

    ret.write("pixel_rows:");
    if (this.pixel_rows == null) {
      ret.write("null");
    } else {
      ret.write(this.pixel_rows);
    }

    ret.write(", ");
    ret.write("nonce:");
    if (this.nonce == null) {
      ret.write("null");
    } else {
      ret.write(this.nonce);
    }

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }

}

