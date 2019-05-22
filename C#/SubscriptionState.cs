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
public partial class SubscriptionState : TBase
{
  private long _subscriptionId;
  private long _ttlMillis;

  public long SubscriptionId
  {
    get
    {
      return _subscriptionId;
    }
    set
    {
      __isset.subscriptionId = true;
      this._subscriptionId = value;
    }
  }

  public long TtlMillis
  {
    get
    {
      return _ttlMillis;
    }
    set
    {
      __isset.ttlMillis = true;
      this._ttlMillis = value;
    }
  }


  public Isset __isset;
  #if !SILVERLIGHT
  [Serializable]
  #endif
  public struct Isset {
    public bool subscriptionId;
    public bool ttlMillis;
  }

  public SubscriptionState() {
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
            if (field.Type == TType.I64) {
              SubscriptionId = iprot.ReadI64();
            } else { 
              TProtocolUtil.Skip(iprot, field.Type);
            }
            break;
          case 2:
            if (field.Type == TType.I64) {
              TtlMillis = iprot.ReadI64();
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
      TStruct struc = new TStruct("SubscriptionState");
      oprot.WriteStructBegin(struc);
      TField field = new TField();
      if (__isset.subscriptionId) {
        field.Name = "subscriptionId";
        field.Type = TType.I64;
        field.ID = 1;
        oprot.WriteFieldBegin(field);
        oprot.WriteI64(SubscriptionId);
        oprot.WriteFieldEnd();
      }
      if (__isset.ttlMillis) {
        field.Name = "ttlMillis";
        field.Type = TType.I64;
        field.ID = 2;
        oprot.WriteFieldBegin(field);
        oprot.WriteI64(TtlMillis);
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
    StringBuilder __sb = new StringBuilder("SubscriptionState(");
    bool __first = true;
    if (__isset.subscriptionId) {
      if(!__first) { __sb.Append(", "); }
      __first = false;
      __sb.Append("SubscriptionId: ");
      __sb.Append(SubscriptionId);
    }
    if (__isset.ttlMillis) {
      if(!__first) { __sb.Append(", "); }
      __first = false;
      __sb.Append("TtlMillis: ");
      __sb.Append(TtlMillis);
    }
    __sb.Append(")");
    return __sb.ToString();
  }

}
