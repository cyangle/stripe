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
  # The updated CVC value this token will represent.
  class CvcParams
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    @[JSON::Field(key: "cvc", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter cvc : String? = nil
    MAX_LENGTH_FOR_CVC = 5000

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @cvc : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"cvc\" is required and cannot be null") if @cvc.nil?

      if _cvc = @cvc
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("cvc", _cvc.to_s.size, MAX_LENGTH_FOR_CVC)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @cvc.nil?
      if _cvc = @cvc
        return false if _cvc.to_s.size > MAX_LENGTH_FOR_CVC
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cvc Object to be assigned
    def cvc=(cvc : String?)
      if cvc.nil?
        raise ArgumentError.new("\"cvc\" is required and cannot be null")
      end
      _cvc = cvc.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("cvc", _cvc.to_s.size, MAX_LENGTH_FOR_CVC)
      @cvc = _cvc
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@cvc)
  end
end
