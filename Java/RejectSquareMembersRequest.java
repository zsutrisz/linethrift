/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
@SuppressWarnings({"cast", "rawtypes", "serial", "unchecked", "unused"})
@javax.annotation.Generated(value = "Autogenerated by Thrift Compiler (0.14.0)", date = "2020-03-23")
public class RejectSquareMembersRequest implements org.apache.thrift.TBase<RejectSquareMembersRequest, RejectSquareMembersRequest._Fields>, java.io.Serializable, Cloneable, Comparable<RejectSquareMembersRequest> {
  private static final org.apache.thrift.protocol.TStruct STRUCT_DESC = new org.apache.thrift.protocol.TStruct("RejectSquareMembersRequest");

  private static final org.apache.thrift.protocol.TField SQUARE_MID_FIELD_DESC = new org.apache.thrift.protocol.TField("squareMid", org.apache.thrift.protocol.TType.STRING, (short)2);
  private static final org.apache.thrift.protocol.TField REQUESTED_MEMBER_MIDS_FIELD_DESC = new org.apache.thrift.protocol.TField("requestedMemberMids", org.apache.thrift.protocol.TType.LIST, (short)3);

  private static final org.apache.thrift.scheme.SchemeFactory STANDARD_SCHEME_FACTORY = new RejectSquareMembersRequestStandardSchemeFactory();
  private static final org.apache.thrift.scheme.SchemeFactory TUPLE_SCHEME_FACTORY = new RejectSquareMembersRequestTupleSchemeFactory();

  public @org.apache.thrift.annotation.Nullable java.lang.String squareMid; // required
  public @org.apache.thrift.annotation.Nullable java.util.List<java.lang.String> requestedMemberMids; // required

  /** The set of fields this struct contains, along with convenience methods for finding and manipulating them. */
  public enum _Fields implements org.apache.thrift.TFieldIdEnum {
    SQUARE_MID((short)2, "squareMid"),
    REQUESTED_MEMBER_MIDS((short)3, "requestedMemberMids");

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
        case 2: // SQUARE_MID
          return SQUARE_MID;
        case 3: // REQUESTED_MEMBER_MIDS
          return REQUESTED_MEMBER_MIDS;
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
  public static final java.util.Map<_Fields, org.apache.thrift.meta_data.FieldMetaData> metaDataMap;
  static {
    java.util.Map<_Fields, org.apache.thrift.meta_data.FieldMetaData> tmpMap = new java.util.EnumMap<_Fields, org.apache.thrift.meta_data.FieldMetaData>(_Fields.class);
    tmpMap.put(_Fields.SQUARE_MID, new org.apache.thrift.meta_data.FieldMetaData("squareMid", org.apache.thrift.TFieldRequirementType.DEFAULT, 
        new org.apache.thrift.meta_data.FieldValueMetaData(org.apache.thrift.protocol.TType.STRING)));
    tmpMap.put(_Fields.REQUESTED_MEMBER_MIDS, new org.apache.thrift.meta_data.FieldMetaData("requestedMemberMids", org.apache.thrift.TFieldRequirementType.DEFAULT, 
        new org.apache.thrift.meta_data.ListMetaData(org.apache.thrift.protocol.TType.LIST, 
            new org.apache.thrift.meta_data.FieldValueMetaData(org.apache.thrift.protocol.TType.STRING))));
    metaDataMap = java.util.Collections.unmodifiableMap(tmpMap);
    org.apache.thrift.meta_data.FieldMetaData.addStructMetaDataMap(RejectSquareMembersRequest.class, metaDataMap);
  }

  public RejectSquareMembersRequest() {
  }

  public RejectSquareMembersRequest(
    java.lang.String squareMid,
    java.util.List<java.lang.String> requestedMemberMids)
  {
    this();
    this.squareMid = squareMid;
    this.requestedMemberMids = requestedMemberMids;
  }

  /**
   * Performs a deep copy on <i>other</i>.
   */
  public RejectSquareMembersRequest(RejectSquareMembersRequest other) {
    if (other.isSetSquareMid()) {
      this.squareMid = other.squareMid;
    }
    if (other.isSetRequestedMemberMids()) {
      java.util.List<java.lang.String> __this__requestedMemberMids = new java.util.ArrayList<java.lang.String>(other.requestedMemberMids);
      this.requestedMemberMids = __this__requestedMemberMids;
    }
  }

