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
  class SetupIntentPaymentMethodOptionsLink
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # [Deprecated] This is a legacy parameter that no longer has any function.
    @[JSON::Field(key: "persistent_token", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter persistent_token : String? = nil
    MAX_LENGTH_FOR_PERSISTENT_TOKEN = 5000

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @persistent_token : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_persistent_token = @persistent_token).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("persistent_token", _persistent_token.to_s.size, MAX_LENGTH_FOR_PERSISTENT_TOKEN)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_persistent_token = @persistent_token).nil?
        return false if _persistent_token.to_s.size > MAX_LENGTH_FOR_PERSISTENT_TOKEN
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] persistent_token Object to be assigned
    def persistent_token=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("persistent_token", new_value.to_s.size, MAX_LENGTH_FOR_PERSISTENT_TOKEN)
      end

      @persistent_token = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@persistent_token)
  end
end
