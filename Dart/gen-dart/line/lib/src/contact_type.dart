/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
library line.src.contact_type;

class ContactType {
  static const int MID = 0;
  static const int PHONE = 1;
  static const int EMAIL = 2;
  static const int USERID = 3;
  static const int PROXIMITY = 4;
  static const int GROUP = 5;
  static const int USER = 6;
  static const int QRCODE = 7;
  static const int PROMOTION_BOT = 8;
  static const int CONTACT_MESSAGE = 9;
  static const int FRIEND_REQUEST = 10;
  static const int REPAIR = 128;
  static const int FACEBOOK = 2305;
  static const int SINA = 2306;
  static const int RENREN = 2307;
  static const int FEIXIN = 2308;
  static const int BBM = 2309;
  static const int BEACON = 11;

  static final Set<int> VALID_VALUES = new Set.from([
    MID
    , PHONE
    , EMAIL
    , USERID
    , PROXIMITY
    , GROUP
    , USER
    , QRCODE
    , PROMOTION_BOT
    , CONTACT_MESSAGE
    , FRIEND_REQUEST
    , REPAIR
    , FACEBOOK
    , SINA
    , RENREN
    , FEIXIN
    , BBM
    , BEACON
  ]);
  static final Map<int, String> VALUES_TO_NAMES = {
    MID: 'MID'
    , PHONE: 'PHONE'
    , EMAIL: 'EMAIL'
    , USERID: 'USERID'
    , PROXIMITY: 'PROXIMITY'
    , GROUP: 'GROUP'
    , USER: 'USER'
    , QRCODE: 'QRCODE'
    , PROMOTION_BOT: 'PROMOTION_BOT'
    , CONTACT_MESSAGE: 'CONTACT_MESSAGE'
    , FRIEND_REQUEST: 'FRIEND_REQUEST'
    , REPAIR: 'REPAIR'
    , FACEBOOK: 'FACEBOOK'
    , SINA: 'SINA'
    , RENREN: 'RENREN'
    , FEIXIN: 'FEIXIN'
    , BBM: 'BBM'
    , BEACON: 'BEACON'
  };
}