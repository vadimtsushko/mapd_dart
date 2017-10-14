/**
 * Autogenerated by Thrift Compiler (0.10.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library mapd.src.t_query_result;

import 'dart:typed_data' show Uint8List;
import 'package:thrift/thrift.dart';
import '../mapd.dart';

class TQueryResult implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("TQueryResult");
  static final TField _ROW_SET_FIELD_DESC = new TField("row_set", TType.STRUCT, 1);
  static final TField _EXECUTION_TIME_MS_FIELD_DESC = new TField("execution_time_ms", TType.I64, 2);
  static final TField _TOTAL_TIME_MS_FIELD_DESC = new TField("total_time_ms", TType.I64, 3);
  static final TField _NONCE_FIELD_DESC = new TField("nonce", TType.STRING, 4);

  TRowSet _row_set;
  static const int ROW_SET = 1;
  int _execution_time_ms = 0;
  static const int EXECUTION_TIME_MS = 2;
  int _total_time_ms = 0;
  static const int TOTAL_TIME_MS = 3;
  String _nonce;
  static const int NONCE = 4;

  bool __isset_execution_time_ms = false;
  bool __isset_total_time_ms = false;

  TQueryResult() {
  }

  // row_set
  TRowSet get row_set => this._row_set;

  set row_set(TRowSet row_set) {
    this._row_set = row_set;
  }

  bool isSetRow_set() => this.row_set != null;

  unsetRow_set() {
    this.row_set = null;
  }

  // execution_time_ms
  int get execution_time_ms => this._execution_time_ms;

  set execution_time_ms(int execution_time_ms) {
    this._execution_time_ms = execution_time_ms;
    this.__isset_execution_time_ms = true;
  }

  bool isSetExecution_time_ms() => this.__isset_execution_time_ms;

  unsetExecution_time_ms() {
    this.__isset_execution_time_ms = false;
  }

  // total_time_ms
  int get total_time_ms => this._total_time_ms;

  set total_time_ms(int total_time_ms) {
    this._total_time_ms = total_time_ms;
    this.__isset_total_time_ms = true;
  }

  bool isSetTotal_time_ms() => this.__isset_total_time_ms;

  unsetTotal_time_ms() {
    this.__isset_total_time_ms = false;
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
      case ROW_SET:
        return this.row_set;
      case EXECUTION_TIME_MS:
        return this.execution_time_ms;
      case TOTAL_TIME_MS:
        return this.total_time_ms;
      case NONCE:
        return this.nonce;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object value) {
    switch (fieldID) {
      case ROW_SET:
        if (value == null) {
          unsetRow_set();
        } else {
          this.row_set = value;
        }
        break;

      case EXECUTION_TIME_MS:
        if (value == null) {
          unsetExecution_time_ms();
        } else {
          this.execution_time_ms = value;
        }
        break;

      case TOTAL_TIME_MS:
        if (value == null) {
          unsetTotal_time_ms();
        } else {
          this.total_time_ms = value;
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
      case ROW_SET:
        return isSetRow_set();
      case EXECUTION_TIME_MS:
        return isSetExecution_time_ms();
      case TOTAL_TIME_MS:
        return isSetTotal_time_ms();
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
        case ROW_SET:
          if (field.type == TType.STRUCT) {
            this.row_set = new TRowSet();
            this.row_set.read(iprot);
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case EXECUTION_TIME_MS:
          if (field.type == TType.I64) {
            this.execution_time_ms = iprot.readI64();
            this.__isset_execution_time_ms = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case TOTAL_TIME_MS:
          if (field.type == TType.I64) {
            this.total_time_ms = iprot.readI64();
            this.__isset_total_time_ms = true;
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
    if (this.row_set != null) {
      oprot.writeFieldBegin(_ROW_SET_FIELD_DESC);
      this.row_set.write(oprot);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldBegin(_EXECUTION_TIME_MS_FIELD_DESC);
    oprot.writeI64(this.execution_time_ms);
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(_TOTAL_TIME_MS_FIELD_DESC);
    oprot.writeI64(this.total_time_ms);
    oprot.writeFieldEnd();
    if (this.nonce != null) {
      oprot.writeFieldBegin(_NONCE_FIELD_DESC);
      oprot.writeString(this.nonce);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("TQueryResult(");

    ret.write("row_set:");
    if (this.row_set == null) {
      ret.write("null");
    } else {
      ret.write(this.row_set);
    }

    ret.write(", ");
    ret.write("execution_time_ms:");
    ret.write(this.execution_time_ms);

    ret.write(", ");
    ret.write("total_time_ms:");
    ret.write(this.total_time_ms);

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

