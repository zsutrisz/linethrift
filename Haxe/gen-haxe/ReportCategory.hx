/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
package;

import org.apache.thrift.helper.*;

class ReportCategory {
  public static inline var PUSH_NORMAL_PLAIN : Int = 0;
  public static inline var PUSH_NORMAL_E2EE : Int = 1;
  public static inline var PUSH_VOIP_PLAIN : Int = 2;
  public static inline var PUSH_VOIP_E2EE : Int = 3;

  public static var VALID_VALUES = { new IntSet( [PUSH_NORMAL_PLAIN, PUSH_NORMAL_E2EE, PUSH_VOIP_PLAIN, PUSH_VOIP_E2EE]); };
  public static var VALUES_TO_NAMES = { [
    PUSH_NORMAL_PLAIN => "PUSH_NORMAL_PLAIN",
    PUSH_NORMAL_E2EE => "PUSH_NORMAL_E2EE",
    PUSH_VOIP_PLAIN => "PUSH_VOIP_PLAIN",
    PUSH_VOIP_E2EE => "PUSH_VOIP_E2EE"
  ]; };
}