/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library line.src.bot_use_info;

import 'dart:typed_data' show Uint8List;
import 'package:thrift/thrift.dart';
import 'package:line/line.dart';

class BotUseInfo implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("BotUseInfo");
  static final TField _BOT_USE_AGREEMENT_ACCEPTED_FIELD_DESC = new TField("botUseAgreementAccepted", TType.BOOL, 1);
  static final TField _BOT_IN_FRIENDS_FIELD_DESC = new TField("botInFriends", TType.BOOL, 2);
  static final TField _PRIMARY_APPLICATION_FIELD_DESC = new TField("primaryApplication", TType.STRING, 3);
  static final TField _LOCALE_FIELD_DESC = new TField("locale", TType.STRING, 4);

  bool _botUseAgreementAccepted = false;
  static const int BOTUSEAGREEMENTACCEPTED = 1;
  bool _botInFriends = false;
  static const int BOTINFRIENDS = 2;
  String _primaryApplication;
  static const int PRIMARYAPPLICATION = 3;
  String _locale;
  static const int LOCALE = 4;

  bool __isset_botUseAgreementAccepted = false;
  bool __isset_botInFriends = false;

  BotUseInfo() {
  }

  // botUseAgreementAccepted
  bool get botUseAgreementAccepted => this._botUseAgreementAccepted;

  set botUseAgreementAccepted(bool botUseAgreementAccepted) {
    this._botUseAgreementAccepted = botUseAgreementAccepted;
    this.__isset_botUseAgreementAccepted = true;
  }

  bool isSetBotUseAgreementAccepted() => this.__isset_botUseAgreementAccepted;

  unsetBotUseAgreementAccepted() {
    this.__isset_botUseAgreementAccepted = false;
  }

  // botInFriends
  bool get botInFriends => this._botInFriends;

  set botInFriends(bool botInFriends) {
    this._botInFriends = botInFriends;
    this.__isset_botInFriends = true;
  }

  bool isSetBotInFriends() => this.__isset_botInFriends;

  unsetBotInFriends() {
    this.__isset_botInFriends = false;
  }

  // primaryApplication
  String get primaryApplication => this._primaryApplication;

  set primaryApplication(String primaryApplication) {
    this._primaryApplication = primaryApplication;
  }

  bool isSetPrimaryApplication() => this.primaryApplication != null;

  unsetPrimaryApplication() {
    this.primaryApplication = null;
  }

  // locale
  String get locale => this._locale;

  set locale(String locale) {
    this._locale = locale;
  }

  bool isSetLocale() => this.locale != null;

  unsetLocale() {
    this.locale = null;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case BOTUSEAGREEMENTACCEPTED:
        return this.botUseAgreementAccepted;
      case BOTINFRIENDS:
        return this.botInFriends;
      case PRIMARYAPPLICATION:
        return this.primaryApplication;
      case LOCALE:
        return this.locale;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object value) {
    switch (fieldID) {
      case BOTUSEAGREEMENTACCEPTED:
        if (value == null) {
          unsetBotUseAgreementAccepted();
        } else {
          this.botUseAgreementAccepted = value;
        }
        break;

      case BOTINFRIENDS:
        if (value == null) {
          unsetBotInFriends();
        } else {
          this.botInFriends = value;
        }
        break;

      case PRIMARYAPPLICATION:
        if (value == null) {
          unsetPrimaryApplication();
        } else {
          this.primaryApplication = value;
        }
        break;

      case LOCALE:
        if (value == null) {
          unsetLocale();
        } else {
          this.locale = value;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch (fieldID) {
      case BOTUSEAGREEMENTACCEPTED:
        return isSetBotUseAgreementAccepted();
      case BOTINFRIENDS:
        return isSetBotInFriends();
      case PRIMARYAPPLICATION:
        return isSetPrimaryApplication();
      case LOCALE:
        return isSetLocale();
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
        case BOTUSEAGREEMENTACCEPTED:
          if (field.type == TType.BOOL) {
            this.botUseAgreementAccepted = iprot.readBool();
            this.__isset_botUseAgreementAccepted = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case BOTINFRIENDS:
          if (field.type == TType.BOOL) {
            this.botInFriends = iprot.readBool();
            this.__isset_botInFriends = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case PRIMARYAPPLICATION:
          if (field.type == TType.STRING) {
            this.primaryApplication = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case LOCALE:
          if (field.type == TType.STRING) {
            this.locale = iprot.readString();
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
    oprot.writeFieldBegin(_BOT_USE_AGREEMENT_ACCEPTED_FIELD_DESC);
    oprot.writeBool(this.botUseAgreementAccepted);
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(_BOT_IN_FRIENDS_FIELD_DESC);
    oprot.writeBool(this.botInFriends);
    oprot.writeFieldEnd();
    if (this.primaryApplication != null) {
      oprot.writeFieldBegin(_PRIMARY_APPLICATION_FIELD_DESC);
      oprot.writeString(this.primaryApplication);
      oprot.writeFieldEnd();
    }
    if (this.locale != null) {
      oprot.writeFieldBegin(_LOCALE_FIELD_DESC);
      oprot.writeString(this.locale);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("BotUseInfo(");

    ret.write("botUseAgreementAccepted:");
    ret.write(this.botUseAgreementAccepted);

    ret.write(", ");
    ret.write("botInFriends:");
    ret.write(this.botInFriends);

    ret.write(", ");
    ret.write("primaryApplication:");
    if (this.primaryApplication == null) {
      ret.write("null");
    } else {
      ret.write(this.primaryApplication);
    }

    ret.write(", ");
    ret.write("locale:");
    if (this.locale == null) {
      ret.write("null");
    } else {
      ret.write(this.locale);
    }

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }

}

