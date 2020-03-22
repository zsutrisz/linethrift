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



public partial class NotificationFetchResult : TBase
{
  private NotificationItemFetchMode _fetchMode;
  private List<NotificationItem> _itemList;

  /// <summary>
  /// 
  /// <seealso cref="NotificationItemFetchMode"/>
  /// </summary>
  public NotificationItemFetchMode FetchMode
  {
    get
    {
      return _fetchMode;
    }
    set
    {
      __isset.fetchMode = true;
      this._fetchMode = value;
    }
  }

  public List<NotificationItem> ItemList
  {
    get
    {
      return _itemList;
    }
    set
    {
      __isset.itemList = true;
      this._itemList = value;
    }
  }


  public Isset __isset;
  public struct Isset
  {
    public bool fetchMode;
    public bool itemList;
  }

  public NotificationFetchResult()
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
            if (field.Type == TType.I32)
            {
              FetchMode = (NotificationItemFetchMode)await iprot.ReadI32Async(cancellationToken);
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
                TList _list184 = await iprot.ReadListBeginAsync(cancellationToken);
                ItemList = new List<NotificationItem>(_list184.Count);
                for(int _i185 = 0; _i185 < _list184.Count; ++_i185)
                {
                  NotificationItem _elem186;
                  _elem186 = new NotificationItem();
                  await _elem186.ReadAsync(iprot, cancellationToken);
                  ItemList.Add(_elem186);
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
      var struc = new TStruct("NotificationFetchResult");
      await oprot.WriteStructBeginAsync(struc, cancellationToken);
      var field = new TField();
      if (__isset.fetchMode)
      {
        field.Name = "fetchMode";
        field.Type = TType.I32;
        field.ID = 1;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteI32Async((int)FetchMode, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (ItemList != null && __isset.itemList)
      {
        field.Name = "itemList";
        field.Type = TType.List;
        field.ID = 2;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        {
          await oprot.WriteListBeginAsync(new TList(TType.Struct, ItemList.Count), cancellationToken);
          foreach (NotificationItem _iter187 in ItemList)
          {
            await _iter187.WriteAsync(oprot, cancellationToken);
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
    var other = that as NotificationFetchResult;
    if (other == null) return false;
    if (ReferenceEquals(this, other)) return true;
    return ((__isset.fetchMode == other.__isset.fetchMode) && ((!__isset.fetchMode) || (System.Object.Equals(FetchMode, other.FetchMode))))
      && ((__isset.itemList == other.__isset.itemList) && ((!__isset.itemList) || (TCollections.Equals(ItemList, other.ItemList))));
  }

  public override int GetHashCode() {
    int hashcode = 157;
    unchecked {
      if(__isset.fetchMode)
        hashcode = (hashcode * 397) + FetchMode.GetHashCode();
      if(__isset.itemList)
        hashcode = (hashcode * 397) + TCollections.GetHashCode(ItemList);
    }
    return hashcode;
  }

  public override string ToString()
  {
    var sb = new StringBuilder("NotificationFetchResult(");
    bool __first = true;
    if (__isset.fetchMode)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("FetchMode: ");
      FetchMode.ToString(sb);
    }
    if (ItemList != null && __isset.itemList)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("ItemList: ");
      ItemList.ToString(sb);
    }
    sb.Append(")");
    return sb.ToString();
  }
}
