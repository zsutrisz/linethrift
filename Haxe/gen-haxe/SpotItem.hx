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


class SpotItem implements TBase {
  
  static var STRUCT_DESC = { new TStruct("SpotItem"); };
  static var NAME_FIELD_DESC = { new TField("name", TType.STRING, 2); };
  static var PHONE_FIELD_DESC = { new TField("phone", TType.STRING, 3); };
  static var CATEGORY_FIELD_DESC = { new TField("category", TType.I32, 4); };
  static var MID_FIELD_DESC = { new TField("mid", TType.STRING, 5); };
  static var COUNTRY_AREA_CODE_FIELD_DESC = { new TField("countryAreaCode", TType.STRING, 6); };
  static var FREE_PHONE_CALLABLE_FIELD_DESC = { new TField("freePhoneCallable", TType.BOOL, 10); };

  @:isVar
  public var name(get,set) : String;
  @:isVar
  public var phone(get,set) : String;
  @:isVar
  public var category(get,set) : Int;
  @:isVar
  public var mid(get,set) : String;
  @:isVar
  public var countryAreaCode(get,set) : String;
  @:isVar
  public var freePhoneCallable(get,set) : Bool;

  inline static var NAME_FIELD_ID : Int = 2;
  inline static var PHONE_FIELD_ID : Int = 3;
  inline static var CATEGORY_FIELD_ID : Int = 4;
  inline static var MID_FIELD_ID : Int = 5;
  inline static var COUNTRYAREACODE_FIELD_ID : Int = 6;
  inline static var FREEPHONECALLABLE_FIELD_ID : Int = 10;

  private var __isset_category : Bool = false;
  private var __isset_freePhoneCallable : Bool = false;

  public function new() {
  }

  public function get_name() : String {
    return this.name;
  }

  public function set_name(name:String) : String {
    this.name = name;
    return this.name;
  }

  public function unsetName() : Void {
    this.name = null;
  }

  // Returns true if field name is set (has been assigned a value) and false otherwise
  public function isSetName() : Bool {
    return this.name != null;
  }

  public function get_phone() : String {
    return this.phone;
  }

  public function set_phone(phone:String) : String {
    this.phone = phone;
    return this.phone;
  }

  public function unsetPhone() : Void {
    this.phone = null;
  }

  // Returns true if field phone is set (has been assigned a value) and false otherwise
  public function isSetPhone() : Bool {
    return this.phone != null;
  }

  public function get_category() : Int {
    return this.category;
  }

  public function set_category(category:Int) : Int {
    this.category = category;
    this.__isset_category = true;
    return this.category;
  }

  public function unsetCategory() : Void {
    this.__isset_category = false;
  }

  // Returns true if field category is set (has been assigned a value) and false otherwise
  public function isSetCategory() : Bool {
    return this.__isset_category;
  }

  public function get_mid() : String {
    return this.mid;
  }

  public function set_mid(mid:String) : String {
    this.mid = mid;
    return this.mid;
  }

  public function unsetMid() : Void {
    this.mid = null;
  }

  // Returns true if field mid is set (has been assigned a value) and false otherwise
  public function isSetMid() : Bool {
    return this.mid != null;
  }

  public function get_countryAreaCode() : String {
    return this.countryAreaCode;
  }

  public function set_countryAreaCode(countryAreaCode:String) : String {
    this.countryAreaCode = countryAreaCode;
    return this.countryAreaCode;
  }

  public function unsetCountryAreaCode() : Void {
    this.countryAreaCode = null;
  }

  // Returns true if field countryAreaCode is set (has been assigned a value) and false otherwise
  public function isSetCountryAreaCode() : Bool {
    return this.countryAreaCode != null;
  }

  public function get_freePhoneCallable() : Bool {
    return this.freePhoneCallable;
  }

  public function set_freePhoneCallable(freePhoneCallable:Bool) : Bool {
    this.freePhoneCallable = freePhoneCallable;
    this.__isset_freePhoneCallable = true;
    return this.freePhoneCallable;
  }

  public function unsetFreePhoneCallable() : Void {
    this.__isset_freePhoneCallable = false;
  }

  // Returns true if field freePhoneCallable is set (has been assigned a value) and false otherwise
  public function isSetFreePhoneCallable() : Bool {
    return this.__isset_freePhoneCallable;
  }

  public function setFieldValue(fieldID : Int, value : Dynamic) : Void {
    switch (fieldID) {
    case NAME_FIELD_ID:
      if (value == null) {
        unsetName();
      } else {
        this.name = value;
      }

    case PHONE_FIELD_ID:
      if (value == null) {
        unsetPhone();
      } else {
        this.phone = value;
      }

    case CATEGORY_FIELD_ID:
      if (value == null) {
        unsetCategory();
      } else {
        this.category = value;
      }

    case MID_FIELD_ID:
      if (value == null) {
        unsetMid();
      } else {
        this.mid = value;
      }

    case COUNTRYAREACODE_FIELD_ID:
      if (value == null) {
        unsetCountryAreaCode();
      } else {
        this.countryAreaCode = value;
      }

    case FREEPHONECALLABLE_FIELD_ID:
      if (value == null) {
        unsetFreePhoneCallable();
      } else {
        this.freePhoneCallable = value;
      }

    default:
      throw new ArgumentError("Field " + fieldID + " doesn't exist!");
    }
  }

