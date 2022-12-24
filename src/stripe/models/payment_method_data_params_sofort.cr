#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-11-15
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module Stripe
  class PaymentMethodDataParamsSofort
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "country", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter country : String? = nil
    ERROR_MESSAGE_FOR_COUNTRY = "invalid value for \"country\", must be one of [AT, BE, DE, ES, IT, NL]."
    VALID_VALUES_FOR_COUNTRY  = String.static_array("AT", "BE", "DE", "ES", "IT", "NL")

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @country : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"country\" is required and cannot be null") if @country.nil?

      unless (_country = @country).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_COUNTRY) unless OpenApi::EnumValidator.valid?(_country, VALID_VALUES_FOR_COUNTRY)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @country.nil?
      unless (_country = @country).nil?
        return false unless OpenApi::EnumValidator.valid?(_country, VALID_VALUES_FOR_COUNTRY)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] country Object to be assigned
    def country=(new_value : String?)
      raise ArgumentError.new("\"country\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::EnumValidator.validate("country", new_value, VALID_VALUES_FOR_COUNTRY)
      end

      @country = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@country)
  end
end
