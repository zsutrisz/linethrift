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


class SquareEventNotificationSquareChatDelete implements TBase {
  
  static var STRUCT_DESC = { new TStruct("SquareEventNotificationSquareChatDelete"); };
  static var SQUARE_CHAT_MID_FIELD_DESC = { new TField("squareChatMid", TType.STRING, 1); };
  static var SQUARE_CHAT_NAME_FIELD_DESC = { new TField("squareChatName", TType.STRING, 2); };
  static var PROFILE_IMAGE_OBS_HASH_FIELD_DESC = { new TField("profileImageObsHash", TType.STRING, 3); };

  @:isVar
  public var squareChatMid(get,set) : String;
  @:isVar
  public var squareChatName(get,set) : String;
  @:isVar
  public var profileImageObsHash(get,set) : String;

  inline static var SQUARECHATMID_FIELD_ID : Int = 1;
  inline static var SQUARECHATNAME_FIELD_ID : Int = 2;
  inline static var PROFILEIMAGEOBSHASH_FIELD_ID : Int = 3;


  public function new() {
  }

  public function get_squareChatMid() : String {
    return this.squareChatMid;
  }

  public function set_squareChatMid(squareChatMid:String) : String {
    this.squareChatMid = squareChatMid;
    return this.squareChatMid;
  }

  public function unsetSquareChatMid() : Void {
    this.squareChatMid = null;
  }

  // Returns true if field squareChatMid is set (has been assigned a value) and false otherwise
  public function isSetSquareChatMid() : Bool {
    return this.squareChatMid != null;
  }

  public function get_squareChatName() : String {
    return this.squareChatName;
  }

  public function set_squareChatName(squareChatName:String) : String {
    this.squareChatName = squareChatName;
    return this.squareChatName;
  }

  public function unsetSquareChatName() : Void {
    this.squareChatName = null;
  }

  // Returns true if field squareChatName is set (has been assigned a value) and false otherwise
  public function isSetSquareChatName() : Bool {
    return this.squareChatName != null;
  }

  public function get_profileImageObsHash() : String {
    return this.profileImageObsHash;
  }

  public function set_profileImageObsHash(profileImageObsHash:String) : String {
    this.profileImageObsHash = profileImageObsHash;
    return this.profileImageObsHash;
  }

  public function unsetProfileImageObsHash() : Void {
    this.profileImageObsHash = null;
  }

  // Returns true if field profileImageObsHash is set (has been assigned a value) and false otherwise
  public function isSetProfileImageObsHash() : Bool {
    return this.profileImageObsHash != null;
  }

  public function setFieldValue(fieldID : Int, value : Dynamic) : Void {
    switch (fieldID) {
    case SQUARECHATMID_FIELD_ID:
      if (value == null) {
        unsetSquareChatMid();
      } else {
        this.squareChatMid = value;
      }

    case SQUARECHATNAME_FIELD_ID:
      if (value == null) {
        unsetSquareChatName();
      } else {
        this.squareChatName = value;
      }

    case PROFILEIMAGEOBSHASH_FIELD_ID:
      if (value == null) {
        unsetProfileImageObsHash();
      } else {
        this.profileImageObsHash = value;
      }

    default:
      throw new ArgumentError("Field " + fieldID + " doesn't exist!");
    }
  }

  public function getFieldValue(fieldID : Int) : Dynamic {
    switch (fieldID) {
    case SQUARECHATMID_FIELD_ID:
      return this.squareChatMid;
    case SQUARECHATNAME_FIELD_ID:
      return this.squareChatName;
    case PROFILEIMAGEOBSHASH_FIELD_ID:
      return this.profileImageObsHash;
    default:
      throw new ArgumentError("Field " + fieldID + " doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  public function isSet(fieldID : Int) : Bool {
    switch (fieldID) {
    case SQUARECHATMID_FIELD_ID:
      return isSetSquareChatMid();
    case SQUARECHATNAME_FIELD_ID:
      return isSetSquareChatName();
    case PROFILEIMAGEOBSHASH_FIELD_ID:
      return isSetProfileImageObsHash();
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
          case SQUARECHATMID_FIELD_ID:
            if (field.type == TType.STRING) {
              this.squareChatMid = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case SQUARECHATNAME_FIELD_ID:
            if (field.type == TType.STRING) {
              this.squareChatName = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case PROFILEIMAGEOBSHASH_FIELD_ID:
            if (field.type == TType.STRING) {
              this.profileImageObsHash = iprot.readString();
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
      if (this.squareChatMid != null) {
        oprot.writeFieldBegin(SQUARE_CHAT_MID_FIELD_DESC);
        oprot.writeString(this.squareChatMid);
        oprot.writeFieldEnd();
      }
      if (this.squareChatName != null) {
        oprot.writeFieldBegin(SQUARE_CHAT_NAME_FIELD_DESC);
        oprot.writeString(this.squareChatName);
        oprot.writeFieldEnd();
      }
      if (this.profileImageObsHash != null) {
        oprot.writeFieldBegin(PROFILE_IMAGE_OBS_HASH_FIELD_DESC);
        oprot.writeString(this.profileImageObsHash);
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
    var ret : String = "SquareEventNotificationSquareChatDelete(";
    var first : Bool = true;

    ret += "squareChatMid:";
    if (this.squareChatMid == null) {
      ret += "null";
    } else {
      ret += this.squareChatMid;
    }
    first = false;
    if (!first) ret +=  ", ";
    ret += "squareChatName:";
    if (this.squareChatName == null) {
      ret += "null";
    } else {
      ret += this.squareChatName;
    }
    first = false;
    if (!first) ret +=  ", ";
    ret += "profileImageObsHash:";
    if (this.profileImageObsHash == null) {
      ret += "null";
    } else {
      ret += this.profileImageObsHash;
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

