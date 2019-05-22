/**
 * Autogenerated by Thrift Compiler (0.11.0)
 *
 * DO NOT EDIT UNLESS YOU ARE SURE THAT YOU KNOW WHAT YOU ARE DOING
 *  @generated
 */

public enum Diff implements org.apache.thrift.TEnum {
  ADDED(0),
  UPDATED(1),
  REMOVED(2);

  private final int value;

  private Diff(int value) {
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
  public static Diff findByValue(int value) { 
    switch (value) {
      case 0:
        return ADDED;
      case 1:
        return UPDATED;
      case 2:
        return REMOVED;
      default:
        return null;
    }
  }
}