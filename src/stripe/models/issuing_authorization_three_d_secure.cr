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
  class IssuingAuthorizationThreeDSecure
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The outcome of the 3D Secure authentication request.
    @[JSON::Field(key: "result", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter result : String? = nil
    ERROR_MESSAGE_FOR_RESULT = "invalid value for \"result\", must be one of [attempt_acknowledged, authenticated, failed, required]."
    VALID_VALUES_FOR_RESULT  = String.static_array("attempt_acknowledged", "authenticated", "failed", "required")

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @result : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"result\" is required and cannot be null") if @result.nil?

      unless (_result = @result).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_RESULT) unless OpenApi::EnumValidator.valid?(_result, VALID_VALUES_FOR_RESULT)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @result.nil?
      unless (_result = @result).nil?
        return false unless OpenApi::EnumValidator.valid?(_result, VALID_VALUES_FOR_RESULT)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] result Object to be assigned
    def result=(new_value : String?)
      raise ArgumentError.new("\"result\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::EnumValidator.validate("result", new_value, VALID_VALUES_FOR_RESULT)
      end

      @result = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@result)
  end
end