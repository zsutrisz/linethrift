/**
 * Autogenerated by Thrift Compiler (0.14.0)
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

public class CreateSquareResponse implements TBase {
  private static final TStruct STRUCT_DESC = new TStruct("CreateSquareResponse");

  private static final TField SQUARE_FIELD_DESC = new TField("square", TType.STRUCT, (short)1);
  private static final TField CREATOR_FIELD_DESC = new TField("creator", TType.STRUCT, (short)2);
  private static final TField AUTHORITY_FIELD_DESC = new TField("authority", TType.STRUCT, (short)3);
  private static final TField STATUS_FIELD_DESC = new TField("status", TType.STRUCT, (short)4);

  private Square square;
  private SquareMember creator;
  private SquareAuthority authority;
  private SquareStatus status;

  // isset id assignments

  public CreateSquareResponse() {
  }

  public CreateSquareResponse(
    Square square,
    SquareMember creator,
    SquareAuthority authority,
    SquareStatus status)
  {
    this();
    this.square = square;
    this.creator = creator;
    this.authority = authority;
    this.status = status;
  }

  /**
   * Performs a deep copy on <i>other</i>.
   */
  public CreateSquareResponse(CreateSquareResponse other) {
    if (other.isSetSquare()) {
      this.square = new Square(other.square);
    }
    if (other.isSetCreator()) {
      this.creator = new SquareMember(other.creator);
    }
    if (other.isSetAuthority()) {
      this.authority = new SquareAuthority(other.authority);
    }
    if (other.isSetStatus()) {
      this.status = new SquareStatus(other.status);
    }
  }

  public CreateSquareResponse deepCopy() {
    return new CreateSquareResponse(this);
  }

  public void clear() {
    this.square = null;
    this.creator = null;
    this.authority = null;
    this.status = null;
  }

  public Square getSquare() {
    return this.square;
  }

  public void setSquare(Square square) {
    this.square = square;
  }

  public void unsetSquare() {
    this.square = null;
  }

  /** Returns true if field square is set (has been assigned a value) and false otherwise */
  public boolean isSetSquare() {
    return this.square != null;
  }

  public void setSquareIsSet(boolean value) {
    if (!value) {
      this.square = null;
    }
  }

  public SquareMember getCreator() {
    return this.creator;
  }

  public void setCreator(SquareMember creator) {
    this.creator = creator;
  }

  public void unsetCreator() {
    this.creator = null;
  }

  /** Returns true if field creator is set (has been assigned a value) and false otherwise */
  public boolean isSetCreator() {
    return this.creator != null;
  }

  public void setCreatorIsSet(boolean value) {
    if (!value) {
      this.creator = null;
    }
  }

  public SquareAuthority getAuthority() {
    return this.authority;
  }

  public void setAuthority(SquareAuthority authority) {
    this.authority = authority;
  }

  public void unsetAuthority() {
    this.authority = null;
  }

  /** Returns true if field authority is set (has been assigned a value) and false otherwise */
  public boolean isSetAuthority() {
    return this.authority != null;
  }

  public void setAuthorityIsSet(boolean value) {
    if (!value) {
      this.authority = null;
    }
  }

  public SquareStatus getStatus() {
    return this.status;
  }

  public void setStatus(SquareStatus status) {
    this.status = status;
  }

  public void unsetStatus() {
    this.status = null;
  }

  /** Returns true if field status is set (has been assigned a value) and false otherwise */
  public boolean isSetStatus() {
    return this.status != null;
  }

  public void setStatusIsSet(boolean value) {
    if (!value) {
      this.status = null;
    }
  }

  public boolean equals(Object that) {
    if (that == null)
      return false;
    if (that instanceof CreateSquareResponse)
      return this.equals((CreateSquareResponse)that);
    return false;
  }

  public boolean equals(CreateSquareResponse that) {
    if (that == null)
      return false;
    if (this == that)
      return true;

    boolean this_present_square = true && this.isSetSquare();
    boolean that_present_square = true && that.isSetSquare();
    if (this_present_square || that_present_square) {
      if (!(this_present_square && that_present_square))
        return false;
      if (!this.square.equals(that.square))
        return false;
    }

    boolean this_present_creator = true && this.isSetCreator();
    boolean that_present_creator = true && that.isSetCreator();
    if (this_present_creator || that_present_creator) {
      if (!(this_present_creator && that_present_creator))
        return false;
      if (!this.creator.equals(that.creator))
        return false;
    }

    boolean this_present_authority = true && this.isSetAuthority();
    boolean that_present_authority = true && that.isSetAuthority();
    if (this_present_authority || that_present_authority) {
      if (!(this_present_authority && that_present_authority))
        return false;
      if (!this.authority.equals(that.authority))
        return false;
    }

    boolean this_present_status = true && this.isSetStatus();
    boolean that_present_status = true && that.isSetStatus();
    if (this_present_status || that_present_status) {
      if (!(this_present_status && that_present_status))
        return false;
      if (!this.status.equals(that.status))
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

    CreateSquareResponse other = (CreateSquareResponse)otherObject;    int lastComparison = 0;

    lastComparison = TBaseHelper.compareTo(isSetSquare(), other.isSetSquare());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetSquare()) {
      lastComparison = this.square.compareTo(other.square);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = TBaseHelper.compareTo(isSetCreator(), other.isSetCreator());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetCreator()) {
      lastComparison = this.creator.compareTo(other.creator);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = TBaseHelper.compareTo(isSetAuthority(), other.isSetAuthority());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetAuthority()) {
      lastComparison = this.authority.compareTo(other.authority);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = TBaseHelper.compareTo(isSetStatus(), other.isSetStatus());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetStatus()) {
      lastComparison = this.status.compareTo(other.status);
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
        case 1: // SQUARE
          if (field.type == TType.STRUCT) {
            this.square = new Square();
            this.square.read(iprot);
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case 2: // CREATOR
          if (field.type == TType.STRUCT) {
            this.creator = new SquareMember();
            this.creator.read(iprot);
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case 3: // AUTHORITY
          if (field.type == TType.STRUCT) {
            this.authority = new SquareAuthority();
            this.authority.read(iprot);
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case 4: // STATUS
          if (field.type == TType.STRUCT) {
            this.status = new SquareStatus();
            this.status.read(iprot);
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
    if (this.square != null) {
      oprot.writeFieldBegin(SQUARE_FIELD_DESC);
      this.square.write(oprot);
      oprot.writeFieldEnd();
    }
    if (this.creator != null) {
      oprot.writeFieldBegin(CREATOR_FIELD_DESC);
      this.creator.write(oprot);
      oprot.writeFieldEnd();
    }
    if (this.authority != null) {
      oprot.writeFieldBegin(AUTHORITY_FIELD_DESC);
      this.authority.write(oprot);
      oprot.writeFieldEnd();
    }
    if (this.status != null) {
      oprot.writeFieldBegin(STATUS_FIELD_DESC);
      this.status.write(oprot);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  public String toString() {
    StringBuffer sb = new StringBuffer("CreateSquareResponse(");
    boolean first = true;

    sb.append("square:");
    if (this.square == null) {
      sb.append("null");
    } else {
      sb.append(this.square);
    }
    first = false;
    if (!first) sb.append(", ");
    sb.append("creator:");
    if (this.creator == null) {
      sb.append("null");
    } else {
      sb.append(this.creator);
    }
    first = false;
    if (!first) sb.append(", ");
    sb.append("authority:");
    if (this.authority == null) {
      sb.append("null");
    } else {
      sb.append(this.authority);
    }
    first = false;
    if (!first) sb.append(", ");
    sb.append("status:");
    if (this.status == null) {
      sb.append("null");
    } else {
      sb.append(this.status);
    }
    first = false;
    sb.append(")");
    return sb.toString();
  }

  public void validate() throws TException {
    // check for required fields
  }

}
