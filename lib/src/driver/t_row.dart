/**
 * Autogenerated by Thrift Compiler (0.10.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library mapd.src.t_row;

import 'dart:typed_data' show Uint8List;
import 'package:thrift/thrift.dart';
import '../mapd.dart';

class TRow implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("TRow");
  static final TField _COLS_FIELD_DESC = new TField("cols", TType.LIST, 1);

  List<TDatum> _cols;
  static const int COLS = 1;


  TRow() {
  }

  // cols
  List<TDatum> get cols => this._cols;

  set cols(List<TDatum> cols) {
    this._cols = cols;
  }

  bool isSetCols() => this.cols != null;

  unsetCols() {
    this.cols = null;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case COLS:
        return this.cols;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object value) {
    switch (fieldID) {
      case COLS:
        if (value == null) {
          unsetCols();
        } else {
          this.cols = value;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch (fieldID) {
      case COLS:
        return isSetCols();
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
        case COLS:
          if (field.type == TType.LIST) {
            {
              TList _list4 = iprot.readListBegin();
              this.cols = new List<TDatum>();
              for (int _i5 = 0; _i5 < _list4.length; ++_i5) {
                TDatum _elem6;
                _elem6 = new TDatum();
                _elem6.read(iprot);
                this.cols.add(_elem6);
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
    if (this.cols != null) {
      oprot.writeFieldBegin(_COLS_FIELD_DESC);
      {
        oprot.writeListBegin(new TList(TType.STRUCT, this.cols.length));
        for (var elem7 in this.cols) {
          elem7.write(oprot);
        }
        oprot.writeListEnd();
      }
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("TRow(");

    ret.write("cols:");
    if (this.cols == null) {
      ret.write("null");
    } else {
      ret.write(this.cols);
    }

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }

}

