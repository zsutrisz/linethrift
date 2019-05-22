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
public partial class SnsProfile : TBase
{
  private string _snsUserId;
  private string _snsUserName;
  private string _email;
  private string _thumbnailUrl;

  public string SnsUserId
  {
    get
    {
      return _snsUserId;
    }
    set
    {
      __isset.snsUserId = true;
      this._snsUserId = value;
    }
  }

  public string SnsUserName
  {
    get
    {
      return _snsUserName;
    }
    set
    {
      __isset.snsUserName = true;
      this._snsUserName = value;
    }
  }

  public string Email
  {
    get
    {
      return _email;
    }
    set
    {
      __isset.email = true;
      this._email = value;
    }
  }

  public string ThumbnailUrl
  {
    get
    {
      return _thumbnailUrl;
    }
    set
    {
      __isset.thumbnailUrl = true;
      this._thumbnailUrl = value;
    }
  }


  public Isset __isset;
  #if !SILVERLIGHT
  [Serializable]
  #endif
  public struct Isset {
    public bool snsUserId;
    public bool snsUserName;
    public bool email;
    public bool thumbnailUrl;
  }

  public SnsProfile() {
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
              SnsUserId = iprot.ReadString();
            } else { 
              TProtocolUtil.Skip(iprot, field.Type);
            }
            break;
          case 2:
            if (field.Type == TType.String) {
              SnsUserName = iprot.ReadString();
            } else { 
              TProtocolUtil.Skip(iprot, field.Type);
            }
            break;
          case 3:
            if (field.Type == TType.String) {
              Email = iprot.ReadString();
            } else { 
              TProtocolUtil.Skip(iprot, field.Type);
            }
            break;
          case 4:
            if (field.Type == TType.String) {
              ThumbnailUrl = iprot.ReadString();
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
      TStruct struc = new TStruct("SnsProfile");
      oprot.WriteStructBegin(struc);
      TField field = new TField();
      if (SnsUserId != null && __isset.snsUserId) {
        field.Name = "snsUserId";
        field.Type = TType.String;
        field.ID = 1;
        oprot.WriteFieldBegin(field);
        oprot.WriteString(SnsUserId);
        oprot.WriteFieldEnd();
      }
      if (SnsUserName != null && __isset.snsUserName) {
        field.Name = "snsUserName";
        field.Type = TType.String;
        field.ID = 2;
        oprot.WriteFieldBegin(field);
        oprot.WriteString(SnsUserName);
        oprot.WriteFieldEnd();
      }
      if (Email != null && __isset.email) {
        field.Name = "email";
        field.Type = TType.String;
        field.ID = 3;
        oprot.WriteFieldBegin(field);
        oprot.WriteString(Email);
        oprot.WriteFieldEnd();
      }
      if (ThumbnailUrl != null && __isset.thumbnailUrl) {
        field.Name = "thumbnailUrl";
        field.Type = TType.String;
        field.ID = 4;
        oprot.WriteFieldBegin(field);
        oprot.WriteString(ThumbnailUrl);
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
    StringBuilder __sb = new StringBuilder("SnsProfile(");
    bool __first = true;
    if (SnsUserId != null && __isset.snsUserId) {
      if(!__first) { __sb.Append(", "); }
      __first = false;
      __sb.Append("SnsUserId: ");
      __sb.Append(SnsUserId);
    }
    if (SnsUserName != null && __isset.snsUserName) {
      if(!__first) { __sb.Append(", "); }
      __first = false;
      __sb.Append("SnsUserName: ");
      __sb.Append(SnsUserName);
    }
    if (Email != null && __isset.email) {
      if(!__first) { __sb.Append(", "); }
      __first = false;
      __sb.Append("Email: ");
      __sb.Append(Email);
    }
    if (ThumbnailUrl != null && __isset.thumbnailUrl) {
      if(!__first) { __sb.Append(", "); }
      __first = false;
      __sb.Append("ThumbnailUrl: ");
      __sb.Append(ThumbnailUrl);
    }
    __sb.Append(")");
    return __sb.ToString();
  }

}
