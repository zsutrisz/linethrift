/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
@SuppressWarnings({"cast", "rawtypes", "serial", "unchecked", "unused"})
@javax.annotation.Generated(value = "Autogenerated by Thrift Compiler (0.14.0)", date = "2020-03-23")
public class SpotNearbyResponse implements org.apache.thrift.TBase<SpotNearbyResponse, SpotNearbyResponse._Fields>, java.io.Serializable, Cloneable, Comparable<SpotNearbyResponse> {
  private static final org.apache.thrift.protocol.TStruct STRUCT_DESC = new org.apache.thrift.protocol.TStruct("SpotNearbyResponse");

  private static final org.apache.thrift.protocol.TField SPOT_NEARBY_ITEMS_FIELD_DESC = new org.apache.thrift.protocol.TField("spotNearbyItems", org.apache.thrift.protocol.TType.LIST, (short)1);

  private static final org.apache.thrift.scheme.SchemeFactory STANDARD_SCHEME_FACTORY = new SpotNearbyResponseStandardSchemeFactory();
  private static final org.apache.thrift.scheme.SchemeFactory TUPLE_SCHEME_FACTORY = new SpotNearbyResponseTupleSchemeFactory();

  public @org.apache.thrift.annotation.Nullable java.util.List<SpotNearbyItem> spotNearbyItems; // required

  /** The set of fields this struct contains, along with convenience methods for finding and manipulating them. */
  public enum _Fields implements org.apache.thrift.TFieldIdEnum {
    SPOT_NEARBY_ITEMS((short)1, "spotNearbyItems");

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
        case 1: // SPOT_NEARBY_ITEMS
          return SPOT_NEARBY_ITEMS;
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
    tmpMap.put(_Fields.SPOT_NEARBY_ITEMS, new org.apache.thrift.meta_data.FieldMetaData("spotNearbyItems", org.apache.thrift.TFieldRequirementType.DEFAULT, 
        new org.apache.thrift.meta_data.ListMetaData(org.apache.thrift.protocol.TType.LIST, 
            new org.apache.thrift.meta_data.StructMetaData(org.apache.thrift.protocol.TType.STRUCT, SpotNearbyItem.class))));
    metaDataMap = java.util.Collections.unmodifiableMap(tmpMap);
    org.apache.thrift.meta_data.FieldMetaData.addStructMetaDataMap(SpotNearbyResponse.class, metaDataMap);
  }

  public SpotNearbyResponse() {
  }

  public SpotNearbyResponse(
    java.util.List<SpotNearbyItem> spotNearbyItems)
  {
    this();
    this.spotNearbyItems = spotNearbyItems;
  }

  /**
   * Performs a deep copy on <i>other</i>.
   */
  public SpotNearbyResponse(SpotNearbyResponse other) {
    if (other.isSetSpotNearbyItems()) {
      java.util.List<SpotNearbyItem> __this__spotNearbyItems = new java.util.ArrayList<SpotNearbyItem>(other.spotNearbyItems.size());
      for (SpotNearbyItem other_element : other.spotNearbyItems) {
        __this__spotNearbyItems.add(new SpotNearbyItem(other_element));
      }
      this.spotNearbyItems = __this__spotNearbyItems;
    }
  }

  public SpotNearbyResponse deepCopy() {
    return new SpotNearbyResponse(this);
  }

  @Override
  public void clear() {
    this.spotNearbyItems = null;
  }

  public int getSpotNearbyItemsSize() {
    return (this.spotNearbyItems == null) ? 0 : this.spotNearbyItems.size();
  }

  @org.apache.thrift.annotation.Nullable
  public java.util.Iterator<SpotNearbyItem> getSpotNearbyItemsIterator() {
    return (this.spotNearbyItems == null) ? null : this.spotNearbyItems.iterator();
  }

  public void addToSpotNearbyItems(SpotNearbyItem elem) {
    if (this.spotNearbyItems == null) {
      this.spotNearbyItems = new java.util.ArrayList<SpotNearbyItem>();
    }
    this.spotNearbyItems.add(elem);
  }

  @org.apache.thrift.annotation.Nullable
  public java.util.List<SpotNearbyItem> getSpotNearbyItems() {
    return this.spotNearbyItems;
  }

