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
  class PaymentMethodOptionsParam12
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "preferred_language", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter preferred_language : String? = nil
    ERROR_MESSAGE_FOR_PREFERRED_LANGUAGE = "invalid value for \"preferred_language\", must be one of [de, en, fr, nl]."
    VALID_VALUES_FOR_PREFERRED_LANGUAGE  = StaticArray["de", "en", "fr", "nl"]

    @[JSON::Field(key: "setup_future_usage", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter setup_future_usage : String? = nil
    ERROR_MESSAGE_FOR_SETUP_FUTURE_USAGE = "invalid value for \"setup_future_usage\", must be one of [, none, off_session]."
    VALID_VALUES_FOR_SETUP_FUTURE_USAGE  = StaticArray["", "none", "off_session"]

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @preferred_language : String? = nil,
      @setup_future_usage : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      if _preferred_language = @preferred_language
        invalid_properties.push(ERROR_MESSAGE_FOR_PREFERRED_LANGUAGE) unless OpenApi::EnumValidator.valid?(_preferred_language, VALID_VALUES_FOR_PREFERRED_LANGUAGE)
      end
      if _setup_future_usage = @setup_future_usage
        invalid_properties.push(ERROR_MESSAGE_FOR_SETUP_FUTURE_USAGE) unless OpenApi::EnumValidator.valid?(_setup_future_usage, VALID_VALUES_FOR_SETUP_FUTURE_USAGE)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _preferred_language = @preferred_language
        return false unless OpenApi::EnumValidator.valid?(_preferred_language, VALID_VALUES_FOR_PREFERRED_LANGUAGE)
      end

      if _setup_future_usage = @setup_future_usage
        return false unless OpenApi::EnumValidator.valid?(_setup_future_usage, VALID_VALUES_FOR_SETUP_FUTURE_USAGE)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] preferred_language Object to be assigned
    def preferred_language=(preferred_language : String?)
      if preferred_language.nil?
        return @preferred_language = nil
      end
      _preferred_language = preferred_language.not_nil!
      OpenApi::EnumValidator.validate("preferred_language", _preferred_language, VALID_VALUES_FOR_PREFERRED_LANGUAGE)
      @preferred_language = _preferred_language
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] setup_future_usage Object to be assigned
    def setup_future_usage=(setup_future_usage : String?)
      if setup_future_usage.nil?
        return @setup_future_usage = nil
      end
      _setup_future_usage = setup_future_usage.not_nil!
      OpenApi::EnumValidator.validate("setup_future_usage", _setup_future_usage, VALID_VALUES_FOR_SETUP_FUTURE_USAGE)
      @setup_future_usage = _setup_future_usage
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@preferred_language, @setup_future_usage)
  end
end
