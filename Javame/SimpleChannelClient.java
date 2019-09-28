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

public class SimpleChannelClient implements TBase {
  private static final TStruct STRUCT_DESC = new TStruct("SimpleChannelClient");

  private static final TField APPLICATION_TYPE_FIELD_DESC = new TField("applicationType", TType.STRING, (short)1);
  private static final TField APPLICATION_VERSION_FIELD_DESC = new TField("applicationVersion", TType.STRING, (short)2);
  private static final TField LOCALE_FIELD_DESC = new TField("locale", TType.STRING, (short)3);

  private String applicationType;
  private String applicationVersion;
  private String locale;

  // isset id assignments

  public SimpleChannelClient() {
  }

  public SimpleChannelClient(
    String applicationType,
    String applicationVersion,
    String locale)
  {
    this();
    this.applicationType = applicationType;
    this.applicationVersion = applicationVersion;
    this.locale = locale;
  }

  /**
   * Performs a deep copy on <i>other</i>.
   */
  public SimpleChannelClient(SimpleChannelClient other) {
    if (other.isSetApplicationType()) {
      this.applicationType = other.applicationType;
    }
    if (other.isSetApplicationVersion()) {
      this.applicationVersion = other.applicationVersion;
    }
    if (other.isSetLocale()) {
      this.locale = other.locale;
    }
  }

  public SimpleChannelClient deepCopy() {
    return new SimpleChannelClient(this);
  }

  public void clear() {
    this.applicationType = null;
    this.applicationVersion = null;
    this.locale = null;
  }

  public String getApplicationType() {
    return this.applicationType;
  }

  public void setApplicationType(String applicationType) {
    this.applicationType = applicationType;
  }

  public void unsetApplicationType() {
    this.applicationType = null;
  }

  /** Returns true if field applicationType is set (has been assigned a value) and false otherwise */
  public boolean isSetApplicationType() {
    return this.applicationType != null;
  }

  public void setApplicationTypeIsSet(boolean value) {
    if (!value) {
      this.applicationType = null;
    }
  }

  public String getApplicationVersion() {
    return this.applicationVersion;
  }

  public void setApplicationVersion(String applicationVersion) {
    this.applicationVersion = applicationVersion;
  }

  public void unsetApplicationVersion() {
    this.applicationVersion = null;
  }

  /** Returns true if field applicationVersion is set (has been assigned a value) and false otherwise */
  public boolean isSetApplicationVersion() {
    return this.applicationVersion != null;
  }

  public void setApplicationVersionIsSet(boolean value) {
    if (!value) {
      this.applicationVersion = null;
    }
  }

  public String getLocale() {
    return this.locale;
  }

  public void setLocale(String locale) {
    this.locale = locale;
  }

  public void unsetLocale() {
    this.locale = null;
  }

  /** Returns true if field locale is set (has been assigned a value) and false otherwise */
  public boolean isSetLocale() {
    return this.locale != null;
  }

  public void setLocaleIsSet(boolean value) {
    if (!value) {
      this.locale = null;
    }
  }

  public boolean equals(Object that) {
    if (that == null)
      return false;
    if (that instanceof SimpleChannelClient)
      return this.equals((SimpleChannelClient)that);
    return false;
  }

  public boolean equals(SimpleChannelClient that) {
    if (that == null)
      return false;
    if (this == that)
      return true;

    boolean this_present_applicationType = true && this.isSetApplicationType();
    boolean that_present_applicationType = true && that.isSetApplicationType();
    if (this_present_applicationType || that_present_applicationType) {
      if (!(this_present_applicationType && that_present_applicationType))
        return false;
      if (!this.applicationType.equals(that.applicationType))
        return false;
    }

    boolean this_present_applicationVersion = true && this.isSetApplicationVersion();
    boolean that_present_applicationVersion = true && that.isSetApplicationVersion();
    if (this_present_applicationVersion || that_present_applicationVersion) {
      if (!(this_present_applicationVersion && that_present_applicationVersion))
        return false;
      if (!this.applicationVersion.equals(that.applicationVersion))
        return false;
    }

    boolean this_present_locale = true && this.isSetLocale();
    boolean that_present_locale = true && that.isSetLocale();
    if (this_present_locale || that_present_locale) {
      if (!(this_present_locale && that_present_locale))
        return false;
      if (!this.locale.equals(that.locale))
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

    SimpleChannelClient other = (SimpleChannelClient)otherObject;    int lastComparison = 0;

    lastComparison = TBaseHelper.compareTo(isSetApplicationType(), other.isSetApplicationType());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetApplicationType()) {
      lastComparison = TBaseHelper.compareTo(this.applicationType, other.applicationType);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = TBaseHelper.compareTo(isSetApplicationVersion(), other.isSetApplicationVersion());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetApplicationVersion()) {
      lastComparison = TBaseHelper.compareTo(this.applicationVersion, other.applicationVersion);
      if (lastComparison != 0) {
        return lastComparison;
      }
    }
    lastComparison = TBaseHelper.compareTo(isSetLocale(), other.isSetLocale());
    if (lastComparison != 0) {
      return lastComparison;
    }
    if (isSetLocale()) {
      lastComparison = TBaseHelper.compareTo(this.locale, other.locale);
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
        case 1: // APPLICATION_TYPE
          if (field.type == TType.STRING) {
            this.applicationType = iprot.readString();
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case 2: // APPLICATION_VERSION
          if (field.type == TType.STRING) {
            this.applicationVersion = iprot.readString();
          } else { 
            TProtocolUtil.skip(iprot, field.type);
          }
          break;
        case 3: // LOCALE
          if (field.type == TType.STRING) {
            this.locale = iprot.readString();
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
    if (this.applicationType != null) {
      oprot.writeFieldBegin(APPLICATION_TYPE_FIELD_DESC);
      oprot.writeString(this.applicationType);
      oprot.writeFieldEnd();
    }
    if (this.applicationVersion != null) {
      oprot.writeFieldBegin(APPLICATION_VERSION_FIELD_DESC);
      oprot.writeString(this.applicationVersion);
      oprot.writeFieldEnd();
    }
    if (this.locale != null) {
      oprot.writeFieldBegin(LOCALE_FIELD_DESC);
      oprot.writeString(this.locale);
      oprot.writeFieldEnd();
    }
    oprot.writeFieldStop();
    oprot.writeStructEnd();
  }

  public String toString() {
    StringBuffer sb = new StringBuffer("SimpleChannelClient(");
    boolean first = true;

    sb.append("applicationType:");
    if (this.applicationType == null) {
      sb.append("null");
    } else {
      sb.append(this.applicationType);
    }
    first = false;
    if (!first) sb.append(", ");
    sb.append("applicationVersion:");
    if (this.applicationVersion == null) {
      sb.append("null");
    } else {
      sb.append(this.applicationVersion);
    }
    first = false;
    if (!first) sb.append(", ");
    sb.append("locale:");
    if (this.locale == null) {
      sb.append("null");
    } else {
      sb.append(this.locale);
    }
    first = false;
    sb.append(")");
    return sb.toString();
  }

  public void validate() throws TException {
    // check for required fields
  }

}
