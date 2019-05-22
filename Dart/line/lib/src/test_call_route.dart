/**
 * Autogenerated by Thrift Compiler (0.11.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library line.src.test_call_route;

import 'dart:typed_data' show Uint8List;
import 'package:thrift/thrift.dart';
import 'package:line/line.dart';

class TestCallRoute implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("TestCallRoute");
  static final TField _TOKEN_FIELD_DESC = new TField("token", TType.STRING, 1);
  static final TField _VOIP_SERVER_FIELD_DESC = new TField("voipServer", TType.STRUCT, 2);

  String _token;
  static const int TOKEN = 1;
  CallHost _voipServer;
  static const int VOIPSERVER = 2;


  TestCallRoute() {
  }

  // token
  String get token => this._token;

  set token(String token) {
    this._token = token;
  }

  bool isSetToken() => this.token != null;

  unsetToken() {
    this.token = null;
  }

  // voipServer
  CallHost get voipServer => this._voipServer;

  set voipServer(CallHost voipServer) {
    this._voipServer = voipServer;
  }

  bool isSetVoipServer() => this.voipServer != null;

  unsetVoipServer() {
    this.voipServer = null;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case TOKEN:
        return this.token;
      case VOIPSERVER:
        return this.voipServer;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object value) {
    switch (fieldID) {
      case TOKEN:
        if (value == null) {
          unsetToken();
        } else {
          this.token = value;
        }
        break;

      case VOIPSERVER:
        if (value == null) {
          unsetVoipServer();
        } else {
          this.voipServer = value;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch (fieldID) {
      case TOKEN:
        return isSetToken();
      case VOIPSERVER:
        return isSetVoipServer();
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
        case TOKEN:
          if (field.type == TType.STRING) {
            this.token = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case VOIPSERVER:
          if (field.type == TType.STRUCT) {
            this.voipServer = new CallHost();
            this.voipServer.read(iprot);
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
    if (this.token != null) {
      oprot.writeFieldBegin(_TOKEN_FIELD_DESC);
      oprot.writeString(this.token);
      oprot.writeFieldEnd();
    }
    if (this.voipServer != null) {
      oprot.writeFieldBegin(_VOIP_SERVER_FIELD_DESC);
      this.voipServer.write(oprot);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("TestCallRoute(");

    ret.write("token:");
    if (this.token == null) {
      ret.write("null");
    } else {
      ret.write(this.token);
    }

    ret.write(", ");
    ret.write("voipServer:");
    if (this.voipServer == null) {
      ret.write("null");
    } else {
      ret.write(this.voipServer);
    }

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }

}
