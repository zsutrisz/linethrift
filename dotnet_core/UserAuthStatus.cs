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



public partial class UserAuthStatus : TBase
{
  private bool _phoneNumberRegistered;
  private List<SnsIdType> _registeredSnsIdTypes;

  public bool PhoneNumberRegistered
  {
    get
    {
      return _phoneNumberRegistered;
    }
    set
    {
      __isset.phoneNumberRegistered = true;
      this._phoneNumberRegistered = value;
    }
  }

  public List<SnsIdType> RegisteredSnsIdTypes
  {
    get
    {
      return _registeredSnsIdTypes;
    }
    set
    {
      __isset.registeredSnsIdTypes = true;
      this._registeredSnsIdTypes = value;
    }
  }


  public Isset __isset;
  public struct Isset
  {
    public bool phoneNumberRegistered;
    public bool registeredSnsIdTypes;
  }

  public UserAuthStatus()
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
            if (field.Type == TType.Bool)
            {
              PhoneNumberRegistered = await iprot.ReadBoolAsync(cancellationToken);
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
                RegisteredSnsIdTypes = new List<SnsIdType>();
                TList _list537 = await iprot.ReadListBeginAsync(cancellationToken);
                for(int _i538 = 0; _i538 < _list537.Count; ++_i538)
                {
                  SnsIdType _elem539;
                  _elem539 = (SnsIdType)await iprot.ReadI32Async(cancellationToken);
                  RegisteredSnsIdTypes.Add(_elem539);
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
      var struc = new TStruct("UserAuthStatus");
      await oprot.WriteStructBeginAsync(struc, cancellationToken);
      var field = new TField();
      if (__isset.phoneNumberRegistered)
      {
        field.Name = "phoneNumberRegistered";
        field.Type = TType.Bool;
        field.ID = 1;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteBoolAsync(PhoneNumberRegistered, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (RegisteredSnsIdTypes != null && __isset.registeredSnsIdTypes)
      {
        field.Name = "registeredSnsIdTypes";
        field.Type = TType.List;
        field.ID = 2;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        {
          await oprot.WriteListBeginAsync(new TList(TType.I32, RegisteredSnsIdTypes.Count), cancellationToken);
          foreach (SnsIdType _iter540 in RegisteredSnsIdTypes)
          {
            await oprot.WriteI32Async((int)_iter540, cancellationToken);
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

  public override string ToString()
  {
    var sb = new StringBuilder("UserAuthStatus(");
    bool __first = true;
    if (__isset.phoneNumberRegistered)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("PhoneNumberRegistered: ");
      sb.Append(PhoneNumberRegistered);
    }
    if (RegisteredSnsIdTypes != null && __isset.registeredSnsIdTypes)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("RegisteredSnsIdTypes: ");
      sb.Append(RegisteredSnsIdTypes);
    }
    sb.Append(")");
    return sb.ToString();
  }
}
