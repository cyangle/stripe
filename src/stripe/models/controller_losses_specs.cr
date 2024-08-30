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
  class ControllerLossesSpecs
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # A value indicating who is liable when this account can't pay back negative balances resulting from payments. Defaults to `stripe`.
    @[JSON::Field(key: "payments", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter payments : String? = nil
    ERROR_MESSAGE_FOR_PAYMENTS = "invalid value for \"payments\", must be one of [application, stripe]."
    VALID_VALUES_FOR_PAYMENTS  = String.static_array("application", "stripe")

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @payments : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_payments = @payments).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_PAYMENTS) unless OpenApi::EnumValidator.valid?(_payments, VALID_VALUES_FOR_PAYMENTS)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_payments = @payments).nil?
        return false unless OpenApi::EnumValidator.valid?(_payments, VALID_VALUES_FOR_PAYMENTS)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payments Object to be assigned
    def payments=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("payments", new_value, VALID_VALUES_FOR_PAYMENTS)
      end

      @payments = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@payments)
  end
end
