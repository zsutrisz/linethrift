/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
@SuppressWarnings({"cast", "rawtypes", "serial", "unchecked", "unused"})
@javax.annotation.Generated(value = "Autogenerated by Thrift Compiler (0.14.0)", date = "2020-03-23")
public class E2EEPublicKey implements org.apache.thrift.TBase<E2EEPublicKey, E2EEPublicKey._Fields>, java.io.Serializable, Cloneable, Comparable<E2EEPublicKey> {
  private static final org.apache.thrift.protocol.TStruct STRUCT_DESC = new org.apache.thrift.protocol.TStruct("E2EEPublicKey");

  private static final org.apache.thrift.protocol.TField VERSION_FIELD_DESC = new org.apache.thrift.protocol.TField("version", org.apache.thrift.protocol.TType.I32, (short)1);
  private static final org.apache.thrift.protocol.TField KEY_ID_FIELD_DESC = new org.apache.thrift.protocol.TField("keyId", org.apache.thrift.protocol.TType.I32, (short)2);
  private static final org.apache.thrift.protocol.TField KEY_DATA_FIELD_DESC = new org.apache.thrift.protocol.TField("keyData", org.apache.thrift.protocol.TType.STRING, (short)4);
  private static final org.apache.thrift.protocol.TField CREATED_TIME_FIELD_DESC = new org.apache.thrift.protocol.TField("createdTime", org.apache.thrift.protocol.TType.I64, (short)5);

  private static final org.apache.thrift.scheme.SchemeFactory STANDARD_SCHEME_FACTORY = new E2EEPublicKeyStandardSchemeFactory();
  private static final org.apache.thrift.scheme.SchemeFactory TUPLE_SCHEME_FACTORY = new E2EEPublicKeyTupleSchemeFactory();

  public int version; // required
  public int keyId; // required
  public @org.apache.thrift.annotation.Nullable java.nio.ByteBuffer keyData; // required
  public long createdTime; // required

  /** The set of fields this struct contains, along with convenience methods for finding and manipulating them. */
  public enum _Fields implements org.apache.thrift.TFieldIdEnum {
    VERSION((short)1, "version"),
    KEY_ID((short)2, "keyId"),
    KEY_DATA((short)4, "keyData"),
    CREATED_TIME((short)5, "createdTime");

    private static final java.util.Map<java.lang.String, _Fields> byName = new java.util.HashMap<java.lang.String, _Fields>();

    static {
      for (_Fields field : java.util.EnumSet.allOf(_Fields.class)) {
        byName.put(field.getFieldName(), field);
      }
    }

    /**
     * Find the _Fields constant that matches fieldId, or null if its not found.
     */
    @org.apache.thrift.annotation.Nullable
    public static _Fields findByThriftId(int fieldId) {
      switch(fieldId) {
        case 1: // VERSION
          return VERSION;
        case 2: // KEY_ID
          return KEY_ID;
        case 4: // KEY_DATA
          return KEY_DATA;
        case 5: // CREATED_TIME
          return CREATED_TIME;
        default:
          return null;
      }
    }

    /**
     * Find the _Fields constant that matches fieldId, throwing an exception
     * if it is not found.
     */
    public static _Fields findByThriftIdOrThrow(int fieldId) {
      _Fields fields = findByThriftId(fieldId);
      if (fields == null) throw new java.lang.IllegalArgumentException("Field " + fieldId + " doesn't exist!");
      return fields;
    }

    /**
     * Find the _Fields constant that matches name, or null if its not found.
     */
    @org.apache.thrift.annotation.Nullable
    public static _Fields findByName(java.lang.String name) {
      return byName.get(name);
    }

    private final short _thriftId;
    private final java.lang.String _fieldName;

    _Fields(short thriftId, java.lang.String fieldName) {
      _thriftId = thriftId;
      _fieldName = fieldName;
    }

    public short getThriftFieldId() {
      return _thriftId;
    }

    public java.lang.String getFieldName() {
      return _fieldName;
    }
  }

