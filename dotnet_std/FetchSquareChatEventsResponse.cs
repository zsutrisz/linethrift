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



public partial class FetchSquareChatEventsResponse : TBase
{
  private SubscriptionState _subscription;
  private List<SquareEvent> _events;
  private string _syncToken;
  private string _continuationToken;

  public SubscriptionState Subscription
  {
    get
    {
      return _subscription;
    }
    set
    {
      __isset.subscription = true;
      this._subscription = value;
    }
  }

  public List<SquareEvent> Events
  {
    get
    {
      return _events;
    }
    set
    {
      __isset.events = true;
      this._events = value;
    }
  }

  public string SyncToken
  {
    get
    {
      return _syncToken;
    }
    set
    {
      __isset.syncToken = true;
      this._syncToken = value;
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


  public Isset __isset;
  public struct Isset
  {
    public bool subscription;
    public bool events;
    public bool syncToken;
    public bool continuationToken;
  }

  public FetchSquareChatEventsResponse()
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
            if (field.Type == TType.Struct)
            {
              Subscription = new SubscriptionState();
              await Subscription.ReadAsync(iprot, cancellationToken);
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
                TList _list349 = await iprot.ReadListBeginAsync(cancellationToken);
                Events = new List<SquareEvent>(_list349.Count);
                for(int _i350 = 0; _i350 < _list349.Count; ++_i350)
                {
                  SquareEvent _elem351;
                  _elem351 = new SquareEvent();
                  await _elem351.ReadAsync(iprot, cancellationToken);
                  Events.Add(_elem351);
                }
                await iprot.ReadListEndAsync(cancellationToken);
              }
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 3:
            if (field.Type == TType.String)
            {
              SyncToken = await iprot.ReadStringAsync(cancellationToken);
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 4:
            if (field.Type == TType.String)
            {
              ContinuationToken = await iprot.ReadStringAsync(cancellationToken);
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
      var struc = new TStruct("FetchSquareChatEventsResponse");
      await oprot.WriteStructBeginAsync(struc, cancellationToken);
      var field = new TField();
      if (Subscription != null && __isset.subscription)
      {
        field.Name = "subscription";
        field.Type = TType.Struct;
        field.ID = 1;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await Subscription.WriteAsync(oprot, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (Events != null && __isset.events)
      {
        field.Name = "events";
        field.Type = TType.List;
        field.ID = 2;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        {
          await oprot.WriteListBeginAsync(new TList(TType.Struct, Events.Count), cancellationToken);
          foreach (SquareEvent _iter352 in Events)
          {
            await _iter352.WriteAsync(oprot, cancellationToken);
          }
          await oprot.WriteListEndAsync(cancellationToken);
        }
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (SyncToken != null && __isset.syncToken)
      {
        field.Name = "syncToken";
        field.Type = TType.String;
        field.ID = 3;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteStringAsync(SyncToken, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (ContinuationToken != null && __isset.continuationToken)
      {
        field.Name = "continuationToken";
        field.Type = TType.String;
        field.ID = 4;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteStringAsync(ContinuationToken, cancellationToken);
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
    var other = that as FetchSquareChatEventsResponse;
    if (other == null) return false;
    if (ReferenceEquals(this, other)) return true;
    return ((__isset.subscription == other.__isset.subscription) && ((!__isset.subscription) || (System.Object.Equals(Subscription, other.Subscription))))
      && ((__isset.events == other.__isset.events) && ((!__isset.events) || (TCollections.Equals(Events, other.Events))))
      && ((__isset.syncToken == other.__isset.syncToken) && ((!__isset.syncToken) || (System.Object.Equals(SyncToken, other.SyncToken))))
      && ((__isset.continuationToken == other.__isset.continuationToken) && ((!__isset.continuationToken) || (System.Object.Equals(ContinuationToken, other.ContinuationToken))));
  }

  public override int GetHashCode() {
    int hashcode = 157;
    unchecked {
      if(__isset.subscription)
        hashcode = (hashcode * 397) + Subscription.GetHashCode();
      if(__isset.events)
        hashcode = (hashcode * 397) + TCollections.GetHashCode(Events);
      if(__isset.syncToken)
        hashcode = (hashcode * 397) + SyncToken.GetHashCode();
      if(__isset.continuationToken)
        hashcode = (hashcode * 397) + ContinuationToken.GetHashCode();
    }
    return hashcode;
  }

  public override string ToString()
  {
    var sb = new StringBuilder("FetchSquareChatEventsResponse(");
    bool __first = true;
    if (Subscription != null && __isset.subscription)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("Subscription: ");
      Subscription.ToString(sb);
    }
    if (Events != null && __isset.events)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("Events: ");
      Events.ToString(sb);
    }
    if (SyncToken != null && __isset.syncToken)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("SyncToken: ");
      SyncToken.ToString(sb);
    }
    if (ContinuationToken != null && __isset.continuationToken)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("ContinuationToken: ");
      ContinuationToken.ToString(sb);
    }
    sb.Append(")");
    return sb.ToString();
  }
}