  public RejectSquareMembersRequest deepCopy() {
    return new RejectSquareMembersRequest(this);
  }

  @Override
  public void clear() {
    this.squareMid = null;
    this.requestedMemberMids = null;
  }

  @org.apache.thrift.annotation.Nullable
  public java.lang.String getSquareMid() {
    return this.squareMid;
  }

  public RejectSquareMembersRequest setSquareMid(@org.apache.thrift.annotation.Nullable java.lang.String squareMid) {
    this.squareMid = squareMid;
    return this;
  }

  public void unsetSquareMid() {
    this.squareMid = null;
  }

  /** Returns true if field squareMid is set (has been assigned a value) and false otherwise */
  public boolean isSetSquareMid() {
    return this.squareMid != null;
  }

  public void setSquareMidIsSet(boolean value) {
    if (!value) {
      this.squareMid = null;
    }
  }

  public int getRequestedMemberMidsSize() {
    return (this.requestedMemberMids == null) ? 0 : this.requestedMemberMids.size();
  }

  @org.apache.thrift.annotation.Nullable
  public java.util.Iterator<java.lang.String> getRequestedMemberMidsIterator() {
    return (this.requestedMemberMids == null) ? null : this.requestedMemberMids.iterator();
  }

  public void addToRequestedMemberMids(java.lang.String elem) {
    if (this.requestedMemberMids == null) {
      this.requestedMemberMids = new java.util.ArrayList<java.lang.String>();
    }
    this.requestedMemberMids.add(elem);
  }

  @org.apache.thrift.annotation.Nullable
  public java.util.List<java.lang.String> getRequestedMemberMids() {
    return this.requestedMemberMids;
  }

  public RejectSquareMembersRequest setRequestedMemberMids(@org.apache.thrift.annotation.Nullable java.util.List<java.lang.String> requestedMemberMids) {
    this.requestedMemberMids = requestedMemberMids;
    return this;
  }

  public void unsetRequestedMemberMids() {
    this.requestedMemberMids = null;
  }

  /** Returns true if field requestedMemberMids is set (has been assigned a value) and false otherwise */
  public boolean isSetRequestedMemberMids() {
    return this.requestedMemberMids != null;
  }

  public void setRequestedMemberMidsIsSet(boolean value) {
    if (!value) {
      this.requestedMemberMids = null;
    }
  }

  public void setFieldValue(_Fields field, @org.apache.thrift.annotation.Nullable java.lang.Object value) {
    switch (field) {
    case SQUARE_MID:
      if (value == null) {
        unsetSquareMid();
      } else {
        setSquareMid((java.lang.String)value);
      }
      break;

    case REQUESTED_MEMBER_MIDS:
      if (value == null) {
        unsetRequestedMemberMids();
      } else {
        setRequestedMemberMids((java.util.List<java.lang.String>)value);
      }
      break;

    }
  }

  @org.apache.thrift.annotation.Nullable
  public java.lang.Object getFieldValue(_Fields field) {
    switch (field) {
    case SQUARE_MID:
      return getSquareMid();

    case REQUESTED_MEMBER_MIDS:
      return getRequestedMemberMids();

    }
    throw new java.lang.IllegalStateException();
  }

  /** Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise */
  public boolean isSet(_Fields field) {
    if (field == null) {
      throw new java.lang.IllegalArgumentException();
    }

    switch (field) {
    case SQUARE_MID:
      return isSetSquareMid();
    case REQUESTED_MEMBER_MIDS:
      return isSetRequestedMemberMids();
    }
    throw new java.lang.IllegalStateException();
  }

  @Override
  public boolean equals(java.lang.Object that) {
    if (that instanceof RejectSquareMembersRequest)
      return this.equals((RejectSquareMembersRequest)that);
    return false;
  }