  // isset id assignments
  private static final int __VERSION_ISSET_ID = 0;
  private static final int __KEYID_ISSET_ID = 1;
  private static final int __CREATEDTIME_ISSET_ID = 2;
  private byte __isset_bitfield = 0;
  public static final java.util.Map<_Fields, org.apache.thrift.meta_data.FieldMetaData> metaDataMap;
  static {
    java.util.Map<_Fields, org.apache.thrift.meta_data.FieldMetaData> tmpMap = new java.util.EnumMap<_Fields, org.apache.thrift.meta_data.FieldMetaData>(_Fields.class);
    tmpMap.put(_Fields.VERSION, new org.apache.thrift.meta_data.FieldMetaData("version", org.apache.thrift.TFieldRequirementType.DEFAULT, 
        new org.apache.thrift.meta_data.FieldValueMetaData(org.apache.thrift.protocol.TType.I32)));
    tmpMap.put(_Fields.KEY_ID, new org.apache.thrift.meta_data.FieldMetaData("keyId", org.apache.thrift.TFieldRequirementType.DEFAULT, 
        new org.apache.thrift.meta_data.FieldValueMetaData(org.apache.thrift.protocol.TType.I32)));
    tmpMap.put(_Fields.KEY_DATA, new org.apache.thrift.meta_data.FieldMetaData("keyData", org.apache.thrift.TFieldRequirementType.DEFAULT, 
        new org.apache.thrift.meta_data.FieldValueMetaData(org.apache.thrift.protocol.TType.STRING        , true)));
    tmpMap.put(_Fields.CREATED_TIME, new org.apache.thrift.meta_data.FieldMetaData("createdTime", org.apache.thrift.TFieldRequirementType.DEFAULT, 
        new org.apache.thrift.meta_data.FieldValueMetaData(org.apache.thrift.protocol.TType.I64)));
    metaDataMap = java.util.Collections.unmodifiableMap(tmpMap);
    org.apache.thrift.meta_data.FieldMetaData.addStructMetaDataMap(E2EEPublicKey.class, metaDataMap);
  }

  public E2EEPublicKey() {
  }

  public E2EEPublicKey(
    int version,
    int keyId,
    java.nio.ByteBuffer keyData,
    long createdTime)
  {
    this();
    this.version = version;
    setVersionIsSet(true);
    this.keyId = keyId;
    setKeyIdIsSet(true);
    this.keyData = org.apache.thrift.TBaseHelper.copyBinary(keyData);
    this.createdTime = createdTime;
    setCreatedTimeIsSet(true);
  }

  /**
   * Performs a deep copy on <i>other</i>.
   */
  public E2EEPublicKey(E2EEPublicKey other) {
    __isset_bitfield = other.__isset_bitfield;
    this.version = other.version;
    this.keyId = other.keyId;
    if (other.isSetKeyData()) {
      this.keyData = org.apache.thrift.TBaseHelper.copyBinary(other.keyData);
    }
    this.createdTime = other.createdTime;
  }

  public E2EEPublicKey deepCopy() {
    return new E2EEPublicKey(this);
  }

  @Override
  public void clear() {
    setVersionIsSet(false);
    this.version = 0;
    setKeyIdIsSet(false);
    this.keyId = 0;
    this.keyData = null;
    setCreatedTimeIsSet(false);
    this.createdTime = 0;
  }

  public int getVersion() {
    return this.version;
  }

  public E2EEPublicKey setVersion(int version) {
    this.version = version;
    setVersionIsSet(true);
    return this;
  }

  public void unsetVersion() {
    __isset_bitfield = org.apache.thrift.EncodingUtils.clearBit(__isset_bitfield, __VERSION_ISSET_ID);
  }

  /** Returns true if field version is set (has been assigned a value) and false otherwise */
  public boolean isSetVersion() {
    return org.apache.thrift.EncodingUtils.testBit(__isset_bitfield, __VERSION_ISSET_ID);
  }

