/**
 * Autogenerated by Thrift Compiler (0.10.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library mapd.src.t_memory_data;

import 'dart:typed_data' show Uint8List;
import 'package:mapd/src/thrift/thrift.dart';
import 'package:mapd/src/driver.dart';

class TMemoryData implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("TMemoryData");
  static final TField _SLAB_FIELD_DESC = new TField("slab", TType.I64, 1);
  static final TField _START_PAGE_FIELD_DESC = new TField("start_page", TType.I32, 2);
  static final TField _NUM_PAGES_FIELD_DESC = new TField("num_pages", TType.I64, 3);
  static final TField _TOUCH_FIELD_DESC = new TField("touch", TType.I32, 4);
  static final TField _CHUNK_KEY_FIELD_DESC = new TField("chunk_key", TType.LIST, 5);
  static final TField _BUFFER_EPOCH_FIELD_DESC = new TField("buffer_epoch", TType.I32, 6);
  static final TField _IS_FREE_FIELD_DESC = new TField("is_free", TType.BOOL, 7);

  int _slab = 0;
  static const int SLAB = 1;
  int _start_page = 0;
  static const int START_PAGE = 2;
  int _num_pages = 0;
  static const int NUM_PAGES = 3;
  int _touch = 0;
  static const int TOUCH = 4;
  List<int> _chunk_key;
  static const int CHUNK_KEY = 5;
  int _buffer_epoch = 0;
  static const int BUFFER_EPOCH = 6;
  bool _is_free = false;
  static const int IS_FREE = 7;

  bool __isset_slab = false;
  bool __isset_start_page = false;
  bool __isset_num_pages = false;
  bool __isset_touch = false;
  bool __isset_buffer_epoch = false;
  bool __isset_is_free = false;

  TMemoryData() {
  }

  // slab
  int get slab => this._slab;

  set slab(int slab) {
    this._slab = slab;
    this.__isset_slab = true;
  }

  bool isSetSlab() => this.__isset_slab;

  unsetSlab() {
    this.__isset_slab = false;
  }

  // start_page
  int get start_page => this._start_page;

  set start_page(int start_page) {
    this._start_page = start_page;
    this.__isset_start_page = true;
  }

  bool isSetStart_page() => this.__isset_start_page;

  unsetStart_page() {
    this.__isset_start_page = false;
  }

  // num_pages
  int get num_pages => this._num_pages;

  set num_pages(int num_pages) {
    this._num_pages = num_pages;
    this.__isset_num_pages = true;
  }

  bool isSetNum_pages() => this.__isset_num_pages;

  unsetNum_pages() {
    this.__isset_num_pages = false;
  }

  // touch
  int get touch => this._touch;

  set touch(int touch) {
    this._touch = touch;
    this.__isset_touch = true;
  }

  bool isSetTouch() => this.__isset_touch;

  unsetTouch() {
    this.__isset_touch = false;
  }

  // chunk_key
  List<int> get chunk_key => this._chunk_key;

  set chunk_key(List<int> chunk_key) {
    this._chunk_key = chunk_key;
  }

  bool isSetChunk_key() => this.chunk_key != null;

  unsetChunk_key() {
    this.chunk_key = null;
  }

  // buffer_epoch
  int get buffer_epoch => this._buffer_epoch;

  set buffer_epoch(int buffer_epoch) {
    this._buffer_epoch = buffer_epoch;
    this.__isset_buffer_epoch = true;
  }

  bool isSetBuffer_epoch() => this.__isset_buffer_epoch;

  unsetBuffer_epoch() {
    this.__isset_buffer_epoch = false;
  }

  // is_free
  bool get is_free => this._is_free;

  set is_free(bool is_free) {
    this._is_free = is_free;
    this.__isset_is_free = true;
  }

  bool isSetIs_free() => this.__isset_is_free;

  unsetIs_free() {
    this.__isset_is_free = false;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case SLAB:
        return this.slab;
      case START_PAGE:
        return this.start_page;
      case NUM_PAGES:
        return this.num_pages;
      case TOUCH:
        return this.touch;
      case CHUNK_KEY:
        return this.chunk_key;
      case BUFFER_EPOCH:
        return this.buffer_epoch;
      case IS_FREE:
        return this.is_free;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object value) {
    switch (fieldID) {
      case SLAB:
        if (value == null) {
          unsetSlab();
        } else {
          this.slab = value;
        }
        break;

      case START_PAGE:
        if (value == null) {
          unsetStart_page();
        } else {
          this.start_page = value;
        }
        break;

      case NUM_PAGES:
        if (value == null) {
          unsetNum_pages();
        } else {
          this.num_pages = value;
        }
        break;

      case TOUCH:
        if (value == null) {
          unsetTouch();
        } else {
          this.touch = value;
        }
        break;

      case CHUNK_KEY:
        if (value == null) {
          unsetChunk_key();
        } else {
          this.chunk_key = value;
        }
        break;

      case BUFFER_EPOCH:
        if (value == null) {
          unsetBuffer_epoch();
        } else {
          this.buffer_epoch = value;
        }
        break;

      case IS_FREE:
        if (value == null) {
          unsetIs_free();
        } else {
          this.is_free = value;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch (fieldID) {
      case SLAB:
        return isSetSlab();
      case START_PAGE:
        return isSetStart_page();
      case NUM_PAGES:
        return isSetNum_pages();
      case TOUCH:
        return isSetTouch();
      case CHUNK_KEY:
        return isSetChunk_key();
      case BUFFER_EPOCH:
        return isSetBuffer_epoch();
      case IS_FREE:
        return isSetIs_free();
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
        case SLAB:
          if (field.type == TType.I64) {
            this.slab = iprot.readI64();
            this.__isset_slab = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case START_PAGE:
          if (field.type == TType.I32) {
            this.start_page = iprot.readI32();
            this.__isset_start_page = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case NUM_PAGES:
          if (field.type == TType.I64) {
            this.num_pages = iprot.readI64();
            this.__isset_num_pages = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case TOUCH:
          if (field.type == TType.I32) {
            this.touch = iprot.readI32();
            this.__isset_touch = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case CHUNK_KEY:
          if (field.type == TType.LIST) {
            {
              TList _list52 = iprot.readListBegin();
              this.chunk_key = new List<int>();
              for (int _i53 = 0; _i53 < _list52.length; ++_i53) {
                int _elem54;
                _elem54 = iprot.readI64();
                this.chunk_key.add(_elem54);
              }
              iprot.readListEnd();
            }
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case BUFFER_EPOCH:
          if (field.type == TType.I32) {
            this.buffer_epoch = iprot.readI32();
            this.__isset_buffer_epoch = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case IS_FREE:
          if (field.type == TType.BOOL) {
            this.is_free = iprot.readBool();
            this.__isset_is_free = true;
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
    oprot.writeFieldBegin(_SLAB_FIELD_DESC);
    oprot.writeI64(this.slab);
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(_START_PAGE_FIELD_DESC);
    oprot.writeI32(this.start_page);
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(_NUM_PAGES_FIELD_DESC);
    oprot.writeI64(this.num_pages);
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(_TOUCH_FIELD_DESC);
    oprot.writeI32(this.touch);
    oprot.writeFieldEnd();
    if (this.chunk_key != null) {
      oprot.writeFieldBegin(_CHUNK_KEY_FIELD_DESC);
      {
        oprot.writeListBegin(new TList(TType.I64, this.chunk_key.length));
        for (var elem55 in this.chunk_key) {
          oprot.writeI64(elem55);
        }
        oprot.writeListEnd();
      }
      oprot.writeFieldEnd();
    }
    oprot.writeFieldBegin(_BUFFER_EPOCH_FIELD_DESC);
    oprot.writeI32(this.buffer_epoch);
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(_IS_FREE_FIELD_DESC);
    oprot.writeBool(this.is_free);
    oprot.writeFieldEnd();
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("TMemoryData(");

    ret.write("slab:");
    ret.write(this.slab);

    ret.write(", ");
    ret.write("start_page:");
    ret.write(this.start_page);

    ret.write(", ");
    ret.write("num_pages:");
    ret.write(this.num_pages);

    ret.write(", ");
    ret.write("touch:");
    ret.write(this.touch);

    ret.write(", ");
    ret.write("chunk_key:");
    if (this.chunk_key == null) {
      ret.write("null");
    } else {
      ret.write(this.chunk_key);
    }

    ret.write(", ");
    ret.write("buffer_epoch:");
    ret.write(this.buffer_epoch);

    ret.write(", ");
    ret.write("is_free:");
    ret.write(this.is_free);

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }

}
