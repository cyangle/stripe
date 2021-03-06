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
  # A Promotion Code represents a customer-redeemable code for a [coupon](https://stripe.com/docs/api#coupons). It can be used to create multiple codes for a single coupon.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class PromotionCode
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # Whether the promotion code is currently active. A promotion code is only active if the coupon is also valid.
    @[JSON::Field(key: "active", type: Bool)]
    property active : Bool

    # The customer-facing code. Regardless of case, this code must be unique across all active promotion codes for each customer.
    @[JSON::Field(key: "code", type: String)]
    getter code : String

    @[JSON::Field(key: "coupon", type: Coupon)]
    property coupon : Coupon

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64)]
    property created : Int64

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String)]
    getter id : String

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool)]
    property livemode : Bool

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String)]
    getter object : String

    ENUM_VALIDATOR_FOR_OBJECT = EnumValidator.new("object", "String", ["promotion_code"])

    @[JSON::Field(key: "restrictions", type: PromotionCodesResourceRestrictions)]
    property restrictions : PromotionCodesResourceRestrictions

    # Number of times this promotion code has been used.
    @[JSON::Field(key: "times_redeemed", type: Int64)]
    property times_redeemed : Int64

    # Optional properties

    @[JSON::Field(key: "customer", type: PromotionCodeCustomer?, presence: true, ignore_serialize: customer.nil? && !customer_present?)]
    property customer : PromotionCodeCustomer?

    @[JSON::Field(ignore: true)]
    property? customer_present : Bool = false

    # Date at which the promotion code can no longer be redeemed.
    @[JSON::Field(key: "expires_at", type: Int64?, presence: true, ignore_serialize: expires_at.nil? && !expires_at_present?)]
    property expires_at : Int64?

    @[JSON::Field(ignore: true)]
    property? expires_at_present : Bool = false

    # Maximum number of times this promotion code can be redeemed.
    @[JSON::Field(key: "max_redemptions", type: Int64?, presence: true, ignore_serialize: max_redemptions.nil? && !max_redemptions_present?)]
    property max_redemptions : Int64?

    @[JSON::Field(ignore: true)]
    property? max_redemptions_present : Bool = false

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    @[JSON::Field(key: "metadata", type: Hash(String, String)?, presence: true, ignore_serialize: metadata.nil? && !metadata_present?)]
    property metadata : Hash(String, String)?

    @[JSON::Field(ignore: true)]
    property? metadata_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @active : Bool,
      @code : String,
      @coupon : Coupon,
      @created : Int64,
      @id : String,
      @livemode : Bool,
      @object : String,
      @restrictions : PromotionCodesResourceRestrictions,
      @times_redeemed : Int64,
      # Optional properties
      @customer : PromotionCodeCustomer? = nil,
      @expires_at : Int64? = nil,
      @max_redemptions : Int64? = nil,
      @metadata : Hash(String, String)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if @code.to_s.size > 5000
        invalid_properties.push("invalid value for \"code\", the character length must be smaller than or equal to 5000.")
      end

      if @id.to_s.size > 5000
        invalid_properties.push("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_OBJECT.error_message) unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @code.to_s.size > 5000
      return false if @id.to_s.size > 5000
      return false unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] code Value to be assigned
    def code=(code : String)
      if code.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"code\", the character length must be smaller than or equal to 5000.")
      end

      @code = code
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

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@active, @code, @coupon, @created, @id, @livemode, @object, @restrictions, @times_redeemed, @customer, @customer_present, @expires_at, @expires_at_present, @max_redemptions, @max_redemptions_present, @metadata, @metadata_present)
  end
end
