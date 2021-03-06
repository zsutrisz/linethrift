/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library line.src.otp_result;

import 'dart:typed_data' show Uint8List;
import 'package:thrift/thrift.dart';
import 'package:line/line.dart';

class OTPResult implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("OTPResult");
  static final TField _OTP_ID_FIELD_DESC = new TField("otpId", TType.STRING, 1);
  static final TField _OTP_FIELD_DESC = new TField("otp", TType.STRING, 2);

  String _otpId;
  static const int OTPID = 1;
  String _otp;
  static const int OTP = 2;


  OTPResult() {
  }

  // otpId
  String get otpId => this._otpId;

  set otpId(String otpId) {
    this._otpId = otpId;
  }

  bool isSetOtpId() => this.otpId != null;

  unsetOtpId() {
    this.otpId = null;
  }

  // otp
  String get otp => this._otp;

  set otp(String otp) {
    this._otp = otp;
  }

  bool isSetOtp() => this.otp != null;

  unsetOtp() {
    this.otp = null;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case OTPID:
        return this.otpId;
      case OTP:
        return this.otp;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object value) {
    switch (fieldID) {
      case OTPID:
        if (value == null) {
          unsetOtpId();
        } else {
          this.otpId = value;
        }
        break;

      case OTP:
        if (value == null) {
          unsetOtp();
        } else {
          this.otp = value;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch (fieldID) {
      case OTPID:
        return isSetOtpId();
      case OTP:
        return isSetOtp();
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
        case OTPID:
          if (field.type == TType.STRING) {
            this.otpId = iprot.readString();
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case OTP:
          if (field.type == TType.STRING) {
            this.otp = iprot.readString();
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
    if (this.otpId != null) {
      oprot.writeFieldBegin(_OTP_ID_FIELD_DESC);
      oprot.writeString(this.otpId);
      oprot.writeFieldEnd();
    }
    if (this.otp != null) {
      oprot.writeFieldBegin(_OTP_FIELD_DESC);
      oprot.writeString(this.otp);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("OTPResult(");

    ret.write("otpId:");
    if (this.otpId == null) {
      ret.write("null");
    } else {
      ret.write(this.otpId);
    }

    ret.write(", ");
    ret.write("otp:");
    if (this.otp == null) {
      ret.write("null");
    } else {
      ret.write(this.otp);
    }

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }

}

