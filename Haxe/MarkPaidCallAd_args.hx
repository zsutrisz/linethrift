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


class MarkPaidCallAd_args implements TBase {
  
  static var STRUCT_DESC = { new TStruct("markPaidCallAd_args"); };
  static var DIALED_NUMBER_FIELD_DESC = { new TField("dialedNumber", TType.STRING, 2); };
  static var LANGUAGE_FIELD_DESC = { new TField("language", TType.STRING, 3); };
  static var DISABLE_CALLER_ID_FIELD_DESC = { new TField("disableCallerId", TType.BOOL, 4); };

  @:isVar
  public var dialedNumber(get,set) : String;
  @:isVar
  public var language(get,set) : String;
  @:isVar
  public var disableCallerId(get,set) : Bool;

  inline static var DIALEDNUMBER_FIELD_ID : Int = 2;
  inline static var LANGUAGE_FIELD_ID : Int = 3;
  inline static var DISABLECALLERID_FIELD_ID : Int = 4;

  private var __isset_disableCallerId : Bool = false;

  public function new() {
  }

  public function get_dialedNumber() : String {
    return this.dialedNumber;
  }

  public function set_dialedNumber(dialedNumber:String) : String {
    this.dialedNumber = dialedNumber;
    return this.dialedNumber;
  }

  public function unsetDialedNumber() : Void {
    this.dialedNumber = null;
  }

  // Returns true if field dialedNumber is set (has been assigned a value) and false otherwise
  public function isSetDialedNumber() : Bool {
    return this.dialedNumber != null;
  }

  public function get_language() : String {
    return this.language;
  }

  public function set_language(language:String) : String {
    this.language = language;
    return this.language;
  }

  public function unsetLanguage() : Void {
    this.language = null;
  }

  // Returns true if field language is set (has been assigned a value) and false otherwise
  public function isSetLanguage() : Bool {
    return this.language != null;
  }

  public function get_disableCallerId() : Bool {
    return this.disableCallerId;
  }

  public function set_disableCallerId(disableCallerId:Bool) : Bool {
    this.disableCallerId = disableCallerId;
    this.__isset_disableCallerId = true;
    return this.disableCallerId;
  }

  public function unsetDisableCallerId() : Void {
    this.__isset_disableCallerId = false;
  }

  // Returns true if field disableCallerId is set (has been assigned a value) and false otherwise
  public function isSetDisableCallerId() : Bool {
    return this.__isset_disableCallerId;
  }

  public function setFieldValue(fieldID : Int, value : Dynamic) : Void {
    switch (fieldID) {
    case DIALEDNUMBER_FIELD_ID:
      if (value == null) {
        unsetDialedNumber();
      } else {
        this.dialedNumber = value;
      }

    case LANGUAGE_FIELD_ID:
      if (value == null) {
        unsetLanguage();
      } else {
        this.language = value;
      }

    case DISABLECALLERID_FIELD_ID:
      if (value == null) {
        unsetDisableCallerId();
      } else {
        this.disableCallerId = value;
      }

    default:
      throw new ArgumentError("Field " + fieldID + " doesn't exist!");
    }
  }

  public function getFieldValue(fieldID : Int) : Dynamic {
    switch (fieldID) {
    case DIALEDNUMBER_FIELD_ID:
      return this.dialedNumber;
    case LANGUAGE_FIELD_ID:
      return this.language;
    case DISABLECALLERID_FIELD_ID:
      return this.disableCallerId;
    default:
      throw new ArgumentError("Field " + fieldID + " doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  public function isSet(fieldID : Int) : Bool {
    switch (fieldID) {
    case DIALEDNUMBER_FIELD_ID:
      return isSetDialedNumber();
    case LANGUAGE_FIELD_ID:
      return isSetLanguage();
    case DISABLECALLERID_FIELD_ID:
      return isSetDisableCallerId();
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
          case DIALEDNUMBER_FIELD_ID:
            if (field.type == TType.STRING) {
              this.dialedNumber = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case LANGUAGE_FIELD_ID:
            if (field.type == TType.STRING) {
              this.language = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case DISABLECALLERID_FIELD_ID:
            if (field.type == TType.BOOL) {
              this.disableCallerId = iprot.readBool();
              this.__isset_disableCallerId = true;
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
      if (this.dialedNumber != null) {
        oprot.writeFieldBegin(DIALED_NUMBER_FIELD_DESC);
        oprot.writeString(this.dialedNumber);
        oprot.writeFieldEnd();
      }
      if (this.language != null) {
        oprot.writeFieldBegin(LANGUAGE_FIELD_DESC);
        oprot.writeString(this.language);
        oprot.writeFieldEnd();
      }
      oprot.writeFieldBegin(DISABLE_CALLER_ID_FIELD_DESC);
      oprot.writeBool(this.disableCallerId);
      oprot.writeFieldEnd();
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
    var ret : String = "markPaidCallAd_args(";
    var first : Bool = true;

    ret += "dialedNumber:";
    if (this.dialedNumber == null) {
      ret += "null";
    } else {
      ret += this.dialedNumber;
    }
    first = false;
    if (!first) ret +=  ", ";
    ret += "language:";
    if (this.language == null) {
      ret += "null";
    } else {
      ret += this.language;
    }
    first = false;
    if (!first) ret +=  ", ";
    ret += "disableCallerId:";
    ret += this.disableCallerId;
    first = false;
    ret += ")";
    return ret;
  }

  public function validate() : Void {
    // check for required fields
    // check that fields of type enum have valid values
  }

}