  public SpotNearbyResponse setSpotNearbyItems(@org.apache.thrift.annotation.Nullable java.util.List<SpotNearbyItem> spotNearbyItems) {
    this.spotNearbyItems = spotNearbyItems;
    return this;
  }

  public void unsetSpotNearbyItems() {
    this.spotNearbyItems = null;
  }

  /** Returns true if field spotNearbyItems is set (has been assigned a value) and false otherwise */
  public boolean isSetSpotNearbyItems() {
    return this.spotNearbyItems != null;
  }

  public void setSpotNearbyItemsIsSet(boolean value) {
    if (!value) {
      this.spotNearbyItems = null;
    }
  }

  public void setFieldValue(_Fields field, @org.apache.thrift.annotation.Nullable java.lang.Object value) {
    switch (field) {
    case SPOT_NEARBY_ITEMS:
      if (value == null) {
        unsetSpotNearbyItems();
      } else {
        setSpotNearbyItems((java.util.List<SpotNearbyItem>)value);
      }
      break;

    }
  }

  @org.apache.thrift.annotation.Nullable
  public java.lang.Object getFieldValue(_Fields field) {
    switch (field) {
    case SPOT_NEARBY_ITEMS:
      return getSpotNearbyItems();

    }
    throw new java.lang.IllegalStateException();
  }

  /** Returns true if field corresponding to fieldID is set (has been assigned a value) and false otherwise */
  public boolean isSet(_Fields field) {
    if (field == null) {
      throw new java.lang.IllegalArgumentException();
    }

    switch (field) {
    case SPOT_NEARBY_ITEMS:
      return isSetSpotNearbyItems();
    }
    throw new java.lang.IllegalStateException();
  }

  @Override
  public boolean equals(java.lang.Object that) {
    if (that instanceof SpotNearbyResponse)
      return this.equals((SpotNearbyResponse)that);
    return false;
  }

  public boolean equals(SpotNearbyResponse that) {
    if (that == null)
      return false;
    if (this == that)
      return true;

    boolean this_present_spotNearbyItems = true && this.isSetSpotNearbyItems();
    boolean that_present_spotNearbyItems = true && that.isSetSpotNearbyItems();
    if (this_present_spotNearbyItems || that_present_spotNearbyItems) {
      if (!(this_present_spotNearbyItems && that_present_spotNearbyItems))
        return false;
      if (!this.spotNearbyItems.equals(that.spotNearbyItems))
        return false;
    }

    return true;
  }

  @Override
  public int hashCode() {
    int hashCode = 1;

    hashCode = hashCode * 8191 + ((isSetSpotNearbyItems()) ? 131071 : 524287);
    if (isSetSpotNearbyItems())
      hashCode = hashCode * 8191 + spotNearbyItems.hashCode();

    return hashCode;
  }

