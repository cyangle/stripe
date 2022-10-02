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
  class Param8
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    @[JSON::Field(key: "iban", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter iban : String? = nil
    MAX_LENGTH_FOR_IBAN = 5000

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @iban : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"iban\" is required and cannot be null") if @iban.nil?

      if _iban = @iban
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("iban", _iban.to_s.size, MAX_LENGTH_FOR_IBAN)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @iban.nil?
      if _iban = @iban
        return false if _iban.to_s.size > MAX_LENGTH_FOR_IBAN
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] iban Object to be assigned
    def iban=(iban : String?)
      if iban.nil?
        raise ArgumentError.new("\"iban\" is required and cannot be null")
      end
      _iban = iban.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("iban", _iban.to_s.size, MAX_LENGTH_FOR_IBAN)
      @iban = _iban
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@iban)
  end
end
