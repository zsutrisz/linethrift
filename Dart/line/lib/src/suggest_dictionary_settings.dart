/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library line.src.suggest_dictionary_settings;

import 'dart:typed_data' show Uint8List;
import 'package:thrift/thrift.dart';
import 'package:line/line.dart';

class SuggestDictionarySettings implements TBase {
  static final TStruct _STRUCT_DESC = new TStruct("SuggestDictionarySettings");
  static final TField _REVISION_FIELD_DESC = new TField("revision", TType.I64, 1);
  static final TField _NEW_REVISION_FIELD_DESC = new TField("newRevision", TType.I64, 2);
  static final TField _DICTIONARIES_FIELD_DESC = new TField("dictionaries", TType.LIST, 3);
  static final TField _PRELOADED_DICTIONARIES_FIELD_DESC = new TField("preloadedDictionaries", TType.LIST, 4);

  int _revision = 0;
  static const int REVISION = 1;
  int _newRevision = 0;
  static const int NEWREVISION = 2;
  List<SuggestDictionary> _dictionaries;
  static const int DICTIONARIES = 3;
  List<String> _preloadedDictionaries;
  static const int PRELOADEDDICTIONARIES = 4;

  bool __isset_revision = false;
  bool __isset_newRevision = false;

  SuggestDictionarySettings() {
  }

  // revision
  int get revision => this._revision;

  set revision(int revision) {
    this._revision = revision;
    this.__isset_revision = true;
  }

  bool isSetRevision() => this.__isset_revision;

  unsetRevision() {
    this.__isset_revision = false;
  }

  // newRevision
  int get newRevision => this._newRevision;

  set newRevision(int newRevision) {
    this._newRevision = newRevision;
    this.__isset_newRevision = true;
  }

  bool isSetNewRevision() => this.__isset_newRevision;

  unsetNewRevision() {
    this.__isset_newRevision = false;
  }

  // dictionaries
  List<SuggestDictionary> get dictionaries => this._dictionaries;

  set dictionaries(List<SuggestDictionary> dictionaries) {
    this._dictionaries = dictionaries;
  }

  bool isSetDictionaries() => this.dictionaries != null;

  unsetDictionaries() {
    this.dictionaries = null;
  }

  // preloadedDictionaries
  List<String> get preloadedDictionaries => this._preloadedDictionaries;

  set preloadedDictionaries(List<String> preloadedDictionaries) {
    this._preloadedDictionaries = preloadedDictionaries;
  }

  bool isSetPreloadedDictionaries() => this.preloadedDictionaries != null;

  unsetPreloadedDictionaries() {
    this.preloadedDictionaries = null;
  }

  getFieldValue(int fieldID) {
    switch (fieldID) {
      case REVISION:
        return this.revision;
      case NEWREVISION:
        return this.newRevision;
      case DICTIONARIES:
        return this.dictionaries;
      case PRELOADEDDICTIONARIES:
        return this.preloadedDictionaries;
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  setFieldValue(int fieldID, Object value) {
    switch (fieldID) {
      case REVISION:
        if (value == null) {
          unsetRevision();
        } else {
          this.revision = value;
        }
        break;

      case NEWREVISION:
        if (value == null) {
          unsetNewRevision();
        } else {
          this.newRevision = value;
        }
        break;

      case DICTIONARIES:
        if (value == null) {
          unsetDictionaries();
        } else {
          this.dictionaries = value;
        }
        break;

      case PRELOADEDDICTIONARIES:
        if (value == null) {
          unsetPreloadedDictionaries();
        } else {
          this.preloadedDictionaries = value;
        }
        break;

      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  // Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise
  bool isSet(int fieldID) {
    switch (fieldID) {
      case REVISION:
        return isSetRevision();
      case NEWREVISION:
        return isSetNewRevision();
      case DICTIONARIES:
        return isSetDictionaries();
      case PRELOADEDDICTIONARIES:
        return isSetPreloadedDictionaries();
      default:
        throw new ArgumentError("Field $fieldID doesn't exist!");
    }
  }

  read(TProtocol iprot) {
    TField field;
    iprot.readStructBegin();
    while (true) {
      field = iprot.readFieldBegin();
      if (field.type == TType.STOP) {
        break;
      }
      switch (field.id) {
        case REVISION:
          if (field.type == TType.I64) {
            this.revision = iprot.readI64();
            this.__isset_revision = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case NEWREVISION:
          if (field.type == TType.I64) {
            this.newRevision = iprot.readI64();
            this.__isset_newRevision = true;
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case DICTIONARIES:
          if (field.type == TType.LIST) {
            {
              TList _list242 = iprot.readListBegin();
              this.dictionaries = new List<SuggestDictionary>();
              for (int _i243 = 0; _i243 < _list242.length; ++_i243) {
                SuggestDictionary _elem244;
                _elem244 = new SuggestDictionary();
                _elem244.read(iprot);
                this.dictionaries.add(_elem244);
              }
              iprot.readListEnd();
            }
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case PRELOADEDDICTIONARIES:
          if (field.type == TType.LIST) {
            {
              TList _list245 = iprot.readListBegin();
              this.preloadedDictionaries = new List<String>();
              for (int _i246 = 0; _i246 < _list245.length; ++_i246) {
                String _elem247;
                _elem247 = iprot.readString();
                this.preloadedDictionaries.add(_elem247);
              }
              iprot.readListEnd();
            }
          } else {
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        default:
          TProtocolUtil.skip(iprot, field.type);
          break;
      }
      iprot.readFieldEnd();
    }
    iprot.readStructEnd();

    // check for required fields of primitive type, which can't be checked in the validate method
    validate();
  }

  write(TProtocol oprot) {
    validate();

    oprot.writeStructBegin(_STRUCT_DESC);
    oprot.writeFieldBegin(_REVISION_FIELD_DESC);
    oprot.writeI64(this.revision);
    oprot.writeFieldEnd();
    oprot.writeFieldBegin(_NEW_REVISION_FIELD_DESC);
    oprot.writeI64(this.newRevision);
    oprot.writeFieldEnd();
    if (this.dictionaries != null) {
      oprot.writeFieldBegin(_DICTIONARIES_FIELD_DESC);
      {
        oprot.writeListBegin(new TList(TType.STRUCT, this.dictionaries.length));
        for (var elem248 in this.dictionaries) {
          elem248.write(oprot);
        }
        oprot.writeListEnd();
      }
      oprot.writeFieldEnd();
    }
    if (this.preloadedDictionaries != null) {
      oprot.writeFieldBegin(_PRELOADED_DICTIONARIES_FIELD_DESC);
      {
        oprot.writeListBegin(new TList(TType.STRING, this.preloadedDictionaries.length));
        for (var elem249 in this.preloadedDictionaries) {
          oprot.writeString(elem249);
        }
        oprot.writeListEnd();
      }
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  String toString() {
    StringBuffer ret = new StringBuffer("SuggestDictionarySettings(");

    ret.write("revision:");
    ret.write(this.revision);

    ret.write(", ");
    ret.write("newRevision:");
    ret.write(this.newRevision);

    ret.write(", ");
    ret.write("dictionaries:");
    if (this.dictionaries == null) {
      ret.write("null");
    } else {
      ret.write(this.dictionaries);
    }

    ret.write(", ");
    ret.write("preloadedDictionaries:");
    if (this.preloadedDictionaries == null) {
      ret.write("null");
    } else {
      ret.write(this.preloadedDictionaries);
    }

    ret.write(")");

    return ret.toString();
  }

  validate() {
    // check for required fields
    // check that fields of type enum have valid values
  }

}

