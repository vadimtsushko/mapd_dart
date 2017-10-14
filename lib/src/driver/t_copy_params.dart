/**
 * Autogenerated by Thrift Compiler (0.10.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library mapd.src.t_copy_params;

import 'dart:typed_data' show Uint8List;
import 'package:mapd/src/thrift/thrift.dart';
import '../driver.dart';

class TCopyParams implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("TCopyParams");
  static final TField _DELIMITER_FIELD_DESC = new TField("delimiter", TType.STRING, 1);
  static final TField _NULL_STR_FIELD_DESC = new TField("null_str", TType.STRING, 2);
  static final TField _HAS_HEADER_FIELD_DESC = new TField("has_header", TType.BOOL, 3);
  static final TField _QUOTED_FIELD_DESC = new TField("quoted", TType.BOOL, 4);
  static final TField _QUOTE_FIELD_DESC = new TField("quote", TType.STRING, 5);
  static final TField _ESCAPE_FIELD_DESC = new TField("escape", TType.STRING, 6);
  static final TField _LINE_DELIM_FIELD_DESC = new TField("line_delim", TType.STRING, 7);
  static final TField _ARRAY_DELIM_FIELD_DESC = new TField("array_delim", TType.STRING, 8);
  static final TField _ARRAY_BEGIN_FIELD_DESC = new TField("array_begin", TType.STRING, 9);
  static final TField _ARRAY_END_FIELD_DESC = new TField("array_end", TType.STRING, 10);
  static final TField _THREADS_FIELD_DESC = new TField("threads", TType.I32, 11);
  static final TField _TABLE_TYPE_FIELD_DESC = new TField("table_type", TType.I32, 12);

  String _delimiter;
  static const int DELIMITER = 1;
  String _null_str;
  static const int NULL_STR = 2;
  bool _has_header = false;
  static const int HAS_HEADER = 3;
  bool _quoted = false;
  static const int QUOTED = 4;
  String _quote;
  static const int QUOTE = 5;
  String _escape;
  static const int ESCAPE = 6;
  String _line_delim;
  static const int LINE_DELIM = 7;
  String _array_delim;
  static const int ARRAY_DELIM = 8;
  String _array_begin;
  static const int ARRAY_BEGIN = 9;
  String _array_end;
  static const int ARRAY_END = 10;
  int _threads = 0;
  static const int THREADS = 11;
  int _table_type;
  static const int TABLE_TYPE = 12;

  bool __isset_has_header = false;
  bool __isset_quoted = false;
  bool __isset_threads = false;
  bool __isset_table_type = false;

  TCopyParams() {
    this.table_type = 0;

  }

  // delimiter
  String get delimiter => this._delimiter;

  set delimiter(String delimiter) {
    this._delimiter = delimiter;
  }

  bool isSetDelimiter() => this.delimiter != null;

  unsetDelimiter() {
    this.delimiter = null;
  }

  // null_str
  String get null_str => this._null_str;

  set null_str(String null_str) {
    this._null_str = null_str;
  }

  bool isSetNull_str() => this.null_str != null;

  unsetNull_str() {
    this.null_str = null;
  }

  // has_header
  bool get has_header => this._has_header;

  set has_header(bool has_header) {
    this._has_header = has_header;
    this.__isset_has_header = true;
  }

  bool isSetHas_header() => this.__isset_has_header;

  unsetHas_header() {
    this.__isset_has_header = false;
  }

  // quoted
  bool get quoted => this._quoted;

  set quoted(bool quoted) {
    this._quoted = quoted;
    this.__isset_quoted = true;
  }

  bool isSetQuoted() => this.__isset_quoted;

  unsetQuoted() {
    this.__isset_quoted = false;
  }

  // quote
  String get quote => this._quote;

  set quote(String quote) {
    this._quote = quote;
  }

  bool isSetQuote() => this.quote != null;

  unsetQuote() {
    this.quote = null;
  }

  // escape
  String get escape => this._escape;

  set escape(String escape) {
    this._escape = escape;
  }

  bool isSetEscape() => this.escape != null;

  unsetEscape() {
    this.escape = null;
  }

  // line_delim
  String get line_delim => this._line_delim;

  set line_delim(String line_delim) {
    this._line_delim = line_delim;
  }

  bool isSetLine_delim() => this.line_delim != null;

  unsetLine_delim() {
    this.line_delim = null;
  }

  // array_delim
  String get array_delim => this._array_delim;

  set array_delim(String array_delim) {
    this._array_delim = array_delim;
  }

  bool isSetArray_delim() => this.array_delim != null;

  unsetArray_delim() {
    this.array_delim = null;
  }

  // array_begin
  String get array_begin => this._array_begin;

  set array_begin(String array_begin) {
    this._array_begin = array_begin;
  }

  bool isSetArray_begin() => this.array_begin != null;

  unsetArray_begin() {
    this.array_begin = null;
  }

  // array_end
  String get array_end => this._array_end;

  set array_end(String array_end) {
    this._array_end = array_end;
  }

  bool isSetArray_end() => this.array_end != null;

  unsetArray_end() {
    this.array_end = null;
  }

  // threads
  int get threads => this._threads;

  set threads(int threads) {
    this._threads = threads;
    this.__isset_threads = true;
  }

  bool isSetThreads() => this.__isset_threads;

  unsetThreads() {
    this.__isset_threads = false;
  }

  // table_type
  int get table_type => this._table_type;

  set table_type(int table_type) {
    this._table_type = table_type;
    this.__isset_table_type = true;
  }

  bool isSetTable_type() => this.__isset_table_type;

  unsetTable_type() {
    this.__isset_table_type = false;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case DELIMITER:
        return this.delimiter;
      case NULL_STR:
        return this.null_str;
      case HAS_HEADER:
        return this.has_header;
      case QUOTED:
        return this.quoted;
      case QUOTE:
        return this.quote;
      case ESCAPE:
        return this.escape;
      case LINE_DELIM:
        return this.line_delim;
      case ARRAY_DELIM:
        return this.array_delim;
      case ARRAY_BEGIN:
        return this.array_begin;
      case ARRAY_END:
        return this.array_end;
      case THREADS:
        return this.threads;
      case TABLE_TYPE:
        return this.table_type;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object value) {
    switch (fieldID) {
      case DELIMITER:
        if (value == null) {
          unsetDelimiter();
        } else {
          this.delimiter = value;
        }
        break;

      case NULL_STR:
        if (value == null) {
          unsetNull_str();
        } else {
          this.null_str = value;
        }
        break;

      case HAS_HEADER:
        if (value == null) {
          unsetHas_header();
        } else {
          this.has_header = value;
        }
        break;

      case QUOTED:
        if (value == null) {
          unsetQuoted();
        } else {
          this.quoted = value;
        }
        break;

      case QUOTE:
        if (value == null) {
          unsetQuote();
        } else {
          this.quote = value;
        }
        break;

      case ESCAPE:
        if (value == null) {
          unsetEscape();
        } else {
          this.escape = value;
        }
        break;

      case LINE_DELIM:
        if (value == null) {
          unsetLine_delim();
        } else {
          this.line_delim = value;
        }
        break;

      case ARRAY_DELIM:
        if (value == null) {
          unsetArray_delim();
        } else {
          this.array_delim = value;
        }
        break;

      case ARRAY_BEGIN:
        if (value == null) {
          unsetArray_begin();
        } else {
          this.array_begin = value;
        }
        break;

      case ARRAY_END:
        if (value == null) {
          unsetArray_end();
        } else {
          this.array_end = value;
        }
        break;

      case THREADS:
        if (value == null) {
          unsetThreads();
        } else {
          this.threads = value;
        }
        break;

      case TABLE_TYPE:
        if (value == null) {
          unsetTable_type();
        } else {
          this.table_type = value;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch (fieldID) {
      case DELIMITER:
        return isSetDelimiter();
      case NULL_STR:
        return isSetNull_str();
      case HAS_HEADER:
        return isSetHas_header();
      case QUOTED:
        return isSetQuoted();
      case QUOTE:
        return isSetQuote();
      case ESCAPE:
        return isSetEscape();
      case LINE_DELIM:
        return isSetLine_delim();
      case ARRAY_DELIM:
        return isSetArray_delim();
      case ARRAY_BEGIN:
        return isSetArray_begin();
      case ARRAY_END:
        return isSetArray_end();
      case THREADS:
        return isSetThreads();
      case TABLE_TYPE:
        return isSetTable_type();
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
        case DELIMITER:
          if (field.type == TType.STRING) {
            this.delimiter = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case NULL_STR:
          if (field.type == TType.STRING) {
            this.null_str = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case HAS_HEADER:
          if (field.type == TType.BOOL) {
            this.has_header = iprot.readBool();
            this.__isset_has_header = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case QUOTED:
          if (field.type == TType.BOOL) {
            this.quoted = iprot.readBool();
            this.__isset_quoted = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case QUOTE:
          if (field.type == TType.STRING) {
            this.quote = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case ESCAPE:
          if (field.type == TType.STRING) {
            this.escape = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case LINE_DELIM:
          if (field.type == TType.STRING) {
            this.line_delim = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case ARRAY_DELIM:
          if (field.type == TType.STRING) {
            this.array_delim = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case ARRAY_BEGIN:
          if (field.type == TType.STRING) {
            this.array_begin = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case ARRAY_END:
          if (field.type == TType.STRING) {
            this.array_end = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case THREADS:
          if (field.type == TType.I32) {
            this.threads = iprot.readI32();
            this.__isset_threads = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case TABLE_TYPE:
          if (field.type == TType.I32) {
            this.table_type = iprot.readI32();
            this.__isset_table_type = true;
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
    if (this.delimiter != null) {
      oprot.writeFieldBegin(_DELIMITER_FIELD_DESC);
      oprot.writeString(this.delimiter);
      oprot.writeFieldEnd();
    }
    if (this.null_str != null) {
      oprot.writeFieldBegin(_NULL_STR_FIELD_DESC);
      oprot.writeString(this.null_str);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldBegin(_HAS_HEADER_FIELD_DESC);
    oprot.writeBool(this.has_header);
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(_QUOTED_FIELD_DESC);
    oprot.writeBool(this.quoted);
    oprot.writeFieldEnd();
    if (this.quote != null) {
      oprot.writeFieldBegin(_QUOTE_FIELD_DESC);
      oprot.writeString(this.quote);
      oprot.writeFieldEnd();
    }
    if (this.escape != null) {
      oprot.writeFieldBegin(_ESCAPE_FIELD_DESC);
      oprot.writeString(this.escape);
      oprot.writeFieldEnd();
    }
    if (this.line_delim != null) {
      oprot.writeFieldBegin(_LINE_DELIM_FIELD_DESC);
      oprot.writeString(this.line_delim);
      oprot.writeFieldEnd();
    }
    if (this.array_delim != null) {
      oprot.writeFieldBegin(_ARRAY_DELIM_FIELD_DESC);
      oprot.writeString(this.array_delim);
      oprot.writeFieldEnd();
    }
    if (this.array_begin != null) {
      oprot.writeFieldBegin(_ARRAY_BEGIN_FIELD_DESC);
      oprot.writeString(this.array_begin);
      oprot.writeFieldEnd();
    }
    if (this.array_end != null) {
      oprot.writeFieldBegin(_ARRAY_END_FIELD_DESC);
      oprot.writeString(this.array_end);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldBegin(_THREADS_FIELD_DESC);
    oprot.writeI32(this.threads);
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(_TABLE_TYPE_FIELD_DESC);
    oprot.writeI32(this.table_type);
    oprot.writeFieldEnd();
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("TCopyParams(");

    ret.write("delimiter:");
    if (this.delimiter == null) {
      ret.write("null");
    } else {
      ret.write(this.delimiter);
    }

    ret.write(", ");
    ret.write("null_str:");
    if (this.null_str == null) {
      ret.write("null");
    } else {
      ret.write(this.null_str);
    }

    ret.write(", ");
    ret.write("has_header:");
    ret.write(this.has_header);

    ret.write(", ");
    ret.write("quoted:");
    ret.write(this.quoted);

    ret.write(", ");
    ret.write("quote:");
    if (this.quote == null) {
      ret.write("null");
    } else {
      ret.write(this.quote);
    }

    ret.write(", ");
    ret.write("escape:");
    if (this.escape == null) {
      ret.write("null");
    } else {
      ret.write(this.escape);
    }

    ret.write(", ");
    ret.write("line_delim:");
    if (this.line_delim == null) {
      ret.write("null");
    } else {
      ret.write(this.line_delim);
    }

    ret.write(", ");
    ret.write("array_delim:");
    if (this.array_delim == null) {
      ret.write("null");
    } else {
      ret.write(this.array_delim);
    }

    ret.write(", ");
    ret.write("array_begin:");
    if (this.array_begin == null) {
      ret.write("null");
    } else {
      ret.write(this.array_begin);
    }

    ret.write(", ");
    ret.write("array_end:");
    if (this.array_end == null) {
      ret.write("null");
    } else {
      ret.write(this.array_end);
    }

    ret.write(", ");
    ret.write("threads:");
    ret.write(this.threads);

    ret.write(", ");
    ret.write("table_type:");
    String table_type_name = TTableType.VALUES_TO_NAMES[this.table_type];
    if (table_type_name != null) {
      ret.write(table_type_name);
      ret.write(" (");
    }
    ret.write(this.table_type);
    if (table_type_name != null) {
      ret.write(")");
    }

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
    if (isSetTable_type() && !TTableType.VALID_VALUES.contains(table_type)) {
      throw new TProtocolError(TProtocolErrorType.UNKNOWN, "The field 'table_type' has been assigned the invalid value $table_type");
    }
  }

}

