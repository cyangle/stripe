#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-08-27
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module Stripe
  @[JSON::Serializable::Options(emit_nulls: true)]
  class PaymentMethodOptionsParam6
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    @[JSON::Field(key: "capture_method", type: String?, presence: true, ignore_serialize: capture_method.nil? && !capture_method_present?)]
    getter capture_method : String?

    @[JSON::Field(ignore: true)]
    property? capture_method_present : Bool = false

    ENUM_VALIDATOR_FOR_CAPTURE_METHOD = EnumValidator.new("capture_method", "String", ["", "manual"])

    @[JSON::Field(key: "preferred_locale", type: String?, presence: true, ignore_serialize: preferred_locale.nil? && !preferred_locale_present?)]
    getter preferred_locale : String?

    @[JSON::Field(ignore: true)]
    property? preferred_locale_present : Bool = false

    ENUM_VALIDATOR_FOR_PREFERRED_LOCALE = EnumValidator.new("preferred_locale", "String", ["da-DK", "de-AT", "de-DE", "en-AT", "en-AU", "en-BE", "en-DE", "en-DK", "en-ES", "en-FI", "en-FR", "en-GB", "en-IE", "en-IT", "en-NL", "en-NO", "en-NZ", "en-SE", "en-US", "es-ES", "es-US", "fi-FI", "fr-BE", "fr-FR", "it-IT", "nb-NO", "nl-BE", "nl-NL", "sv-FI", "sv-SE"])

    @[JSON::Field(key: "setup_future_usage", type: String?, presence: true, ignore_serialize: setup_future_usage.nil? && !setup_future_usage_present?)]
    getter setup_future_usage : String?

    @[JSON::Field(ignore: true)]
    property? setup_future_usage_present : Bool = false

    ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE = EnumValidator.new("setup_future_usage", "String", ["none"])

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @capture_method : String? = nil,
      @preferred_locale : String? = nil,
      @setup_future_usage : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_CAPTURE_METHOD.error_message) unless ENUM_VALIDATOR_FOR_CAPTURE_METHOD.valid?(@capture_method)

      invalid_properties.push(ENUM_VALIDATOR_FOR_PREFERRED_LOCALE.error_message) unless ENUM_VALIDATOR_FOR_PREFERRED_LOCALE.valid?(@preferred_locale)

      invalid_properties.push(ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE.error_message) unless ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE.valid?(@setup_future_usage)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR_CAPTURE_METHOD.valid?(@capture_method)
      return false unless ENUM_VALIDATOR_FOR_PREFERRED_LOCALE.valid?(@preferred_locale)
      return false unless ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE.valid?(@setup_future_usage)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] capture_method Object to be assigned
    def capture_method=(capture_method : String?)
      ENUM_VALIDATOR_FOR_CAPTURE_METHOD.valid!(capture_method)
      @capture_method = capture_method
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] preferred_locale Object to be assigned
    def preferred_locale=(preferred_locale : String?)
      ENUM_VALIDATOR_FOR_PREFERRED_LOCALE.valid!(preferred_locale)
      @preferred_locale = preferred_locale
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] setup_future_usage Object to be assigned
    def setup_future_usage=(setup_future_usage : String?)
      ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE.valid!(setup_future_usage)
      @setup_future_usage = setup_future_usage
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@capture_method, @capture_method_present, @preferred_locale, @preferred_locale_present, @setup_future_usage, @setup_future_usage_present)
  end
end
