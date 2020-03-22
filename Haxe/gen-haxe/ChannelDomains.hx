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


class ChannelDomains implements TBase {
  
  static var STRUCT_DESC = { new TStruct("ChannelDomains"); };
  static var CHANNEL_DOMAINS_FIELD_DESC = { new TField("channelDomains", TType.LIST, 1); };
  static var REVISION_FIELD_DESC = { new TField("revision", TType.I64, 2); };

  @:isVar
  public var channelDomains(get,set) : List< ChannelDomain>;
  @:isVar
  public var revision(get,set) : haxe.Int64;

  inline static var CHANNELDOMAINS_FIELD_ID : Int = 1;
  inline static var REVISION_FIELD_ID : Int = 2;

  private var __isset_revision : Bool = false;

  public function new() {
  }

  public function get_channelDomains() : List< ChannelDomain> {
    return this.channelDomains;
  }

  public function set_channelDomains(channelDomains:List< ChannelDomain>) : List< ChannelDomain> {
    this.channelDomains = channelDomains;
    return this.channelDomains;
  }

  public function unsetChannelDomains() : Void {
    this.channelDomains = null;
  }

  // Returns true if field channelDomains is set (has been assigned a value) and false otherwise
  public function isSetChannelDomains() : Bool {
    return this.channelDomains != null;
  }

  public function get_revision() : haxe.Int64 {
    return this.revision;
  }

  public function set_revision(revision:haxe.Int64) : haxe.Int64 {
    this.revision = revision;
    this.__isset_revision = true;
    return this.revision;
  }

  public function unsetRevision() : Void {
    this.__isset_revision = false;
  }

  // Returns true if field revision is set (has been assigned a value) and false otherwise
  public function isSetRevision() : Bool {
    return this.__isset_revision;
  }

  public function setFieldValue(fieldID : Int, value : Dynamic) : Void {
    switch (fieldID) {
    case CHANNELDOMAINS_FIELD_ID:
      if (value == null) {
        unsetChannelDomains();
      } else {
        this.channelDomains = value;
      }

    case REVISION_FIELD_ID:
      if (value == null) {
        unsetRevision();
      } else {
        this.revision = value;
      }

    default:
      throw new ArgumentError("Field " + fieldID + " doesn't exist!");
    }
  }

  public function getFieldValue(fieldID : Int) : Dynamic {
    switch (fieldID) {
    case CHANNELDOMAINS_FIELD_ID:
      return this.channelDomains;
    case REVISION_FIELD_ID:
      return this.revision;
    default:
      throw new ArgumentError("Field " + fieldID + " doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  public function isSet(fieldID : Int) : Bool {
    switch (fieldID) {
    case CHANNELDOMAINS_FIELD_ID:
      return isSetChannelDomains();
    case REVISION_FIELD_ID:
      return isSetRevision();
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
          case CHANNELDOMAINS_FIELD_ID:
            if (field.type == TType.LIST) {
              {
                var _list85 = iprot.readListBegin();
                this.channelDomains = new List< ChannelDomain>();
                for( _i86 in 0 ... _list85.size)
                {
                  var _elem87 : ChannelDomain;
                  _elem87 = new ChannelDomain();
                  _elem87.read(iprot);
                  this.channelDomains.add(_elem87);
                }
                iprot.readListEnd();
              }
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case REVISION_FIELD_ID:
            if (field.type == TType.I64) {
              this.revision = iprot.readI64();
              this.__isset_revision = true;
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
      if (this.channelDomains != null) {
        oprot.writeFieldBegin(CHANNEL_DOMAINS_FIELD_DESC);
        {
          oprot.writeListBegin(new TList(TType.STRUCT, this.channelDomains.length));
          for( elem88 in this.channelDomains)
          {
            elem88.write(oprot);
          }
          oprot.writeListEnd();
        }
        oprot.writeFieldEnd();
      }
      oprot.writeFieldBegin(REVISION_FIELD_DESC);
      oprot.writeI64(this.revision);
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
    var ret : String = "ChannelDomains(";
    var first : Bool = true;

    ret += "channelDomains:";
    if (this.channelDomains == null) {
      ret += "null";
    } else {
      ret += this.channelDomains;
    }
    first = false;
    if (!first) ret +=  ", ";
    ret += "revision:";
    ret += this.revision;
    first = false;
    ret += ")";
    return ret;
  }

  public function validate() : Void {
    // check for required fields
    // check that fields of type enum have valid values
  }

}
