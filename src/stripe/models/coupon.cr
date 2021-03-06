#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-08-27
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module Stripe
  # A coupon contains information about a percent-off or amount-off discount you might want to apply to a customer. Coupons may be applied to [subscriptions](https://stripe.com/docs/api#subscriptions), [invoices](https://stripe.com/docs/api#invoices), [checkout sessions](https://stripe.com/docs/api/checkout/sessions), [quotes](https://stripe.com/docs/api#quotes), and more. Coupons do not work with conventional one-off [charges](https://stripe.com/docs/api#create_charge) or [payment intents](https://stripe.com/docs/api/payment_intents).
  @[JSON::Serializable::Options(emit_nulls: true)]
  class Coupon
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64)]
    property created : Int64

    # One of `forever`, `once`, and `repeating`. Describes how long a customer who applies this coupon will get the discount.
    @[JSON::Field(key: "duration", type: String)]
    getter duration : String

    ENUM_VALIDATOR_FOR_DURATION = EnumValidator.new("duration", "String", ["forever", "once", "repeating"])

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String)]
    getter id : String

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool)]
    property livemode : Bool

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String)]
    getter object : String

    ENUM_VALIDATOR_FOR_OBJECT = EnumValidator.new("object", "String", ["coupon"])

    # Number of times this coupon has been applied to a customer.
    @[JSON::Field(key: "times_redeemed", type: Int64)]
    property times_redeemed : Int64

    # Taking account of the above properties, whether this coupon can still be applied to a customer.
    @[JSON::Field(key: "valid", type: Bool)]
    property valid : Bool

    # Optional properties

    # Amount (in the `currency` specified) that will be taken off the subtotal of any invoices for this customer.
    @[JSON::Field(key: "amount_off", type: Int64?, presence: true, ignore_serialize: amount_off.nil? && !amount_off_present?)]
    property amount_off : Int64?

    @[JSON::Field(ignore: true)]
    property? amount_off_present : Bool = false

    @[JSON::Field(key: "applies_to", type: CouponAppliesTo?, presence: true, ignore_serialize: applies_to.nil? && !applies_to_present?)]
    property applies_to : CouponAppliesTo?

    @[JSON::Field(ignore: true)]
    property? applies_to_present : Bool = false

    # If `amount_off` has been set, the three-letter [ISO code for the currency](https://stripe.com/docs/currencies) of the amount to take off.
    @[JSON::Field(key: "currency", type: String?, presence: true, ignore_serialize: currency.nil? && !currency_present?)]
    property currency : String?

    @[JSON::Field(ignore: true)]
    property? currency_present : Bool = false

    # If `duration` is `repeating`, the number of months the coupon applies. Null if coupon `duration` is `forever` or `once`.
    @[JSON::Field(key: "duration_in_months", type: Int64?, presence: true, ignore_serialize: duration_in_months.nil? && !duration_in_months_present?)]
    property duration_in_months : Int64?

    @[JSON::Field(ignore: true)]
    property? duration_in_months_present : Bool = false

    # Maximum number of times this coupon can be redeemed, in total, across all customers, before it is no longer valid.
    @[JSON::Field(key: "max_redemptions", type: Int64?, presence: true, ignore_serialize: max_redemptions.nil? && !max_redemptions_present?)]
    property max_redemptions : Int64?

    @[JSON::Field(ignore: true)]
    property? max_redemptions_present : Bool = false

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    @[JSON::Field(key: "metadata", type: Hash(String, String)?, presence: true, ignore_serialize: metadata.nil? && !metadata_present?)]
    property metadata : Hash(String, String)?

    @[JSON::Field(ignore: true)]
    property? metadata_present : Bool = false

    # Name of the coupon displayed to customers on for instance invoices or receipts.
    @[JSON::Field(key: "name", type: String?, presence: true, ignore_serialize: name.nil? && !name_present?)]
    getter name : String?

    @[JSON::Field(ignore: true)]
    property? name_present : Bool = false

    # Percent that will be taken off the subtotal of any invoices for this customer for the duration of the coupon. For example, a coupon with percent_off of 50 will make a %s100 invoice %s50 instead.
    @[JSON::Field(key: "percent_off", type: Float64?, presence: true, ignore_serialize: percent_off.nil? && !percent_off_present?)]
    property percent_off : Float64?

    @[JSON::Field(ignore: true)]
    property? percent_off_present : Bool = false

    # Date after which the coupon can no longer be redeemed.
    @[JSON::Field(key: "redeem_by", type: Int64?, presence: true, ignore_serialize: redeem_by.nil? && !redeem_by_present?)]
    property redeem_by : Int64?

    @[JSON::Field(ignore: true)]
    property? redeem_by_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @created : Int64,
      @duration : String,
      @id : String,
      @livemode : Bool,
      @object : String,
      @times_redeemed : Int64,
      @valid : Bool,
      # Optional properties
      @amount_off : Int64? = nil,
      @applies_to : CouponAppliesTo? = nil,
      @currency : String? = nil,
      @duration_in_months : Int64? = nil,
      @max_redemptions : Int64? = nil,
      @metadata : Hash(String, String)? = nil,
      @name : String? = nil,
      @percent_off : Float64? = nil,
      @redeem_by : Int64? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_DURATION.error_message) unless ENUM_VALIDATOR_FOR_DURATION.valid?(@duration, false)

      if @id.to_s.size > 5000
        invalid_properties.push("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_OBJECT.error_message) unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)

      if !@name.nil? && @name.to_s.size > 5000
        invalid_properties.push("invalid value for \"name\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR_DURATION.valid?(@duration, false)
      return false if @id.to_s.size > 5000
      return false unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      return false if !@name.nil? && @name.to_s.size > 5000

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] duration Object to be assigned
    def duration=(duration : String)
      ENUM_VALIDATOR_FOR_DURATION.valid!(duration, false)
      @duration = duration
    end

    # Custom attribute writer method with validation
    # @param [Object] id Value to be assigned
    def id=(id : String)
      if id.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      @id = id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object : String)
      ENUM_VALIDATOR_FOR_OBJECT.valid!(object, false)
      @object = object
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name : String?)
      if !name.nil? && name.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"name\", the character length must be smaller than or equal to 5000.")
      end

      @name = name
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@created, @duration, @id, @livemode, @object, @times_redeemed, @valid, @amount_off, @amount_off_present, @applies_to, @applies_to_present, @currency, @currency_present, @duration_in_months, @duration_in_months_present, @max_redemptions, @max_redemptions_present, @metadata, @metadata_present, @name, @name_present, @percent_off, @percent_off_present, @redeem_by, @redeem_by_present)
  end
end
