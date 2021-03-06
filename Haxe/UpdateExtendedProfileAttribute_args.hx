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


class UpdateExtendedProfileAttribute_args implements TBase {
  
  static var STRUCT_DESC = { new TStruct("updateExtendedProfileAttribute_args"); };
  static var ATTR_FIELD_DESC = { new TField("attr", TType.I32, 1); };
  static var EXTENDED_PROFILE_FIELD_DESC = { new TField("extendedProfile", TType.STRUCT, 2); };

  @:isVar
  public var attr(get,set) : Int;
  @:isVar
  public var extendedProfile(get,set) : ExtendedProfile;

  inline static var ATTR_FIELD_ID : Int = 1;
  inline static var EXTENDEDPROFILE_FIELD_ID : Int = 2;

  private var __isset_attr : Bool = false;

  public function new() {
  }

  public function get_attr() : Int {
    return this.attr;
  }

  public function set_attr(attr:Int) : Int {
    this.attr = attr;
    this.__isset_attr = true;
    return this.attr;
  }

  public function unsetAttr() : Void {
    this.__isset_attr = false;
  }

  // Returns true if field attr is set (has been assigned a value) and false otherwise
  public function isSetAttr() : Bool {
    return this.__isset_attr;
  }

  public function get_extendedProfile() : ExtendedProfile {
    return this.extendedProfile;
  }

  public function set_extendedProfile(extendedProfile:ExtendedProfile) : ExtendedProfile {
    this.extendedProfile = extendedProfile;
    return this.extendedProfile;
  }

  public function unsetExtendedProfile() : Void {
    this.extendedProfile = null;
  }

  // Returns true if field extendedProfile is set (has been assigned a value) and false otherwise
  public function isSetExtendedProfile() : Bool {
    return this.extendedProfile != null;
  }

  public function setFieldValue(fieldID : Int, value : Dynamic) : Void {
    switch (fieldID) {
    case ATTR_FIELD_ID:
      if (value == null) {
        unsetAttr();
      } else {
        this.attr = value;
      }

    case EXTENDEDPROFILE_FIELD_ID:
      if (value == null) {
        unsetExtendedProfile();
      } else {
        this.extendedProfile = value;
      }

    default:
      throw new ArgumentError("Field " + fieldID + " doesn't exist!");
    }
  }

  public function getFieldValue(fieldID : Int) : Dynamic {
    switch (fieldID) {
    case ATTR_FIELD_ID:
      return this.attr;
    case EXTENDEDPROFILE_FIELD_ID:
      return this.extendedProfile;
    default:
      throw new ArgumentError("Field " + fieldID + " doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  public function isSet(fieldID : Int) : Bool {
    switch (fieldID) {
    case ATTR_FIELD_ID:
      return isSetAttr();
    case EXTENDEDPROFILE_FIELD_ID:
      return isSetExtendedProfile();
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
          case ATTR_FIELD_ID:
            if (field.type == TType.I32) {
              this.attr = iprot.readI32();
              this.__isset_attr = true;
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case EXTENDEDPROFILE_FIELD_ID:
            if (field.type == TType.STRUCT) {
              this.extendedProfile = new ExtendedProfile();
              this.extendedProfile.read(iprot);
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
      oprot.writeFieldBegin(ATTR_FIELD_DESC);
      oprot.writeI32(this.attr);
      oprot.writeFieldEnd();
      if (this.extendedProfile != null) {
        oprot.writeFieldBegin(EXTENDED_PROFILE_FIELD_DESC);
        this.extendedProfile.write(oprot);
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
    var ret : String = "updateExtendedProfileAttribute_args(";
    var first : Bool = true;

    ret += "attr:";
    var attr_name : String = .ExtendedProfileAttribute.VALUES_TO_NAMES[this.attr];
    if (attr_name != null) {
      ret += attr_name;
      ret += " (";
    }
    ret += this.attr;
    if (attr_name != null) {
      ret += ")";
    }
    first = false;
    if (!first) ret +=  ", ";
    ret += "extendedProfile:";
    if (this.extendedProfile == null) {
      ret += "null";
    } else {
      ret += this.extendedProfile;
    }
    first = false;
    ret += ")";
    return ret;
  }

  public function validate() : Void {
    // check for required fields
    // check that fields of type enum have valid values
    if (isSetAttr() && !.ExtendedProfileAttribute.VALID_VALUES.contains(attr)){
      throw new TProtocolException(TProtocolException.UNKNOWN, "The field 'attr' has been assigned the invalid value " + attr);
    }
  }

}

