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
  class PaymentMethodOptionsKlarna
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # Controls when the funds will be captured from the customer's account.
    @[JSON::Field(key: "capture_method", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter capture_method : String? = nil
    ERROR_MESSAGE_FOR_CAPTURE_METHOD = "invalid value for \"capture_method\", must be one of [manual]."
    VALID_VALUES_FOR_CAPTURE_METHOD  = String.static_array("manual")

    # Preferred locale of the Klarna checkout page that the customer is redirected to.
    @[JSON::Field(key: "preferred_locale", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: preferred_locale.nil? && !preferred_locale_present?)]
    getter preferred_locale : String? = nil
    MAX_LENGTH_FOR_PREFERRED_LOCALE = 5000

    @[JSON::Field(ignore: true)]
    property? preferred_locale_present : Bool = false

    # Indicates that you intend to make future payments with this PaymentIntent's payment method.  Providing this parameter will [attach the payment method](https://stripe.com/docs/payments/save-during-payment) to the PaymentIntent's Customer, if present, after the PaymentIntent is confirmed and any required actions from the user are complete. If no Customer was provided, the payment method can still be [attached](https://stripe.com/docs/api/payment_methods/attach) to a Customer after the transaction completes.  When processing card payments, Stripe also uses `setup_future_usage` to dynamically optimize your payment flow and comply with regional legislation and network rules, such as [SCA](https://stripe.com/docs/strong-customer-authentication).
    @[JSON::Field(key: "setup_future_usage", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter setup_future_usage : String? = nil
    ERROR_MESSAGE_FOR_SETUP_FUTURE_USAGE = "invalid value for \"setup_future_usage\", must be one of [none]."
    VALID_VALUES_FOR_SETUP_FUTURE_USAGE  = String.static_array("none")

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
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_capture_method = @capture_method).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_CAPTURE_METHOD) unless OpenApi::EnumValidator.valid?(_capture_method, VALID_VALUES_FOR_CAPTURE_METHOD)
      end
      unless (_preferred_locale = @preferred_locale).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("preferred_locale", _preferred_locale.to_s.size, MAX_LENGTH_FOR_PREFERRED_LOCALE)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_setup_future_usage = @setup_future_usage).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_SETUP_FUTURE_USAGE) unless OpenApi::EnumValidator.valid?(_setup_future_usage, VALID_VALUES_FOR_SETUP_FUTURE_USAGE)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_capture_method = @capture_method).nil?
        return false unless OpenApi::EnumValidator.valid?(_capture_method, VALID_VALUES_FOR_CAPTURE_METHOD)
      end

      unless (_preferred_locale = @preferred_locale).nil?
        return false if _preferred_locale.to_s.size > MAX_LENGTH_FOR_PREFERRED_LOCALE
      end

      unless (_setup_future_usage = @setup_future_usage).nil?
        return false unless OpenApi::EnumValidator.valid?(_setup_future_usage, VALID_VALUES_FOR_SETUP_FUTURE_USAGE)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] capture_method Object to be assigned
    def capture_method=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("capture_method", new_value, VALID_VALUES_FOR_CAPTURE_METHOD)
      end

      @capture_method = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] preferred_locale Object to be assigned
    def preferred_locale=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("preferred_locale", new_value.to_s.size, MAX_LENGTH_FOR_PREFERRED_LOCALE)
      end

      @preferred_locale = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] setup_future_usage Object to be assigned
    def setup_future_usage=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("setup_future_usage", new_value, VALID_VALUES_FOR_SETUP_FUTURE_USAGE)
      end

      @setup_future_usage = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@capture_method, @preferred_locale, @preferred_locale_present, @setup_future_usage)
  end
end
