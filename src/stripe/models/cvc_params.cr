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
  class CvcParams
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The CVC value, in string form.
    @[JSON::Field(key: "cvc", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter cvc : String? = nil
    MAX_LENGTH_FOR_CVC = 5000

    # End of Required Properties

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

      unless (_cvc = @cvc).nil?
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
      unless (_cvc = @cvc).nil?
        return false if _cvc.to_s.size > MAX_LENGTH_FOR_CVC
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cvc Object to be assigned
    def cvc=(new_value : String?)
      raise ArgumentError.new("\"cvc\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("cvc", new_value.to_s.size, MAX_LENGTH_FOR_CVC)
      end

      @cvc = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@cvc)
  end
end
