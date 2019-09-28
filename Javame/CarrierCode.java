/**
 * Autogenerated by Thrift Compiler (0.13.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */
public class CarrierCode implements org.apache.thrift.TEnum {

  public static final CarrierCode NOT_SPECIFIED = new CarrierCode(0);
  public static final CarrierCode JP_DOCOMO = new CarrierCode(1);
  public static final CarrierCode JP_AU = new CarrierCode(2);
  public static final CarrierCode JP_SOFTBANK = new CarrierCode(3);
  public static final CarrierCode JP_DOCOMO_LINE = new CarrierCode(4);
  public static final CarrierCode KR_SKT = new CarrierCode(17);
  public static final CarrierCode KR_KT = new CarrierCode(18);
  public static final CarrierCode KR_LGT = new CarrierCode(19);

  private final int value;

  private CarrierCode(int value) {
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
  public static CarrierCode findByValue(int value) { 
    switch (value) {
      case 0:
        return NOT_SPECIFIED;
      case 1:
        return JP_DOCOMO;
      case 2:
        return JP_AU;
      case 3:
        return JP_SOFTBANK;
      case 4:
        return JP_DOCOMO_LINE;
      case 17:
        return KR_SKT;
      case 18:
        return KR_KT;
      case 19:
        return KR_LGT;
      default:
        return null;
    }
  }
}