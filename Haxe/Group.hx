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


class Group implements TBase {
  
  static var STRUCT_DESC = { new TStruct("Group"); };
  static var ID_FIELD_DESC = { new TField("id", TType.STRING, 1); };
  static var CREATED_TIME_FIELD_DESC = { new TField("createdTime", TType.I64, 2); };
  static var NAME_FIELD_DESC = { new TField("name", TType.STRING, 10); };
  static var PICTURE_STATUS_FIELD_DESC = { new TField("pictureStatus", TType.STRING, 11); };
  static var PREVENTED_JOIN_BY_TICKET_FIELD_DESC = { new TField("preventedJoinByTicket", TType.BOOL, 12); };
  static var GROUP_PREFERENCE_FIELD_DESC = { new TField("groupPreference", TType.STRUCT, 13); };
  static var MEMBERS_FIELD_DESC = { new TField("members", TType.LIST, 20); };
  static var CREATOR_FIELD_DESC = { new TField("creator", TType.STRUCT, 21); };
  static var INVITEE_FIELD_DESC = { new TField("invitee", TType.LIST, 22); };
  static var NOTIFICATION_DISABLED_FIELD_DESC = { new TField("notificationDisabled", TType.BOOL, 31); };

  @:isVar
  public var id(get,set) : String;
  @:isVar
  public var createdTime(get,set) : haxe.Int64;
  @:isVar
  public var name(get,set) : String;
  @:isVar
  public var pictureStatus(get,set) : String;
  @:isVar
  public var preventedJoinByTicket(get,set) : Bool;
  @:isVar
  public var groupPreference(get,set) : GroupPreference;
  @:isVar
  public var members(get,set) : List< Contact>;
  @:isVar
  public var creator(get,set) : Contact;
  @:isVar
  public var invitee(get,set) : List< Contact>;
  @:isVar
  public var notificationDisabled(get,set) : Bool;

  inline static var ID_FIELD_ID : Int = 1;
  inline static var CREATEDTIME_FIELD_ID : Int = 2;
  inline static var NAME_FIELD_ID : Int = 10;
  inline static var PICTURESTATUS_FIELD_ID : Int = 11;
  inline static var PREVENTEDJOINBYTICKET_FIELD_ID : Int = 12;
  inline static var GROUPPREFERENCE_FIELD_ID : Int = 13;
  inline static var MEMBERS_FIELD_ID : Int = 20;
  inline static var CREATOR_FIELD_ID : Int = 21;
  inline static var INVITEE_FIELD_ID : Int = 22;
  inline static var NOTIFICATIONDISABLED_FIELD_ID : Int = 31;

  private var __isset_createdTime : Bool = false;
  private var __isset_preventedJoinByTicket : Bool = false;
  private var __isset_notificationDisabled : Bool = false;

  public function new() {
  }

  public function get_id() : String {
    return this.id;
  }

  public function set_id(id:String) : String {
    this.id = id;
    return this.id;
  }

  public function unsetId() : Void {
    this.id = null;
  }

  // Returns true if field id is set (has been assigned a value) and false otherwise
  public function isSetId() : Bool {
    return this.id != null;
  }

  public function get_createdTime() : haxe.Int64 {
    return this.createdTime;
  }

  public function set_createdTime(createdTime:haxe.Int64) : haxe.Int64 {
    this.createdTime = createdTime;
    this.__isset_createdTime = true;
    return this.createdTime;
  }

  public function unsetCreatedTime() : Void {
    this.__isset_createdTime = false;
  }

