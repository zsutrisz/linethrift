/**
 * Autogenerated by Thrift Compiler (0.11.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library line.src.promotion_mission_info;

import 'dart:typed_data' show Uint8List;
import 'package:thrift/thrift.dart';
import 'package:line/line.dart';

class PromotionMissionInfo implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("PromotionMissionInfo");
  static final TField _PROMOTION_MISSION_TYPE_FIELD_DESC = new TField("promotionMissionType", TType.I32, 1);
  static final TField _MISSION_COMPLETED_FIELD_DESC = new TField("missionCompleted", TType.BOOL, 2);
  static final TField _DOWNLOAD_URL_FIELD_DESC = new TField("downloadUrl", TType.STRING, 3);
  static final TField _CUSTOM_URL_SCHEMA_FIELD_DESC = new TField("customUrlSchema", TType.STRING, 4);

  int _promotionMissionType;
  static const int PROMOTIONMISSIONTYPE = 1;
  bool _missionCompleted = false;
  static const int MISSIONCOMPLETED = 2;
  String _downloadUrl;
  static const int DOWNLOADURL = 3;
  String _customUrlSchema;
  static const int CUSTOMURLSCHEMA = 4;

  bool __isset_promotionMissionType = false;
  bool __isset_missionCompleted = false;

  PromotionMissionInfo() {
  }

  // promotionMissionType
  int get promotionMissionType => this._promotionMissionType;

  set promotionMissionType(int promotionMissionType) {
    this._promotionMissionType = promotionMissionType;
    this.__isset_promotionMissionType = true;
  }

  bool isSetPromotionMissionType() => this.__isset_promotionMissionType;

  unsetPromotionMissionType() {
    this.__isset_promotionMissionType = false;
  }

  // missionCompleted
  bool get missionCompleted => this._missionCompleted;

  set missionCompleted(bool missionCompleted) {
    this._missionCompleted = missionCompleted;
    this.__isset_missionCompleted = true;
  }

  bool isSetMissionCompleted() => this.__isset_missionCompleted;

  unsetMissionCompleted() {
    this.__isset_missionCompleted = false;
  }

  // downloadUrl
  String get downloadUrl => this._downloadUrl;

  set downloadUrl(String downloadUrl) {
    this._downloadUrl = downloadUrl;
  }

  bool isSetDownloadUrl() => this.downloadUrl != null;

  unsetDownloadUrl() {
    this.downloadUrl = null;
  }

  // customUrlSchema
  String get customUrlSchema => this._customUrlSchema;

  set customUrlSchema(String customUrlSchema) {
    this._customUrlSchema = customUrlSchema;
  }

  bool isSetCustomUrlSchema() => this.customUrlSchema != null;

  unsetCustomUrlSchema() {
    this.customUrlSchema = null;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case PROMOTIONMISSIONTYPE:
        return this.promotionMissionType;
      case MISSIONCOMPLETED:
        return this.missionCompleted;
      case DOWNLOADURL:
        return this.downloadUrl;
      case CUSTOMURLSCHEMA:
        return this.customUrlSchema;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object value) {
    switch (fieldID) {
      case PROMOTIONMISSIONTYPE:
        if (value == null) {
          unsetPromotionMissionType();
        } else {
          this.promotionMissionType = value;
        }
        break;

      case MISSIONCOMPLETED:
        if (value == null) {
          unsetMissionCompleted();
        } else {
          this.missionCompleted = value;
        }
        break;

      case DOWNLOADURL:
        if (value == null) {
          unsetDownloadUrl();
        } else {
          this.downloadUrl = value;
        }
        break;

      case CUSTOMURLSCHEMA:
        if (value == null) {
          unsetCustomUrlSchema();
        } else {
          this.customUrlSchema = value;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch (fieldID) {
      case PROMOTIONMISSIONTYPE:
        return isSetPromotionMissionType();
      case MISSIONCOMPLETED:
        return isSetMissionCompleted();
      case DOWNLOADURL:
        return isSetDownloadUrl();
      case CUSTOMURLSCHEMA:
        return isSetCustomUrlSchema();
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
        case PROMOTIONMISSIONTYPE:
          if (field.type == TType.I32) {
            this.promotionMissionType = iprot.readI32();
            this.__isset_promotionMissionType = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case MISSIONCOMPLETED:
          if (field.type == TType.BOOL) {
            this.missionCompleted = iprot.readBool();
            this.__isset_missionCompleted = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case DOWNLOADURL:
          if (field.type == TType.STRING) {
            this.downloadUrl = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case CUSTOMURLSCHEMA:
          if (field.type == TType.STRING) {
            this.customUrlSchema = iprot.readString();
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
    oprot.writeFieldBegin(_PROMOTION_MISSION_TYPE_FIELD_DESC);
    oprot.writeI32(this.promotionMissionType);
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(_MISSION_COMPLETED_FIELD_DESC);
    oprot.writeBool(this.missionCompleted);
    oprot.writeFieldEnd();
    if (this.downloadUrl != null) {
      oprot.writeFieldBegin(_DOWNLOAD_URL_FIELD_DESC);
      oprot.writeString(this.downloadUrl);
      oprot.writeFieldEnd();
    }
    if (this.customUrlSchema != null) {
      oprot.writeFieldBegin(_CUSTOM_URL_SCHEMA_FIELD_DESC);
      oprot.writeString(this.customUrlSchema);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("PromotionMissionInfo(");

    ret.write("promotionMissionType:");
    String promotionMissionType_name = PMType.VALUES_TO_NAMES[this.promotionMissionType];
    if (promotionMissionType_name != null) {
      ret.write(promotionMissionType_name);
      ret.write(" (");
    }
    ret.write(this.promotionMissionType);
    if (promotionMissionType_name != null) {
      ret.write(")");
    }

    ret.write(", ");
    ret.write("missionCompleted:");
    ret.write(this.missionCompleted);

    ret.write(", ");
    ret.write("downloadUrl:");
    if (this.downloadUrl == null) {
      ret.write("null");
    } else {
      ret.write(this.downloadUrl);
    }

    ret.write(", ");
    ret.write("customUrlSchema:");
    if (this.customUrlSchema == null) {
      ret.write("null");
    } else {
      ret.write(this.customUrlSchema);
    }

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
    if (isSetPromotionMissionType() && !PMType.VALID_VALUES.contains(promotionMissionType)) {
      throw new TProtocolError(TProtocolErrorType.UNKNOWN, "The field 'promotionMissionType' has been assigned the invalid value $promotionMissionType");
    }
  }

}
