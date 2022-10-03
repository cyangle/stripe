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
  class DiscountsDataParam1
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "coupon", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter coupon : String? = nil
    MAX_LENGTH_FOR_COUPON = 5000

    @[JSON::Field(key: "discount", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter discount : String? = nil
    MAX_LENGTH_FOR_DISCOUNT = 5000

    @[JSON::Field(key: "promotion_code", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter promotion_code : String? = nil
    MAX_LENGTH_FOR_PROMOTION_CODE = 5000

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @coupon : String? = nil,
      @discount : String? = nil,
      @promotion_code : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_coupon = @coupon).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("coupon", _coupon.to_s.size, MAX_LENGTH_FOR_COUPON)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_discount = @discount).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("discount", _discount.to_s.size, MAX_LENGTH_FOR_DISCOUNT)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_promotion_code = @promotion_code).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("promotion_code", _promotion_code.to_s.size, MAX_LENGTH_FOR_PROMOTION_CODE)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_coupon = @coupon).nil?
        return false if _coupon.to_s.size > MAX_LENGTH_FOR_COUPON
      end

      unless (_discount = @discount).nil?
        return false if _discount.to_s.size > MAX_LENGTH_FOR_DISCOUNT
      end

      unless (_promotion_code = @promotion_code).nil?
        return false if _promotion_code.to_s.size > MAX_LENGTH_FOR_PROMOTION_CODE
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] coupon Object to be assigned
    def coupon=(coupon : String?)
      if coupon.nil?
        return @coupon = nil
      end
      _coupon = coupon.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("coupon", _coupon.to_s.size, MAX_LENGTH_FOR_COUPON)
      @coupon = _coupon
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] discount Object to be assigned
    def discount=(discount : String?)
      if discount.nil?
        return @discount = nil
      end
      _discount = discount.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("discount", _discount.to_s.size, MAX_LENGTH_FOR_DISCOUNT)
      @discount = _discount
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] promotion_code Object to be assigned
    def promotion_code=(promotion_code : String?)
      if promotion_code.nil?
        return @promotion_code = nil
      end
      _promotion_code = promotion_code.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("promotion_code", _promotion_code.to_s.size, MAX_LENGTH_FOR_PROMOTION_CODE)
      @promotion_code = _promotion_code
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@coupon, @discount, @promotion_code)
  end
end
