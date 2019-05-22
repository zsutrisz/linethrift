/**
 * Autogenerated by Thrift Compiler (0.11.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
using System;
using System.Collections;
using System.Collections.Generic;
using System.Text;
using System.IO;
using Thrift;
using Thrift.Collections;
using System.Runtime.Serialization;
using Thrift.Protocol;
using Thrift.Transport;


#if !SILVERLIGHT
[Serializable]
#endif
public partial class UpdateSquareChatRequest : TBase
{
  private THashSet<SquareChatAttribute> _updatedAttrs;
  private SquareChat _squareChat;

  public THashSet<SquareChatAttribute> UpdatedAttrs
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

  public SquareChat SquareChat
  {
    get
    {
      return _squareChat;
    }
    set
    {
      __isset.squareChat = true;
      this._squareChat = value;
    }
  }


  public Isset __isset;
  #if !SILVERLIGHT
  [Serializable]
  #endif
  public struct Isset {
    public bool updatedAttrs;
    public bool squareChat;
  }

  public UpdateSquareChatRequest() {
  }

  public void Read (TProtocol iprot)
  {
    iprot.IncrementRecursionDepth();
    try
    {
      TField field;
      iprot.ReadStructBegin();
      while (true)
      {
        field = iprot.ReadFieldBegin();
        if (field.Type == TType.Stop) { 
          break;
        }
        switch (field.ID)
        {
          case 2:
            if (field.Type == TType.Set) {
              {
                UpdatedAttrs = new THashSet<SquareChatAttribute>();
                TSet _set559 = iprot.ReadSetBegin();
                for( int _i560 = 0; _i560 < _set559.Count; ++_i560)
                {
                  SquareChatAttribute _elem561;
                  _elem561 = (SquareChatAttribute)iprot.ReadI32();
                  UpdatedAttrs.Add(_elem561);
                }
                iprot.ReadSetEnd();
              }
            } else { 
              TProtocolUtil.Skip(iprot, field.Type);
            }
            break;
          case 3:
            if (field.Type == TType.Struct) {
              SquareChat = new SquareChat();
              SquareChat.Read(iprot);
            } else { 
              TProtocolUtil.Skip(iprot, field.Type);
            }
            break;
          default: 
            TProtocolUtil.Skip(iprot, field.Type);
            break;
        }
        iprot.ReadFieldEnd();
      }
      iprot.ReadStructEnd();
    }
    finally
    {
      iprot.DecrementRecursionDepth();
    }
  }

  public void Write(TProtocol oprot) {
    oprot.IncrementRecursionDepth();
    try
    {
      TStruct struc = new TStruct("UpdateSquareChatRequest");
      oprot.WriteStructBegin(struc);
      TField field = new TField();
      if (UpdatedAttrs != null && __isset.updatedAttrs) {
        field.Name = "updatedAttrs";
        field.Type = TType.Set;
        field.ID = 2;
        oprot.WriteFieldBegin(field);
        {
          oprot.WriteSetBegin(new TSet(TType.I32, UpdatedAttrs.Count));
          foreach (SquareChatAttribute _iter562 in UpdatedAttrs)
          {
            oprot.WriteI32((int)_iter562);
          }
          oprot.WriteSetEnd();
        }
        oprot.WriteFieldEnd();
      }
      if (SquareChat != null && __isset.squareChat) {
        field.Name = "squareChat";
        field.Type = TType.Struct;
        field.ID = 3;
        oprot.WriteFieldBegin(field);
        SquareChat.Write(oprot);
        oprot.WriteFieldEnd();
      }
      oprot.WriteFieldStop();
      oprot.WriteStructEnd();
    }
    finally
    {
      oprot.DecrementRecursionDepth();
    }
  }

  public override string ToString() {
    StringBuilder __sb = new StringBuilder("UpdateSquareChatRequest(");
    bool __first = true;
    if (UpdatedAttrs != null && __isset.updatedAttrs) {
      if(!__first) { __sb.Append(", "); }
      __first = false;
      __sb.Append("UpdatedAttrs: ");
      __sb.Append(UpdatedAttrs);
    }
    if (SquareChat != null && __isset.squareChat) {
      if(!__first) { __sb.Append(", "); }
      __first = false;
      __sb.Append("SquareChat: ");
      __sb.Append(SquareChat== null ? "<null>" : SquareChat.ToString());
    }
    __sb.Append(")");
    return __sb.ToString();
  }

}
