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


class UpdateBuddySettings_args implements TBase {
  
  static var STRUCT_DESC = { new TStruct("updateBuddySettings_args"); };
  static var SETTINGS_FIELD_DESC = { new TField("settings", TType.MAP, 2); };

  @:isVar
  public var settings(get,set) : StringMap< String>;

  inline static var SETTINGS_FIELD_ID : Int = 2;


  public function new() {
  }

  public function get_settings() : StringMap< String> {
    return this.settings;
  }

  public function set_settings(settings:StringMap< String>) : StringMap< String> {
    this.settings = settings;
    return this.settings;
  }

  public function unsetSettings() : Void {
    this.settings = null;
  }

  // Returns true if field settings is set (has been assigned a value) and false otherwise
  public function isSetSettings() : Bool {
    return this.settings != null;
  }

  public function setFieldValue(fieldID : Int, value : Dynamic) : Void {
    switch (fieldID) {
    case SETTINGS_FIELD_ID:
      if (value == null) {
        unsetSettings();
      } else {
        this.settings = value;
      }

    default:
      throw new ArgumentError("Field " + fieldID + " doesn't exist!");
    }
  }

  public function getFieldValue(fieldID : Int) : Dynamic {
    switch (fieldID) {
    case SETTINGS_FIELD_ID:
      return this.settings;
    default:
      throw new ArgumentError("Field " + fieldID + " doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  public function isSet(fieldID : Int) : Bool {
    switch (fieldID) {
    case SETTINGS_FIELD_ID:
      return isSetSettings();
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
          case SETTINGS_FIELD_ID:
            if (field.type == TType.MAP) {
              {
                var _map698 = iprot.readMapBegin();
                this.settings = new StringMap< String>();
                for( _i699 in 0 ... _map698.size)
                {
                  var _key700 : String;
                  var _val701 : String;
                  _key700 = iprot.readString();
                  _val701 = iprot.readString();
                  this.settings.set( _key700, _val701);
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
      if (this.settings != null) {
        oprot.writeFieldBegin(SETTINGS_FIELD_DESC);
        {
          var _sizeCounter703 : Int = 0;
          for( _key702 in this.settings) {
            _sizeCounter703++;
          }
          oprot.writeMapBegin(new TMap(TType.STRING, TType.STRING, _sizeCounter703));
          for( elem704 in this.settings.keys())
          {
            oprot.writeString(elem704);
            oprot.writeString(this.settings.get(elem704));
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
    var ret : String = "updateBuddySettings_args(";
    var first : Bool = true;

    ret += "settings:";
    if (this.settings == null) {
      ret += "null";
    } else {
      ret += this.settings;
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

