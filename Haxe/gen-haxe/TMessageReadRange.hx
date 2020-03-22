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


class TMessageReadRange implements TBase {
  
  static var STRUCT_DESC = { new TStruct("TMessageReadRange"); };
  static var CHAT_ID_FIELD_DESC = { new TField("chatId", TType.STRING, 1); };
  static var RANGES_FIELD_DESC = { new TField("ranges", TType.MAP, 2); };

  @:isVar
  public var chatId(get,set) : String;
  @:isVar
  public var ranges(get,set) : StringMap< List< TMessageReadRangeEntry>>;

  inline static var CHATID_FIELD_ID : Int = 1;
  inline static var RANGES_FIELD_ID : Int = 2;


  public function new() {
  }

  public function get_chatId() : String {
    return this.chatId;
  }

  public function set_chatId(chatId:String) : String {
    this.chatId = chatId;
    return this.chatId;
  }

  public function unsetChatId() : Void {
    this.chatId = null;
  }

  // Returns true if field chatId is set (has been assigned a value) and false otherwise
  public function isSetChatId() : Bool {
    return this.chatId != null;
  }

  public function get_ranges() : StringMap< List< TMessageReadRangeEntry>> {
    return this.ranges;
  }

  public function set_ranges(ranges:StringMap< List< TMessageReadRangeEntry>>) : StringMap< List< TMessageReadRangeEntry>> {
    this.ranges = ranges;
    return this.ranges;
  }

  public function unsetRanges() : Void {
    this.ranges = null;
  }

  // Returns true if field ranges is set (has been assigned a value) and false otherwise
  public function isSetRanges() : Bool {
    return this.ranges != null;
  }

  public function setFieldValue(fieldID : Int, value : Dynamic) : Void {
    switch (fieldID) {
    case CHATID_FIELD_ID:
      if (value == null) {
        unsetChatId();
      } else {
        this.chatId = value;
      }

    case RANGES_FIELD_ID:
      if (value == null) {
        unsetRanges();
      } else {
        this.ranges = value;
      }

    default:
      throw new ArgumentError("Field " + fieldID + " doesn't exist!");
    }
  }

  public function getFieldValue(fieldID : Int) : Dynamic {
    switch (fieldID) {
    case CHATID_FIELD_ID:
      return this.chatId;
    case RANGES_FIELD_ID:
      return this.ranges;
    default:
      throw new ArgumentError("Field " + fieldID + " doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  public function isSet(fieldID : Int) : Bool {
    switch (fieldID) {
    case CHATID_FIELD_ID:
      return isSetChatId();
    case RANGES_FIELD_ID:
      return isSetRanges();
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
          case CHATID_FIELD_ID:
            if (field.type == TType.STRING) {
              this.chatId = iprot.readString();
            } else { 
              TProtocolUtil.skip(iprot, field.type);
            }
          case RANGES_FIELD_ID:
            if (field.type == TType.MAP) {
              {
                var _map289 = iprot.readMapBegin();
                this.ranges = new StringMap< List< TMessageReadRangeEntry>>();
                for( _i290 in 0 ... _map289.size)
                {
                  var _key291 : String;
                  var _val292 : List< TMessageReadRangeEntry>;
                  _key291 = iprot.readString();
                  {
                    var _list293 = iprot.readListBegin();
                    _val292 = new List< TMessageReadRangeEntry>();
                    for( _i294 in 0 ... _list293.size)
                    {
                      var _elem295 : TMessageReadRangeEntry;
                      _elem295 = new TMessageReadRangeEntry();
                      _elem295.read(iprot);
                      _val292.add(_elem295);
                    }
                    iprot.readListEnd();
                  }
                  this.ranges.set( _key291, _val292);
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
      if (this.chatId != null) {
        oprot.writeFieldBegin(CHAT_ID_FIELD_DESC);
        oprot.writeString(this.chatId);
        oprot.writeFieldEnd();
      }
      if (this.ranges != null) {
        oprot.writeFieldBegin(RANGES_FIELD_DESC);
        {
          var _sizeCounter297 : Int = 0;
          for( _key296 in this.ranges) {
            _sizeCounter297++;
          }
          oprot.writeMapBegin(new TMap(TType.STRING, TType.LIST, _sizeCounter297));
          for( elem298 in this.ranges.keys())
          {
            oprot.writeString(elem298);
            {
              oprot.writeListBegin(new TList(TType.STRUCT, this.ranges.get(elem298).length));
              for( elem299 in this.ranges.get(elem298))
              {
                elem299.write(oprot);
              }
              oprot.writeListEnd();
            }
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
    var ret : String = "TMessageReadRange(";
    var first : Bool = true;

    ret += "chatId:";
    if (this.chatId == null) {
      ret += "null";
    } else {
      ret += this.chatId;
    }
    first = false;
    if (!first) ret +=  ", ";
    ret += "ranges:";
    if (this.ranges == null) {
      ret += "null";
    } else {
      ret += this.ranges;
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
