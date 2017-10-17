/**
 * Autogenerated by Thrift Compiler (0.10.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library mapd.src.t_pending_query;

import 'dart:typed_data' show Uint8List;
import 'package:mapd/src/thrift/thrift.dart';
import 'package:mapd/src/driver.dart';

class TPendingQuery implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("TPendingQuery");
  static final TField _ID_FIELD_DESC = new TField("id", TType.I64, 1);
  static final TField _COLUMN_RANGES_FIELD_DESC = new TField("column_ranges", TType.LIST, 2);
  static final TField _DICTIONARY_GENERATIONS_FIELD_DESC = new TField("dictionary_generations", TType.LIST, 3);
  static final TField _TABLE_GENERATIONS_FIELD_DESC = new TField("table_generations", TType.LIST, 4);

  int _id = 0;
  static const int ID = 1;
  List<TColumnRange> _column_ranges;
  static const int COLUMN_RANGES = 2;
  List<TDictionaryGeneration> _dictionary_generations;
  static const int DICTIONARY_GENERATIONS = 3;
  List<TTableGeneration> _table_generations;
  static const int TABLE_GENERATIONS = 4;

  bool __isset_id = false;

  TPendingQuery() {
  }

  // id
  int get id => this._id;

  set id(int id) {
    this._id = id;
    this.__isset_id = true;
  }

  bool isSetId() => this.__isset_id;

  unsetId() {
    this.__isset_id = false;
  }

  // column_ranges
  List<TColumnRange> get column_ranges => this._column_ranges;

  set column_ranges(List<TColumnRange> column_ranges) {
    this._column_ranges = column_ranges;
  }

  bool isSetColumn_ranges() => this.column_ranges != null;

  unsetColumn_ranges() {
    this.column_ranges = null;
  }

  // dictionary_generations
  List<TDictionaryGeneration> get dictionary_generations => this._dictionary_generations;

  set dictionary_generations(List<TDictionaryGeneration> dictionary_generations) {
    this._dictionary_generations = dictionary_generations;
  }

  bool isSetDictionary_generations() => this.dictionary_generations != null;

  unsetDictionary_generations() {
    this.dictionary_generations = null;
  }

  // table_generations
  List<TTableGeneration> get table_generations => this._table_generations;

  set table_generations(List<TTableGeneration> table_generations) {
    this._table_generations = table_generations;
  }

  bool isSetTable_generations() => this.table_generations != null;

  unsetTable_generations() {
    this.table_generations = null;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case ID:
        return this.id;
      case COLUMN_RANGES:
        return this.column_ranges;
      case DICTIONARY_GENERATIONS:
        return this.dictionary_generations;
      case TABLE_GENERATIONS:
        return this.table_generations;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object value) {
    switch (fieldID) {
      case ID:
        if (value == null) {
          unsetId();
        } else {
          this.id = value;
        }
        break;

      case COLUMN_RANGES:
        if (value == null) {
          unsetColumn_ranges();
        } else {
          this.column_ranges = value;
        }
        break;

      case DICTIONARY_GENERATIONS:
        if (value == null) {
          unsetDictionary_generations();
        } else {
          this.dictionary_generations = value;
        }
        break;

      case TABLE_GENERATIONS:
        if (value == null) {
          unsetTable_generations();
        } else {
          this.table_generations = value;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch (fieldID) {
      case ID:
        return isSetId();
      case COLUMN_RANGES:
        return isSetColumn_ranges();
      case DICTIONARY_GENERATIONS:
        return isSetDictionary_generations();
      case TABLE_GENERATIONS:
        return isSetTable_generations();
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
        case ID:
          if (field.type == TType.I64) {
            this.id = iprot.readI64();
            this.__isset_id = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case COLUMN_RANGES:
          if (field.type == TType.LIST) {
            {
              TList _list64 = iprot.readListBegin();
              this.column_ranges = new List<TColumnRange>();
              for (int _i65 = 0; _i65 < _list64.length; ++_i65) {
                TColumnRange _elem66;
                _elem66 = new TColumnRange();
                _elem66.read(iprot);
                this.column_ranges.add(_elem66);
              }
              iprot.readListEnd();
            }
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case DICTIONARY_GENERATIONS:
          if (field.type == TType.LIST) {
            {
              TList _list67 = iprot.readListBegin();
              this.dictionary_generations = new List<TDictionaryGeneration>();
              for (int _i68 = 0; _i68 < _list67.length; ++_i68) {
                TDictionaryGeneration _elem69;
                _elem69 = new TDictionaryGeneration();
                _elem69.read(iprot);
                this.dictionary_generations.add(_elem69);
              }
              iprot.readListEnd();
            }
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case TABLE_GENERATIONS:
          if (field.type == TType.LIST) {
            {
              TList _list70 = iprot.readListBegin();
              this.table_generations = new List<TTableGeneration>();
              for (int _i71 = 0; _i71 < _list70.length; ++_i71) {
                TTableGeneration _elem72;
                _elem72 = new TTableGeneration();
                _elem72.read(iprot);
                this.table_generations.add(_elem72);
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
    oprot.writeFieldBegin(_ID_FIELD_DESC);
    oprot.writeI64(this.id);
    oprot.writeFieldEnd();
    if (this.column_ranges != null) {
      oprot.writeFieldBegin(_COLUMN_RANGES_FIELD_DESC);
      {
        oprot.writeListBegin(new TList(TType.STRUCT, this.column_ranges.length));
        for (var elem73 in this.column_ranges) {
          elem73.write(oprot);
        }
        oprot.writeListEnd();
      }
      oprot.writeFieldEnd();
    }
    if (this.dictionary_generations != null) {
      oprot.writeFieldBegin(_DICTIONARY_GENERATIONS_FIELD_DESC);
      {
        oprot.writeListBegin(new TList(TType.STRUCT, this.dictionary_generations.length));
        for (var elem74 in this.dictionary_generations) {
          elem74.write(oprot);
        }
        oprot.writeListEnd();
      }
      oprot.writeFieldEnd();
    }
    if (this.table_generations != null) {
      oprot.writeFieldBegin(_TABLE_GENERATIONS_FIELD_DESC);
      {
        oprot.writeListBegin(new TList(TType.STRUCT, this.table_generations.length));
        for (var elem75 in this.table_generations) {
          elem75.write(oprot);
        }
        oprot.writeListEnd();
      }
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("TPendingQuery(");

    ret.write("id:");
    ret.write(this.id);

    ret.write(", ");
    ret.write("column_ranges:");
    if (this.column_ranges == null) {
      ret.write("null");
    } else {
      ret.write(this.column_ranges);
    }

    ret.write(", ");
    ret.write("dictionary_generations:");
    if (this.dictionary_generations == null) {
      ret.write("null");
    } else {
      ret.write(this.dictionary_generations);
    }

    ret.write(", ");
    ret.write("table_generations:");
    if (this.table_generations == null) {
      ret.write("null");
    } else {
      ret.write(this.table_generations);
    }

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }

}

