/**
 * Autogenerated by Thrift Compiler (0.11.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
package;

import org.apache.thrift.helper.*;

class TMessageBoxStatus {
  public static inline var ACTIVATED : Int = 1;
  public static inline var UNREAD : Int = 2;

  public static var VALID_VALUES = { new IntSet( [ACTIVATED, UNREAD]); };
  public static var VALUES_TO_NAMES = { [
    ACTIVATED => "ACTIVATED",
    UNREAD => "UNREAD"
  ]; };
}