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
  #
  class SetupIntentTypeSpecificPaymentMethodOptionsClient
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    # Bank account verification method.
    @[JSON::Field(key: "verification_method", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter verification_method : String? = nil

    ENUM_VALIDATOR_FOR_VERIFICATION_METHOD = EnumValidator.new("verification_method", "String", ["automatic", "instant", "microdeposits"])

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @verification_method : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_VERIFICATION_METHOD.error_message) unless ENUM_VALIDATOR_FOR_VERIFICATION_METHOD.valid?(@verification_method)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false unless ENUM_VALIDATOR_FOR_VERIFICATION_METHOD.valid?(@verification_method)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] verification_method Object to be assigned
    def verification_method=(verification_method : String?)
      if verification_method.nil?
        return @verification_method = nil
      end
      _verification_method = verification_method.not_nil!
      ENUM_VALIDATOR_FOR_VERIFICATION_METHOD.valid!(_verification_method)
      @verification_method = _verification_method
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@verification_method)
  end
end
