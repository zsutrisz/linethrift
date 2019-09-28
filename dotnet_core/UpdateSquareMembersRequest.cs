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



public partial class UpdateSquareMembersRequest : TBase
{
  private THashSet<SquareMemberAttribute> _updatedAttrs;
  private List<SquareMember> _members;

  public THashSet<SquareMemberAttribute> UpdatedAttrs
  {
    get
    {
      return _updatedAttrs;
    }
    set
    {
      __isset.updatedAttrs = true;
      this._updatedAttrs = value;
    }
  }

  public List<SquareMember> Members
  {
    get
    {
      return _members;
    }
    set
    {
      __isset.members = true;
      this._members = value;
    }
  }


  public Isset __isset;
  public struct Isset
  {
    public bool updatedAttrs;
    public bool members;
  }

  public UpdateSquareMembersRequest()
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
            if (field.Type == TType.Set)
            {
              {
                UpdatedAttrs = new THashSet<SquareMemberAttribute>();
                TSet _set433 = await iprot.ReadSetBeginAsync(cancellationToken);
                for(int _i434 = 0; _i434 < _set433.Count; ++_i434)
                {
                  SquareMemberAttribute _elem435;
                  _elem435 = (SquareMemberAttribute)await iprot.ReadI32Async(cancellationToken);
                  UpdatedAttrs.Add(_elem435);
                }
                await iprot.ReadSetEndAsync(cancellationToken);
              }
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 3:
            if (field.Type == TType.List)
            {
              {
                Members = new List<SquareMember>();
                TList _list436 = await iprot.ReadListBeginAsync(cancellationToken);
                for(int _i437 = 0; _i437 < _list436.Count; ++_i437)
                {
                  SquareMember _elem438;
                  _elem438 = new SquareMember();
                  await _elem438.ReadAsync(iprot, cancellationToken);
                  Members.Add(_elem438);
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
      var struc = new TStruct("UpdateSquareMembersRequest");
      await oprot.WriteStructBeginAsync(struc, cancellationToken);
      var field = new TField();
      if (UpdatedAttrs != null && __isset.updatedAttrs)
      {
        field.Name = "updatedAttrs";
        field.Type = TType.Set;
        field.ID = 2;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        {
          await oprot.WriteSetBeginAsync(new TSet(TType.I32, UpdatedAttrs.Count), cancellationToken);
          foreach (SquareMemberAttribute _iter439 in UpdatedAttrs)
          {
            await oprot.WriteI32Async((int)_iter439, cancellationToken);
          }
          await oprot.WriteSetEndAsync(cancellationToken);
        }
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (Members != null && __isset.members)
      {
        field.Name = "members";
        field.Type = TType.List;
        field.ID = 3;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        {
          await oprot.WriteListBeginAsync(new TList(TType.Struct, Members.Count), cancellationToken);
          foreach (SquareMember _iter440 in Members)
          {
            await _iter440.WriteAsync(oprot, cancellationToken);
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
    var sb = new StringBuilder("UpdateSquareMembersRequest(");
    bool __first = true;
    if (UpdatedAttrs != null && __isset.updatedAttrs)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("UpdatedAttrs: ");
      sb.Append(UpdatedAttrs);
    }
    if (Members != null && __isset.members)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("Members: ");
      sb.Append(Members);
    }
    sb.Append(")");
    return sb.ToString();
  }
}
