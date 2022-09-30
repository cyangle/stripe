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
  class PaymentMethodOptionsKlarna
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    # Controls when the funds will be captured from the customer's account.
    @[JSON::Field(key: "capture_method", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter capture_method : String? = nil

    VALID_VALUES_FOR_CAPTURE_METHOD = StaticArray["manual"]

    # Preferred locale of the Klarna checkout page that the customer is redirected to.
    @[JSON::Field(key: "preferred_locale", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: preferred_locale.nil? && !preferred_locale_present?)]
    getter preferred_locale : String? = nil

    @[JSON::Field(ignore: true)]
    property? preferred_locale_present : Bool = false

    # Indicates that you intend to make future payments with this PaymentIntent's payment method.  Providing this parameter will [attach the payment method](https://stripe.com/docs/payments/save-during-payment) to the PaymentIntent's Customer, if present, after the PaymentIntent is confirmed and any required actions from the user are complete. If no Customer was provided, the payment method can still be [attached](https://stripe.com/docs/api/payment_methods/attach) to a Customer after the transaction completes.  When processing card payments, Stripe also uses `setup_future_usage` to dynamically optimize your payment flow and comply with regional legislation and network rules, such as [SCA](https://stripe.com/docs/strong-customer-authentication).
    @[JSON::Field(key: "setup_future_usage", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter setup_future_usage : String? = nil

    VALID_VALUES_FOR_SETUP_FUTURE_USAGE = StaticArray["none"]

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

      if _capture_method = @capture_method
        invalid_properties.push(OpenApi::EnumValidator.error_message("capture_method", VALID_VALUES_FOR_CAPTURE_METHOD)) unless OpenApi::EnumValidator.valid?(_capture_method, VALID_VALUES_FOR_CAPTURE_METHOD)
      end
      if _preferred_locale = @preferred_locale
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("preferred_locale", _preferred_locale.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _setup_future_usage = @setup_future_usage
        invalid_properties.push(OpenApi::EnumValidator.error_message("setup_future_usage", VALID_VALUES_FOR_SETUP_FUTURE_USAGE)) unless OpenApi::EnumValidator.valid?(_setup_future_usage, VALID_VALUES_FOR_SETUP_FUTURE_USAGE)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _capture_method = @capture_method
        return false unless OpenApi::EnumValidator.valid?(_capture_method, VALID_VALUES_FOR_CAPTURE_METHOD)
      end

      if _preferred_locale = @preferred_locale
        return false if _preferred_locale.to_s.size > 5000
      end

      if _setup_future_usage = @setup_future_usage
        return false unless OpenApi::EnumValidator.valid?(_setup_future_usage, VALID_VALUES_FOR_SETUP_FUTURE_USAGE)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] capture_method Object to be assigned
    def capture_method=(capture_method : String?)
      if capture_method.nil?
        return @capture_method = nil
      end
      _capture_method = capture_method.not_nil!
      OpenApi::EnumValidator.validate("capture_method", _capture_method, VALID_VALUES_FOR_CAPTURE_METHOD)
      @capture_method = _capture_method
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] preferred_locale Object to be assigned
    def preferred_locale=(preferred_locale : String?)
      if preferred_locale.nil?
        return @preferred_locale = nil
      end
      _preferred_locale = preferred_locale.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("preferred_locale", _preferred_locale.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @preferred_locale = _preferred_locale
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
    def_equals_and_hash(@capture_method, @preferred_locale, @preferred_locale_present, @setup_future_usage)
  end
end
