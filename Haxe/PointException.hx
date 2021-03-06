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


class PointException extends TException implements TBase {
  
  static var STRUCT_DESC = { new TStruct("PointException"); };
  static var CODE_FIELD_DESC = { new TField("code", TType.I32, 1); };
  static var REASON_FIELD_DESC = { new TField("reason", TType.STRING, 2); };
  static var EXTRA_FIELD_DESC = { new TField("extra", TType.MAP, 3); };

  @:isVar
  public var code(get,set) : Int;
  @:isVar
  public var reason(get,set) : String;
  @:isVar
  public var extra(get,set) : StringMap< String>;

  inline static var CODE_FIELD_ID : Int = 1;
  inline static var REASON_FIELD_ID : Int = 2;
  inline static var EXTRA_FIELD_ID : Int = 3;

  private var __isset_code : Bool = false;

  public function new() {
    super();
  }

  public function get_code() : Int {
    return this.code;
  }

  public function set_code(code:Int) : Int {
    this.code = code;
    this.__isset_code = true;
    return this.code;
  }

  public function unsetCode() : Void {
    this.__isset_code = false;
  }

  // Returns true if field code is set (has been assigned a value) and false otherwise
  public function isSetCode() : Bool {
    return this.__isset_code;
  }

  public function get_reason() : String {
    return this.reason;
  }

  public function set_reason(reason:String) : String {
    this.reason = reason;
    return this.reason;
  }

  public function unsetReason() : Void {
    this.reason = null;
  }

  // Returns true if field reason is set (has been assigned a value) and false otherwise
  public function isSetReason() : Bool {
    return this.reason != null;
  }

  public function get_extra() : StringMap< String> {
    return this.extra;
  }

  public function set_extra(extra:StringMap< String>) : StringMap< String> {
    this.extra = extra;
    return this.extra;
  }

  public function unsetExtra() : Void {
    this.extra = null;
  }

  // Returns true if field extra is set (has been assigned a value) and false otherwise
  public function isSetExtra() : Bool {
    return this.extra != null;
  }

  public function setFieldValue(fieldID : Int, value : Dynamic) : Void {
    switch (fieldID) {
    case CODE_FIELD_ID:
      if (value == null) {
        unsetCode();
      } else {
        this.code = value;
      }

    case REASON_FIELD_ID:
      if (value == null) {
        unsetReason();
      } else {
        this.reason = value;
      }

    case EXTRA_FIELD_ID:
      if (value == null) {
        unsetExtra();
      } else {
        this.extra = value;
      }

    default:
      throw new ArgumentError("Field " + fieldID + " doesn't exist!");
    }
  }

  public function getFieldValue(fieldID : Int) : Dynamic {
    switch (fieldID) {
    case CODE_FIELD_ID:
      return this.code;
    case REASON_FIELD_ID:
      return this.reason;
    case EXTRA_FIELD_ID:
      return this.extra;
    default:
      throw new ArgumentError("Field " + fieldID + " doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  public function isSet(fieldID : Int) : Bool {
    switch (fieldID) {
    case CODE_FIELD_ID:
      return isSetCode();
    case REASON_FIELD_ID:
      return isSetReason();
    case EXTRA_FIELD_ID:
      return isSetExtra();
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
          case CODE_FIELD_ID:
            if (field.type == TType.I32) {
              this.code = iprot.readI32();
              this.__isset_code = true;
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case REASON_FIELD_ID:
            if (field.type == TType.STRING) {
              this.reason = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case EXTRA_FIELD_ID:
            if (field.type == TType.MAP) {
              {
                var _map574 = iprot.readMapBegin();
                this.extra = new StringMap< String>();
                for( _i575 in 0 ... _map574.size)
                {
                  var _key576 : String;
                  var _val577 : String;
                  _key576 = iprot.readString();
                  _val577 = iprot.readString();
                  this.extra.set( _key576, _val577);
                }
                iprot.readMapEnd();
              }
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
      oprot.writeFieldBegin(CODE_FIELD_DESC);
      oprot.writeI32(this.code);
      oprot.writeFieldEnd();
      if (this.reason != null) {
        oprot.writeFieldBegin(REASON_FIELD_DESC);
        oprot.writeString(this.reason);
        oprot.writeFieldEnd();
      }
      if (this.extra != null) {
        oprot.writeFieldBegin(EXTRA_FIELD_DESC);
        {
          var _sizeCounter579 : Int = 0;
          for( _key578 in this.extra) {
            _sizeCounter579++;
          }
          oprot.writeMapBegin(new TMap(TType.STRING, TType.STRING, _sizeCounter579));
          for( elem580 in this.extra.keys())
          {
            oprot.writeString(elem580);
            oprot.writeString(this.extra.get(elem580));
          }
          oprot.writeMapEnd();
        }
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
    var ret : String = "PointException(";
    var first : Bool = true;

    ret += "code:";
    var code_name : String = .PointErrorCode.VALUES_TO_NAMES[this.code];
    if (code_name != null) {
      ret += code_name;
      ret += " (";
    }
    ret += this.code;
    if (code_name != null) {
      ret += ")";
    }
    first = false;
    if (!first) ret +=  ", ";
    ret += "reason:";
    if (this.reason == null) {
      ret += "null";
    } else {
      ret += this.reason;
    }
    first = false;
    if (!first) ret +=  ", ";
    ret += "extra:";
    if (this.extra == null) {
      ret += "null";
    } else {
      ret += this.extra;
    }
    first = false;
    ret += ")";
    return ret;
  }

  public function validate() : Void {
    // check for required fields
    // check that fields of type enum have valid values
    if (isSetCode() && !.PointErrorCode.VALID_VALUES.contains(code)){
      throw new TProtocolException(TProtocolException.UNKNOWN, "The field 'code' has been assigned the invalid value " + code);
    }
  }

}

