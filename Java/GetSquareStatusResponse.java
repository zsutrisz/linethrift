/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
@SuppressWarnings({"cast", "rawtypes", "serial", "unchecked", "unused"})
@javax.annotation.Generated(value = "Autogenerated by Thrift Compiler (0.14.0)", date = "2020-03-23")
public class GetSquareStatusResponse implements org.apache.thrift.TBase<GetSquareStatusResponse, GetSquareStatusResponse._Fields>, java.io.Serializable, Cloneable, Comparable<GetSquareStatusResponse> {
  private static final org.apache.thrift.protocol.TStruct STRUCT_DESC = new org.apache.thrift.protocol.TStruct("GetSquareStatusResponse");

  private static final org.apache.thrift.protocol.TField SQUARE_STATUS_FIELD_DESC = new org.apache.thrift.protocol.TField("squareStatus", org.apache.thrift.protocol.TType.STRUCT, (short)1);

  private static final org.apache.thrift.scheme.SchemeFactory STANDARD_SCHEME_FACTORY = new GetSquareStatusResponseStandardSchemeFactory();
  private static final org.apache.thrift.scheme.SchemeFactory TUPLE_SCHEME_FACTORY = new GetSquareStatusResponseTupleSchemeFactory();

  public @org.apache.thrift.annotation.Nullable SquareStatus squareStatus; // required

  /** The set of fields this struct contains, along with convenience methods for finding and manipulating them. */
  public enum _Fields implements org.apache.thrift.TFieldIdEnum {
    SQUARE_STATUS((short)1, "squareStatus");

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
        case 1: // SQUARE_STATUS
          return SQUARE_STATUS;
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
    tmpMap.put(_Fields.SQUARE_STATUS, new org.apache.thrift.meta_data.FieldMetaData("squareStatus", org.apache.thrift.TFieldRequirementType.DEFAULT, 
        new org.apache.thrift.meta_data.StructMetaData(org.apache.thrift.protocol.TType.STRUCT, SquareStatus.class)));
    metaDataMap = java.util.Collections.unmodifiableMap(tmpMap);
    org.apache.thrift.meta_data.FieldMetaData.addStructMetaDataMap(GetSquareStatusResponse.class, metaDataMap);
  }

  public GetSquareStatusResponse() {
  }

  public GetSquareStatusResponse(
    SquareStatus squareStatus)
  {
    this();
    this.squareStatus = squareStatus;
  }

  /**
   * Performs a deep copy on <i>other</i>.
   */
  public GetSquareStatusResponse(GetSquareStatusResponse other) {
    if (other.isSetSquareStatus()) {
      this.squareStatus = new SquareStatus(other.squareStatus);
    }
  }

  public GetSquareStatusResponse deepCopy() {
    return new GetSquareStatusResponse(this);
  }

  @Override
  public void clear() {
    this.squareStatus = null;
  }

  @org.apache.thrift.annotation.Nullable
  public SquareStatus getSquareStatus() {
    return this.squareStatus;
  }

  public GetSquareStatusResponse setSquareStatus(@org.apache.thrift.annotation.Nullable SquareStatus squareStatus) {
    this.squareStatus = squareStatus;
    return this;
  }

  public void unsetSquareStatus() {
    this.squareStatus = null;
  }

  /** Returns true if field squareStatus is set (has been assigned a value) and false otherwise */
  public boolean isSetSquareStatus() {
    return this.squareStatus != null;
  }

  public void setSquareStatusIsSet(boolean value) {
    if (!value) {
      this.squareStatus = null;
    }
  }

  public void setFieldValue(_Fields field, @org.apache.thrift.annotation.Nullable java.lang.Object value) {
    switch (field) {
    case SQUARE_STATUS:
      if (value == null) {
        unsetSquareStatus();
      } else {
        setSquareStatus((SquareStatus)value);
      }
      break;

    }
  }

  @org.apache.thrift.annotation.Nullable
  public java.lang.Object getFieldValue(_Fields field) {
    switch (field) {
    case SQUARE_STATUS:
      return getSquareStatus();

    }
    throw new java.lang.IllegalStateException();
  }

  /** Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise */
  public boolean isSet(_Fields field) {
    if (field == null) {
      throw new java.lang.IllegalArgumentException();
    }

    switch (field) {
    case SQUARE_STATUS:
      return isSetSquareStatus();
    }
    throw new java.lang.IllegalStateException();
  }

  @Override
  public boolean equals(java.lang.Object that) {
    if (that instanceof GetSquareStatusResponse)
      return this.equals((GetSquareStatusResponse)that);
    return false;
  }

  public boolean equals(GetSquareStatusResponse that) {
    if (that == null)
      return false;
    if (this == that)
      return true;

    boolean this_present_squareStatus = true && this.isSetSquareStatus();
    boolean that_present_squareStatus = true && that.isSetSquareStatus();
    if (this_present_squareStatus || that_present_squareStatus) {
      if (!(this_present_squareStatus && that_present_squareStatus))
        return false;
      if (!this.squareStatus.equals(that.squareStatus))
        return false;
    }

    return true;
  }

