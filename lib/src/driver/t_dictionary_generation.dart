/**
 * Autogenerated by Thrift Compiler (0.10.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library mapd.src.t_dictionary_generation;

import 'dart:typed_data' show Uint8List;
import 'package:mapd/src/thrift/thrift.dart';
import '../driver.dart';

class TDictionaryGeneration implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("TDictionaryGeneration");
  static final TField _DICT_ID_FIELD_DESC = new TField("dict_id", TType.I32, 1);
  static final TField _ENTRY_COUNT_FIELD_DESC = new TField("entry_count", TType.I64, 2);

  int _dict_id = 0;
  static const int DICT_ID = 1;
  int _entry_count = 0;
  static const int ENTRY_COUNT = 2;

  bool __isset_dict_id = false;
  bool __isset_entry_count = false;

  TDictionaryGeneration() {
  }

  // dict_id
  int get dict_id => this._dict_id;

  set dict_id(int dict_id) {
    this._dict_id = dict_id;
    this.__isset_dict_id = true;
  }

  bool isSetDict_id() => this.__isset_dict_id;

  unsetDict_id() {
    this.__isset_dict_id = false;
  }

  // entry_count
  int get entry_count => this._entry_count;

  set entry_count(int entry_count) {
    this._entry_count = entry_count;
    this.__isset_entry_count = true;
  }

  bool isSetEntry_count() => this.__isset_entry_count;

  unsetEntry_count() {
    this.__isset_entry_count = false;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case DICT_ID:
        return this.dict_id;
      case ENTRY_COUNT:
        return this.entry_count;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object value) {
    switch (fieldID) {
      case DICT_ID:
        if (value == null) {
          unsetDict_id();
        } else {
          this.dict_id = value;
        }
        break;

      case ENTRY_COUNT:
        if (value == null) {
          unsetEntry_count();
        } else {
          this.entry_count = value;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch (fieldID) {
      case DICT_ID:
        return isSetDict_id();
      case ENTRY_COUNT:
        return isSetEntry_count();
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
        case DICT_ID:
          if (field.type == TType.I32) {
            this.dict_id = iprot.readI32();
            this.__isset_dict_id = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case ENTRY_COUNT:
          if (field.type == TType.I64) {
            this.entry_count = iprot.readI64();
            this.__isset_entry_count = true;
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
    oprot.writeFieldBegin(_DICT_ID_FIELD_DESC);
    oprot.writeI32(this.dict_id);
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(_ENTRY_COUNT_FIELD_DESC);
    oprot.writeI64(this.entry_count);
    oprot.writeFieldEnd();
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("TDictionaryGeneration(");

    ret.write("dict_id:");
    ret.write(this.dict_id);

    ret.write(", ");
    ret.write("entry_count:");
    ret.write(this.entry_count);

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }

}

