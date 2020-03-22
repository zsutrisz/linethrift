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



public partial class BuddyOnAirUrls : TBase
{
  private Dictionary<string, string> _hls;
  private Dictionary<string, string> _smoothStreaming;

  public Dictionary<string, string> Hls
  {
    get
    {
      return _hls;
    }
    set
    {
      __isset.hls = true;
      this._hls = value;
    }
  }

  public Dictionary<string, string> SmoothStreaming
  {
    get
    {
      return _smoothStreaming;
    }
    set
    {
      __isset.smoothStreaming = true;
      this._smoothStreaming = value;
    }
  }


  public Isset __isset;
  public struct Isset
  {
    public bool hls;
    public bool smoothStreaming;
  }

  public BuddyOnAirUrls()
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
            if (field.Type == TType.Map)
            {
              {
                TMap _map69 = await iprot.ReadMapBeginAsync(cancellationToken);
                Hls = new Dictionary<string, string>(_map69.Count);
                for(int _i70 = 0; _i70 < _map69.Count; ++_i70)
                {
                  string _key71;
                  string _val72;
                  _key71 = await iprot.ReadStringAsync(cancellationToken);
                  _val72 = await iprot.ReadStringAsync(cancellationToken);
                  Hls[_key71] = _val72;
                }
                await iprot.ReadMapEndAsync(cancellationToken);
              }
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 2:
            if (field.Type == TType.Map)
            {
              {
                TMap _map73 = await iprot.ReadMapBeginAsync(cancellationToken);
                SmoothStreaming = new Dictionary<string, string>(_map73.Count);
                for(int _i74 = 0; _i74 < _map73.Count; ++_i74)
                {
                  string _key75;
                  string _val76;
                  _key75 = await iprot.ReadStringAsync(cancellationToken);
                  _val76 = await iprot.ReadStringAsync(cancellationToken);
                  SmoothStreaming[_key75] = _val76;
                }
                await iprot.ReadMapEndAsync(cancellationToken);
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
      var struc = new TStruct("BuddyOnAirUrls");
      await oprot.WriteStructBeginAsync(struc, cancellationToken);
      var field = new TField();
      if (Hls != null && __isset.hls)
      {
        field.Name = "hls";
        field.Type = TType.Map;
        field.ID = 1;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        {
          await oprot.WriteMapBeginAsync(new TMap(TType.String, TType.String, Hls.Count), cancellationToken);
          foreach (string _iter77 in Hls.Keys)
          {
            await oprot.WriteStringAsync(_iter77, cancellationToken);
            await oprot.WriteStringAsync(Hls[_iter77], cancellationToken);
          }
          await oprot.WriteMapEndAsync(cancellationToken);
        }
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (SmoothStreaming != null && __isset.smoothStreaming)
      {
        field.Name = "smoothStreaming";
        field.Type = TType.Map;
        field.ID = 2;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        {
          await oprot.WriteMapBeginAsync(new TMap(TType.String, TType.String, SmoothStreaming.Count), cancellationToken);
          foreach (string _iter78 in SmoothStreaming.Keys)
          {
            await oprot.WriteStringAsync(_iter78, cancellationToken);
            await oprot.WriteStringAsync(SmoothStreaming[_iter78], cancellationToken);
          }
          await oprot.WriteMapEndAsync(cancellationToken);
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
    var other = that as BuddyOnAirUrls;
    if (other == null) return false;
    if (ReferenceEquals(this, other)) return true;
    return ((__isset.hls == other.__isset.hls) && ((!__isset.hls) || (TCollections.Equals(Hls, other.Hls))))
      && ((__isset.smoothStreaming == other.__isset.smoothStreaming) && ((!__isset.smoothStreaming) || (TCollections.Equals(SmoothStreaming, other.SmoothStreaming))));
  }

  public override int GetHashCode() {
    int hashcode = 157;
    unchecked {
      if(__isset.hls)
        hashcode = (hashcode * 397) + TCollections.GetHashCode(Hls);
      if(__isset.smoothStreaming)
        hashcode = (hashcode * 397) + TCollections.GetHashCode(SmoothStreaming);
    }
    return hashcode;
  }

  public override string ToString()
  {
    var sb = new StringBuilder("BuddyOnAirUrls(");
    bool __first = true;
    if (Hls != null && __isset.hls)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("Hls: ");
      Hls.ToString(sb);
    }
    if (SmoothStreaming != null && __isset.smoothStreaming)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("SmoothStreaming: ");
      SmoothStreaming.ToString(sb);
    }
    sb.Append(")");
    return sb.ToString();
  }
}
