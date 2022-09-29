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
  class PaymentIntentPaymentMethodOptionsParam5
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "code", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter code : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @code : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      if _code = @code
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("code", _code.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _code = @code
        return false if _code.to_s.size > 5000
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] code Object to be assigned
    def code=(code : String?)
      if code.nil?
        return @code = nil
      end
      _code = code.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("code", _code.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @code = _code
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@code)
  end
end