  @Override
  public int compareTo(SpotNearbyResponse other) {
    if (!getClass().equals(other.getClass())) {
      return getClass().getName().compareTo(other.getClass().getName());
    }

    int lastComparison = 0;

    lastComparison = java.lang.Boolean.compare(isSetSpotNearbyItems(), other.isSetSpotNearbyItems());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetSpotNearbyItems()) {
      lastComparison = org.apache.thrift.TBaseHelper.compareTo(this.spotNearbyItems, other.spotNearbyItems);
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
    java.lang.StringBuilder sb = new java.lang.StringBuilder("SpotNearbyResponse(");
    boolean first = true;

    sb.append("spotNearbyItems:");
    if (this.spotNearbyItems == null) {
      sb.append("null");
    } else {
      sb.append(this.spotNearbyItems);
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

  private static class SpotNearbyResponseStandardSchemeFactory implements org.apache.thrift.scheme.SchemeFactory {
    public SpotNearbyResponseStandardScheme getScheme() {
      return new SpotNearbyResponseStandardScheme();
    }
  }

  private static class SpotNearbyResponseStandardScheme extends org.apache.thrift.scheme.StandardScheme<SpotNearbyResponse> {

    public void read(org.apache.thrift.protocol.TProtocol iprot, SpotNearbyResponse struct) throws org.apache.thrift.TException {
      org.apache.thrift.protocol.TField schemeField;
      iprot.readStructBegin();
      while (true)
      {
        schemeField = iprot.readFieldBegin();
        if (schemeField.type == org.apache.thrift.protocol.TType.STOP) { 
          break;
        }
        switch (schemeField.id) {
          case 1: // SPOT_NEARBY_ITEMS
            if (schemeField.type == org.apache.thrift.protocol.TType.LIST) {
              {
                org.apache.thrift.protocol.TList _list16 = iprot.readListBegin();
                struct.spotNearbyItems = new java.util.ArrayList<SpotNearbyItem>(_list16.size);
                @org.apache.thrift.annotation.Nullable SpotNearbyItem _elem17;
                for (int _i18 = 0; _i18 < _list16.size; ++_i18)
                {
                  _elem17 = new SpotNearbyItem();
                  _elem17.read(iprot);
                  struct.spotNearbyItems.add(_elem17);
                }
                iprot.readListEnd();
              }
              struct.setSpotNearbyItemsIsSet(true);
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

    public void write(org.apache.thrift.protocol.TProtocol oprot, SpotNearbyResponse struct) throws org.apache.thrift.TException {
      struct.validate();

      oprot.writeStructBegin(STRUCT_DESC);
      if (struct.spotNearbyItems != null) {
        oprot.writeFieldBegin(SPOT_NEARBY_ITEMS_FIELD_DESC);
        {
          oprot.writeListBegin(new org.apache.thrift.protocol.TList(org.apache.thrift.protocol.TType.STRUCT, struct.spotNearbyItems.size()));
          for (SpotNearbyItem _iter19 : struct.spotNearbyItems)
          {
            _iter19.write(oprot);
          }
          oprot.writeListEnd();
        }
        oprot.writeFieldEnd();
      }
      oprot.writeFieldStop();
      oprot.writeStructEnd();
    }

  }

  private static class SpotNearbyResponseTupleSchemeFactory implements org.apache.thrift.scheme.SchemeFactory {
    public SpotNearbyResponseTupleScheme getScheme() {
      return new SpotNearbyResponseTupleScheme();
    }
  }

  private static class SpotNearbyResponseTupleScheme extends org.apache.thrift.scheme.TupleScheme<SpotNearbyResponse> {

    @Override
    public void write(org.apache.thrift.protocol.TProtocol prot, SpotNearbyResponse struct) throws org.apache.thrift.TException {
      org.apache.thrift.protocol.TTupleProtocol oprot = (org.apache.thrift.protocol.TTupleProtocol) prot;
      java.util.BitSet optionals = new java.util.BitSet();
      if (struct.isSetSpotNearbyItems()) {
        optionals.set(0);
      }
      oprot.writeBitSet(optionals, 1);
      if (struct.isSetSpotNearbyItems()) {
        {
          oprot.writeI32(struct.spotNearbyItems.size());
          for (SpotNearbyItem _iter20 : struct.spotNearbyItems)
          {
            _iter20.write(oprot);
          }
        }
      }
    }

    @Override
    public void read(org.apache.thrift.protocol.TProtocol prot, SpotNearbyResponse struct) throws org.apache.thrift.TException {
      org.apache.thrift.protocol.TTupleProtocol iprot = (org.apache.thrift.protocol.TTupleProtocol) prot;
      java.util.BitSet incoming = iprot.readBitSet(1);
      if (incoming.get(0)) {
        {
          org.apache.thrift.protocol.TList _list21 = new org.apache.thrift.protocol.TList(org.apache.thrift.protocol.TType.STRUCT, iprot.readI32());
          struct.spotNearbyItems = new java.util.ArrayList<SpotNearbyItem>(_list21.size);
          @org.apache.thrift.annotation.Nullable SpotNearbyItem _elem22;
          for (int _i23 = 0; _i23 < _list21.size; ++_i23)
          {
            _elem22 = new SpotNearbyItem();
            _elem22.read(iprot);
            struct.spotNearbyItems.add(_elem22);
          }
        }
        struct.setSpotNearbyItemsIsSet(true);
      }
    }
  }

  private static <S extends org.apache.thrift.scheme.IScheme> S scheme(org.apache.thrift.protocol.TProtocol proto) {
    return (org.apache.thrift.scheme.StandardScheme.class.equals(proto.getScheme()) ? STANDARD_SCHEME_FACTORY : TUPLE_SCHEME_FACTORY).getScheme();
  }
}

