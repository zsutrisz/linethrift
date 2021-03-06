/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
public class SquareEventType implements org.apache.thrift.TEnum {

  public static final SquareEventType RECEIVE_MESSAGE = new SquareEventType(0);
  public static final SquareEventType SEND_MESSAGE = new SquareEventType(1);
  public static final SquareEventType NOTIFIED_JOIN_SQUARE_CHAT = new SquareEventType(2);
  public static final SquareEventType NOTIFIED_INVITE_INTO_SQUARE_CHAT = new SquareEventType(3);
  public static final SquareEventType NOTIFIED_LEAVE_SQUARE_CHAT = new SquareEventType(4);
  public static final SquareEventType NOTIFIED_DESTROY_MESSAGE = new SquareEventType(5);
  public static final SquareEventType NOTIFIED_MARK_AS_READ = new SquareEventType(6);
  public static final SquareEventType NOTIFIED_UPDATE_SQUARE_MEMBER_PROFILE = new SquareEventType(7);
  public static final SquareEventType NOTIFIED_KICKOUT_FROM_SQUARE = new SquareEventType(19);
  public static final SquareEventType NOTIFIED_SHUTDOWN_SQUARE = new SquareEventType(18);
  public static final SquareEventType NOTIFIED_DELETE_SQUARE_CHAT = new SquareEventType(20);
  public static final SquareEventType NOTIFIED_UPDATE_SQUARE_CHAT_PROFILE_NAME = new SquareEventType(30);
  public static final SquareEventType NOTIFIED_UPDATE_SQUARE_CHAT_PROFILE_IMAGE = new SquareEventType(31);
  public static final SquareEventType NOTIFIED_UPDATE_SQUARE_CHAT_ANNOUNCEMENT = new SquareEventType(37);
  public static final SquareEventType NOTIFIED_ADD_BOT = new SquareEventType(33);
  public static final SquareEventType NOTIFIED_REMOVE_BOT = new SquareEventType(34);
  public static final SquareEventType NOTIFIED_UPDATE_SQUARE = new SquareEventType(8);
  public static final SquareEventType NOTIFIED_UPDATE_SQUARE_STATUS = new SquareEventType(9);
  public static final SquareEventType NOTIFIED_UPDATE_SQUARE_AUTHORITY = new SquareEventType(10);
  public static final SquareEventType NOTIFIED_UPDATE_SQUARE_MEMBER = new SquareEventType(11);
  public static final SquareEventType NOTIFIED_UPDATE_SQUARE_CHAT = new SquareEventType(12);
  public static final SquareEventType NOTIFIED_UPDATE_SQUARE_CHAT_STATUS = new SquareEventType(13);
  public static final SquareEventType NOTIFIED_UPDATE_SQUARE_CHAT_MEMBER = new SquareEventType(14);
  public static final SquareEventType NOTIFIED_CREATE_SQUARE_MEMBER = new SquareEventType(15);
  public static final SquareEventType NOTIFIED_CREATE_SQUARE_CHAT_MEMBER = new SquareEventType(16);
  public static final SquareEventType NOTIFIED_UPDATE_SQUARE_MEMBER_RELATION = new SquareEventType(17);
  public static final SquareEventType NOTIFIED_UPDATE_SQUARE_FEATURE_SET = new SquareEventType(32);
  public static final SquareEventType NOTIFIED_UPDATE_SQUARE_NOTE_STATUS = new SquareEventType(36);
  public static final SquareEventType NOTIFICATION_JOIN_REQUEST = new SquareEventType(21);
  public static final SquareEventType NOTIFICATION_JOINED = new SquareEventType(22);
  public static final SquareEventType NOTIFICATION_PROMOTED_COADMIN = new SquareEventType(23);
  public static final SquareEventType NOTIFICATION_PROMOTED_ADMIN = new SquareEventType(24);
  public static final SquareEventType NOTIFICATION_DEMOTED_MEMBER = new SquareEventType(25);
  public static final SquareEventType NOTIFICATION_KICKED_OUT = new SquareEventType(26);
  public static final SquareEventType NOTIFICATION_SQUARE_DELETE = new SquareEventType(27);
  public static final SquareEventType NOTIFICATION_SQUARE_CHAT_DELETE = new SquareEventType(28);
  public static final SquareEventType NOTIFICATION_MESSAGE = new SquareEventType(29);

  private final int value;

  private SquareEventType(int value) {
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
  public static SquareEventType findByValue(int value) { 
    switch (value) {
      case 0:
        return RECEIVE_MESSAGE;
      case 1:
        return SEND_MESSAGE;
      case 2:
        return NOTIFIED_JOIN_SQUARE_CHAT;
      case 3:
        return NOTIFIED_INVITE_INTO_SQUARE_CHAT;
      case 4:
        return NOTIFIED_LEAVE_SQUARE_CHAT;
      case 5:
        return NOTIFIED_DESTROY_MESSAGE;
      case 6:
        return NOTIFIED_MARK_AS_READ;
      case 7:
        return NOTIFIED_UPDATE_SQUARE_MEMBER_PROFILE;
      case 19:
        return NOTIFIED_KICKOUT_FROM_SQUARE;
      case 18:
        return NOTIFIED_SHUTDOWN_SQUARE;
      case 20:
        return NOTIFIED_DELETE_SQUARE_CHAT;
      case 30:
        return NOTIFIED_UPDATE_SQUARE_CHAT_PROFILE_NAME;
      case 31:
        return NOTIFIED_UPDATE_SQUARE_CHAT_PROFILE_IMAGE;
      case 37:
        return NOTIFIED_UPDATE_SQUARE_CHAT_ANNOUNCEMENT;
      case 33:
        return NOTIFIED_ADD_BOT;
      case 34:
        return NOTIFIED_REMOVE_BOT;
      case 8:
        return NOTIFIED_UPDATE_SQUARE;
      case 9:
        return NOTIFIED_UPDATE_SQUARE_STATUS;
      case 10:
        return NOTIFIED_UPDATE_SQUARE_AUTHORITY;
      case 11:
        return NOTIFIED_UPDATE_SQUARE_MEMBER;
      case 12:
        return NOTIFIED_UPDATE_SQUARE_CHAT;
      case 13:
        return NOTIFIED_UPDATE_SQUARE_CHAT_STATUS;
      case 14:
        return NOTIFIED_UPDATE_SQUARE_CHAT_MEMBER;
      case 15:
        return NOTIFIED_CREATE_SQUARE_MEMBER;
      case 16:
        return NOTIFIED_CREATE_SQUARE_CHAT_MEMBER;
      case 17:
        return NOTIFIED_UPDATE_SQUARE_MEMBER_RELATION;
      case 32:
        return NOTIFIED_UPDATE_SQUARE_FEATURE_SET;
      case 36:
        return NOTIFIED_UPDATE_SQUARE_NOTE_STATUS;
      case 21:
        return NOTIFICATION_JOIN_REQUEST;
      case 22:
        return NOTIFICATION_JOINED;
      case 23:
        return NOTIFICATION_PROMOTED_COADMIN;
      case 24:
        return NOTIFICATION_PROMOTED_ADMIN;
      case 25:
        return NOTIFICATION_DEMOTED_MEMBER;
      case 26:
        return NOTIFICATION_KICKED_OUT;
      case 27:
        return NOTIFICATION_SQUARE_DELETE;
      case 28:
        return NOTIFICATION_SQUARE_CHAT_DELETE;
      case 29:
        return NOTIFICATION_MESSAGE;
      default:
        return null;
    }
  }
}
