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
  class InteracPresent
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # Card Number
    @[JSON::Field(key: "number", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter number : String? = nil
    MAX_LENGTH_FOR_NUMBER = 5000

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @number : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_number = @number).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("number", _number.to_s.size, MAX_LENGTH_FOR_NUMBER)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_number = @number).nil?
        return false if _number.to_s.size > MAX_LENGTH_FOR_NUMBER
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] number Object to be assigned
    def number=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("number", new_value.to_s.size, MAX_LENGTH_FOR_NUMBER)
      end

      @number = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@number)
  end
end
