/**
 * Autogenerated by Thrift Compiler (0.10.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library mapd.src.t_frontend_view;

import 'dart:typed_data' show Uint8List;
import 'package:thrift/thrift.dart';
import '../mapd.dart';

class TFrontendView implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("TFrontendView");
  static final TField _VIEW_NAME_FIELD_DESC = new TField("view_name", TType.STRING, 1);
  static final TField _VIEW_STATE_FIELD_DESC = new TField("view_state", TType.STRING, 2);
  static final TField _IMAGE_HASH_FIELD_DESC = new TField("image_hash", TType.STRING, 3);
  static final TField _UPDATE_TIME_FIELD_DESC = new TField("update_time", TType.STRING, 4);
  static final TField _VIEW_METADATA_FIELD_DESC = new TField("view_metadata", TType.STRING, 5);

  String _view_name;
  static const int VIEW_NAME = 1;
  String _view_state;
  static const int VIEW_STATE = 2;
  String _image_hash;
  static const int IMAGE_HASH = 3;
  String _update_time;
  static const int UPDATE_TIME = 4;
  String _view_metadata;
  static const int VIEW_METADATA = 5;


  TFrontendView() {
  }

  // view_name
  String get view_name => this._view_name;

  set view_name(String view_name) {
    this._view_name = view_name;
  }

  bool isSetView_name() => this.view_name != null;

  unsetView_name() {
    this.view_name = null;
  }

  // view_state
  String get view_state => this._view_state;

  set view_state(String view_state) {
    this._view_state = view_state;
  }

  bool isSetView_state() => this.view_state != null;

  unsetView_state() {
    this.view_state = null;
  }

  // image_hash
  String get image_hash => this._image_hash;

  set image_hash(String image_hash) {
    this._image_hash = image_hash;
  }

  bool isSetImage_hash() => this.image_hash != null;

  unsetImage_hash() {
    this.image_hash = null;
  }

  // update_time
  String get update_time => this._update_time;

  set update_time(String update_time) {
    this._update_time = update_time;
  }

  bool isSetUpdate_time() => this.update_time != null;

  unsetUpdate_time() {
    this.update_time = null;
  }

  // view_metadata
  String get view_metadata => this._view_metadata;

  set view_metadata(String view_metadata) {
    this._view_metadata = view_metadata;
  }

  bool isSetView_metadata() => this.view_metadata != null;

  unsetView_metadata() {
    this.view_metadata = null;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case VIEW_NAME:
        return this.view_name;
      case VIEW_STATE:
        return this.view_state;
      case IMAGE_HASH:
        return this.image_hash;
      case UPDATE_TIME:
        return this.update_time;
      case VIEW_METADATA:
        return this.view_metadata;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object value) {
    switch (fieldID) {
      case VIEW_NAME:
        if (value == null) {
          unsetView_name();
        } else {
          this.view_name = value;
        }
        break;

      case VIEW_STATE:
        if (value == null) {
          unsetView_state();
        } else {
          this.view_state = value;
        }
        break;

      case IMAGE_HASH:
        if (value == null) {
          unsetImage_hash();
        } else {
          this.image_hash = value;
        }
        break;

      case UPDATE_TIME:
        if (value == null) {
          unsetUpdate_time();
        } else {
          this.update_time = value;
        }
        break;

      case VIEW_METADATA:
        if (value == null) {
          unsetView_metadata();
        } else {
          this.view_metadata = value;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch (fieldID) {
      case VIEW_NAME:
        return isSetView_name();
      case VIEW_STATE:
        return isSetView_state();
      case IMAGE_HASH:
        return isSetImage_hash();
      case UPDATE_TIME:
        return isSetUpdate_time();
      case VIEW_METADATA:
        return isSetView_metadata();
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
        case VIEW_NAME:
          if (field.type == TType.STRING) {
            this.view_name = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case VIEW_STATE:
          if (field.type == TType.STRING) {
            this.view_state = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case IMAGE_HASH:
          if (field.type == TType.STRING) {
            this.image_hash = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case UPDATE_TIME:
          if (field.type == TType.STRING) {
            this.update_time = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case VIEW_METADATA:
          if (field.type == TType.STRING) {
            this.view_metadata = iprot.readString();
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
    if (this.view_name != null) {
      oprot.writeFieldBegin(_VIEW_NAME_FIELD_DESC);
      oprot.writeString(this.view_name);
      oprot.writeFieldEnd();
    }
    if (this.view_state != null) {
      oprot.writeFieldBegin(_VIEW_STATE_FIELD_DESC);
      oprot.writeString(this.view_state);
      oprot.writeFieldEnd();
    }
    if (this.image_hash != null) {
      oprot.writeFieldBegin(_IMAGE_HASH_FIELD_DESC);
      oprot.writeString(this.image_hash);
      oprot.writeFieldEnd();
    }
    if (this.update_time != null) {
      oprot.writeFieldBegin(_UPDATE_TIME_FIELD_DESC);
      oprot.writeString(this.update_time);
      oprot.writeFieldEnd();
    }
    if (this.view_metadata != null) {
      oprot.writeFieldBegin(_VIEW_METADATA_FIELD_DESC);
      oprot.writeString(this.view_metadata);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("TFrontendView(");

    ret.write("view_name:");
    if (this.view_name == null) {
      ret.write("null");
    } else {
      ret.write(this.view_name);
    }

    ret.write(", ");
    ret.write("view_state:");
    if (this.view_state == null) {
      ret.write("null");
    } else {
      ret.write(this.view_state);
    }

    ret.write(", ");
    ret.write("image_hash:");
    if (this.image_hash == null) {
      ret.write("null");
    } else {
      ret.write(this.image_hash);
    }

    ret.write(", ");
    ret.write("update_time:");
    if (this.update_time == null) {
      ret.write("null");
    } else {
      ret.write(this.update_time);
    }

    ret.write(", ");
    ret.write("view_metadata:");
    if (this.view_metadata == null) {
      ret.write("null");
    } else {
      ret.write(this.view_metadata);
    }

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }

}

