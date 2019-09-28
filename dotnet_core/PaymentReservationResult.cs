/**
 * Autogenerated by Thrift Compiler (0.13.0)
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

using Thrift.Protocols;
using Thrift.Protocols.Entities;
using Thrift.Protocols.Utilities;
using Thrift.Transports;
using Thrift.Transports.Client;
using Thrift.Transports.Server;



public partial class PaymentReservationResult : TBase
{
  private string _orderId;
  private string _confirmUrl;
  private Dictionary<string, string> _extras;

  public string OrderId
  {
    get
    {
      return _orderId;
    }
    set
    {
      __isset.orderId = true;
      this._orderId = value;
    }
  }

  public string ConfirmUrl
  {
    get
    {
      return _confirmUrl;
    }
    set
    {
      __isset.confirmUrl = true;
      this._confirmUrl = value;
    }
  }

  public Dictionary<string, string> Extras
  {
    get
    {
      return _extras;
    }
    set
    {
      __isset.extras = true;
      this._extras = value;
    }
  }


  public Isset __isset;
  public struct Isset
  {
    public bool orderId;
    public bool confirmUrl;
    public bool extras;
  }

  public PaymentReservationResult()
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
              OrderId = await iprot.ReadStringAsync(cancellationToken);
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 2:
            if (field.Type == TType.String)
            {
              ConfirmUrl = await iprot.ReadStringAsync(cancellationToken);
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 3:
            if (field.Type == TType.Map)
            {
              {
                Extras = new Dictionary<string, string>();
                TMap _map188 = await iprot.ReadMapBeginAsync(cancellationToken);
                for(int _i189 = 0; _i189 < _map188.Count; ++_i189)
                {
                  string _key190;
                  string _val191;
                  _key190 = await iprot.ReadStringAsync(cancellationToken);
                  _val191 = await iprot.ReadStringAsync(cancellationToken);
                  Extras[_key190] = _val191;
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
      var struc = new TStruct("PaymentReservationResult");
      await oprot.WriteStructBeginAsync(struc, cancellationToken);
      var field = new TField();
      if (OrderId != null && __isset.orderId)
      {
        field.Name = "orderId";
        field.Type = TType.String;
        field.ID = 1;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteStringAsync(OrderId, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (ConfirmUrl != null && __isset.confirmUrl)
      {
        field.Name = "confirmUrl";
        field.Type = TType.String;
        field.ID = 2;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteStringAsync(ConfirmUrl, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (Extras != null && __isset.extras)
      {
        field.Name = "extras";
        field.Type = TType.Map;
        field.ID = 3;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        {
          await oprot.WriteMapBeginAsync(new TMap(TType.String, TType.String, Extras.Count), cancellationToken);
          foreach (string _iter192 in Extras.Keys)
          {
            await oprot.WriteStringAsync(_iter192, cancellationToken);
            await oprot.WriteStringAsync(Extras[_iter192], cancellationToken);
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

  public override string ToString()
  {
    var sb = new StringBuilder("PaymentReservationResult(");
    bool __first = true;
    if (OrderId != null && __isset.orderId)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("OrderId: ");
      sb.Append(OrderId);
    }
    if (ConfirmUrl != null && __isset.confirmUrl)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("ConfirmUrl: ");
      sb.Append(ConfirmUrl);
    }
    if (Extras != null && __isset.extras)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("Extras: ");
      sb.Append(Extras);
    }
    sb.Append(")");
    return sb.ToString();
  }
}