  @Override
  public int hashCode() {
    int hashCode = 1;

    hashCode = hashCode * 8191 + ((isSetSquareStatus()) ? 131071 : 524287);
    if (isSetSquareStatus())
      hashCode = hashCode * 8191 + squareStatus.hashCode();

    return hashCode;
  }

  @Override
  public int compareTo(GetSquareStatusResponse other) {
    if (!getClass().equals(other.getClass())) {
      return getClass().getName().compareTo(other.getClass().getName());
    }

    int lastComparison = 0;

    lastComparison = java.lang.Boolean.compare(isSetSquareStatus(), other.isSetSquareStatus());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetSquareStatus()) {
      lastComparison = org.apache.thrift.TBaseHelper.compareTo(this.squareStatus, other.squareStatus);
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
    java.lang.StringBuilder sb = new java.lang.StringBuilder("GetSquareStatusResponse(");
    boolean first = true;

    sb.append("squareStatus:");
    if (this.squareStatus == null) {
      sb.append("null");
    } else {
      sb.append(this.squareStatus);
    }
    first = false;
    sb.append(")");
    return sb.toString();
  }

  public void validate() throws org.apache.thrift.TException {
    // check for required fields
    // check for sub-struct validity
    if (squareStatus != null) {
      squareStatus.validate();
    }
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

  private static class GetSquareStatusResponseStandardSchemeFactory implements org.apache.thrift.scheme.SchemeFactory {
    public GetSquareStatusResponseStandardScheme getScheme() {
      return new GetSquareStatusResponseStandardScheme();
    }
  }

  private static class GetSquareStatusResponseStandardScheme extends org.apache.thrift.scheme.StandardScheme<GetSquareStatusResponse> {

    public void read(org.apache.thrift.protocol.TProtocol iprot, GetSquareStatusResponse struct) throws org.apache.thrift.TException {
      org.apache.thrift.protocol.TField schemeField;
      iprot.readStructBegin();
      while (true)
      {
        schemeField = iprot.readFieldBegin();
        if (schemeField.type == org.apache.thrift.protocol.TType.STOP) { 
          break;
        }
        switch (schemeField.id) {
          case 1: // SQUARE_STATUS
            if (schemeField.type == org.apache.thrift.protocol.TType.STRUCT) {
              struct.squareStatus = new SquareStatus();
              struct.squareStatus.read(iprot);
              struct.setSquareStatusIsSet(true);
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

    public void write(org.apache.thrift.protocol.TProtocol oprot, GetSquareStatusResponse struct) throws org.apache.thrift.TException {
      struct.validate();

      oprot.writeStructBegin(STRUCT_DESC);
      if (struct.squareStatus != null) {
        oprot.writeFieldBegin(SQUARE_STATUS_FIELD_DESC);
        struct.squareStatus.write(oprot);
        oprot.writeFieldEnd();
      }
      oprot.writeFieldStop();
      oprot.writeStructEnd();
    }

  }

  private static class GetSquareStatusResponseTupleSchemeFactory implements org.apache.thrift.scheme.SchemeFactory {
    public GetSquareStatusResponseTupleScheme getScheme() {
      return new GetSquareStatusResponseTupleScheme();
    }
  }

  private static class GetSquareStatusResponseTupleScheme extends org.apache.thrift.scheme.TupleScheme<GetSquareStatusResponse> {

    @Override
    public void write(org.apache.thrift.protocol.TProtocol prot, GetSquareStatusResponse struct) throws org.apache.thrift.TException {
      org.apache.thrift.protocol.TTupleProtocol oprot = (org.apache.thrift.protocol.TTupleProtocol) prot;
      java.util.BitSet optionals = new java.util.BitSet();
      if (struct.isSetSquareStatus()) {
        optionals.set(0);
      }
      oprot.writeBitSet(optionals, 1);
      if (struct.isSetSquareStatus()) {
        struct.squareStatus.write(oprot);
      }
    }

    @Override
    public void read(org.apache.thrift.protocol.TProtocol prot, GetSquareStatusResponse struct) throws org.apache.thrift.TException {
      org.apache.thrift.protocol.TTupleProtocol iprot = (org.apache.thrift.protocol.TTupleProtocol) prot;
      java.util.BitSet incoming = iprot.readBitSet(1);
      if (incoming.get(0)) {
        struct.squareStatus = new SquareStatus();
        struct.squareStatus.read(iprot);
        struct.setSquareStatusIsSet(true);
      }
    }
  }

  private static <S extends org.apache.thrift.scheme.IScheme> S scheme(org.apache.thrift.protocol.TProtocol proto) {
    return (org.apache.thrift.scheme.StandardScheme.class.equals(proto.getScheme()) ? STANDARD_SCHEME_FACTORY : TUPLE_SCHEME_FACTORY).getScheme();
  }
}