  // Returns true if field createdTime is set (has been assigned a value) and false otherwise
  public function isSetCreatedTime() : Bool {
    return this.__isset_createdTime;
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

  public function get_pictureStatus() : String {
    return this.pictureStatus;
  }

  public function set_pictureStatus(pictureStatus:String) : String {
    this.pictureStatus = pictureStatus;
    return this.pictureStatus;
  }

  public function unsetPictureStatus() : Void {
    this.pictureStatus = null;
  }

  // Returns true if field pictureStatus is set (has been assigned a value) and false otherwise
  public function isSetPictureStatus() : Bool {
    return this.pictureStatus != null;
  }

  public function get_preventedJoinByTicket() : Bool {
    return this.preventedJoinByTicket;
  }

  public function set_preventedJoinByTicket(preventedJoinByTicket:Bool) : Bool {
    this.preventedJoinByTicket = preventedJoinByTicket;
    this.__isset_preventedJoinByTicket = true;
    return this.preventedJoinByTicket;
  }

  public function unsetPreventedJoinByTicket() : Void {
    this.__isset_preventedJoinByTicket = false;
  }

  // Returns true if field preventedJoinByTicket is set (has been assigned a value) and false otherwise
  public function isSetPreventedJoinByTicket() : Bool {
    return this.__isset_preventedJoinByTicket;
  }

  public function get_groupPreference() : GroupPreference {
    return this.groupPreference;
  }

  public function set_groupPreference(groupPreference:GroupPreference) : GroupPreference {
    this.groupPreference = groupPreference;
    return this.groupPreference;
  }

  public function unsetGroupPreference() : Void {
    this.groupPreference = null;
  }

  // Returns true if field groupPreference is set (has been assigned a value) and false otherwise
  public function isSetGroupPreference() : Bool {
    return this.groupPreference != null;
  }

  public function get_members() : List< Contact> {
    return this.members;
  }

  public function set_members(members:List< Contact>) : List< Contact> {
    this.members = members;
    return this.members;
  }

  public function unsetMembers() : Void {
    this.members = null;
  }

  // Returns true if field members is set (has been assigned a value) and false otherwise
  public function isSetMembers() : Bool {
    return this.members != null;
  }

  public function get_creator() : Contact {
    return this.creator;
  }

  public function set_creator(creator:Contact) : Contact {
    this.creator = creator;
    return this.creator;
  }

  public function unsetCreator() : Void {
    this.creator = null;
  }

  // Returns true if field creator is set (has been assigned a value) and false otherwise
  public function isSetCreator() : Bool {
    return this.creator != null;
  }

  public function get_invitee() : List< Contact> {
    return this.invitee;
  }

  public function set_invitee(invitee:List< Contact>) : List< Contact> {
    this.invitee = invitee;
    return this.invitee;
  }

  public function unsetInvitee() : Void {
    this.invitee = null;
  }

  // Returns true if field invitee is set (has been assigned a value) and false otherwise
  public function isSetInvitee() : Bool {
    return this.invitee != null;
  }

  public function get_notificationDisabled() : Bool {
    return this.notificationDisabled;
  }

  public function set_notificationDisabled(notificationDisabled:Bool) : Bool {
    this.notificationDisabled = notificationDisabled;
    this.__isset_notificationDisabled = true;
    return this.notificationDisabled;
  }

  public function unsetNotificationDisabled() : Void {
    this.__isset_notificationDisabled = false;
  }

  // Returns true if field notificationDisabled is set (has been assigned a value) and false otherwise
  public function isSetNotificationDisabled() : Bool {
    return this.__isset_notificationDisabled;
  }

  public function setFieldValue(fieldID : Int, value : Dynamic) : Void {
    switch (fieldID) {
    case ID_FIELD_ID:
      if (value == null) {
        unsetId();
      } else {
        this.id = value;
      }

    case CREATEDTIME_FIELD_ID:
      if (value == null) {
        unsetCreatedTime();
      } else {
        this.createdTime = value;
      }

    case NAME_FIELD_ID:
      if (value == null) {
        unsetName();
      } else {
        this.name = value;
      }

    case PICTURESTATUS_FIELD_ID:
      if (value == null) {
        unsetPictureStatus();
      } else {
        this.pictureStatus = value;
      }

    case PREVENTEDJOINBYTICKET_FIELD_ID:
      if (value == null) {
        unsetPreventedJoinByTicket();
      } else {
        this.preventedJoinByTicket = value;
      }

    case GROUPPREFERENCE_FIELD_ID:
      if (value == null) {
        unsetGroupPreference();
      } else {
        this.groupPreference = value;
      }

    case MEMBERS_FIELD_ID:
      if (value == null) {
        unsetMembers();
      } else {
        this.members = value;
      }

    case CREATOR_FIELD_ID:
      if (value == null) {
        unsetCreator();
      } else {
        this.creator = value;
      }

    case INVITEE_FIELD_ID:
      if (value == null) {
        unsetInvitee();
      } else {
        this.invitee = value;
      }

    case NOTIFICATIONDISABLED_FIELD_ID:
      if (value == null) {
        unsetNotificationDisabled();
      } else {
        this.notificationDisabled = value;
      }

    default:
      throw new ArgumentError("Field " + fieldID + " doesn't exist!");
    }
  }

  public function getFieldValue(fieldID : Int) : Dynamic {
    switch (fieldID) {
    case ID_FIELD_ID:
      return this.id;
    case CREATEDTIME_FIELD_ID:
      return this.createdTime;
    case NAME_FIELD_ID:
      return this.name;
    case PICTURESTATUS_FIELD_ID:
      return this.pictureStatus;
    case PREVENTEDJOINBYTICKET_FIELD_ID:
      return this.preventedJoinByTicket;
    case GROUPPREFERENCE_FIELD_ID:
      return this.groupPreference;
    case MEMBERS_FIELD_ID:
      return this.members;
    case CREATOR_FIELD_ID:
      return this.creator;
    case INVITEE_FIELD_ID:
      return this.invitee;
    case NOTIFICATIONDISABLED_FIELD_ID:
      return this.notificationDisabled;
    default:
      throw new ArgumentError("Field " + fieldID + " doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  public function isSet(fieldID : Int) : Bool {
    switch (fieldID) {
    case ID_FIELD_ID:
      return isSetId();
    case CREATEDTIME_FIELD_ID:
      return isSetCreatedTime();
    case NAME_FIELD_ID:
      return isSetName();
    case PICTURESTATUS_FIELD_ID:
      return isSetPictureStatus();
    case PREVENTEDJOINBYTICKET_FIELD_ID:
      return isSetPreventedJoinByTicket();
    case GROUPPREFERENCE_FIELD_ID:
      return isSetGroupPreference();
    case MEMBERS_FIELD_ID:
      return isSetMembers();
    case CREATOR_FIELD_ID:
      return isSetCreator();
    case INVITEE_FIELD_ID:
      return isSetInvitee();
    case NOTIFICATIONDISABLED_FIELD_ID:
      return isSetNotificationDisabled();
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
          case ID_FIELD_ID:
            if (field.type == TType.STRING) {
              this.id = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case CREATEDTIME_FIELD_ID:
            if (field.type == TType.I64) {
              this.createdTime = iprot.readI64();
              this.__isset_createdTime = true;
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case NAME_FIELD_ID:
            if (field.type == TType.STRING) {
              this.name = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case PICTURESTATUS_FIELD_ID:
            if (field.type == TType.STRING) {
              this.pictureStatus = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case PREVENTEDJOINBYTICKET_FIELD_ID:
            if (field.type == TType.BOOL) {
              this.preventedJoinByTicket = iprot.readBool();
              this.__isset_preventedJoinByTicket = true;
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case GROUPPREFERENCE_FIELD_ID:
            if (field.type == TType.STRUCT) {
              this.groupPreference = new GroupPreference();
              this.groupPreference.read(iprot);
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case MEMBERS_FIELD_ID:
            if (field.type == TType.LIST) {
              {
                var _list151 = iprot.readListBegin();
                this.members = new List< Contact>();
                for( _i152 in 0 ... _list151.size)
                {
                  var _elem153 : Contact;
                  _elem153 = new Contact();
                  _elem153.read(iprot);
                  this.members.add(_elem153);
                }
                iprot.readListEnd();
              }
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case CREATOR_FIELD_ID:
            if (field.type == TType.STRUCT) {
              this.creator = new Contact();
              this.creator.read(iprot);
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case INVITEE_FIELD_ID:
            if (field.type == TType.LIST) {
              {
                var _list154 = iprot.readListBegin();
                this.invitee = new List< Contact>();
                for( _i155 in 0 ... _list154.size)
                {
                  var _elem156 : Contact;
                  _elem156 = new Contact();
                  _elem156.read(iprot);
                  this.invitee.add(_elem156);
                }
                iprot.readListEnd();
              }
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case NOTIFICATIONDISABLED_FIELD_ID:
            if (field.type == TType.BOOL) {
              this.notificationDisabled = iprot.readBool();
              this.__isset_notificationDisabled = true;
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
      if (this.id != null) {
        oprot.writeFieldBegin(ID_FIELD_DESC);
        oprot.writeString(this.id);
        oprot.writeFieldEnd();
      }
      oprot.writeFieldBegin(CREATED_TIME_FIELD_DESC);
      oprot.writeI64(this.createdTime);
      oprot.writeFieldEnd();
      if (this.name != null) {
        oprot.writeFieldBegin(NAME_FIELD_DESC);
        oprot.writeString(this.name);
        oprot.writeFieldEnd();
      }
      if (this.pictureStatus != null) {
        oprot.writeFieldBegin(PICTURE_STATUS_FIELD_DESC);
        oprot.writeString(this.pictureStatus);
        oprot.writeFieldEnd();
      }
      oprot.writeFieldBegin(PREVENTED_JOIN_BY_TICKET_FIELD_DESC);
      oprot.writeBool(this.preventedJoinByTicket);
      oprot.writeFieldEnd();
      if (this.groupPreference != null) {
        oprot.writeFieldBegin(GROUP_PREFERENCE_FIELD_DESC);
        this.groupPreference.write(oprot);
        oprot.writeFieldEnd();
      }
      if (this.members != null) {
        oprot.writeFieldBegin(MEMBERS_FIELD_DESC);
        {
          oprot.writeListBegin(new TList(TType.STRUCT, this.members.length));
          for( elem157 in this.members)
          {
            elem157.write(oprot);
          }
          oprot.writeListEnd();
        }
        oprot.writeFieldEnd();
      }
      if (this.creator != null) {
        oprot.writeFieldBegin(CREATOR_FIELD_DESC);
        this.creator.write(oprot);
        oprot.writeFieldEnd();
      }
      if (this.invitee != null) {
        oprot.writeFieldBegin(INVITEE_FIELD_DESC);
        {
          oprot.writeListBegin(new TList(TType.STRUCT, this.invitee.length));
          for( elem158 in this.invitee)
          {
            elem158.write(oprot);
          }
          oprot.writeListEnd();
        }
        oprot.writeFieldEnd();
      }
      oprot.writeFieldBegin(NOTIFICATION_DISABLED_FIELD_DESC);
      oprot.writeBool(this.notificationDisabled);
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
    var ret : String = "Group(";
    var first : Bool = true;

    ret += "id:";
    if (this.id == null) {
      ret += "null";
    } else {
      ret += this.id;
    }
    first = false;
    if (!first) ret +=  ", ";
    ret += "createdTime:";
    ret += this.createdTime;
    first = false;
    if (!first) ret +=  ", ";
    ret += "name:";
    if (this.name == null) {
      ret += "null";
    } else {
      ret += this.name;
    }
    first = false;
    if (!first) ret +=  ", ";
    ret += "pictureStatus:";
    if (this.pictureStatus == null) {
      ret += "null";
    } else {
      ret += this.pictureStatus;
    }
    first = false;
    if (!first) ret +=  ", ";
    ret += "preventedJoinByTicket:";
    ret += this.preventedJoinByTicket;
    first = false;
    if (!first) ret +=  ", ";
    ret += "groupPreference:";
    if (this.groupPreference == null) {
      ret += "null";
    } else {
      ret += this.groupPreference;
    }
    first = false;
    if (!first) ret +=  ", ";
    ret += "members:";
    if (this.members == null) {
      ret += "null";
    } else {
      ret += this.members;
    }
    first = false;
    if (!first) ret +=  ", ";
    ret += "creator:";
    if (this.creator == null) {
      ret += "null";
    } else {
      ret += this.creator;
    }
    first = false;
    if (!first) ret +=  ", ";
    ret += "invitee:";
    if (this.invitee == null) {
      ret += "null";
    } else {
      ret += this.invitee;
    }
    first = false;
    if (!first) ret +=  ", ";
    ret += "notificationDisabled:";
    ret += this.notificationDisabled;
    first = false;
    ret += ")";
    return ret;
  }

  public function validate() : Void {
    // check for required fields
    // check that fields of type enum have valid values
  }

}

