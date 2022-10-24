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
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Whether the promotion code is currently active. A promotion code is only active if the coupon is also valid.
    @[JSON::Field(key: "active", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter active : Bool? = nil

    # The customer-facing code. Regardless of case, this code must be unique across all active promotion codes for each customer.
    @[JSON::Field(key: "code", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter code : String? = nil
    MAX_LENGTH_FOR_CODE = 5000

    @[JSON::Field(key: "coupon", type: Stripe::Coupon?, default: nil, required: true, nullable: false, emit_null: false)]
    getter coupon : Stripe::Coupon? = nil

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter created : Int64? = nil

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil
    MAX_LENGTH_FOR_ID = 5000

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter livemode : Bool? = nil

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter object : String? = nil
    ERROR_MESSAGE_FOR_OBJECT = "invalid value for \"object\", must be one of [promotion_code]."
    VALID_VALUES_FOR_OBJECT  = String.static_array("promotion_code")

    @[JSON::Field(key: "restrictions", type: Stripe::PromotionCodesResourceRestrictions?, default: nil, required: true, nullable: false, emit_null: false)]
    getter restrictions : Stripe::PromotionCodesResourceRestrictions? = nil

    # Number of times this promotion code has been used.
    @[JSON::Field(key: "times_redeemed", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter times_redeemed : Int64? = nil

    # End of Required Properties

    # Optional Properties

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
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"active\" is required and cannot be null") if @active.nil?

      invalid_properties.push("\"code\" is required and cannot be null") if @code.nil?

      unless (_code = @code).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("code", _code.to_s.size, MAX_LENGTH_FOR_CODE)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"coupon\" is required and cannot be null") if @coupon.nil?

      unless (_coupon = @coupon).nil?
        invalid_properties.concat(_coupon.list_invalid_properties_for("coupon")) if _coupon.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"created\" is required and cannot be null") if @created.nil?

      invalid_properties.push("\"id\" is required and cannot be null") if @id.nil?

      unless (_id = @id).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("id", _id.to_s.size, MAX_LENGTH_FOR_ID)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"livemode\" is required and cannot be null") if @livemode.nil?

      invalid_properties.push("\"object\" is required and cannot be null") if @object.nil?

      unless (_object = @object).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_OBJECT) unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end
      invalid_properties.push("\"restrictions\" is required and cannot be null") if @restrictions.nil?

      unless (_restrictions = @restrictions).nil?
        invalid_properties.concat(_restrictions.list_invalid_properties_for("restrictions")) if _restrictions.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"times_redeemed\" is required and cannot be null") if @times_redeemed.nil?

      unless (_customer = @customer).nil?
        invalid_properties.concat(_customer.list_invalid_properties_for("customer")) if _customer.is_a?(OpenApi::Validatable)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @active.nil?

      return false if @code.nil?
      unless (_code = @code).nil?
        return false if _code.to_s.size > MAX_LENGTH_FOR_CODE
      end

      return false if @coupon.nil?
      unless (_coupon = @coupon).nil?
        return false if _coupon.is_a?(OpenApi::Validatable) && !_coupon.valid?
      end

      return false if @created.nil?

      return false if @id.nil?
      unless (_id = @id).nil?
        return false if _id.to_s.size > MAX_LENGTH_FOR_ID
      end

      return false if @livemode.nil?

      return false if @object.nil?
      unless (_object = @object).nil?
        return false unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end

      return false if @restrictions.nil?
      unless (_restrictions = @restrictions).nil?
        return false if _restrictions.is_a?(OpenApi::Validatable) && !_restrictions.valid?
      end

      return false if @times_redeemed.nil?

      unless (_customer = @customer).nil?
        return false if _customer.is_a?(OpenApi::Validatable) && !_customer.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] active Object to be assigned
    def active=(active : Bool?)
      if active.nil?
        raise ArgumentError.new("\"active\" is required and cannot be null")
      end
      _active = active.not_nil!
      @active = _active
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] code Object to be assigned
    def code=(code : String?)
      if code.nil?
        raise ArgumentError.new("\"code\" is required and cannot be null")
      end
      _code = code.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("code", _code.to_s.size, MAX_LENGTH_FOR_CODE)
      @code = _code
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] coupon Object to be assigned
    def coupon=(coupon : Stripe::Coupon?)
      if coupon.nil?
        raise ArgumentError.new("\"coupon\" is required and cannot be null")
      end
      _coupon = coupon.not_nil!
      _coupon.validate if _coupon.is_a?(OpenApi::Validatable)
      @coupon = _coupon
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] created Object to be assigned
    def created=(created : Int64?)
      if created.nil?
        raise ArgumentError.new("\"created\" is required and cannot be null")
      end
      _created = created.not_nil!
      @created = _created
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] id Object to be assigned
    def id=(id : String?)
      if id.nil?
        raise ArgumentError.new("\"id\" is required and cannot be null")
      end
      _id = id.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("id", _id.to_s.size, MAX_LENGTH_FOR_ID)
      @id = _id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] livemode Object to be assigned
    def livemode=(livemode : Bool?)
      if livemode.nil?
        raise ArgumentError.new("\"livemode\" is required and cannot be null")
      end
      _livemode = livemode.not_nil!
      @livemode = _livemode
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object : String?)
      if object.nil?
        raise ArgumentError.new("\"object\" is required and cannot be null")
      end
      _object = object.not_nil!
      OpenApi::EnumValidator.validate("object", _object, VALID_VALUES_FOR_OBJECT)
      @object = _object
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] restrictions Object to be assigned
    def restrictions=(restrictions : Stripe::PromotionCodesResourceRestrictions?)
      if restrictions.nil?
        raise ArgumentError.new("\"restrictions\" is required and cannot be null")
      end
      _restrictions = restrictions.not_nil!
      _restrictions.validate if _restrictions.is_a?(OpenApi::Validatable)
      @restrictions = _restrictions
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] times_redeemed Object to be assigned
    def times_redeemed=(times_redeemed : Int64?)
      if times_redeemed.nil?
        raise ArgumentError.new("\"times_redeemed\" is required and cannot be null")
      end
      _times_redeemed = times_redeemed.not_nil!
      @times_redeemed = _times_redeemed
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] customer Object to be assigned
    def customer=(customer : Stripe::PromotionCodeCustomer?)
      if customer.nil?
        return @customer = nil
      end
      _customer = customer.not_nil!
      _customer.validate if _customer.is_a?(OpenApi::Validatable)
      @customer = _customer
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expires_at Object to be assigned
    def expires_at=(expires_at : Int64?)
      if expires_at.nil?
        return @expires_at = nil
      end
      _expires_at = expires_at.not_nil!
      @expires_at = _expires_at
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] max_redemptions Object to be assigned
    def max_redemptions=(max_redemptions : Int64?)
      if max_redemptions.nil?
        return @max_redemptions = nil
      end
      _max_redemptions = max_redemptions.not_nil!
      @max_redemptions = _max_redemptions
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(metadata : Hash(String, String)?)
      if metadata.nil?
        return @metadata = nil
      end
      _metadata = metadata.not_nil!
      @metadata = _metadata
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@active, @code, @coupon, @created, @id, @livemode, @object, @restrictions, @times_redeemed, @customer, @customer_present, @expires_at, @expires_at_present, @max_redemptions, @max_redemptions_present, @metadata, @metadata_present)
  end
end
