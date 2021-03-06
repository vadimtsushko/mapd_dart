/**
 * Autogenerated by Thrift Compiler (0.10.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library mapd.src.t_type_info;

import 'dart:typed_data' show Uint8List;
import 'package:mapd/src/thrift/thrift.dart';
import 'package:mapd/src/driver.dart';

class TTypeInfo implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("TTypeInfo");
  static final TField _TYPE_FIELD_DESC = new TField("type", TType.I32, 1);
  static final TField _ENCODING_FIELD_DESC = new TField("encoding", TType.I32, 4);
  static final TField _NULLABLE_FIELD_DESC = new TField("nullable", TType.BOOL, 2);
  static final TField _IS_ARRAY_FIELD_DESC = new TField("is_array", TType.BOOL, 3);
  static final TField _PRECISION_FIELD_DESC = new TField("precision", TType.I32, 5);
  static final TField _SCALE_FIELD_DESC = new TField("scale", TType.I32, 6);
  static final TField _COMP_PARAM_FIELD_DESC = new TField("comp_param", TType.I32, 7);

  int _type;
  static const int TYPE = 1;
  int _encoding;
  static const int ENCODING = 4;
  bool _nullable = false;
  static const int NULLABLE = 2;
  bool _is_array = false;
  static const int IS_ARRAY = 3;
  int _precision = 0;
  static const int PRECISION = 5;
  int _scale = 0;
  static const int SCALE = 6;
  int _comp_param = 0;
  static const int COMP_PARAM = 7;

  bool __isset_type = false;
  bool __isset_encoding = false;
  bool __isset_nullable = false;
  bool __isset_is_array = false;
  bool __isset_precision = false;
  bool __isset_scale = false;
  bool __isset_comp_param = false;

  TTypeInfo() {
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

  // encoding
  int get encoding => this._encoding;

  set encoding(int encoding) {
    this._encoding = encoding;
    this.__isset_encoding = true;
  }

  bool isSetEncoding() => this.__isset_encoding;

  unsetEncoding() {
    this.__isset_encoding = false;
  }

  // nullable
  bool get nullable => this._nullable;

  set nullable(bool nullable) {
    this._nullable = nullable;
    this.__isset_nullable = true;
  }

  bool isSetNullable() => this.__isset_nullable;

  unsetNullable() {
    this.__isset_nullable = false;
  }

  // is_array
  bool get is_array => this._is_array;

  set is_array(bool is_array) {
    this._is_array = is_array;
    this.__isset_is_array = true;
  }

  bool isSetIs_array() => this.__isset_is_array;

  unsetIs_array() {
    this.__isset_is_array = false;
  }

  // precision
  int get precision => this._precision;

  set precision(int precision) {
    this._precision = precision;
    this.__isset_precision = true;
  }

  bool isSetPrecision() => this.__isset_precision;

  unsetPrecision() {
    this.__isset_precision = false;
  }

  // scale
  int get scale => this._scale;

  set scale(int scale) {
    this._scale = scale;
    this.__isset_scale = true;
  }

  bool isSetScale() => this.__isset_scale;

  unsetScale() {
    this.__isset_scale = false;
  }

  // comp_param
  int get comp_param => this._comp_param;

  set comp_param(int comp_param) {
    this._comp_param = comp_param;
    this.__isset_comp_param = true;
  }

  bool isSetComp_param() => this.__isset_comp_param;

  unsetComp_param() {
    this.__isset_comp_param = false;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case TYPE:
        return this.type;
      case ENCODING:
        return this.encoding;
      case NULLABLE:
        return this.nullable;
      case IS_ARRAY:
        return this.is_array;
      case PRECISION:
        return this.precision;
      case SCALE:
        return this.scale;
      case COMP_PARAM:
        return this.comp_param;
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

      case ENCODING:
        if (value == null) {
          unsetEncoding();
        } else {
          this.encoding = value;
        }
        break;

      case NULLABLE:
        if (value == null) {
          unsetNullable();
        } else {
          this.nullable = value;
        }
        break;

      case IS_ARRAY:
        if (value == null) {
          unsetIs_array();
        } else {
          this.is_array = value;
        }
        break;

      case PRECISION:
        if (value == null) {
          unsetPrecision();
        } else {
          this.precision = value;
        }
        break;

      case SCALE:
        if (value == null) {
          unsetScale();
        } else {
          this.scale = value;
        }
        break;

      case COMP_PARAM:
        if (value == null) {
          unsetComp_param();
        } else {
          this.comp_param = value;
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
      case ENCODING:
        return isSetEncoding();
      case NULLABLE:
        return isSetNullable();
      case IS_ARRAY:
        return isSetIs_array();
      case PRECISION:
        return isSetPrecision();
      case SCALE:
        return isSetScale();
      case COMP_PARAM:
        return isSetComp_param();
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
        case ENCODING:
          if (field.type == TType.I32) {
            this.encoding = iprot.readI32();
            this.__isset_encoding = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case NULLABLE:
          if (field.type == TType.BOOL) {
            this.nullable = iprot.readBool();
            this.__isset_nullable = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case IS_ARRAY:
          if (field.type == TType.BOOL) {
            this.is_array = iprot.readBool();
            this.__isset_is_array = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case PRECISION:
          if (field.type == TType.I32) {
            this.precision = iprot.readI32();
            this.__isset_precision = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case SCALE:
          if (field.type == TType.I32) {
            this.scale = iprot.readI32();
            this.__isset_scale = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case COMP_PARAM:
          if (field.type == TType.I32) {
            this.comp_param = iprot.readI32();
            this.__isset_comp_param = true;
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
    oprot.writeFieldBegin(_NULLABLE_FIELD_DESC);
    oprot.writeBool(this.nullable);
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(_IS_ARRAY_FIELD_DESC);
    oprot.writeBool(this.is_array);
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(_ENCODING_FIELD_DESC);
    oprot.writeI32(this.encoding);
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(_PRECISION_FIELD_DESC);
    oprot.writeI32(this.precision);
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(_SCALE_FIELD_DESC);
    oprot.writeI32(this.scale);
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(_COMP_PARAM_FIELD_DESC);
    oprot.writeI32(this.comp_param);
    oprot.writeFieldEnd();
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("TTypeInfo(");

    ret.write("type:");
    String type_name = TDatumType.VALUES_TO_NAMES[this.type];
    if (type_name != null) {
      ret.write(type_name);
      ret.write(" (");
    }
    ret.write(this.type);
    if (type_name != null) {
      ret.write(")");
    }

    ret.write(", ");
    ret.write("encoding:");
    String encoding_name = TEncodingType.VALUES_TO_NAMES[this.encoding];
    if (encoding_name != null) {
      ret.write(encoding_name);
      ret.write(" (");
    }
    ret.write(this.encoding);
    if (encoding_name != null) {
      ret.write(")");
    }

    ret.write(", ");
    ret.write("nullable:");
    ret.write(this.nullable);

    ret.write(", ");
    ret.write("is_array:");
    ret.write(this.is_array);

    ret.write(", ");
    ret.write("precision:");
    ret.write(this.precision);

    ret.write(", ");
    ret.write("scale:");
    ret.write(this.scale);

    ret.write(", ");
    ret.write("comp_param:");
    ret.write(this.comp_param);

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
    if (isSetType() && !TDatumType.VALID_VALUES.contains(type)) {
      throw new TProtocolError(TProtocolErrorType.UNKNOWN, "The field 'type' has been assigned the invalid value $type");
    }
    if (isSetEncoding() && !TEncodingType.VALID_VALUES.contains(encoding)) {
      throw new TProtocolError(TProtocolErrorType.UNKNOWN, "The field 'encoding' has been assigned the invalid value $encoding");
    }
  }

}

