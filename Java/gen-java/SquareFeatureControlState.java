/**
 * Autogenerated by Thrift Compiler (0.14.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */

@javax.annotation.Generated(value = "Autogenerated by Thrift Compiler (0.14.0)", date = "2020-03-23")
public enum SquareFeatureControlState implements org.apache.thrift.TEnum {
  DISABLED(1),
  ENABLED(2);

  private final int value;

  private SquareFeatureControlState(int value) {
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
  @org.apache.thrift.annotation.Nullable
  public static SquareFeatureControlState findByValue(int value) { 
    switch (value) {
      case 1:
        return DISABLED;
      case 2:
        return ENABLED;
      default:
        return null;
    }
  }
}