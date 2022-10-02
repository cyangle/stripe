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
  class PostPromotionCodesRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    # The coupon for this promotion code.
    @[JSON::Field(key: "coupon", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter coupon : String? = nil
    MAX_LENGTH_FOR_COUPON = 5000

    # Optional properties

    # Whether the promotion code is currently active.
    @[JSON::Field(key: "active", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter active : Bool? = nil

    # The customer-facing code. Regardless of case, this code must be unique across all active promotion codes for a specific customer. If left blank, we will generate one automatically.
    @[JSON::Field(key: "code", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter code : String? = nil
    MAX_LENGTH_FOR_CODE = 500

    # The customer that this promotion code can be used by. If not set, the promotion code can be used by all customers.
    @[JSON::Field(key: "customer", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter customer : String? = nil
    MAX_LENGTH_FOR_CUSTOMER = 5000

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    # The timestamp at which this promotion code will expire. If the coupon has specified a `redeems_by`, then this value cannot be after the coupon's `redeems_by`.
    @[JSON::Field(key: "expires_at", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expires_at : Int64? = nil

    # A positive integer specifying the number of times the promotion code can be redeemed. If the coupon has specified a `max_redemptions`, then this value cannot be greater than the coupon's `max_redemptions`.
    @[JSON::Field(key: "max_redemptions", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter max_redemptions : Int64? = nil

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Hash(String, String)? = nil

    @[JSON::Field(key: "restrictions", type: Stripe::RestrictionsParams?, default: nil, required: false, nullable: false, emit_null: false)]
    getter restrictions : Stripe::RestrictionsParams? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @coupon : String? = nil,
      # Optional properties
      @active : Bool? = nil,
      @code : String? = nil,
      @customer : String? = nil,
      @expand : Array(String)? = nil,
      @expires_at : Int64? = nil,
      @max_redemptions : Int64? = nil,
      @metadata : Hash(String, String)? = nil,
      @restrictions : Stripe::RestrictionsParams? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"coupon\" is required and cannot be null") if @coupon.nil?

      if _coupon = @coupon
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("coupon", _coupon.to_s.size, MAX_LENGTH_FOR_COUPON)
          invalid_properties.push(max_length_error)
        end
      end

      if _code = @code
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("code", _code.to_s.size, MAX_LENGTH_FOR_CODE)
          invalid_properties.push(max_length_error)
        end
      end
      if _customer = @customer
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("customer", _customer.to_s.size, MAX_LENGTH_FOR_CUSTOMER)
          invalid_properties.push(max_length_error)
        end
      end

      if _restrictions = @restrictions
        invalid_properties.concat(_restrictions.list_invalid_properties_for("restrictions")) if _restrictions.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @coupon.nil?
      if _coupon = @coupon
        return false if _coupon.to_s.size > MAX_LENGTH_FOR_COUPON
      end

      if _code = @code
        return false if _code.to_s.size > MAX_LENGTH_FOR_CODE
      end

      if _customer = @customer
        return false if _customer.to_s.size > MAX_LENGTH_FOR_CUSTOMER
      end

      if _restrictions = @restrictions
        return false if _restrictions.is_a?(OpenApi::Validatable) && !_restrictions.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] coupon Object to be assigned
    def coupon=(coupon : String?)
      if coupon.nil?
        raise ArgumentError.new("\"coupon\" is required and cannot be null")
      end
      _coupon = coupon.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("coupon", _coupon.to_s.size, MAX_LENGTH_FOR_COUPON)
      @coupon = _coupon
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] active Object to be assigned
    def active=(active : Bool?)
      if active.nil?
        return @active = nil
      end
      _active = active.not_nil!
      @active = _active
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] code Object to be assigned
    def code=(code : String?)
      if code.nil?
        return @code = nil
      end
      _code = code.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("code", _code.to_s.size, MAX_LENGTH_FOR_CODE)
      @code = _code
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] customer Object to be assigned
    def customer=(customer : String?)
      if customer.nil?
        return @customer = nil
      end
      _customer = customer.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("customer", _customer.to_s.size, MAX_LENGTH_FOR_CUSTOMER)
      @customer = _customer
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expand Object to be assigned
    def expand=(expand : Array(String)?)
      if expand.nil?
        return @expand = nil
      end
      _expand = expand.not_nil!
      @expand = _expand
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

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] restrictions Object to be assigned
    def restrictions=(restrictions : Stripe::RestrictionsParams?)
      if restrictions.nil?
        return @restrictions = nil
      end
      _restrictions = restrictions.not_nil!
      _restrictions.validate if _restrictions.is_a?(OpenApi::Validatable)
      @restrictions = _restrictions
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@coupon, @active, @code, @customer, @expand, @expires_at, @max_redemptions, @metadata, @restrictions)
  end
end
