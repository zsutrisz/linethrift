/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
package;

import org.apache.thrift.helper.*;

class ChannelErrorCode {
  public static inline var ILLEGAL_ARGUMENT : Int = 0;
  public static inline var INTERNAL_ERROR : Int = 1;
  public static inline var CONNECTION_ERROR : Int = 2;
  public static inline var AUTHENTICATIONI_FAILED : Int = 3;
  public static inline var NEED_PERMISSION_APPROVAL : Int = 4;
  public static inline var COIN_NOT_USABLE : Int = 5;
  public static inline var WEBVIEW_NOT_ALLOWED : Int = 6;

  public static var VALID_VALUES = { new IntSet( [ILLEGAL_ARGUMENT, INTERNAL_ERROR, CONNECTION_ERROR, AUTHENTICATIONI_FAILED, NEED_PERMISSION_APPROVAL, COIN_NOT_USABLE, WEBVIEW_NOT_ALLOWED]); };
  public static var VALUES_TO_NAMES = { [
    ILLEGAL_ARGUMENT => "ILLEGAL_ARGUMENT",
    INTERNAL_ERROR => "INTERNAL_ERROR",
    CONNECTION_ERROR => "CONNECTION_ERROR",
    AUTHENTICATIONI_FAILED => "AUTHENTICATIONI_FAILED",
    NEED_PERMISSION_APPROVAL => "NEED_PERMISSION_APPROVAL",
    COIN_NOT_USABLE => "COIN_NOT_USABLE",
    WEBVIEW_NOT_ALLOWED => "WEBVIEW_NOT_ALLOWED"
  ]; };
}