  public function getFieldValue(fieldID : Int) : Dynamic {
    switch (fieldID) {
    case NAME_FIELD_ID:
      return this.name;
    case PHONE_FIELD_ID:
      return this.phone;
    case CATEGORY_FIELD_ID:
      return this.category;
    case MID_FIELD_ID:
      return this.mid;
    case COUNTRYAREACODE_FIELD_ID:
      return this.countryAreaCode;
    case FREEPHONECALLABLE_FIELD_ID:
      return this.freePhoneCallable;
    default:
      throw new ArgumentError("Field " + fieldID + " doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  public function isSet(fieldID : Int) : Bool {
    switch (fieldID) {
    case NAME_FIELD_ID:
      return isSetName();
    case PHONE_FIELD_ID:
      return isSetPhone();
    case CATEGORY_FIELD_ID:
      return isSetCategory();
    case MID_FIELD_ID:
      return isSetMid();
    case COUNTRYAREACODE_FIELD_ID:
      return isSetCountryAreaCode();
    case FREEPHONECALLABLE_FIELD_ID:
      return isSetFreePhoneCallable();
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
          case NAME_FIELD_ID:
            if (field.type == TType.STRING) {
              this.name = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case PHONE_FIELD_ID:
            if (field.type == TType.STRING) {
              this.phone = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case CATEGORY_FIELD_ID:
            if (field.type == TType.I32) {
              this.category = iprot.readI32();
              this.__isset_category = true;
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case MID_FIELD_ID:
            if (field.type == TType.STRING) {
              this.mid = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case COUNTRYAREACODE_FIELD_ID:
            if (field.type == TType.STRING) {
              this.countryAreaCode = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case FREEPHONECALLABLE_FIELD_ID:
            if (field.type == TType.BOOL) {
              this.freePhoneCallable = iprot.readBool();
              this.__isset_freePhoneCallable = true;
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
      if (this.name != null) {
        oprot.writeFieldBegin(NAME_FIELD_DESC);
        oprot.writeString(this.name);
        oprot.writeFieldEnd();
      }
      if (this.phone != null) {
        oprot.writeFieldBegin(PHONE_FIELD_DESC);
        oprot.writeString(this.phone);
        oprot.writeFieldEnd();
      }
      oprot.writeFieldBegin(CATEGORY_FIELD_DESC);
      oprot.writeI32(this.category);
      oprot.writeFieldEnd();
      if (this.mid != null) {
        oprot.writeFieldBegin(MID_FIELD_DESC);
        oprot.writeString(this.mid);
        oprot.writeFieldEnd();
      }
      if (this.countryAreaCode != null) {
        oprot.writeFieldBegin(COUNTRY_AREA_CODE_FIELD_DESC);
        oprot.writeString(this.countryAreaCode);
        oprot.writeFieldEnd();
      }
      oprot.writeFieldBegin(FREE_PHONE_CALLABLE_FIELD_DESC);
      oprot.writeBool(this.freePhoneCallable);
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
    var ret : String = "SpotItem(";
    var first : Bool = true;

    ret += "name:";
    if (this.name == null) {
      ret += "null";
    } else {
      ret += this.name;
    }
    first = false;
    if (!first) ret +=  ", ";
    ret += "phone:";
    if (this.phone == null) {
      ret += "null";
    } else {
      ret += this.phone;
    }
    first = false;
    if (!first) ret +=  ", ";
    ret += "category:";
    var category_name : String = .SpotCategory.VALUES_TO_NAMES[this.category];
    if (category_name != null) {
      ret += category_name;
      ret += " (";
    }
    ret += this.category;
    if (category_name != null) {
      ret += ")";
    }
    first = false;
    if (!first) ret +=  ", ";
    ret += "mid:";
    if (this.mid == null) {
      ret += "null";
    } else {
      ret += this.mid;
    }
    first = false;
    if (!first) ret +=  ", ";
    ret += "countryAreaCode:";
    if (this.countryAreaCode == null) {
      ret += "null";
    } else {
      ret += this.countryAreaCode;
    }
    first = false;
    if (!first) ret +=  ", ";
    ret += "freePhoneCallable:";
    ret += this.freePhoneCallable;
    first = false;
    ret += ")";
    return ret;
  }

  public function validate() : Void {
    // check for required fields
    // check that fields of type enum have valid values
    if (isSetCategory() && !.SpotCategory.VALID_VALUES.contains(category)){
      throw new TProtocolException(TProtocolException.UNKNOWN, "The field 'category' has been assigned the invalid value " + category);
    }
  }

}
