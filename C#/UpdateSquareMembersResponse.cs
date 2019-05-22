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
public partial class UpdateSquareMembersResponse : TBase
{
  private THashSet<SquareMemberAttribute> _updatedAttrs;
  private SquareMember _editor;
  private Dictionary<string, SquareMember> _members;

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

  public SquareMember Editor
  {
    get
    {
      return _editor;
    }
    set
    {
      __isset.editor = true;
      this._editor = value;
    }
  }

  public Dictionary<string, SquareMember> Members
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
  #if !SILVERLIGHT
  [Serializable]
  #endif
  public struct Isset {
    public bool updatedAttrs;
    public bool editor;
    public bool members;
  }

  public UpdateSquareMembersResponse() {
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
          case 1:
            if (field.Type == TType.Set) {
              {
                UpdatedAttrs = new THashSet<SquareMemberAttribute>();
                TSet _set529 = iprot.ReadSetBegin();
                for( int _i530 = 0; _i530 < _set529.Count; ++_i530)
                {
                  SquareMemberAttribute _elem531;
                  _elem531 = (SquareMemberAttribute)iprot.ReadI32();
                  UpdatedAttrs.Add(_elem531);
                }
                iprot.ReadSetEnd();
              }
            } else { 
              TProtocolUtil.Skip(iprot, field.Type);
            }
            break;
          case 2:
            if (field.Type == TType.Struct) {
              Editor = new SquareMember();
              Editor.Read(iprot);
            } else { 
              TProtocolUtil.Skip(iprot, field.Type);
            }
            break;
          case 3:
            if (field.Type == TType.Map) {
              {
                Members = new Dictionary<string, SquareMember>();
                TMap _map532 = iprot.ReadMapBegin();
                for( int _i533 = 0; _i533 < _map532.Count; ++_i533)
                {
                  string _key534;
                  SquareMember _val535;
                  _key534 = iprot.ReadString();
                  _val535 = new SquareMember();
                  _val535.Read(iprot);
                  Members[_key534] = _val535;
                }
                iprot.ReadMapEnd();
              }
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
      TStruct struc = new TStruct("UpdateSquareMembersResponse");
      oprot.WriteStructBegin(struc);
      TField field = new TField();
      if (UpdatedAttrs != null && __isset.updatedAttrs) {
        field.Name = "updatedAttrs";
        field.Type = TType.Set;
        field.ID = 1;
        oprot.WriteFieldBegin(field);
        {
          oprot.WriteSetBegin(new TSet(TType.I32, UpdatedAttrs.Count));
          foreach (SquareMemberAttribute _iter536 in UpdatedAttrs)
          {
            oprot.WriteI32((int)_iter536);
          }
          oprot.WriteSetEnd();
        }
        oprot.WriteFieldEnd();
      }
      if (Editor != null && __isset.editor) {
        field.Name = "editor";
        field.Type = TType.Struct;
        field.ID = 2;
        oprot.WriteFieldBegin(field);
        Editor.Write(oprot);
        oprot.WriteFieldEnd();
      }
      if (Members != null && __isset.members) {
        field.Name = "members";
        field.Type = TType.Map;
        field.ID = 3;
        oprot.WriteFieldBegin(field);
        {
          oprot.WriteMapBegin(new TMap(TType.String, TType.Struct, Members.Count));
          foreach (string _iter537 in Members.Keys)
          {
            oprot.WriteString(_iter537);
            Members[_iter537].Write(oprot);
          }
          oprot.WriteMapEnd();
        }
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
    StringBuilder __sb = new StringBuilder("UpdateSquareMembersResponse(");
    bool __first = true;
    if (UpdatedAttrs != null && __isset.updatedAttrs) {
      if(!__first) { __sb.Append(", "); }
      __first = false;
      __sb.Append("UpdatedAttrs: ");
      __sb.Append(UpdatedAttrs);
    }
    if (Editor != null && __isset.editor) {
      if(!__first) { __sb.Append(", "); }
      __first = false;
      __sb.Append("Editor: ");
      __sb.Append(Editor== null ? "<null>" : Editor.ToString());
    }
    if (Members != null && __isset.members) {
      if(!__first) { __sb.Append(", "); }
      __first = false;
      __sb.Append("Members: ");
      __sb.Append(Members);
    }
    __sb.Append(")");
    return __sb.ToString();
  }

}
