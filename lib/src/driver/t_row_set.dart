/**
 * Autogenerated by Thrift Compiler (0.10.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library mapd.src.t_row_set;

import 'dart:typed_data' show Uint8List;
import 'package:mapd/src/thrift/thrift.dart';
import 'package:mapd/src/driver.dart';

class TRowSet implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("TRowSet");
  static final TField _ROW_DESC_FIELD_DESC = new TField("row_desc", TType.LIST, 1);
  static final TField _ROWS_FIELD_DESC = new TField("rows", TType.LIST, 2);
  static final TField _COLUMNS_FIELD_DESC = new TField("columns", TType.LIST, 3);
  static final TField _IS_COLUMNAR_FIELD_DESC = new TField("is_columnar", TType.BOOL, 4);

  List<TColumnType> _row_desc;
  static const int ROW_DESC = 1;
  List<TRow> _rows;
  static const int ROWS = 2;
  List<TColumn> _columns;
  static const int COLUMNS = 3;
  bool _is_columnar = false;
  static const int IS_COLUMNAR = 4;

  bool __isset_is_columnar = false;

  TRowSet() {
  }

  // row_desc
  List<TColumnType> get row_desc => this._row_desc;

  set row_desc(List<TColumnType> row_desc) {
    this._row_desc = row_desc;
  }

  bool isSetRow_desc() => this.row_desc != null;

  unsetRow_desc() {
    this.row_desc = null;
  }

  // rows
  List<TRow> get rows => this._rows;

  set rows(List<TRow> rows) {
    this._rows = rows;
  }

  bool isSetRows() => this.rows != null;

  unsetRows() {
    this.rows = null;
  }

  // columns
  List<TColumn> get columns => this._columns;

  set columns(List<TColumn> columns) {
    this._columns = columns;
  }

  bool isSetColumns() => this.columns != null;

  unsetColumns() {
    this.columns = null;
  }

  // is_columnar
  bool get is_columnar => this._is_columnar;

  set is_columnar(bool is_columnar) {
    this._is_columnar = is_columnar;
    this.__isset_is_columnar = true;
  }

  bool isSetIs_columnar() => this.__isset_is_columnar;

  unsetIs_columnar() {
    this.__isset_is_columnar = false;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case ROW_DESC:
        return this.row_desc;
      case ROWS:
        return this.rows;
      case COLUMNS:
        return this.columns;
      case IS_COLUMNAR:
        return this.is_columnar;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object value) {
    switch (fieldID) {
      case ROW_DESC:
        if (value == null) {
          unsetRow_desc();
        } else {
          this.row_desc = value;
        }
        break;

      case ROWS:
        if (value == null) {
          unsetRows();
        } else {
          this.rows = value;
        }
        break;

      case COLUMNS:
        if (value == null) {
          unsetColumns();
        } else {
          this.columns = value;
        }
        break;

      case IS_COLUMNAR:
        if (value == null) {
          unsetIs_columnar();
        } else {
          this.is_columnar = value;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch (fieldID) {
      case ROW_DESC:
        return isSetRow_desc();
      case ROWS:
        return isSetRows();
      case COLUMNS:
        return isSetColumns();
      case IS_COLUMNAR:
        return isSetIs_columnar();
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
        case ROW_DESC:
          if (field.type == TType.LIST) {
            {
              TList _list36 = iprot.readListBegin();
              this.row_desc = new List<TColumnType>();
              for (int _i37 = 0; _i37 < _list36.length; ++_i37) {
                TColumnType _elem38;
                _elem38 = new TColumnType();
                _elem38.read(iprot);
                this.row_desc.add(_elem38);
              }
              iprot.readListEnd();
            }
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case ROWS:
          if (field.type == TType.LIST) {
            {
              TList _list39 = iprot.readListBegin();
              this.rows = new List<TRow>();
              for (int _i40 = 0; _i40 < _list39.length; ++_i40) {
                TRow _elem41;
                _elem41 = new TRow();
                _elem41.read(iprot);
                this.rows.add(_elem41);
              }
              iprot.readListEnd();
            }
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case COLUMNS:
          if (field.type == TType.LIST) {
            {
              TList _list42 = iprot.readListBegin();
              this.columns = new List<TColumn>();
              for (int _i43 = 0; _i43 < _list42.length; ++_i43) {
                TColumn _elem44;
                _elem44 = new TColumn();
                _elem44.read(iprot);
                this.columns.add(_elem44);
              }
              iprot.readListEnd();
            }
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case IS_COLUMNAR:
          if (field.type == TType.BOOL) {
            this.is_columnar = iprot.readBool();
            this.__isset_is_columnar = true;
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
    if (this.row_desc != null) {
      oprot.writeFieldBegin(_ROW_DESC_FIELD_DESC);
      {
        oprot.writeListBegin(new TList(TType.STRUCT, this.row_desc.length));
        for (var elem45 in this.row_desc) {
          elem45.write(oprot);
        }
        oprot.writeListEnd();
      }
      oprot.writeFieldEnd();
    }
    if (this.rows != null) {
      oprot.writeFieldBegin(_ROWS_FIELD_DESC);
      {
        oprot.writeListBegin(new TList(TType.STRUCT, this.rows.length));
        for (var elem46 in this.rows) {
          elem46.write(oprot);
        }
        oprot.writeListEnd();
      }
      oprot.writeFieldEnd();
    }
    if (this.columns != null) {
      oprot.writeFieldBegin(_COLUMNS_FIELD_DESC);
      {
        oprot.writeListBegin(new TList(TType.STRUCT, this.columns.length));
        for (var elem47 in this.columns) {
          elem47.write(oprot);
        }
        oprot.writeListEnd();
      }
      oprot.writeFieldEnd();
    }
    oprot.writeFieldBegin(_IS_COLUMNAR_FIELD_DESC);
    oprot.writeBool(this.is_columnar);
    oprot.writeFieldEnd();
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("TRowSet(");

    ret.write("row_desc:");
    if (this.row_desc == null) {
      ret.write("null");
    } else {
      ret.write(this.row_desc);
    }

    ret.write(", ");
    ret.write("rows:");
    if (this.rows == null) {
      ret.write("null");
    } else {
      ret.write(this.rows);
    }

    ret.write(", ");
    ret.write("columns:");
    if (this.columns == null) {
      ret.write("null");
    } else {
      ret.write(this.columns);
    }

    ret.write(", ");
    ret.write("is_columnar:");
    ret.write(this.is_columnar);

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }

}

