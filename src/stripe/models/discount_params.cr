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
  class DiscountParams
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "coupon", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter coupon : String? = nil

    @[JSON::Field(key: "promotion_code", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter promotion_code : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @coupon : String? = nil,
      @promotion_code : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      if _coupon = @coupon
        if _coupon.to_s.size > 5000
          invalid_properties.push("invalid value for \"coupon\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _promotion_code = @promotion_code
        if _promotion_code.to_s.size > 5000
          invalid_properties.push("invalid value for \"promotion_code\", the character length must be smaller than or equal to 5000.")
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _coupon = @coupon
        return false if _coupon.to_s.size > 5000
      end
      if _promotion_code = @promotion_code
        return false if _promotion_code.to_s.size > 5000
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
      if _coupon.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"coupon\", the character length must be smaller than or equal to 5000.")
      end

      @coupon = _coupon
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] promotion_code Object to be assigned
    def promotion_code=(promotion_code : String?)
      if promotion_code.nil?
        return @promotion_code = nil
      end
      _promotion_code = promotion_code.not_nil!
      if _promotion_code.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"promotion_code\", the character length must be smaller than or equal to 5000.")
      end

      @promotion_code = _promotion_code
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@coupon, @promotion_code)
  end
end