  public void setVersionIsSet(boolean value) {
    __isset_bitfield = org.apache.thrift.EncodingUtils.setBit(__isset_bitfield, __VERSION_ISSET_ID, value);
  }

  public int getKeyId() {
    return this.keyId;
  }

  public E2EEPublicKey setKeyId(int keyId) {
    this.keyId = keyId;
    setKeyIdIsSet(true);
    return this;
  }

  public void unsetKeyId() {
    __isset_bitfield = org.apache.thrift.EncodingUtils.clearBit(__isset_bitfield, __KEYID_ISSET_ID);
  }

  /** Returns true if field keyId is set (has been assigned a value) and false otherwise */
  public boolean isSetKeyId() {
    return org.apache.thrift.EncodingUtils.testBit(__isset_bitfield, __KEYID_ISSET_ID);
  }

  public void setKeyIdIsSet(boolean value) {
    __isset_bitfield = org.apache.thrift.EncodingUtils.setBit(__isset_bitfield, __KEYID_ISSET_ID, value);
  }

  public byte[] getKeyData() {
    setKeyData(org.apache.thrift.TBaseHelper.rightSize(keyData));
    return keyData == null ? null : keyData.array();
  }

  public java.nio.ByteBuffer bufferForKeyData() {
    return org.apache.thrift.TBaseHelper.copyBinary(keyData);
  }

  public E2EEPublicKey setKeyData(byte[] keyData) {
    this.keyData = keyData == null ? (java.nio.ByteBuffer)null   : java.nio.ByteBuffer.wrap(keyData.clone());
    return this;
  }

  public E2EEPublicKey setKeyData(@org.apache.thrift.annotation.Nullable java.nio.ByteBuffer keyData) {
    this.keyData = org.apache.thrift.TBaseHelper.copyBinary(keyData);
    return this;
  }

  public void unsetKeyData() {
    this.keyData = null;
  }

  /** Returns true if field keyData is set (has been assigned a value) and false otherwise */
  public boolean isSetKeyData() {
    return this.keyData != null;
  }

  public void setKeyDataIsSet(boolean value) {
    if (!value) {
      this.keyData = null;
    }
  }

  public long getCreatedTime() {
    return this.createdTime;
  }

  public E2EEPublicKey setCreatedTime(long createdTime) {
    this.createdTime = createdTime;
    setCreatedTimeIsSet(true);
    return this;
  }

  public void unsetCreatedTime() {
    __isset_bitfield = org.apache.thrift.EncodingUtils.clearBit(__isset_bitfield, __CREATEDTIME_ISSET_ID);
  }

  /** Returns true if field createdTime is set (has been assigned a value) and false otherwise */
  public boolean isSetCreatedTime() {
    return org.apache.thrift.EncodingUtils.testBit(__isset_bitfield, __CREATEDTIME_ISSET_ID);
  }

  public void setCreatedTimeIsSet(boolean value) {
    __isset_bitfield = org.apache.thrift.EncodingUtils.setBit(__isset_bitfield, __CREATEDTIME_ISSET_ID, value);
  }

  public void setFieldValue(_Fields field, @org.apache.thrift.annotation.Nullable java.lang.Object value) {
    switch (field) {
    case VERSION:
      if (value == null) {
        unsetVersion();
      } else {
        setVersion((java.lang.Integer)value);
      }
      break;

    case KEY_ID:
      if (value == null) {
        unsetKeyId();
      } else {
        setKeyId((java.lang.Integer)value);
      }
      break;

    case KEY_DATA:
      if (value == null) {
        unsetKeyData();
      } else {
        if (value instanceof byte[]) {
          setKeyData((byte[])value);
        } else {
          setKeyData((java.nio.ByteBuffer)value);
        }
      }
      break;

    case CREATED_TIME:
      if (value == null) {
        unsetCreatedTime();
      } else {
        setCreatedTime((java.lang.Long)value);
      }
      break;

    }
  }