  public boolean equals(RejectSquareMembersRequest that) {
    if (that == null)
      return false;
    if (this == that)
      return true;

    boolean this_present_squareMid = true && this.isSetSquareMid();
    boolean that_present_squareMid = true && that.isSetSquareMid();
    if (this_present_squareMid || that_present_squareMid) {
      if (!(this_present_squareMid && that_present_squareMid))
        return false;
      if (!this.squareMid.equals(that.squareMid))
        return false;
    }

    boolean this_present_requestedMemberMids = true && this.isSetRequestedMemberMids();
    boolean that_present_requestedMemberMids = true && that.isSetRequestedMemberMids();
    if (this_present_requestedMemberMids || that_present_requestedMemberMids) {
      if (!(this_present_requestedMemberMids && that_present_requestedMemberMids))
        return false;
      if (!this.requestedMemberMids.equals(that.requestedMemberMids))
        return false;
    }

    return true;
  }

  @Override
  public int hashCode() {
    int hashCode = 1;

    hashCode = hashCode * 8191 + ((isSetSquareMid()) ? 131071 : 524287);
    if (isSetSquareMid())
      hashCode = hashCode * 8191 + squareMid.hashCode();

    hashCode = hashCode * 8191 + ((isSetRequestedMemberMids()) ? 131071 : 524287);
    if (isSetRequestedMemberMids())
      hashCode = hashCode * 8191 + requestedMemberMids.hashCode();

    return hashCode;
  }

  @Override
  public int compareTo(RejectSquareMembersRequest other) {
    if (!getClass().equals(other.getClass())) {
      return getClass().getName().compareTo(other.getClass().getName());
    }

    int lastComparison = 0;

    lastComparison = java.lang.Boolean.compare(isSetSquareMid(), other.isSetSquareMid());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetSquareMid()) {
      lastComparison = org.apache.thrift.TBaseHelper.compareTo(this.squareMid, other.squareMid);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = java.lang.Boolean.compare(isSetRequestedMemberMids(), other.isSetRequestedMemberMids());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetRequestedMemberMids()) {
      lastComparison = org.apache.thrift.TBaseHelper.compareTo(this.requestedMemberMids, other.requestedMemberMids);
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
    java.lang.StringBuilder sb = new java.lang.StringBuilder("RejectSquareMembersRequest(");
    boolean first = true;

    sb.append("squareMid:");
    if (this.squareMid == null) {
      sb.append("null");
    } else {
      sb.append(this.squareMid);
    }
    first = false;
    if (!first) sb.append(", ");
    sb.append("requestedMemberMids:");
    if (this.requestedMemberMids == null) {
      sb.append("null");
    } else {
      sb.append(this.requestedMemberMids);
    }
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
      read(new org.apache.thrift.protocol.TCompactProtocol(new org.apache.thrift.transport.TIOStreamTransport(in)));
    } catch (org.apache.thrift.TException te) {
      throw new java.io.IOException(te);
    }
  }

  private static class RejectSquareMembersRequestStandardSchemeFactory implements org.apache.thrift.scheme.SchemeFactory {
    public RejectSquareMembersRequestStandardScheme getScheme() {
      return new RejectSquareMembersRequestStandardScheme();
    }
  }

  private static class RejectSquareMembersRequestStandardScheme extends org.apache.thrift.scheme.StandardScheme<RejectSquareMembersRequest> {

