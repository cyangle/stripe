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
  #
  class PaymentMethodOptionsBancontact
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

    # Optional Properties

    # Indicates that you intend to make future payments with this PaymentIntent's payment method.  Providing this parameter will [attach the payment method](https://stripe.com/docs/payments/save-during-payment) to the PaymentIntent's Customer, if present, after the PaymentIntent is confirmed and any required actions from the user are complete. If no Customer was provided, the payment method can still be [attached](https://stripe.com/docs/api/payment_methods/attach) to a Customer after the transaction completes.  When processing card payments, Stripe also uses `setup_future_usage` to dynamically optimize your payment flow and comply with regional legislation and network rules, such as [SCA](https://stripe.com/docs/strong-customer-authentication).
    @[JSON::Field(key: "setup_future_usage", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter setup_future_usage : String? = nil
    ERROR_MESSAGE_FOR_SETUP_FUTURE_USAGE = "invalid value for \"setup_future_usage\", must be one of [none, off_session]."
    VALID_VALUES_FOR_SETUP_FUTURE_USAGE  = String.static_array("none", "off_session")

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @preferred_language : String? = nil,
      # Optional properties
      @setup_future_usage : String? = nil
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
      unless (_setup_future_usage = @setup_future_usage).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_SETUP_FUTURE_USAGE) unless OpenApi::EnumValidator.valid?(_setup_future_usage, VALID_VALUES_FOR_SETUP_FUTURE_USAGE)
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

      unless (_setup_future_usage = @setup_future_usage).nil?
        return false unless OpenApi::EnumValidator.valid?(_setup_future_usage, VALID_VALUES_FOR_SETUP_FUTURE_USAGE)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] preferred_language Object to be assigned
    def preferred_language=(preferred_language : String?)
      if preferred_language.nil?
        raise ArgumentError.new("\"preferred_language\" is required and cannot be null")
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
