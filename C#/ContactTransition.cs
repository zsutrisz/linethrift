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
public partial class ContactTransition : TBase
{
  private string _ownerMid;
  private string _targetMid;
  private ContactStatus _previousStatus;
  private ContactStatus _resultStatus;

  public string OwnerMid
  {
    get
    {
      return _ownerMid;
    }
    set
    {
      __isset.ownerMid = true;
      this._ownerMid = value;
    }
  }

  public string TargetMid
  {
    get
    {
      return _targetMid;
    }
    set
    {
      __isset.targetMid = true;
      this._targetMid = value;
    }
  }

  /// <summary>
  /// 
  /// <seealso cref="ContactStatus"/>
  /// </summary>
  public ContactStatus PreviousStatus
  {
    get
    {
      return _previousStatus;
    }
    set
    {
      __isset.previousStatus = true;
      this._previousStatus = value;
    }
  }

  /// <summary>
  /// 
  /// <seealso cref="ContactStatus"/>
  /// </summary>
  public ContactStatus ResultStatus
  {
    get
    {
      return _resultStatus;
    }
    set
    {
      __isset.resultStatus = true;
      this._resultStatus = value;
    }
  }


  public Isset __isset;
  #if !SILVERLIGHT
  [Serializable]
  #endif
  public struct Isset {
    public bool ownerMid;
    public bool targetMid;
    public bool previousStatus;
    public bool resultStatus;
  }

  public ContactTransition() {
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
              OwnerMid = iprot.ReadString();
            } else { 
              TProtocolUtil.Skip(iprot, field.Type);
            }
            break;
          case 2:
            if (field.Type == TType.String) {
              TargetMid = iprot.ReadString();
            } else { 
              TProtocolUtil.Skip(iprot, field.Type);
            }
            break;
          case 3:
            if (field.Type == TType.I32) {
              PreviousStatus = (ContactStatus)iprot.ReadI32();
            } else { 
              TProtocolUtil.Skip(iprot, field.Type);
            }
            break;
          case 4:
            if (field.Type == TType.I32) {
              ResultStatus = (ContactStatus)iprot.ReadI32();
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
      TStruct struc = new TStruct("ContactTransition");
      oprot.WriteStructBegin(struc);
      TField field = new TField();
      if (OwnerMid != null && __isset.ownerMid) {
        field.Name = "ownerMid";
        field.Type = TType.String;
        field.ID = 1;
        oprot.WriteFieldBegin(field);
        oprot.WriteString(OwnerMid);
        oprot.WriteFieldEnd();
      }
      if (TargetMid != null && __isset.targetMid) {
        field.Name = "targetMid";
        field.Type = TType.String;
        field.ID = 2;
        oprot.WriteFieldBegin(field);
        oprot.WriteString(TargetMid);
        oprot.WriteFieldEnd();
      }
      if (__isset.previousStatus) {
        field.Name = "previousStatus";
        field.Type = TType.I32;
        field.ID = 3;
        oprot.WriteFieldBegin(field);
        oprot.WriteI32((int)PreviousStatus);
        oprot.WriteFieldEnd();
      }
      if (__isset.resultStatus) {
        field.Name = "resultStatus";
        field.Type = TType.I32;
        field.ID = 4;
        oprot.WriteFieldBegin(field);
        oprot.WriteI32((int)ResultStatus);
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
    StringBuilder __sb = new StringBuilder("ContactTransition(");
    bool __first = true;
    if (OwnerMid != null && __isset.ownerMid) {
      if(!__first) { __sb.Append(", "); }
      __first = false;
      __sb.Append("OwnerMid: ");
      __sb.Append(OwnerMid);
    }
    if (TargetMid != null && __isset.targetMid) {
      if(!__first) { __sb.Append(", "); }
      __first = false;
      __sb.Append("TargetMid: ");
      __sb.Append(TargetMid);
    }
    if (__isset.previousStatus) {
      if(!__first) { __sb.Append(", "); }
      __first = false;
      __sb.Append("PreviousStatus: ");
      __sb.Append(PreviousStatus);
    }
    if (__isset.resultStatus) {
      if(!__first) { __sb.Append(", "); }
      __first = false;
      __sb.Append("ResultStatus: ");
      __sb.Append(ResultStatus);
    }
    __sb.Append(")");
    return __sb.ToString();
  }

}
