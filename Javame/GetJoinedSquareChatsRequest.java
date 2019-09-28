/**
 * Autogenerated by Thrift Compiler (0.13.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
import java.util.Hashtable;
import java.util.Vector;
import java.util.Enumeration;

import org.apache.thrift.*;
import org.apache.thrift.meta_data.*;
import org.apache.thrift.transport.*;
import org.apache.thrift.protocol.*;

public class GetJoinedSquareChatsRequest implements TBase {
  private static final TStruct STRUCT_DESC = new TStruct("GetJoinedSquareChatsRequest");

  private static final TField CONTINUATION_TOKEN_FIELD_DESC = new TField("continuationToken", TType.STRING, (short)2);
  private static final TField LIMIT_FIELD_DESC = new TField("limit", TType.I32, (short)3);

  private String continuationToken;
  private int limit;

  // isset id assignments
  private static final int __LIMIT_ISSET_ID = 0;
  private boolean[] __isset_vector = new boolean[1];

  public GetJoinedSquareChatsRequest() {
  }

  public GetJoinedSquareChatsRequest(
    String continuationToken,
    int limit)
  {
    this();
    this.continuationToken = continuationToken;
    this.limit = limit;
    setLimitIsSet(true);
  }

  /**
   * Performs a deep copy on <i>other</i>.
   */
  public GetJoinedSquareChatsRequest(GetJoinedSquareChatsRequest other) {
    System.arraycopy(other.__isset_vector, 0, __isset_vector, 0, other.__isset_vector.length);
    if (other.isSetContinuationToken()) {
      this.continuationToken = other.continuationToken;
    }
    this.limit = other.limit;
  }

  public GetJoinedSquareChatsRequest deepCopy() {
    return new GetJoinedSquareChatsRequest(this);
  }

  public void clear() {
    this.continuationToken = null;
    setLimitIsSet(false);
    this.limit = 0;
  }

  public String getContinuationToken() {
    return this.continuationToken;
  }

  public void setContinuationToken(String continuationToken) {
    this.continuationToken = continuationToken;
  }

  public void unsetContinuationToken() {
    this.continuationToken = null;
  }

  /** Returns true if field continuationToken is set (has been assigned a value) and false otherwise */
  public boolean isSetContinuationToken() {
    return this.continuationToken != null;
  }

  public void setContinuationTokenIsSet(boolean value) {
    if (!value) {
      this.continuationToken = null;
    }
  }

  public int getLimit() {
    return this.limit;
  }

  public void setLimit(int limit) {
    this.limit = limit;
    setLimitIsSet(true);
  }

  public void unsetLimit() {
    __isset_vector[__LIMIT_ISSET_ID] = false;
  }

  /** Returns true if field limit is set (has been assigned a value) and false otherwise */
  public boolean isSetLimit() {
    return __isset_vector[__LIMIT_ISSET_ID];
  }

  public void setLimitIsSet(boolean value) {
    __isset_vector[__LIMIT_ISSET_ID] = value;
  }

  public boolean equals(Object that) {
    if (that == null)
      return false;
    if (that instanceof GetJoinedSquareChatsRequest)
      return this.equals((GetJoinedSquareChatsRequest)that);
    return false;
  }

  public boolean equals(GetJoinedSquareChatsRequest that) {
    if (that == null)
      return false;
    if (this == that)
      return true;

    boolean this_present_continuationToken = true && this.isSetContinuationToken();
    boolean that_present_continuationToken = true && that.isSetContinuationToken();
    if (this_present_continuationToken || that_present_continuationToken) {
      if (!(this_present_continuationToken && that_present_continuationToken))
        return false;
      if (!this.continuationToken.equals(that.continuationToken))
        return false;
    }

    boolean this_present_limit = true;
    boolean that_present_limit = true;
    if (this_present_limit || that_present_limit) {
      if (!(this_present_limit && that_present_limit))
        return false;
      if (this.limit != that.limit)
        return false;
    }

    return true;
  }

  public int hashCode() {
    return 0;
  }

  public int compareTo(Object otherObject) {
    if (!getClass().equals(otherObject.getClass())) {
      return getClass().getName().compareTo(otherObject.getClass().getName());
    }

    GetJoinedSquareChatsRequest other = (GetJoinedSquareChatsRequest)otherObject;    int lastComparison = 0;

    lastComparison = TBaseHelper.compareTo(isSetContinuationToken(), other.isSetContinuationToken());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetContinuationToken()) {
      lastComparison = TBaseHelper.compareTo(this.continuationToken, other.continuationToken);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = TBaseHelper.compareTo(isSetLimit(), other.isSetLimit());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetLimit()) {
      lastComparison = TBaseHelper.compareTo(this.limit, other.limit);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    return 0;
  }

  public void read(TProtocol iprot) throws TException {
    TField field;
    iprot.readStructBegin();
    while (true)
    {
      field = iprot.readFieldBegin();
      if (field.type == TType.STOP) { 
        break;
      }
      switch (field.id) {
        case 2: // CONTINUATION_TOKEN
          if (field.type == TType.STRING) {
            this.continuationToken = iprot.readString();
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case 3: // LIMIT
          if (field.type == TType.I32) {
            this.limit = iprot.readI32();
            setLimitIsSet(true);
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        default:
          TProtocolUtil.skip(iprot, field.type);
      }
      iprot.readFieldEnd();
    }
    iprot.readStructEnd();
    validate();
  }

  public void write(TProtocol oprot) throws TException {
    validate();

    oprot.writeStructBegin(STRUCT_DESC);
    if (this.continuationToken != null) {
      oprot.writeFieldBegin(CONTINUATION_TOKEN_FIELD_DESC);
      oprot.writeString(this.continuationToken);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldBegin(LIMIT_FIELD_DESC);
    oprot.writeI32(this.limit);
    oprot.writeFieldEnd();
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  public String toString() {
    StringBuffer sb = new StringBuffer("GetJoinedSquareChatsRequest(");
    boolean first = true;

    sb.append("continuationToken:");
    if (this.continuationToken == null) {
      sb.append("null");
    } else {
      sb.append(this.continuationToken);
    }
    first = false;
    if (!first) sb.append(", ");
    sb.append("limit:");
    sb.append(this.limit);
    first = false;
    sb.append(")");
    return sb.toString();
  }

  public void validate() throws TException {
    // check for required fields
  }

}
