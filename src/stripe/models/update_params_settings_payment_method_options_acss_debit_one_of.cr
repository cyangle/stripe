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
  class UpdateParamsSettingsPaymentMethodOptionsAcssDebitOneOf
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "mandate_options", type: Stripe::PaymentIntentPaymentMethodOptionsMandateOptionsParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter mandate_options : Stripe::PaymentIntentPaymentMethodOptionsMandateOptionsParam? = nil

    @[JSON::Field(key: "setup_future_usage", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter setup_future_usage : String? = nil
    ERROR_MESSAGE_FOR_SETUP_FUTURE_USAGE = "invalid value for \"setup_future_usage\", must be one of [, none, off_session, on_session]."
    VALID_VALUES_FOR_SETUP_FUTURE_USAGE  = String.static_array("", "none", "off_session", "on_session")

    @[JSON::Field(key: "verification_method", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter verification_method : String? = nil
    ERROR_MESSAGE_FOR_VERIFICATION_METHOD = "invalid value for \"verification_method\", must be one of [automatic, instant, microdeposits]."
    VALID_VALUES_FOR_VERIFICATION_METHOD  = String.static_array("automatic", "instant", "microdeposits")

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @mandate_options : Stripe::PaymentIntentPaymentMethodOptionsMandateOptionsParam? = nil,
      @setup_future_usage : String? = nil,
      @verification_method : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_mandate_options = @mandate_options).nil?
        invalid_properties.concat(_mandate_options.list_invalid_properties_for("mandate_options")) if _mandate_options.is_a?(OpenApi::Validatable)
      end
      unless (_setup_future_usage = @setup_future_usage).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_SETUP_FUTURE_USAGE) unless OpenApi::EnumValidator.valid?(_setup_future_usage, VALID_VALUES_FOR_SETUP_FUTURE_USAGE)
      end
      unless (_verification_method = @verification_method).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_VERIFICATION_METHOD) unless OpenApi::EnumValidator.valid?(_verification_method, VALID_VALUES_FOR_VERIFICATION_METHOD)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_mandate_options = @mandate_options).nil?
        return false if _mandate_options.is_a?(OpenApi::Validatable) && !_mandate_options.valid?
      end

      unless (_setup_future_usage = @setup_future_usage).nil?
        return false unless OpenApi::EnumValidator.valid?(_setup_future_usage, VALID_VALUES_FOR_SETUP_FUTURE_USAGE)
      end

      unless (_verification_method = @verification_method).nil?
        return false unless OpenApi::EnumValidator.valid?(_verification_method, VALID_VALUES_FOR_VERIFICATION_METHOD)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] mandate_options Object to be assigned
    def mandate_options=(mandate_options : Stripe::PaymentIntentPaymentMethodOptionsMandateOptionsParam?)
      if mandate_options.nil?
        return @mandate_options = nil
      end
      _mandate_options = mandate_options.not_nil!
      _mandate_options.validate if _mandate_options.is_a?(OpenApi::Validatable)
      @mandate_options = _mandate_options
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

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] verification_method Object to be assigned
    def verification_method=(verification_method : String?)
      if verification_method.nil?
        return @verification_method = nil
      end
      _verification_method = verification_method.not_nil!
      OpenApi::EnumValidator.validate("verification_method", _verification_method, VALID_VALUES_FOR_VERIFICATION_METHOD)
      @verification_method = _verification_method
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@mandate_options, @setup_future_usage, @verification_method)
  end
end