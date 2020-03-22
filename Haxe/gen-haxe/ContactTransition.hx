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


class ContactTransition implements TBase {
  
  static var STRUCT_DESC = { new TStruct("ContactTransition"); };
  static var OWNER_MID_FIELD_DESC = { new TField("ownerMid", TType.STRING, 1); };
  static var TARGET_MID_FIELD_DESC = { new TField("targetMid", TType.STRING, 2); };
  static var PREVIOUS_STATUS_FIELD_DESC = { new TField("previousStatus", TType.I32, 3); };
  static var RESULT_STATUS_FIELD_DESC = { new TField("resultStatus", TType.I32, 4); };

  @:isVar
  public var ownerMid(get,set) : String;
  @:isVar
  public var targetMid(get,set) : String;
  @:isVar
  public var previousStatus(get,set) : Int;
  @:isVar
  public var resultStatus(get,set) : Int;

  inline static var OWNERMID_FIELD_ID : Int = 1;
  inline static var TARGETMID_FIELD_ID : Int = 2;
  inline static var PREVIOUSSTATUS_FIELD_ID : Int = 3;
  inline static var RESULTSTATUS_FIELD_ID : Int = 4;

  private var __isset_previousStatus : Bool = false;
  private var __isset_resultStatus : Bool = false;

  public function new() {
  }

  public function get_ownerMid() : String {
    return this.ownerMid;
  }

  public function set_ownerMid(ownerMid:String) : String {
    this.ownerMid = ownerMid;
    return this.ownerMid;
  }

  public function unsetOwnerMid() : Void {
    this.ownerMid = null;
  }

  // Returns true if field ownerMid is set (has been assigned a value) and false otherwise
  public function isSetOwnerMid() : Bool {
    return this.ownerMid != null;
  }

  public function get_targetMid() : String {
    return this.targetMid;
  }

  public function set_targetMid(targetMid:String) : String {
    this.targetMid = targetMid;
    return this.targetMid;
  }

  public function unsetTargetMid() : Void {
    this.targetMid = null;
  }

  // Returns true if field targetMid is set (has been assigned a value) and false otherwise
  public function isSetTargetMid() : Bool {
    return this.targetMid != null;
  }

  public function get_previousStatus() : Int {
    return this.previousStatus;
  }

  public function set_previousStatus(previousStatus:Int) : Int {
    this.previousStatus = previousStatus;
    this.__isset_previousStatus = true;
    return this.previousStatus;
  }

  public function unsetPreviousStatus() : Void {
    this.__isset_previousStatus = false;
  }

  // Returns true if field previousStatus is set (has been assigned a value) and false otherwise
  public function isSetPreviousStatus() : Bool {
    return this.__isset_previousStatus;
  }

  public function get_resultStatus() : Int {
    return this.resultStatus;
  }

  public function set_resultStatus(resultStatus:Int) : Int {
    this.resultStatus = resultStatus;
    this.__isset_resultStatus = true;
    return this.resultStatus;
  }

  public function unsetResultStatus() : Void {
    this.__isset_resultStatus = false;
  }

  // Returns true if field resultStatus is set (has been assigned a value) and false otherwise
  public function isSetResultStatus() : Bool {
    return this.__isset_resultStatus;
  }

  public function setFieldValue(fieldID : Int, value : Dynamic) : Void {
    switch (fieldID) {
    case OWNERMID_FIELD_ID:
      if (value == null) {
        unsetOwnerMid();
      } else {
        this.ownerMid = value;
      }

    case TARGETMID_FIELD_ID:
      if (value == null) {
        unsetTargetMid();
      } else {
        this.targetMid = value;
      }

    case PREVIOUSSTATUS_FIELD_ID:
      if (value == null) {
        unsetPreviousStatus();
      } else {
        this.previousStatus = value;
      }

    case RESULTSTATUS_FIELD_ID:
      if (value == null) {
        unsetResultStatus();
      } else {
        this.resultStatus = value;
      }

    default:
      throw new ArgumentError("Field " + fieldID + " doesn't exist!");
    }
  }

