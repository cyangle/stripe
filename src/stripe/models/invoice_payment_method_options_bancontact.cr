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
  class InvoicePaymentMethodOptionsBancontact
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Preferred language of the Bancontact authorization page that the customer is redirected to.
    @[JSON::Field(key: "preferred_language", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter preferred_language : String? = nil
    ERROR_MESSAGE_FOR_PREFERRED_LANGUAGE = "invalid value for \"preferred_language\", must be one of [de, en, fr, nl]."
    VALID_VALUES_FOR_PREFERRED_LANGUAGE  = String.static_array("de", "en", "fr", "nl")

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @preferred_language : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"preferred_language\" is required and cannot be null") if @preferred_language.nil?

      unless (_preferred_language = @preferred_language).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_PREFERRED_LANGUAGE) unless OpenApi::EnumValidator.valid?(_preferred_language, VALID_VALUES_FOR_PREFERRED_LANGUAGE)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @preferred_language.nil?
      unless (_preferred_language = @preferred_language).nil?
        return false unless OpenApi::EnumValidator.valid?(_preferred_language, VALID_VALUES_FOR_PREFERRED_LANGUAGE)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] preferred_language Object to be assigned
    def preferred_language=(new_value : String?)
      raise ArgumentError.new("\"preferred_language\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::EnumValidator.validate("preferred_language", new_value, VALID_VALUES_FOR_PREFERRED_LANGUAGE)
      end

      @preferred_language = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@preferred_language)
  end
end
