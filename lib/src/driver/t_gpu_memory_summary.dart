/**
 * Autogenerated by Thrift Compiler (0.10.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library mapd.src.t_gpu_memory_summary;

import 'dart:typed_data' show Uint8List;
import 'package:mapd/src/thrift/thrift.dart';
import '../driver.dart';

class TGpuMemorySummary implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("TGpuMemorySummary");
  static final TField _MAX_FIELD_DESC = new TField("max", TType.I64, 1);
  static final TField _IN_USE_FIELD_DESC = new TField("in_use", TType.I64, 2);
  static final TField _ALLOCATED_FIELD_DESC = new TField("allocated", TType.I64, 3);
  static final TField _IS_ALLOCATION_CAPPED_FIELD_DESC = new TField("is_allocation_capped", TType.BOOL, 4);

  int _max = 0;
  static const int MAX = 1;
  int _in_use = 0;
  static const int IN_USE = 2;
  int _allocated = 0;
  static const int ALLOCATED = 3;
  bool _is_allocation_capped = false;
  static const int IS_ALLOCATION_CAPPED = 4;

  bool __isset_max = false;
  bool __isset_in_use = false;
  bool __isset_allocated = false;
  bool __isset_is_allocation_capped = false;

  TGpuMemorySummary() {
  }

  // max
  int get max => this._max;

  set max(int max) {
    this._max = max;
    this.__isset_max = true;
  }

  bool isSetMax() => this.__isset_max;

  unsetMax() {
    this.__isset_max = false;
  }

  // in_use
  int get in_use => this._in_use;

  set in_use(int in_use) {
    this._in_use = in_use;
    this.__isset_in_use = true;
  }

  bool isSetIn_use() => this.__isset_in_use;

  unsetIn_use() {
    this.__isset_in_use = false;
  }

  // allocated
  int get allocated => this._allocated;

  set allocated(int allocated) {
    this._allocated = allocated;
    this.__isset_allocated = true;
  }

  bool isSetAllocated() => this.__isset_allocated;

  unsetAllocated() {
    this.__isset_allocated = false;
  }

  // is_allocation_capped
  bool get is_allocation_capped => this._is_allocation_capped;

  set is_allocation_capped(bool is_allocation_capped) {
    this._is_allocation_capped = is_allocation_capped;
    this.__isset_is_allocation_capped = true;
  }

  bool isSetIs_allocation_capped() => this.__isset_is_allocation_capped;

  unsetIs_allocation_capped() {
    this.__isset_is_allocation_capped = false;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case MAX:
        return this.max;
      case IN_USE:
        return this.in_use;
      case ALLOCATED:
        return this.allocated;
      case IS_ALLOCATION_CAPPED:
        return this.is_allocation_capped;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object value) {
    switch (fieldID) {
      case MAX:
        if (value == null) {
          unsetMax();
        } else {
          this.max = value;
        }
        break;

      case IN_USE:
        if (value == null) {
          unsetIn_use();
        } else {
          this.in_use = value;
        }
        break;

      case ALLOCATED:
        if (value == null) {
          unsetAllocated();
        } else {
          this.allocated = value;
        }
        break;

      case IS_ALLOCATION_CAPPED:
        if (value == null) {
          unsetIs_allocation_capped();
        } else {
          this.is_allocation_capped = value;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch (fieldID) {
      case MAX:
        return isSetMax();
      case IN_USE:
        return isSetIn_use();
      case ALLOCATED:
        return isSetAllocated();
      case IS_ALLOCATION_CAPPED:
        return isSetIs_allocation_capped();
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
        case MAX:
          if (field.type == TType.I64) {
            this.max = iprot.readI64();
            this.__isset_max = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case IN_USE:
          if (field.type == TType.I64) {
            this.in_use = iprot.readI64();
            this.__isset_in_use = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case ALLOCATED:
          if (field.type == TType.I64) {
            this.allocated = iprot.readI64();
            this.__isset_allocated = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case IS_ALLOCATION_CAPPED:
          if (field.type == TType.BOOL) {
            this.is_allocation_capped = iprot.readBool();
            this.__isset_is_allocation_capped = true;
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
    oprot.writeFieldBegin(_MAX_FIELD_DESC);
    oprot.writeI64(this.max);
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(_IN_USE_FIELD_DESC);
    oprot.writeI64(this.in_use);
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(_ALLOCATED_FIELD_DESC);
    oprot.writeI64(this.allocated);
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(_IS_ALLOCATION_CAPPED_FIELD_DESC);
    oprot.writeBool(this.is_allocation_capped);
    oprot.writeFieldEnd();
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("TGpuMemorySummary(");

    ret.write("max:");
    ret.write(this.max);

    ret.write(", ");
    ret.write("in_use:");
    ret.write(this.in_use);

    ret.write(", ");
    ret.write("allocated:");
    ret.write(this.allocated);

    ret.write(", ");
    ret.write("is_allocation_capped:");
    ret.write(this.is_allocation_capped);

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }

}