  @org.apache.thrift.annotation.Nullable
  public java.lang.Object getFieldValue(_Fields field) {
    switch (field) {
    case VERSION:
      return getVersion();

    case KEY_ID:
      return getKeyId();

    case KEY_DATA:
      return getKeyData();

    case CREATED_TIME:
      return getCreatedTime();

    }
    throw new java.lang.IllegalStateException();
  }

  /** Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise */
  public boolean isSet(_Fields field) {
    if (field == null) {
      throw new java.lang.IllegalArgumentException();
    }

    switch (field) {
    case VERSION:
      return isSetVersion();
    case KEY_ID:
      return isSetKeyId();
    case KEY_DATA:
      return isSetKeyData();
    case CREATED_TIME:
      return isSetCreatedTime();
    }
    throw new java.lang.IllegalStateException();
  }

  @Override
  public boolean equals(java.lang.Object that) {
    if (that instanceof E2EEPublicKey)
      return this.equals((E2EEPublicKey)that);
    return false;
  }

  public boolean equals(E2EEPublicKey that) {
    if (that == null)
      return false;
    if (this == that)
      return true;

    boolean this_present_version = true;
    boolean that_present_version = true;
    if (this_present_version || that_present_version) {
      if (!(this_present_version && that_present_version))
        return false;
      if (this.version != that.version)
        return false;
    }

    boolean this_present_keyId = true;
    boolean that_present_keyId = true;
    if (this_present_keyId || that_present_keyId) {
      if (!(this_present_keyId && that_present_keyId))
        return false;
      if (this.keyId != that.keyId)
        return false;
    }

    boolean this_present_keyData = true && this.isSetKeyData();
    boolean that_present_keyData = true && that.isSetKeyData();
    if (this_present_keyData || that_present_keyData) {
      if (!(this_present_keyData && that_present_keyData))
        return false;
      if (!this.keyData.equals(that.keyData))
        return false;
    }

    boolean this_present_createdTime = true;
    boolean that_present_createdTime = true;
    if (this_present_createdTime || that_present_createdTime) {
      if (!(this_present_createdTime && that_present_createdTime))
        return false;
      if (this.createdTime != that.createdTime)
        return false;
    }

    return true;
  }

  @Override
  public int hashCode() {
    int hashCode = 1;

    hashCode = hashCode * 8191 + version;

    hashCode = hashCode * 8191 + keyId;

    hashCode = hashCode * 8191 + ((isSetKeyData()) ? 131071 : 524287);
    if (isSetKeyData())
      hashCode = hashCode * 8191 + keyData.hashCode();

    hashCode = hashCode * 8191 + org.apache.thrift.TBaseHelper.hashCode(createdTime);

    return hashCode;
  }

  @Override
  public int compareTo(E2EEPublicKey other) {
    if (!getClass().equals(other.getClass())) {
      return getClass().getName().compareTo(other.getClass().getName());
    }

    int lastComparison = 0;

    lastComparison = java.lang.Boolean.compare(isSetVersion(), other.isSetVersion());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetVersion()) {
      lastComparison = org.apache.thrift.TBaseHelper.compareTo(this.version, other.version);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = java.lang.Boolean.compare(isSetKeyId(), other.isSetKeyId());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetKeyId()) {
      lastComparison = org.apache.thrift.TBaseHelper.compareTo(this.keyId, other.keyId);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = java.lang.Boolean.compare(isSetKeyData(), other.isSetKeyData());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetKeyData()) {
      lastComparison = org.apache.thrift.TBaseHelper.compareTo(this.keyData, other.keyData);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = java.lang.Boolean.compare(isSetCreatedTime(), other.isSetCreatedTime());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetCreatedTime()) {
      lastComparison = org.apache.thrift.TBaseHelper.compareTo(this.createdTime, other.createdTime);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    return 0;
  }

  @org.apache.thrift.annotation.Nullable
  public _Fields fieldForId(int fieldId) {
    return _Fields.findByThriftId(fieldId);
  }

  public void read(org.apache.thrift.protocol.TProtocol iprot) throws org.apache.thrift.TException {
    scheme(iprot).read(iprot, this);
  }

