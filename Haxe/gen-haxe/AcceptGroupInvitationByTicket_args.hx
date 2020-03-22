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


class AcceptGroupInvitationByTicket_args implements TBase {
  
  static var STRUCT_DESC = { new TStruct("acceptGroupInvitationByTicket_args"); };
  static var REQ_SEQ_FIELD_DESC = { new TField("reqSeq", TType.I32, 1); };
  static var GROUP_MID_FIELD_DESC = { new TField("GroupMid", TType.STRING, 2); };
  static var TICKET_ID_FIELD_DESC = { new TField("ticketId", TType.STRING, 3); };

  @:isVar
  public var reqSeq(get,set) : haxe.Int32;
  @:isVar
  public var GroupMid(get,set) : String;
  @:isVar
  public var ticketId(get,set) : String;

  inline static var REQSEQ_FIELD_ID : Int = 1;
  inline static var GROUPMID_FIELD_ID : Int = 2;
  inline static var TICKETID_FIELD_ID : Int = 3;

  private var __isset_reqSeq : Bool = false;

  public function new() {
  }

  public function get_reqSeq() : haxe.Int32 {
    return this.reqSeq;
  }

  public function set_reqSeq(reqSeq:haxe.Int32) : haxe.Int32 {
    this.reqSeq = reqSeq;
    this.__isset_reqSeq = true;
    return this.reqSeq;
  }

  public function unsetReqSeq() : Void {
    this.__isset_reqSeq = false;
  }

  // Returns true if field reqSeq is set (has been assigned a value) and false otherwise
  public function isSetReqSeq() : Bool {
    return this.__isset_reqSeq;
  }

  public function get_GroupMid() : String {
    return this.GroupMid;
  }

  public function set_GroupMid(GroupMid:String) : String {
    this.GroupMid = GroupMid;
    return this.GroupMid;
  }

  public function unsetGroupMid() : Void {
    this.GroupMid = null;
  }

  // Returns true if field GroupMid is set (has been assigned a value) and false otherwise
  public function isSetGroupMid() : Bool {
    return this.GroupMid != null;
  }

  public function get_ticketId() : String {
    return this.ticketId;
  }

  public function set_ticketId(ticketId:String) : String {
    this.ticketId = ticketId;
    return this.ticketId;
  }

  public function unsetTicketId() : Void {
    this.ticketId = null;
  }

  // Returns true if field ticketId is set (has been assigned a value) and false otherwise
  public function isSetTicketId() : Bool {
    return this.ticketId != null;
  }

  public function setFieldValue(fieldID : Int, value : Dynamic) : Void {
    switch (fieldID) {
    case REQSEQ_FIELD_ID:
      if (value == null) {
        unsetReqSeq();
      } else {
        this.reqSeq = value;
      }

    case GROUPMID_FIELD_ID:
      if (value == null) {
        unsetGroupMid();
      } else {
        this.GroupMid = value;
      }

    case TICKETID_FIELD_ID:
      if (value == null) {
        unsetTicketId();
      } else {
        this.ticketId = value;
      }

    default:
      throw new ArgumentError("Field " + fieldID + " doesn't exist!");
    }
  }

  public function getFieldValue(fieldID : Int) : Dynamic {
    switch (fieldID) {
    case REQSEQ_FIELD_ID:
      return this.reqSeq;
    case GROUPMID_FIELD_ID:
      return this.GroupMid;
    case TICKETID_FIELD_ID:
      return this.ticketId;
    default:
      throw new ArgumentError("Field " + fieldID + " doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  public function isSet(fieldID : Int) : Bool {
    switch (fieldID) {
    case REQSEQ_FIELD_ID:
      return isSetReqSeq();
    case GROUPMID_FIELD_ID:
      return isSetGroupMid();
    case TICKETID_FIELD_ID:
      return isSetTicketId();
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
          case REQSEQ_FIELD_ID:
            if (field.type == TType.I32) {
              this.reqSeq = iprot.readI32();
              this.__isset_reqSeq = true;
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case GROUPMID_FIELD_ID:
            if (field.type == TType.STRING) {
              this.GroupMid = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case TICKETID_FIELD_ID:
            if (field.type == TType.STRING) {
              this.ticketId = iprot.readString();
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
      oprot.writeFieldBegin(REQ_SEQ_FIELD_DESC);
      oprot.writeI32(this.reqSeq);
      oprot.writeFieldEnd();
      if (this.GroupMid != null) {
        oprot.writeFieldBegin(GROUP_MID_FIELD_DESC);
        oprot.writeString(this.GroupMid);
        oprot.writeFieldEnd();
      }
      if (this.ticketId != null) {
        oprot.writeFieldBegin(TICKET_ID_FIELD_DESC);
        oprot.writeString(this.ticketId);
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
    var ret : String = "acceptGroupInvitationByTicket_args(";
    var first : Bool = true;

    ret += "reqSeq:";
    ret += this.reqSeq;
    first = false;
    if (!first) ret +=  ", ";
    ret += "GroupMid:";
    if (this.GroupMid == null) {
      ret += "null";
    } else {
      ret += this.GroupMid;
    }
    first = false;
    if (!first) ret +=  ", ";
    ret += "ticketId:";
    if (this.ticketId == null) {
      ret += "null";
    } else {
      ret += this.ticketId;
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