    public void read(org.apache.thrift.protocol.TProtocol iprot, RejectSquareMembersRequest struct) throws org.apache.thrift.TException {
      org.apache.thrift.protocol.TField schemeField;
      iprot.readStructBegin();
      while (true)
      {
        schemeField = iprot.readFieldBegin();
        if (schemeField.type == org.apache.thrift.protocol.TType.STOP) { 
          break;
        }
        switch (schemeField.id) {
          case 2: // SQUARE_MID
            if (schemeField.type == org.apache.thrift.protocol.TType.STRING) {
              struct.squareMid = iprot.readString();
              struct.setSquareMidIsSet(true);
            } else { 
              org.apache.thrift.protocol.TProtocolUtil.skip(iprot, schemeField.type);
            }
            break;
          case 3: // REQUESTED_MEMBER_MIDS
            if (schemeField.type == org.apache.thrift.protocol.TType.LIST) {
              {
                org.apache.thrift.protocol.TList _list900 = iprot.readListBegin();
                struct.requestedMemberMids = new java.util.ArrayList<java.lang.String>(_list900.size);
                @org.apache.thrift.annotation.Nullable java.lang.String _elem901;
                for (int _i902 = 0; _i902 < _list900.size; ++_i902)
                {
                  _elem901 = iprot.readString();
                  struct.requestedMemberMids.add(_elem901);
                }
                iprot.readListEnd();
              }
              struct.setRequestedMemberMidsIsSet(true);
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

    public void write(org.apache.thrift.protocol.TProtocol oprot, RejectSquareMembersRequest struct) throws org.apache.thrift.TException {
      struct.validate();

      oprot.writeStructBegin(STRUCT_DESC);
      if (struct.squareMid != null) {
        oprot.writeFieldBegin(SQUARE_MID_FIELD_DESC);
        oprot.writeString(struct.squareMid);
        oprot.writeFieldEnd();
      }
      if (struct.requestedMemberMids != null) {
        oprot.writeFieldBegin(REQUESTED_MEMBER_MIDS_FIELD_DESC);
        {
          oprot.writeListBegin(new org.apache.thrift.protocol.TList(org.apache.thrift.protocol.TType.STRING, struct.requestedMemberMids.size()));
          for (java.lang.String _iter903 : struct.requestedMemberMids)
          {
            oprot.writeString(_iter903);
          }
          oprot.writeListEnd();
        }
        oprot.writeFieldEnd();
      }
      oprot.writeFieldStop();
      oprot.writeStructEnd();
    }

  }

  private static class RejectSquareMembersRequestTupleSchemeFactory implements org.apache.thrift.scheme.SchemeFactory {
    public RejectSquareMembersRequestTupleScheme getScheme() {
      return new RejectSquareMembersRequestTupleScheme();
    }
  }

  private static class RejectSquareMembersRequestTupleScheme extends org.apache.thrift.scheme.TupleScheme<RejectSquareMembersRequest> {

    @Override
    public void write(org.apache.thrift.protocol.TProtocol prot, RejectSquareMembersRequest struct) throws org.apache.thrift.TException {
      org.apache.thrift.protocol.TTupleProtocol oprot = (org.apache.thrift.protocol.TTupleProtocol) prot;
      java.util.BitSet optionals = new java.util.BitSet();
      if (struct.isSetSquareMid()) {
        optionals.set(0);
      }
      if (struct.isSetRequestedMemberMids()) {
        optionals.set(1);
      }
      oprot.writeBitSet(optionals, 2);
      if (struct.isSetSquareMid()) {
        oprot.writeString(struct.squareMid);
      }
      if (struct.isSetRequestedMemberMids()) {
        {
          oprot.writeI32(struct.requestedMemberMids.size());
          for (java.lang.String _iter904 : struct.requestedMemberMids)
          {
            oprot.writeString(_iter904);
          }
        }
      }
    }

    @Override
    public void read(org.apache.thrift.protocol.TProtocol prot, RejectSquareMembersRequest struct) throws org.apache.thrift.TException {
      org.apache.thrift.protocol.TTupleProtocol iprot = (org.apache.thrift.protocol.TTupleProtocol) prot;
      java.util.BitSet incoming = iprot.readBitSet(2);
      if (incoming.get(0)) {
        struct.squareMid = iprot.readString();
        struct.setSquareMidIsSet(true);
      }
      if (incoming.get(1)) {
        {
          org.apache.thrift.protocol.TList _list905 = new org.apache.thrift.protocol.TList(org.apache.thrift.protocol.TType.STRING, iprot.readI32());
          struct.requestedMemberMids = new java.util.ArrayList<java.lang.String>(_list905.size);
          @org.apache.thrift.annotation.Nullable java.lang.String _elem906;
          for (int _i907 = 0; _i907 < _list905.size; ++_i907)
          {
            _elem906 = iprot.readString();
            struct.requestedMemberMids.add(_elem906);
          }
        }
        struct.setRequestedMemberMidsIsSet(true);
      }
    }
  }

  private static <S extends org.apache.thrift.scheme.IScheme> S scheme(org.apache.thrift.protocol.TProtocol proto) {
    return (org.apache.thrift.scheme.StandardScheme.class.equals(proto.getScheme()) ? STANDARD_SCHEME_FACTORY : TUPLE_SCHEME_FACTORY).getScheme();
  }
}

