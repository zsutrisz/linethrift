/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library line.src.square_event_notification_square_chat_delete;

import 'dart:typed_data' show Uint8List;
import 'package:thrift/thrift.dart';
import 'package:line/line.dart';

class SquareEventNotificationSquareChatDelete implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("SquareEventNotificationSquareChatDelete");
  static final TField _SQUARE_CHAT_MID_FIELD_DESC = new TField("squareChatMid", TType.STRING, 1);
  static final TField _SQUARE_CHAT_NAME_FIELD_DESC = new TField("squareChatName", TType.STRING, 2);
  static final TField _PROFILE_IMAGE_OBS_HASH_FIELD_DESC = new TField("profileImageObsHash", TType.STRING, 3);

  String _squareChatMid;
  static const int SQUARECHATMID = 1;
  String _squareChatName;
  static const int SQUARECHATNAME = 2;
  String _profileImageObsHash;
  static const int PROFILEIMAGEOBSHASH = 3;


  SquareEventNotificationSquareChatDelete() {
  }

  // squareChatMid
  String get squareChatMid => this._squareChatMid;

  set squareChatMid(String squareChatMid) {
    this._squareChatMid = squareChatMid;
  }

  bool isSetSquareChatMid() => this.squareChatMid != null;

  unsetSquareChatMid() {
    this.squareChatMid = null;
  }

  // squareChatName
  String get squareChatName => this._squareChatName;

  set squareChatName(String squareChatName) {
    this._squareChatName = squareChatName;
  }

  bool isSetSquareChatName() => this.squareChatName != null;

  unsetSquareChatName() {
    this.squareChatName = null;
  }

  // profileImageObsHash
  String get profileImageObsHash => this._profileImageObsHash;

  set profileImageObsHash(String profileImageObsHash) {
    this._profileImageObsHash = profileImageObsHash;
  }

  bool isSetProfileImageObsHash() => this.profileImageObsHash != null;

  unsetProfileImageObsHash() {
    this.profileImageObsHash = null;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case SQUARECHATMID:
        return this.squareChatMid;
      case SQUARECHATNAME:
        return this.squareChatName;
      case PROFILEIMAGEOBSHASH:
        return this.profileImageObsHash;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object value) {
    switch (fieldID) {
      case SQUARECHATMID:
        if (value == null) {
          unsetSquareChatMid();
        } else {
          this.squareChatMid = value;
        }
        break;

      case SQUARECHATNAME:
        if (value == null) {
          unsetSquareChatName();
        } else {
          this.squareChatName = value;
        }
        break;

      case PROFILEIMAGEOBSHASH:
        if (value == null) {
          unsetProfileImageObsHash();
        } else {
          this.profileImageObsHash = value;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch (fieldID) {
      case SQUARECHATMID:
        return isSetSquareChatMid();
      case SQUARECHATNAME:
        return isSetSquareChatName();
      case PROFILEIMAGEOBSHASH:
        return isSetProfileImageObsHash();
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
        case SQUARECHATMID:
          if (field.type == TType.STRING) {
            this.squareChatMid = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case SQUARECHATNAME:
          if (field.type == TType.STRING) {
            this.squareChatName = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case PROFILEIMAGEOBSHASH:
          if (field.type == TType.STRING) {
            this.profileImageObsHash = iprot.readString();
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
    if (this.squareChatMid != null) {
      oprot.writeFieldBegin(_SQUARE_CHAT_MID_FIELD_DESC);
      oprot.writeString(this.squareChatMid);
      oprot.writeFieldEnd();
    }
    if (this.squareChatName != null) {
      oprot.writeFieldBegin(_SQUARE_CHAT_NAME_FIELD_DESC);
      oprot.writeString(this.squareChatName);
      oprot.writeFieldEnd();
    }
    if (this.profileImageObsHash != null) {
      oprot.writeFieldBegin(_PROFILE_IMAGE_OBS_HASH_FIELD_DESC);
      oprot.writeString(this.profileImageObsHash);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("SquareEventNotificationSquareChatDelete(");

    ret.write("squareChatMid:");
    if (this.squareChatMid == null) {
      ret.write("null");
    } else {
      ret.write(this.squareChatMid);
    }

    ret.write(", ");
    ret.write("squareChatName:");
    if (this.squareChatName == null) {
      ret.write("null");
    } else {
      ret.write(this.squareChatName);
    }

    ret.write(", ");
    ret.write("profileImageObsHash:");
    if (this.profileImageObsHash == null) {
      ret.write("null");
    } else {
      ret.write(this.profileImageObsHash);
    }

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }

}