  public void write(org.apache.thrift.protocol.TProtocol oprot) throws org.apache.thrift.TException {
    scheme(oprot).write(oprot, this);
  }

  @Override
  public java.lang.String toString() {
    java.lang.StringBuilder sb = new java.lang.StringBuilder("E2EEPublicKey(");
    boolean first = true;

    sb.append("version:");
    sb.append(this.version);
    first = false;
    if (!first) sb.append(", ");
    sb.append("keyId:");
    sb.append(this.keyId);
    first = false;
    if (!first) sb.append(", ");
    sb.append("keyData:");
    if (this.keyData == null) {
      sb.append("null");
    } else {
      org.apache.thrift.TBaseHelper.toString(this.keyData, sb);
    }
    first = false;
    if (!first) sb.append(", ");
    sb.append("createdTime:");
    sb.append(this.createdTime);
    first = false;
    sb.append(")");
    return sb.toString();
  }

  public void validate() throws org.apache.thrift.TException {
    // check for required fields
    // check for sub-struct validity
  }

  private void writeObject(java.io.ObjectOutputStream out) throws java.io.IOException {
    try {
      write(new org.apache.thrift.protocol.TCompactProtocol(new org.apache.thrift.transport.TIOStreamTransport(out)));
    } catch (org.apache.thrift.TException te) {
      throw new java.io.IOException(te);
    }
  }

  private void readObject(java.io.ObjectInputStream in) throws java.io.IOException, java.lang.ClassNotFoundException {
    try {
      // it doesn't seem like you should have to do this, but java serialization is wacky, and doesn't call the default constructor.
      __isset_bitfield = 0;
      read(new org.apache.thrift.protocol.TCompactProtocol(new org.apache.thrift.transport.TIOStreamTransport(in)));
    } catch (org.apache.thrift.TException te) {
      throw new java.io.IOException(te);
    }
  }

  private static class E2EEPublicKeyStandardSchemeFactory implements org.apache.thrift.scheme.SchemeFactory {
    public E2EEPublicKeyStandardScheme getScheme() {
      return new E2EEPublicKeyStandardScheme();
    }
  }

  private static class E2EEPublicKeyStandardScheme extends org.apache.thrift.scheme.StandardScheme<E2EEPublicKey> {

    public void read(org.apache.thrift.protocol.TProtocol iprot, E2EEPublicKey struct) throws org.apache.thrift.TException {
      org.apache.thrift.protocol.TField schemeField;
      iprot.readStructBegin();
      while (true)
      {
        schemeField = iprot.readFieldBegin();
        if (schemeField.type == org.apache.thrift.protocol.TType.STOP) { 
          break;
        }
        switch (schemeField.id) {
          case 1: // VERSION
            if (schemeField.type == org.apache.thrift.protocol.TType.I32) {
              struct.version = iprot.readI32();
              struct.setVersionIsSet(true);
            } else { 
              org.apache.thrift.protocol.TProtocolUtil.skip(iprot, schemeField.type);
            }
            break;
          case 2: // KEY_ID
            if (schemeField.type == org.apache.thrift.protocol.TType.I32) {
              struct.keyId = iprot.readI32();
              struct.setKeyIdIsSet(true);
            } else { 
              org.apache.thrift.protocol.TProtocolUtil.skip(iprot, schemeField.type);
            }
            break;
          case 4: // KEY_DATA
            if (schemeField.type == org.apache.thrift.protocol.TType.STRING) {
              struct.keyData = iprot.readBinary();
              struct.setKeyDataIsSet(true);
            } else { 
              org.apache.thrift.protocol.TProtocolUtil.skip(iprot, schemeField.type);
            }
            break;
          case 5: // CREATED_TIME
            if (schemeField.type == org.apache.thrift.protocol.TType.I64) {
              struct.createdTime = iprot.readI64();
              struct.setCreatedTimeIsSet(true);
            } else { 
              org.apache.thrift.protocol.TProtocolUtil.skip(iprot, schemeField.type);
            }
            break;
          default:
            org.apache.thrift.protocol.TProtocolUtil.skip(iprot, schemeField.type);
        }
        iprot.readFieldEnd();
      }
      iprot.readStructEnd();

      // check for required fields of primitive type, which can't be checked in the validate method
      struct.validate();
    }

