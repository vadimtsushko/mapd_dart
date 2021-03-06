/**
 * Autogenerated by Thrift Compiler (0.10.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library mapd.src.t_column_type;

import 'dart:typed_data' show Uint8List;
import 'package:mapd/src/thrift/thrift.dart';
import 'package:mapd/src/driver.dart';

class TColumnType implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("TColumnType");
  static final TField _COL_NAME_FIELD_DESC = new TField("col_name", TType.STRING, 1);
  static final TField _COL_TYPE_FIELD_DESC = new TField("col_type", TType.STRUCT, 2);
  static final TField _IS_RESERVED_KEYWORD_FIELD_DESC = new TField("is_reserved_keyword", TType.BOOL, 3);
  static final TField _SRC_NAME_FIELD_DESC = new TField("src_name", TType.STRING, 4);
  static final TField _IS_SYSTEM_FIELD_DESC = new TField("is_system", TType.BOOL, 5);

  String _col_name;
  static const int COL_NAME = 1;
  TTypeInfo _col_type;
  static const int COL_TYPE = 2;
  bool _is_reserved_keyword = false;
  static const int IS_RESERVED_KEYWORD = 3;
  String _src_name;
  static const int SRC_NAME = 4;
  bool _is_system = false;
  static const int IS_SYSTEM = 5;

  bool __isset_is_reserved_keyword = false;
  bool __isset_is_system = false;

  TColumnType() {
  }

  // col_name
  String get col_name => this._col_name;

  set col_name(String col_name) {
    this._col_name = col_name;
  }

  bool isSetCol_name() => this.col_name != null;

  unsetCol_name() {
    this.col_name = null;
  }

  // col_type
  TTypeInfo get col_type => this._col_type;

  set col_type(TTypeInfo col_type) {
    this._col_type = col_type;
  }

  bool isSetCol_type() => this.col_type != null;

  unsetCol_type() {
    this.col_type = null;
  }

  // is_reserved_keyword
  bool get is_reserved_keyword => this._is_reserved_keyword;

  set is_reserved_keyword(bool is_reserved_keyword) {
    this._is_reserved_keyword = is_reserved_keyword;
    this.__isset_is_reserved_keyword = true;
  }

  bool isSetIs_reserved_keyword() => this.__isset_is_reserved_keyword;

  unsetIs_reserved_keyword() {
    this.__isset_is_reserved_keyword = false;
  }

  // src_name
  String get src_name => this._src_name;

  set src_name(String src_name) {
    this._src_name = src_name;
  }

  bool isSetSrc_name() => this.src_name != null;

  unsetSrc_name() {
    this.src_name = null;
  }

  // is_system
  bool get is_system => this._is_system;

  set is_system(bool is_system) {
    this._is_system = is_system;
    this.__isset_is_system = true;
  }

  bool isSetIs_system() => this.__isset_is_system;

  unsetIs_system() {
    this.__isset_is_system = false;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case COL_NAME:
        return this.col_name;
      case COL_TYPE:
        return this.col_type;
      case IS_RESERVED_KEYWORD:
        return this.is_reserved_keyword;
      case SRC_NAME:
        return this.src_name;
      case IS_SYSTEM:
        return this.is_system;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object value) {
    switch (fieldID) {
      case COL_NAME:
        if (value == null) {
          unsetCol_name();
        } else {
          this.col_name = value;
        }
        break;

      case COL_TYPE:
        if (value == null) {
          unsetCol_type();
        } else {
          this.col_type = value;
        }
        break;

      case IS_RESERVED_KEYWORD:
        if (value == null) {
          unsetIs_reserved_keyword();
        } else {
          this.is_reserved_keyword = value;
        }
        break;

      case SRC_NAME:
        if (value == null) {
          unsetSrc_name();
        } else {
          this.src_name = value;
        }
        break;

      case IS_SYSTEM:
        if (value == null) {
          unsetIs_system();
        } else {
          this.is_system = value;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch (fieldID) {
      case COL_NAME:
        return isSetCol_name();
      case COL_TYPE:
        return isSetCol_type();
      case IS_RESERVED_KEYWORD:
        return isSetIs_reserved_keyword();
      case SRC_NAME:
        return isSetSrc_name();
      case IS_SYSTEM:
        return isSetIs_system();
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
        case COL_NAME:
          if (field.type == TType.STRING) {
            this.col_name = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case COL_TYPE:
          if (field.type == TType.STRUCT) {
            this.col_type = new TTypeInfo();
            this.col_type.read(iprot);
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case IS_RESERVED_KEYWORD:
          if (field.type == TType.BOOL) {
            this.is_reserved_keyword = iprot.readBool();
            this.__isset_is_reserved_keyword = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case SRC_NAME:
          if (field.type == TType.STRING) {
            this.src_name = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case IS_SYSTEM:
          if (field.type == TType.BOOL) {
            this.is_system = iprot.readBool();
            this.__isset_is_system = true;
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
    if (this.col_name != null) {
      oprot.writeFieldBegin(_COL_NAME_FIELD_DESC);
      oprot.writeString(this.col_name);
      oprot.writeFieldEnd();
    }
    if (this.col_type != null) {
      oprot.writeFieldBegin(_COL_TYPE_FIELD_DESC);
      this.col_type.write(oprot);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldBegin(_IS_RESERVED_KEYWORD_FIELD_DESC);
    oprot.writeBool(this.is_reserved_keyword);
    oprot.writeFieldEnd();
    if (this.src_name != null) {
      oprot.writeFieldBegin(_SRC_NAME_FIELD_DESC);
      oprot.writeString(this.src_name);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldBegin(_IS_SYSTEM_FIELD_DESC);
    oprot.writeBool(this.is_system);
    oprot.writeFieldEnd();
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("TColumnType(");

    ret.write("col_name:");
    if (this.col_name == null) {
      ret.write("null");
    } else {
      ret.write(this.col_name);
    }

    ret.write(", ");
    ret.write("col_type:");
    if (this.col_type == null) {
      ret.write("null");
    } else {
      ret.write(this.col_type);
    }

    ret.write(", ");
    ret.write("is_reserved_keyword:");
    ret.write(this.is_reserved_keyword);

    ret.write(", ");
    ret.write("src_name:");
    if (this.src_name == null) {
      ret.write("null");
    } else {
      ret.write(this.src_name);
    }

    ret.write(", ");
    ret.write("is_system:");
    ret.write(this.is_system);

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }

}

