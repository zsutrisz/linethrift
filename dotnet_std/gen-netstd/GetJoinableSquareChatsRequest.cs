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



public partial class GetJoinableSquareChatsRequest : TBase
{
  private string _squareMid;
  private string _continuationToken;
  private int _limit;

  public string SquareMid
  {
    get
    {
      return _squareMid;
    }
    set
    {
      __isset.squareMid = true;
      this._squareMid = value;
    }
  }

  public string ContinuationToken
  {
    get
    {
      return _continuationToken;
    }
    set
    {
      __isset.continuationToken = true;
      this._continuationToken = value;
    }
  }

  public int Limit
  {
    get
    {
      return _limit;
    }
    set
    {
      __isset.limit = true;
      this._limit = value;
    }
  }


  public Isset __isset;
  public struct Isset
  {
    public bool squareMid;
    public bool continuationToken;
    public bool limit;
  }

  public GetJoinableSquareChatsRequest()
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
          case 1:
            if (field.Type == TType.String)
            {
              SquareMid = await iprot.ReadStringAsync(cancellationToken);
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 10:
            if (field.Type == TType.String)
            {
              ContinuationToken = await iprot.ReadStringAsync(cancellationToken);
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 11:
            if (field.Type == TType.I32)
            {
              Limit = await iprot.ReadI32Async(cancellationToken);
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
      var struc = new TStruct("GetJoinableSquareChatsRequest");
      await oprot.WriteStructBeginAsync(struc, cancellationToken);
      var field = new TField();
      if (SquareMid != null && __isset.squareMid)
      {
        field.Name = "squareMid";
        field.Type = TType.String;
        field.ID = 1;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteStringAsync(SquareMid, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (ContinuationToken != null && __isset.continuationToken)
      {
        field.Name = "continuationToken";
        field.Type = TType.String;
        field.ID = 10;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteStringAsync(ContinuationToken, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (__isset.limit)
      {
        field.Name = "limit";
        field.Type = TType.I32;
        field.ID = 11;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteI32Async(Limit, cancellationToken);
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
    var other = that as GetJoinableSquareChatsRequest;
    if (other == null) return false;
    if (ReferenceEquals(this, other)) return true;
    return ((__isset.squareMid == other.__isset.squareMid) && ((!__isset.squareMid) || (System.Object.Equals(SquareMid, other.SquareMid))))
      && ((__isset.continuationToken == other.__isset.continuationToken) && ((!__isset.continuationToken) || (System.Object.Equals(ContinuationToken, other.ContinuationToken))))
      && ((__isset.limit == other.__isset.limit) && ((!__isset.limit) || (System.Object.Equals(Limit, other.Limit))));
  }

  public override int GetHashCode() {
    int hashcode = 157;
    unchecked {
      if(__isset.squareMid)
        hashcode = (hashcode * 397) + SquareMid.GetHashCode();
      if(__isset.continuationToken)
        hashcode = (hashcode * 397) + ContinuationToken.GetHashCode();
      if(__isset.limit)
        hashcode = (hashcode * 397) + Limit.GetHashCode();
    }
    return hashcode;
  }

  public override string ToString()
  {
    var sb = new StringBuilder("GetJoinableSquareChatsRequest(");
    bool __first = true;
    if (SquareMid != null && __isset.squareMid)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("SquareMid: ");
      SquareMid.ToString(sb);
    }
    if (ContinuationToken != null && __isset.continuationToken)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("ContinuationToken: ");
      ContinuationToken.ToString(sb);
    }
    if (__isset.limit)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("Limit: ");
      Limit.ToString(sb);
    }
    sb.Append(")");
    return sb.ToString();
  }
}