    public void write(org.apache.thrift.protocol.TProtocol oprot, E2EEPublicKey struct) throws org.apache.thrift.TException {
      struct.validate();

      oprot.writeStructBegin(STRUCT_DESC);
      oprot.writeFieldBegin(VERSION_FIELD_DESC);
      oprot.writeI32(struct.version);
      oprot.writeFieldEnd();
      oprot.writeFieldBegin(KEY_ID_FIELD_DESC);
      oprot.writeI32(struct.keyId);
      oprot.writeFieldEnd();
      if (struct.keyData != null) {
        oprot.writeFieldBegin(KEY_DATA_FIELD_DESC);
        oprot.writeBinary(struct.keyData);
        oprot.writeFieldEnd();
      }
      oprot.writeFieldBegin(CREATED_TIME_FIELD_DESC);
      oprot.writeI64(struct.createdTime);
      oprot.writeFieldEnd();
      oprot.writeFieldStop();
      oprot.writeStructEnd();
    }

  }

  private static class E2EEPublicKeyTupleSchemeFactory implements org.apache.thrift.scheme.SchemeFactory {
    public E2EEPublicKeyTupleScheme getScheme() {
      return new E2EEPublicKeyTupleScheme();
    }
  }

  private static class E2EEPublicKeyTupleScheme extends org.apache.thrift.scheme.TupleScheme<E2EEPublicKey> {

    @Override
    public void write(org.apache.thrift.protocol.TProtocol prot, E2EEPublicKey struct) throws org.apache.thrift.TException {
      org.apache.thrift.protocol.TTupleProtocol oprot = (org.apache.thrift.protocol.TTupleProtocol) prot;
      java.util.BitSet optionals = new java.util.BitSet();
      if (struct.isSetVersion()) {
        optionals.set(0);
      }
      if (struct.isSetKeyId()) {
        optionals.set(1);
      }
      if (struct.isSetKeyData()) {
        optionals.set(2);
      }
      if (struct.isSetCreatedTime()) {
        optionals.set(3);
      }
      oprot.writeBitSet(optionals, 4);
      if (struct.isSetVersion()) {
        oprot.writeI32(struct.version);
      }
      if (struct.isSetKeyId()) {
        oprot.writeI32(struct.keyId);
      }
      if (struct.isSetKeyData()) {
        oprot.writeBinary(struct.keyData);
      }
      if (struct.isSetCreatedTime()) {
        oprot.writeI64(struct.createdTime);
      }
    }

    @Override
    public void read(org.apache.thrift.protocol.TProtocol prot, E2EEPublicKey struct) throws org.apache.thrift.TException {
      org.apache.thrift.protocol.TTupleProtocol iprot = (org.apache.thrift.protocol.TTupleProtocol) prot;
      java.util.BitSet incoming = iprot.readBitSet(4);
      if (incoming.get(0)) {
        struct.version = iprot.readI32();
        struct.setVersionIsSet(true);
      }
      if (incoming.get(1)) {
        struct.keyId = iprot.readI32();
        struct.setKeyIdIsSet(true);
      }
      if (incoming.get(2)) {
        struct.keyData = iprot.readBinary();
        struct.setKeyDataIsSet(true);
      }
      if (incoming.get(3)) {
        struct.createdTime = iprot.readI64();
        struct.setCreatedTimeIsSet(true);
      }
    }
  }

  private static <S extends org.apache.thrift.scheme.IScheme> S scheme(org.apache.thrift.protocol.TProtocol proto) {
    return (org.apache.thrift.scheme.StandardScheme.class.equals(proto.getScheme()) ? STANDARD_SCHEME_FACTORY : TUPLE_SCHEME_FACTORY).getScheme();
  }
}
