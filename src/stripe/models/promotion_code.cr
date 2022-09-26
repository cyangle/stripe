#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-08-01
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module Stripe
  # A Promotion Code represents a customer-redeemable code for a [coupon](https://stripe.com/docs/api#coupons). It can be used to create multiple codes for a single coupon.
  class PromotionCode
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Required properties

    # Whether the promotion code is currently active. A promotion code is only active if the coupon is also valid.
    @[JSON::Field(key: "active", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter active : Bool? = nil

    # The customer-facing code. Regardless of case, this code must be unique across all active promotion codes for each customer.
    @[JSON::Field(key: "code", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter code : String? = nil

    @[JSON::Field(key: "coupon", type: Stripe::Coupon?, default: nil, required: true, nullable: false, emit_null: false)]
    getter coupon : Stripe::Coupon? = nil

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter created : Int64? = nil

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter livemode : Bool? = nil

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter object : String? = nil

    ENUM_VALIDATOR_FOR_OBJECT = EnumValidator.new("object", "String", ["promotion_code"])

    @[JSON::Field(key: "restrictions", type: Stripe::PromotionCodesResourceRestrictions?, default: nil, required: true, nullable: false, emit_null: false)]
    getter restrictions : Stripe::PromotionCodesResourceRestrictions? = nil

    # Number of times this promotion code has been used.
    @[JSON::Field(key: "times_redeemed", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter times_redeemed : Int64? = nil

    # Optional properties

    @[JSON::Field(key: "customer", type: Stripe::PromotionCodeCustomer?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: customer.nil? && !customer_present?)]
    getter customer : Stripe::PromotionCodeCustomer? = nil

    @[JSON::Field(ignore: true)]
    property? customer_present : Bool = false

    # Date at which the promotion code can no longer be redeemed.
    @[JSON::Field(key: "expires_at", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: expires_at.nil? && !expires_at_present?)]
    getter expires_at : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? expires_at_present : Bool = false

    # Maximum number of times this promotion code can be redeemed.
    @[JSON::Field(key: "max_redemptions", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: max_redemptions.nil? && !max_redemptions_present?)]
    getter max_redemptions : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? max_redemptions_present : Bool = false

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: metadata.nil? && !metadata_present?)]
    getter metadata : Hash(String, String)? = nil

    @[JSON::Field(ignore: true)]
    property? metadata_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @active : Bool? = nil,
      @code : String? = nil,
      @coupon : Stripe::Coupon? = nil,
      @created : Int64? = nil,
      @id : String? = nil,
      @livemode : Bool? = nil,
      @object : String? = nil,
      @restrictions : Stripe::PromotionCodesResourceRestrictions? = nil,
      @times_redeemed : Int64? = nil,
      # Optional properties
      @customer : Stripe::PromotionCodeCustomer? = nil,
      @expires_at : Int64? = nil,
      @max_redemptions : Int64? = nil,
      @metadata : Hash(String, String)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      invalid_properties.push("\"active\" is required and cannot be null") if @active.nil?
      invalid_properties.push("\"code\" is required and cannot be null") if @code.nil?
      if _code = @code
        if _code.to_s.size > 5000
          invalid_properties.push("invalid value for \"code\", the character length must be smaller than or equal to 5000.")
        end
      end
      invalid_properties.push("\"coupon\" is required and cannot be null") if @coupon.nil?
      # This is a model coupon : Stripe::Coupon?
      invalid_properties.push("\"created\" is required and cannot be null") if @created.nil?
      invalid_properties.push("\"id\" is required and cannot be null") if @id.nil?
      if _id = @id
        if _id.to_s.size > 5000
          invalid_properties.push("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
        end
      end
      invalid_properties.push("\"livemode\" is required and cannot be null") if @livemode.nil?

      invalid_properties.push(ENUM_VALIDATOR_FOR_OBJECT.error_message) unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      invalid_properties.push("\"restrictions\" is required and cannot be null") if @restrictions.nil?
      # This is a model restrictions : Stripe::PromotionCodesResourceRestrictions?
      invalid_properties.push("\"times_redeemed\" is required and cannot be null") if @times_redeemed.nil?
      # This is a model customer : Stripe::PromotionCodeCustomer?

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @active.nil?
      return false if @code.nil?
      if _code = @code
        return false if _code.to_s.size > 5000
      end
      return false if @coupon.nil?
      return false if @created.nil?
      return false if @id.nil?
      if _id = @id
        return false if _id.to_s.size > 5000
      end
      return false if @livemode.nil?
      return false unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      return false if @restrictions.nil?
      return false if @times_redeemed.nil?

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] active Object to be assigned
    def active=(active : Bool?)
      if active.nil?
        raise ArgumentError.new("\"active\" is required and cannot be null")
      end
      @active = active
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] code Object to be assigned
    def code=(code : String?)
      if code.nil?
        raise ArgumentError.new("\"code\" is required and cannot be null")
      end
      _code = code.not_nil!
      if _code.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"code\", the character length must be smaller than or equal to 5000.")
      end

      @code = code
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] coupon Object to be assigned
    def coupon=(coupon : Stripe::Coupon?)
      if coupon.nil?
        raise ArgumentError.new("\"coupon\" is required and cannot be null")
      end
      @coupon = coupon
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] created Object to be assigned
    def created=(created : Int64?)
      if created.nil?
        raise ArgumentError.new("\"created\" is required and cannot be null")
      end
      @created = created
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] id Object to be assigned
    def id=(id : String?)
      if id.nil?
        raise ArgumentError.new("\"id\" is required and cannot be null")
      end
      _id = id.not_nil!
      if _id.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      @id = id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] livemode Object to be assigned
    def livemode=(livemode : Bool?)
      if livemode.nil?
        raise ArgumentError.new("\"livemode\" is required and cannot be null")
      end
      @livemode = livemode
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object : String?)
      if object.nil?
        raise ArgumentError.new("\"object\" is required and cannot be null")
      end
      _object = object.not_nil!
      ENUM_VALIDATOR_FOR_OBJECT.valid!(_object)
      @object = object
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] restrictions Object to be assigned
    def restrictions=(restrictions : Stripe::PromotionCodesResourceRestrictions?)
      if restrictions.nil?
        raise ArgumentError.new("\"restrictions\" is required and cannot be null")
      end
      @restrictions = restrictions
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] times_redeemed Object to be assigned
    def times_redeemed=(times_redeemed : Int64?)
      if times_redeemed.nil?
        raise ArgumentError.new("\"times_redeemed\" is required and cannot be null")
      end
      @times_redeemed = times_redeemed
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] customer Object to be assigned
    def customer=(customer : Stripe::PromotionCodeCustomer?)
      if customer.nil?
        return @customer = nil
      end
      @customer = customer
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expires_at Object to be assigned
    def expires_at=(expires_at : Int64?)
      if expires_at.nil?
        return @expires_at = nil
      end
      @expires_at = expires_at
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] max_redemptions Object to be assigned
    def max_redemptions=(max_redemptions : Int64?)
      if max_redemptions.nil?
        return @max_redemptions = nil
      end
      @max_redemptions = max_redemptions
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(metadata : Hash(String, String)?)
      if metadata.nil?
        return @metadata = nil
      end
      @metadata = metadata
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
