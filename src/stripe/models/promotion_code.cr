#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./coupon"
require "./promotion_code_customer"
require "./promotion_codes_resource_restrictions"

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

    @[JSON::Field(key: "customer", type: Stripe::PromotionCodeCustomer?, default: nil, required: true, nullable: true, emit_null: true)]
    getter customer : Stripe::PromotionCodeCustomer? = nil

    # Date at which the promotion code can no longer be redeemed.
    @[JSON::Field(key: "expires_at", type: Int64?, default: nil, required: true, nullable: true, emit_null: true)]
    getter expires_at : Int64? = nil

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil
    MAX_LENGTH_FOR_ID = 5000

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter livemode : Bool? = nil

    # Maximum number of times this promotion code can be redeemed.
    @[JSON::Field(key: "max_redemptions", type: Int64?, default: nil, required: true, nullable: true, emit_null: true)]
    getter max_redemptions : Int64? = nil

    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: true, nullable: true, emit_null: true)]
    getter metadata : Hash(String, String)? = nil

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

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @active : Bool? = nil,
      @code : String? = nil,
      @coupon : Stripe::Coupon? = nil,
      @created : Int64? = nil,
      @customer : Stripe::PromotionCodeCustomer? = nil,
      @expires_at : Int64? = nil,
      @id : String? = nil,
      @livemode : Bool? = nil,
      @max_redemptions : Int64? = nil,
      @metadata : Hash(String, String)? = nil,
      @object : String? = nil,
      @restrictions : Stripe::PromotionCodesResourceRestrictions? = nil,
      @times_redeemed : Int64? = nil
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

      unless (_customer = @customer).nil?
        invalid_properties.concat(_customer.list_invalid_properties_for("customer")) if _customer.is_a?(OpenApi::Validatable)
      end

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

      unless (_customer = @customer).nil?
        return false if _customer.is_a?(OpenApi::Validatable) && !_customer.valid?
      end

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

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] active Object to be assigned
    def active=(new_value : Bool?)
      raise ArgumentError.new("\"active\" is required and cannot be null") if new_value.nil?

      @active = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] code Object to be assigned
    def code=(new_value : String?)
      raise ArgumentError.new("\"code\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("code", new_value.to_s.size, MAX_LENGTH_FOR_CODE)
      end

      @code = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] coupon Object to be assigned
    def coupon=(new_value : Stripe::Coupon?)
      raise ArgumentError.new("\"coupon\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @coupon = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] created Object to be assigned
    def created=(new_value : Int64?)
      raise ArgumentError.new("\"created\" is required and cannot be null") if new_value.nil?

      @created = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] customer Object to be assigned
    def customer=(new_value : Stripe::PromotionCodeCustomer?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @customer = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expires_at Object to be assigned
    def expires_at=(new_value : Int64?)
      @expires_at = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] id Object to be assigned
    def id=(new_value : String?)
      raise ArgumentError.new("\"id\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("id", new_value.to_s.size, MAX_LENGTH_FOR_ID)
      end

      @id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] livemode Object to be assigned
    def livemode=(new_value : Bool?)
      raise ArgumentError.new("\"livemode\" is required and cannot be null") if new_value.nil?

      @livemode = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] max_redemptions Object to be assigned
    def max_redemptions=(new_value : Int64?)
      @max_redemptions = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(new_value : Hash(String, String)?)
      @metadata = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(new_value : String?)
      raise ArgumentError.new("\"object\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::EnumValidator.validate("object", new_value, VALID_VALUES_FOR_OBJECT)
      end

      @object = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] restrictions Object to be assigned
    def restrictions=(new_value : Stripe::PromotionCodesResourceRestrictions?)
      raise ArgumentError.new("\"restrictions\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @restrictions = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] times_redeemed Object to be assigned
    def times_redeemed=(new_value : Int64?)
      raise ArgumentError.new("\"times_redeemed\" is required and cannot be null") if new_value.nil?

      @times_redeemed = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@active, @code, @coupon, @created, @customer, @expires_at, @id, @livemode, @max_redemptions, @metadata, @object, @restrictions, @times_redeemed)
  end
end
