/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
public class SQErrorCode implements org.apache.thrift.TEnum {

  public static final SQErrorCode UNKNOWN = new SQErrorCode(0);
  public static final SQErrorCode ILLEGAL_ARGUMENT = new SQErrorCode(400);
  public static final SQErrorCode AUTHENTICATION_FAILURE = new SQErrorCode(401);
  public static final SQErrorCode FORBIDDEN = new SQErrorCode(403);
  public static final SQErrorCode NOT_FOUND = new SQErrorCode(404);
  public static final SQErrorCode REVISION_MISMATCH = new SQErrorCode(409);
  public static final SQErrorCode PRECONDITION_FAILED = new SQErrorCode(410);
  public static final SQErrorCode INTERNAL_ERROR = new SQErrorCode(500);
  public static final SQErrorCode NOT_IMPLEMENTED = new SQErrorCode(501);
  public static final SQErrorCode TRY_AGAIN_LATER = new SQErrorCode(505);

  private final int value;

  private SQErrorCode(int value) {
    this.value = value;
  }

  /**
   * Get the integer value of this enum value, as defined in the Thrift IDL.
   */
  public int getValue() {
    return value;
  }

  /**
   * Find a the enum type by its integer value, as defined in the Thrift IDL.
   * @return null if the value is not found.
   */
  public static SQErrorCode findByValue(int value) { 
    switch (value) {
      case 0:
        return UNKNOWN;
      case 400:
        return ILLEGAL_ARGUMENT;
      case 401:
        return AUTHENTICATION_FAILURE;
      case 403:
        return FORBIDDEN;
      case 404:
        return NOT_FOUND;
      case 409:
        return REVISION_MISMATCH;
      case 410:
        return PRECONDITION_FAILED;
      case 500:
        return INTERNAL_ERROR;
      case 501:
        return NOT_IMPLEMENTED;
      case 505:
        return TRY_AGAIN_LATER;
      default:
        return null;
    }
  }
}
