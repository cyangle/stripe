#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-11-15
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

    # Required Properties

    # The coupon for this promotion code.
    @[JSON::Field(key: "coupon", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter coupon : String? = nil
    MAX_LENGTH_FOR_COUPON = 5000

    # End of Required Properties

    # Optional Properties

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

      unless (_coupon = @coupon).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("coupon", _coupon.to_s.size, MAX_LENGTH_FOR_COUPON)
          invalid_properties.push(max_length_error)
        end
      end

      unless (_code = @code).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("code", _code.to_s.size, MAX_LENGTH_FOR_CODE)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_customer = @customer).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("customer", _customer.to_s.size, MAX_LENGTH_FOR_CUSTOMER)
          invalid_properties.push(max_length_error)
        end
      end

      unless (_restrictions = @restrictions).nil?
        invalid_properties.concat(_restrictions.list_invalid_properties_for("restrictions")) if _restrictions.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @coupon.nil?
      unless (_coupon = @coupon).nil?
        return false if _coupon.to_s.size > MAX_LENGTH_FOR_COUPON
      end

      unless (_code = @code).nil?
        return false if _code.to_s.size > MAX_LENGTH_FOR_CODE
      end

      unless (_customer = @customer).nil?
        return false if _customer.to_s.size > MAX_LENGTH_FOR_CUSTOMER
      end

      unless (_restrictions = @restrictions).nil?
        return false if _restrictions.is_a?(OpenApi::Validatable) && !_restrictions.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] coupon Object to be assigned
    def coupon=(new_value : String?)
      raise ArgumentError.new("\"coupon\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("coupon", new_value.to_s.size, MAX_LENGTH_FOR_COUPON)
      end

      @coupon = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] active Object to be assigned
    def active=(new_value : Bool?)
      @active = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] code Object to be assigned
    def code=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("code", new_value.to_s.size, MAX_LENGTH_FOR_CODE)
      end

      @code = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] customer Object to be assigned
    def customer=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("customer", new_value.to_s.size, MAX_LENGTH_FOR_CUSTOMER)
      end

      @customer = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expand Object to be assigned
    def expand=(new_value : Array(String)?)
      @expand = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expires_at Object to be assigned
    def expires_at=(new_value : Int64?)
      @expires_at = new_value
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
    # @param [Object] restrictions Object to be assigned
    def restrictions=(new_value : Stripe::RestrictionsParams?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @restrictions = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@coupon, @active, @code, @customer, @expand, @expires_at, @max_redemptions, @metadata, @restrictions)
  end
end
