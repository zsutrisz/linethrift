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



public partial class FriendChannelMatricesResponse : TBase
{
  private long _expires;
  private List<FriendChannelMatrix> _matrices;

  public long Expires
  {
    get
    {
      return _expires;
    }
    set
    {
      __isset.expires = true;
      this._expires = value;
    }
  }

  public List<FriendChannelMatrix> Matrices
  {
    get
    {
      return _matrices;
    }
    set
    {
      __isset.matrices = true;
      this._matrices = value;
    }
  }


  public Isset __isset;
  public struct Isset
  {
    public bool expires;
    public bool matrices;
  }

  public FriendChannelMatricesResponse()
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
            if (field.Type == TType.I64)
            {
              Expires = await iprot.ReadI64Async(cancellationToken);
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 2:
            if (field.Type == TType.List)
            {
              {
                TList _list125 = await iprot.ReadListBeginAsync(cancellationToken);
                Matrices = new List<FriendChannelMatrix>(_list125.Count);
                for(int _i126 = 0; _i126 < _list125.Count; ++_i126)
                {
                  FriendChannelMatrix _elem127;
                  _elem127 = new FriendChannelMatrix();
                  await _elem127.ReadAsync(iprot, cancellationToken);
                  Matrices.Add(_elem127);
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
      var struc = new TStruct("FriendChannelMatricesResponse");
      await oprot.WriteStructBeginAsync(struc, cancellationToken);
      var field = new TField();
      if (__isset.expires)
      {
        field.Name = "expires";
        field.Type = TType.I64;
        field.ID = 1;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteI64Async(Expires, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (Matrices != null && __isset.matrices)
      {
        field.Name = "matrices";
        field.Type = TType.List;
        field.ID = 2;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        {
          await oprot.WriteListBeginAsync(new TList(TType.Struct, Matrices.Count), cancellationToken);
          foreach (FriendChannelMatrix _iter128 in Matrices)
          {
            await _iter128.WriteAsync(oprot, cancellationToken);
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
    var other = that as FriendChannelMatricesResponse;
    if (other == null) return false;
    if (ReferenceEquals(this, other)) return true;
    return ((__isset.expires == other.__isset.expires) && ((!__isset.expires) || (System.Object.Equals(Expires, other.Expires))))
      && ((__isset.matrices == other.__isset.matrices) && ((!__isset.matrices) || (TCollections.Equals(Matrices, other.Matrices))));
  }

  public override int GetHashCode() {
    int hashcode = 157;
    unchecked {
      if(__isset.expires)
        hashcode = (hashcode * 397) + Expires.GetHashCode();
      if(__isset.matrices)
        hashcode = (hashcode * 397) + TCollections.GetHashCode(Matrices);
    }
    return hashcode;
  }

  public override string ToString()
  {
    var sb = new StringBuilder("FriendChannelMatricesResponse(");
    bool __first = true;
    if (__isset.expires)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("Expires: ");
      Expires.ToString(sb);
    }
    if (Matrices != null && __isset.matrices)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("Matrices: ");
      Matrices.ToString(sb);
    }
    sb.Append(")");
    return sb.ToString();
  }
}

