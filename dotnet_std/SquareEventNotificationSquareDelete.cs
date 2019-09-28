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

using Thrift.Protocol;
using Thrift.Protocol.Entities;
using Thrift.Protocol.Utilities;
using Thrift.Transport;
using Thrift.Transport.Client;
using Thrift.Transport.Server;
using Thrift.Processor;



public partial class SquareEventNotificationSquareDelete : TBase
{
  private string _squareMid;
  private string _squareName;
  private string _profileImageObsHash;

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

  public string SquareName
  {
    get
    {
      return _squareName;
    }
    set
    {
      __isset.squareName = true;
      this._squareName = value;
    }
  }

  public string ProfileImageObsHash
  {
    get
    {
      return _profileImageObsHash;
    }
    set
    {
      __isset.profileImageObsHash = true;
      this._profileImageObsHash = value;
    }
  }


  public Isset __isset;
  public struct Isset
  {
    public bool squareMid;
    public bool squareName;
    public bool profileImageObsHash;
  }

  public SquareEventNotificationSquareDelete()
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
          case 2:
            if (field.Type == TType.String)
            {
              SquareName = await iprot.ReadStringAsync(cancellationToken);
            }
            else
            {
              await TProtocolUtil.SkipAsync(iprot, field.Type, cancellationToken);
            }
            break;
          case 3:
            if (field.Type == TType.String)
            {
              ProfileImageObsHash = await iprot.ReadStringAsync(cancellationToken);
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
      var struc = new TStruct("SquareEventNotificationSquareDelete");
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
      if (SquareName != null && __isset.squareName)
      {
        field.Name = "squareName";
        field.Type = TType.String;
        field.ID = 2;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteStringAsync(SquareName, cancellationToken);
        await oprot.WriteFieldEndAsync(cancellationToken);
      }
      if (ProfileImageObsHash != null && __isset.profileImageObsHash)
      {
        field.Name = "profileImageObsHash";
        field.Type = TType.String;
        field.ID = 3;
        await oprot.WriteFieldBeginAsync(field, cancellationToken);
        await oprot.WriteStringAsync(ProfileImageObsHash, cancellationToken);
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
    var other = that as SquareEventNotificationSquareDelete;
    if (other == null) return false;
    if (ReferenceEquals(this, other)) return true;
    return ((__isset.squareMid == other.__isset.squareMid) && ((!__isset.squareMid) || (System.Object.Equals(SquareMid, other.SquareMid))))
      && ((__isset.squareName == other.__isset.squareName) && ((!__isset.squareName) || (System.Object.Equals(SquareName, other.SquareName))))
      && ((__isset.profileImageObsHash == other.__isset.profileImageObsHash) && ((!__isset.profileImageObsHash) || (System.Object.Equals(ProfileImageObsHash, other.ProfileImageObsHash))));
  }

  public override int GetHashCode() {
    int hashcode = 157;
    unchecked {
      if(__isset.squareMid)
        hashcode = (hashcode * 397) + SquareMid.GetHashCode();
      if(__isset.squareName)
        hashcode = (hashcode * 397) + SquareName.GetHashCode();
      if(__isset.profileImageObsHash)
        hashcode = (hashcode * 397) + ProfileImageObsHash.GetHashCode();
    }
    return hashcode;
  }

  public override string ToString()
  {
    var sb = new StringBuilder("SquareEventNotificationSquareDelete(");
    bool __first = true;
    if (SquareMid != null && __isset.squareMid)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("SquareMid: ");
      sb.Append(SquareMid);
    }
    if (SquareName != null && __isset.squareName)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("SquareName: ");
      sb.Append(SquareName);
    }
    if (ProfileImageObsHash != null && __isset.profileImageObsHash)
    {
      if(!__first) { sb.Append(", "); }
      __first = false;
      sb.Append("ProfileImageObsHash: ");
      sb.Append(ProfileImageObsHash);
    }
    sb.Append(")");
    return sb.ToString();
  }
}
