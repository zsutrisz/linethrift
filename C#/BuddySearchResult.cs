/**
 * Autogenerated by Thrift Compiler (0.11.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
using System.IO;
using Thrift;
using Thrift.Collections;
using System.Runtime.Serialization;
using Thrift.Protocol;
using Thrift.Transport;


#if !SILVERLIGHT
[Serializable]
#endif
public partial class BuddySearchResult : TBase
{
  private string _mid;
  private string _displayName;
  private string _pictureStatus;
  private string _picturePath;
  private string _statusMessage;
  private bool _businessAccount;
  private int _iconType;
  private BotType _botType;

  public string Mid
  {
    get
    {
      return _mid;
    }
    set
    {
      __isset.mid = true;
      this._mid = value;
    }
  }

  public string DisplayName
  {
    get
    {
      return _displayName;
    }
    set
    {
      __isset.displayName = true;
      this._displayName = value;
    }
  }

  public string PictureStatus
  {
    get
    {
      return _pictureStatus;
    }
    set
    {
      __isset.pictureStatus = true;
      this._pictureStatus = value;
    }
  }

  public string PicturePath
  {
    get
    {
      return _picturePath;
    }
    set
    {
      __isset.picturePath = true;
      this._picturePath = value;
    }
  }

  public string StatusMessage
  {
    get
    {
      return _statusMessage;
    }
    set
    {
      __isset.statusMessage = true;
      this._statusMessage = value;
    }
  }

  public bool BusinessAccount
  {
    get
    {
      return _businessAccount;
    }
    set
    {
      __isset.businessAccount = true;
      this._businessAccount = value;
    }
  }

  public int IconType
  {
    get
    {
      return _iconType;
    }
    set
    {
      __isset.iconType = true;
      this._iconType = value;
    }
  }

  /// <summary>
  /// 
  /// <seealso cref="BotType"/>
  /// </summary>
  public BotType BotType
  {
    get
    {
      return _botType;
    }
    set
    {
      __isset.botType = true;
      this._botType = value;
    }
  }


  public Isset __isset;
  #if !SILVERLIGHT
  [Serializable]
  #endif
  public struct Isset {
    public bool mid;
    public bool displayName;
    public bool pictureStatus;
    public bool picturePath;
    public bool statusMessage;
    public bool businessAccount;
    public bool iconType;
    public bool botType;
  }

  public BuddySearchResult() {
  }

  public void Read (TProtocol iprot)
  {
    iprot.IncrementRecursionDepth();
    try
    {
      TField field;
      iprot.ReadStructBegin();
      while (true)
      {
        field = iprot.ReadFieldBegin();
        if (field.Type == TType.Stop) { 
          break;
        }
        switch (field.ID)
        {
          case 1:
            if (field.Type == TType.String) {
              Mid = iprot.ReadString();
            } else { 
              TProtocolUtil.Skip(iprot, field.Type);
            }
            break;
          case 2:
            if (field.Type == TType.String) {
              DisplayName = iprot.ReadString();
            } else { 
              TProtocolUtil.Skip(iprot, field.Type);
            }
            break;
          case 3:
            if (field.Type == TType.String) {
              PictureStatus = iprot.ReadString();
            } else { 
              TProtocolUtil.Skip(iprot, field.Type);
            }
            break;
          case 4:
            if (field.Type == TType.String) {
              PicturePath = iprot.ReadString();
            } else { 
              TProtocolUtil.Skip(iprot, field.Type);
            }
            break;
          case 5:
            if (field.Type == TType.String) {
              StatusMessage = iprot.ReadString();
            } else { 
              TProtocolUtil.Skip(iprot, field.Type);
            }
            break;
          case 6:
            if (field.Type == TType.Bool) {
              BusinessAccount = iprot.ReadBool();
            } else { 
              TProtocolUtil.Skip(iprot, field.Type);
            }
            break;
          case 7:
            if (field.Type == TType.I32) {
              IconType = iprot.ReadI32();
            } else { 
              TProtocolUtil.Skip(iprot, field.Type);
            }
            break;
          case 8:
            if (field.Type == TType.I32) {
              BotType = (BotType)iprot.ReadI32();
            } else { 
              TProtocolUtil.Skip(iprot, field.Type);
            }
            break;
          default: 
            TProtocolUtil.Skip(iprot, field.Type);
            break;
        }
        iprot.ReadFieldEnd();
      }
      iprot.ReadStructEnd();
    }
    finally
    {
      iprot.DecrementRecursionDepth();
    }
  }

  public void Write(TProtocol oprot) {
    oprot.IncrementRecursionDepth();
    try
    {
      TStruct struc = new TStruct("BuddySearchResult");
      oprot.WriteStructBegin(struc);
      TField field = new TField();
      if (Mid != null && __isset.mid) {
        field.Name = "mid";
        field.Type = TType.String;
        field.ID = 1;
        oprot.WriteFieldBegin(field);
        oprot.WriteString(Mid);
        oprot.WriteFieldEnd();
      }
      if (DisplayName != null && __isset.displayName) {
        field.Name = "displayName";
        field.Type = TType.String;
        field.ID = 2;
        oprot.WriteFieldBegin(field);
        oprot.WriteString(DisplayName);
        oprot.WriteFieldEnd();
      }
      if (PictureStatus != null && __isset.pictureStatus) {
        field.Name = "pictureStatus";
        field.Type = TType.String;
        field.ID = 3;
        oprot.WriteFieldBegin(field);
        oprot.WriteString(PictureStatus);
        oprot.WriteFieldEnd();
      }
      if (PicturePath != null && __isset.picturePath) {
        field.Name = "picturePath";
        field.Type = TType.String;
        field.ID = 4;
        oprot.WriteFieldBegin(field);
        oprot.WriteString(PicturePath);
        oprot.WriteFieldEnd();
      }
      if (StatusMessage != null && __isset.statusMessage) {
        field.Name = "statusMessage";
        field.Type = TType.String;
        field.ID = 5;
        oprot.WriteFieldBegin(field);
        oprot.WriteString(StatusMessage);
        oprot.WriteFieldEnd();
      }
      if (__isset.businessAccount) {
        field.Name = "businessAccount";
        field.Type = TType.Bool;
        field.ID = 6;
        oprot.WriteFieldBegin(field);
        oprot.WriteBool(BusinessAccount);
        oprot.WriteFieldEnd();
      }
      if (__isset.iconType) {
        field.Name = "iconType";
        field.Type = TType.I32;
        field.ID = 7;
        oprot.WriteFieldBegin(field);
        oprot.WriteI32(IconType);
        oprot.WriteFieldEnd();
      }
      if (__isset.botType) {
        field.Name = "botType";
        field.Type = TType.I32;
        field.ID = 8;
        oprot.WriteFieldBegin(field);
        oprot.WriteI32((int)BotType);
        oprot.WriteFieldEnd();
      }
      oprot.WriteFieldStop();
      oprot.WriteStructEnd();
    }
    finally
    {
      oprot.DecrementRecursionDepth();
    }
  }

  public override string ToString() {
    StringBuilder __sb = new StringBuilder("BuddySearchResult(");
    bool __first = true;
    if (Mid != null && __isset.mid) {
      if(!__first) { __sb.Append(", "); }
      __first = false;
      __sb.Append("Mid: ");
      __sb.Append(Mid);
    }
    if (DisplayName != null && __isset.displayName) {
      if(!__first) { __sb.Append(", "); }
      __first = false;
      __sb.Append("DisplayName: ");
      __sb.Append(DisplayName);
    }
    if (PictureStatus != null && __isset.pictureStatus) {
      if(!__first) { __sb.Append(", "); }
      __first = false;
      __sb.Append("PictureStatus: ");
      __sb.Append(PictureStatus);
    }
    if (PicturePath != null && __isset.picturePath) {
      if(!__first) { __sb.Append(", "); }
      __first = false;
      __sb.Append("PicturePath: ");
      __sb.Append(PicturePath);
    }
    if (StatusMessage != null && __isset.statusMessage) {
      if(!__first) { __sb.Append(", "); }
      __first = false;
      __sb.Append("StatusMessage: ");
      __sb.Append(StatusMessage);
    }
    if (__isset.businessAccount) {
      if(!__first) { __sb.Append(", "); }
      __first = false;
      __sb.Append("BusinessAccount: ");
      __sb.Append(BusinessAccount);
    }
    if (__isset.iconType) {
      if(!__first) { __sb.Append(", "); }
      __first = false;
      __sb.Append("IconType: ");
      __sb.Append(IconType);
    }
    if (__isset.botType) {
      if(!__first) { __sb.Append(", "); }
      __first = false;
      __sb.Append("BotType: ");
      __sb.Append(BotType);
    }
    __sb.Append(")");
    return __sb.ToString();
  }

}
