/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
using System.IO;
using System.Threading;
using System.Threading.Tasks;
using Thrift;
using Thrift.Collections;

using Thrift.Protocol;
using Thrift.Protocol.Entities;
using Thrift.Protocol.Utilities;
using Thrift.Transport;
using Thrift.Transport.Client;
using Thrift.Transport.Server;
using Thrift.Processor;



public partial class RefreshSubscriptionsRequest : TBase
{
  private List<long> _subscriptions;

  public List<long> Subscriptions
  {
    get
    {
      return _subscriptions;
    }
    set
    {
      __isset.subscriptions = true;
      this._subscriptions = value;
    }
  }


  public Isset __isset;
  public struct Isset
  {
    public bool subscriptions;
  }

  public RefreshSubscriptionsRequest()
  {
  }

  public async Task ReadAsync(TProtocol iprot, CancellationToken cancellationToken)
  {
    iprot.IncrementRecursionDepth();
    try
    {
      TField field;
      await iprot.ReadStructBeginAsync(cancellationToken);
      while (true)
      {
        field = await iprot.ReadFieldBeginAsync(cancellationToken);
        if (field.Type == TType.Stop)
        {
          break;
        }

        switch (field.ID)
        {
          case 2:
            if (field.Type == TType.List)
            {
              {
                TList _list462 = await iprot.ReadListBeginAsync(cancellationToken);
                Subscriptions = new List<long>(_list462.Count);
                for(int _i463 = 0; _i463 < _list462.Count; ++_i463)
                {
                  long _elem464;
                  _elem464 = await iprot.ReadI64Async(cancellationToken);
                  Subscriptions.Add(_elem464);
                }
                await iprot.ReadListEndAsync(cancellationToken);
              }
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          default: 
            await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            break;
        }

        await iprot.ReadFieldEndAsync(cancellationToken);
      }

      await iprot.ReadStructEndAsync(cancellationToken);
    }
    finally
    {
      iprot.DecrementRecursionDepth();
    }
  }

  public async Task WriteAsync(TProtocol oprot, CancellationToken cancellationToken)
  {
    oprot.IncrementRecursionDepth();
    try
    {
      var struc = new TStruct("RefreshSubscriptionsRequest");
      await oprot.WriteStructBeginAsync(struc, cancellationToken);
      var field = new TField();
      if (Subscriptions != null && __isset.subscriptions)
      {
        field.Name = "subscriptions";
        field.Type = TType.List;
        field.ID = 2;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        {
          await oprot.WriteListBeginAsync(new TList(TType.I64, Subscriptions.Count), cancellationToken);
          foreach (long _iter465 in Subscriptions)
          {
            await oprot.WriteI64Async(_iter465, cancellationToken);
          }
          await oprot.WriteListEndAsync(cancellationToken);
        }
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      await oprot.WriteFieldStopAsync(cancellationToken);
      await oprot.WriteStructEndAsync(cancellationToken);
    }
    finally
    {
      oprot.DecrementRecursionDepth();
    }
  }

  public override bool Equals(object that)
  {
    var other = that as RefreshSubscriptionsRequest;
    if (other == null) return false;
    if (ReferenceEquals(this, other)) return true;
    return ((__isset.subscriptions == other.__isset.subscriptions) && ((!__isset.subscriptions) || (TCollections.Equals(Subscriptions, other.Subscriptions))));
  }

  public override int GetHashCode() {
    int hashcode = 157;
    unchecked {
      if(__isset.subscriptions)
        hashcode = (hashcode * 397) + TCollections.GetHashCode(Subscriptions);
    }
    return hashcode;
  }

  public override string ToString()
  {
    var sb = new StringBuilder("RefreshSubscriptionsRequest(");
    bool __first = true;
    if (Subscriptions != null && __isset.subscriptions)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("Subscriptions: ");
      Subscriptions.ToString(sb);
    }
    sb.Append(")");
    return sb.ToString();
  }
}

