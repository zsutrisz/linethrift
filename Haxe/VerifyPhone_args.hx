/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
package;

import org.apache.thrift.helper.*;
import haxe.io.Bytes;
import haxe.ds.IntMap;
import haxe.ds.StringMap;
import haxe.ds.ObjectMap;

#if flash
import flash.errors.ArgumentError;
#end

import org.apache.thrift.*;
import org.apache.thrift.meta_data.*;
import org.apache.thrift.protocol.*;


class VerifyPhone_args implements TBase {
  
  static var STRUCT_DESC = { new TStruct("verifyPhone_args"); };
  static var SESSION_ID_FIELD_DESC = { new TField("sessionId", TType.STRING, 2); };
  static var PIN_CODE_FIELD_DESC = { new TField("pinCode", TType.STRING, 3); };
  static var UDID_HASH_FIELD_DESC = { new TField("udidHash", TType.STRING, 4); };

  @:isVar
  public var sessionId(get,set) : String;
  @:isVar
  public var pinCode(get,set) : String;
  @:isVar
  public var udidHash(get,set) : String;

  inline static var SESSIONID_FIELD_ID : Int = 2;
  inline static var PINCODE_FIELD_ID : Int = 3;
  inline static var UDIDHASH_FIELD_ID : Int = 4;


  public function new() {
  }

  public function get_sessionId() : String {
    return this.sessionId;
  }

  public function set_sessionId(sessionId:String) : String {
    this.sessionId = sessionId;
    return this.sessionId;
  }

  public function unsetSessionId() : Void {
    this.sessionId = null;
  }

  // Returns true if field sessionId is set (has been assigned a value) and false otherwise
  public function isSetSessionId() : Bool {
    return this.sessionId != null;
  }

  public function get_pinCode() : String {
    return this.pinCode;
  }

  public function set_pinCode(pinCode:String) : String {
    this.pinCode = pinCode;
    return this.pinCode;
  }

  public function unsetPinCode() : Void {
    this.pinCode = null;
  }

  // Returns true if field pinCode is set (has been assigned a value) and false otherwise
  public function isSetPinCode() : Bool {
    return this.pinCode != null;
  }

  public function get_udidHash() : String {
    return this.udidHash;
  }

  public function set_udidHash(udidHash:String) : String {
    this.udidHash = udidHash;
    return this.udidHash;
  }

  public function unsetUdidHash() : Void {
    this.udidHash = null;
  }

  // Returns true if field udidHash is set (has been assigned a value) and false otherwise
  public function isSetUdidHash() : Bool {
    return this.udidHash != null;
  }

  public function setFieldValue(fieldID : Int, value : Dynamic) : Void {
    switch (fieldID) {
    case SESSIONID_FIELD_ID:
      if (value == null) {
        unsetSessionId();
      } else {
        this.sessionId = value;
      }

    case PINCODE_FIELD_ID:
      if (value == null) {
        unsetPinCode();
      } else {
        this.pinCode = value;
      }

    case UDIDHASH_FIELD_ID:
      if (value == null) {
        unsetUdidHash();
      } else {
        this.udidHash = value;
      }

    default:
      throw new ArgumentError("Field " + fieldID + " doesn't exist!");
    }
  }

  public function getFieldValue(fieldID : Int) : Dynamic {
    switch (fieldID) {
    case SESSIONID_FIELD_ID:
      return this.sessionId;
    case PINCODE_FIELD_ID:
      return this.pinCode;
    case UDIDHASH_FIELD_ID:
      return this.udidHash;
    default:
      throw new ArgumentError("Field " + fieldID + " doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  public function isSet(fieldID : Int) : Bool {
    switch (fieldID) {
    case SESSIONID_FIELD_ID:
      return isSetSessionId();
    case PINCODE_FIELD_ID:
      return isSetPinCode();
    case UDIDHASH_FIELD_ID:
      return isSetUdidHash();
    default:
      throw new ArgumentError("Field " + fieldID + " doesn't exist!");
    }
  }

  public function read( iprot : TProtocol) : Void {
    iprot.IncrementRecursionDepth();
    try
    {
      var field : TField;
      iprot.readStructBegin();
      while (true)
      {
        field = iprot.readFieldBegin();
        if (field.type == TType.STOP) { 
          break;
        }
        switch (field.id)
        {
          case SESSIONID_FIELD_ID:
            if (field.type == TType.STRING) {
              this.sessionId = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case PINCODE_FIELD_ID:
            if (field.type == TType.STRING) {
              this.pinCode = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case UDIDHASH_FIELD_ID:
            if (field.type == TType.STRING) {
              this.udidHash = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          default:
            TProtocolUtil.skip(iprot, field.type);
        }
        iprot.readFieldEnd();
      }
      iprot.readStructEnd();

      iprot.DecrementRecursionDepth();
    }
    catch(e:Dynamic)
    {
      iprot.DecrementRecursionDepth();
      throw e;
    }

    // check for required fields of primitive type, which can't be checked in the validate method
    validate();
  }

  public function write(oprot:TProtocol) : Void {
    validate();
    oprot.IncrementRecursionDepth();
    try
    {
      oprot.writeStructBegin(STRUCT_DESC);
      if (this.sessionId != null) {
        oprot.writeFieldBegin(SESSION_ID_FIELD_DESC);
        oprot.writeString(this.sessionId);
        oprot.writeFieldEnd();
      }
      if (this.pinCode != null) {
        oprot.writeFieldBegin(PIN_CODE_FIELD_DESC);
        oprot.writeString(this.pinCode);
        oprot.writeFieldEnd();
      }
      if (this.udidHash != null) {
        oprot.writeFieldBegin(UDID_HASH_FIELD_DESC);
        oprot.writeString(this.udidHash);
        oprot.writeFieldEnd();
      }
      oprot.writeFieldStop();
      oprot.writeStructEnd();
      oprot.DecrementRecursionDepth();
    }
    catch(e:Dynamic)
    {
      oprot.DecrementRecursionDepth();
      throw e;
    }
  }

  public function toString() : String {
    var ret : String = "verifyPhone_args(";
    var first : Bool = true;

    ret += "sessionId:";
    if (this.sessionId == null) {
      ret += "null";
    } else {
      ret += this.sessionId;
    }
    first = false;
    if (!first) ret +=  ", ";
    ret += "pinCode:";
    if (this.pinCode == null) {
      ret += "null";
    } else {
      ret += this.pinCode;
    }
    first = false;
    if (!first) ret +=  ", ";
    ret += "udidHash:";
    if (this.udidHash == null) {
      ret += "null";
    } else {
      ret += this.udidHash;
    }
    first = false;
    ret += ")";
    return ret;
  }

  public function validate() : Void {
    // check for required fields
    // check that fields of type enum have valid values
  }

}

