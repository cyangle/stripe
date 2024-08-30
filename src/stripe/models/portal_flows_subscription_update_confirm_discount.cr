#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

module Stripe
  #
  class PortalFlowsSubscriptionUpdateConfirmDiscount
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The ID of the coupon to apply to this subscription update.
    @[JSON::Field(key: "coupon", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter coupon : String? = nil
    MAX_LENGTH_FOR_COUPON = 5000

    # The ID of a promotion code to apply to this subscription update.
    @[JSON::Field(key: "promotion_code", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter promotion_code : String? = nil
    MAX_LENGTH_FOR_PROMOTION_CODE = 5000

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @coupon : String? = nil,
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

      unless (_promotion_code = @promotion_code).nil?
        return false if _promotion_code.to_s.size > MAX_LENGTH_FOR_PROMOTION_CODE
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] coupon Object to be assigned
    def coupon=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("coupon", new_value.to_s.size, MAX_LENGTH_FOR_COUPON)
      end

      @coupon = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] promotion_code Object to be assigned
    def promotion_code=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("promotion_code", new_value.to_s.size, MAX_LENGTH_FOR_PROMOTION_CODE)
      end

      @promotion_code = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@coupon, @promotion_code)
  end
end