  public function getFieldValue(fieldID : Int) : Dynamic {
    switch (fieldID) {
    case OWNERMID_FIELD_ID:
      return this.ownerMid;
    case TARGETMID_FIELD_ID:
      return this.targetMid;
    case PREVIOUSSTATUS_FIELD_ID:
      return this.previousStatus;
    case RESULTSTATUS_FIELD_ID:
      return this.resultStatus;
    default:
      throw new ArgumentError("Field " + fieldID + " doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  public function isSet(fieldID : Int) : Bool {
    switch (fieldID) {
    case OWNERMID_FIELD_ID:
      return isSetOwnerMid();
    case TARGETMID_FIELD_ID:
      return isSetTargetMid();
    case PREVIOUSSTATUS_FIELD_ID:
      return isSetPreviousStatus();
    case RESULTSTATUS_FIELD_ID:
      return isSetResultStatus();
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
          case OWNERMID_FIELD_ID:
            if (field.type == TType.STRING) {
              this.ownerMid = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case TARGETMID_FIELD_ID:
            if (field.type == TType.STRING) {
              this.targetMid = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case PREVIOUSSTATUS_FIELD_ID:
            if (field.type == TType.I32) {
              this.previousStatus = iprot.readI32();
              this.__isset_previousStatus = true;
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case RESULTSTATUS_FIELD_ID:
            if (field.type == TType.I32) {
              this.resultStatus = iprot.readI32();
              this.__isset_resultStatus = true;
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
      if (this.ownerMid != null) {
        oprot.writeFieldBegin(OWNER_MID_FIELD_DESC);
        oprot.writeString(this.ownerMid);
        oprot.writeFieldEnd();
      }
      if (this.targetMid != null) {
        oprot.writeFieldBegin(TARGET_MID_FIELD_DESC);
        oprot.writeString(this.targetMid);
        oprot.writeFieldEnd();
      }
      oprot.writeFieldBegin(PREVIOUS_STATUS_FIELD_DESC);
      oprot.writeI32(this.previousStatus);
      oprot.writeFieldEnd();
      oprot.writeFieldBegin(RESULT_STATUS_FIELD_DESC);
      oprot.writeI32(this.resultStatus);
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
    var ret : String = "ContactTransition(";
    var first : Bool = true;

    ret += "ownerMid:";
    if (this.ownerMid == null) {
      ret += "null";
    } else {
      ret += this.ownerMid;
    }
    first = false;
    if (!first) ret +=  ", ";
    ret += "targetMid:";
    if (this.targetMid == null) {
      ret += "null";
    } else {
      ret += this.targetMid;
    }
    first = false;
    if (!first) ret +=  ", ";
    ret += "previousStatus:";
    var previousStatus_name : String = .ContactStatus.VALUES_TO_NAMES[this.previousStatus];
    if (previousStatus_name != null) {
      ret += previousStatus_name;
      ret += " (";
    }
    ret += this.previousStatus;
    if (previousStatus_name != null) {
      ret += ")";
    }
    first = false;
    if (!first) ret +=  ", ";
    ret += "resultStatus:";
    var resultStatus_name : String = .ContactStatus.VALUES_TO_NAMES[this.resultStatus];
    if (resultStatus_name != null) {
      ret += resultStatus_name;
      ret += " (";
    }
    ret += this.resultStatus;
    if (resultStatus_name != null) {
      ret += ")";
    }
    first = false;
    ret += ")";
    return ret;
  }

  public function validate() : Void {
    // check for required fields
    // check that fields of type enum have valid values
    if (isSetPreviousStatus() && !.ContactStatus.VALID_VALUES.contains(previousStatus)){
      throw new TProtocolException(TProtocolException.UNKNOWN, "The field 'previousStatus' has been assigned the invalid value " + previousStatus);
    }
    if (isSetResultStatus() && !.ContactStatus.VALID_VALUES.contains(resultStatus)){
      throw new TProtocolException(TProtocolException.UNKNOWN, "The field 'resultStatus' has been assigned the invalid value " + resultStatus);
    }
  }

}
