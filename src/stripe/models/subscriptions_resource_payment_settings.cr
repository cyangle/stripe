#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./subscriptions_resource_payment_method_options"

module Stripe
  #
  class SubscriptionsResourcePaymentSettings
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "payment_method_options", type: Stripe::SubscriptionsResourcePaymentMethodOptions?, default: nil, required: true, nullable: true, emit_null: true)]
    getter payment_method_options : Stripe::SubscriptionsResourcePaymentMethodOptions? = nil

    # The list of payment method types to provide to every invoice created by the subscription. If not set, Stripe attempts to automatically determine the types to use by looking at the invoice’s default payment method, the subscription’s default payment method, the customer’s default payment method, and your [invoice template settings](https://dashboard.stripe.com/settings/billing/invoice).
    @[JSON::Field(key: "payment_method_types", type: Array(String)?, default: nil, required: true, nullable: true, emit_null: true)]
    getter payment_method_types : Array(String)? = nil
    ERROR_MESSAGE_FOR_PAYMENT_METHOD_TYPES = "invalid value for \"payment_method_types\", must be one of [ach_credit_transfer, ach_debit, acss_debit, amazon_pay, au_becs_debit, bacs_debit, bancontact, boleto, card, cashapp, customer_balance, eps, fpx, giropay, grabpay, ideal, konbini, link, multibanco, p24, paynow, paypal, promptpay, revolut_pay, sepa_credit_transfer, sepa_debit, sofort, swish, us_bank_account, wechat_pay]."
    VALID_VALUES_FOR_PAYMENT_METHOD_TYPES  = String.static_array("ach_credit_transfer", "ach_debit", "acss_debit", "amazon_pay", "au_becs_debit", "bacs_debit", "bancontact", "boleto", "card", "cashapp", "customer_balance", "eps", "fpx", "giropay", "grabpay", "ideal", "konbini", "link", "multibanco", "p24", "paynow", "paypal", "promptpay", "revolut_pay", "sepa_credit_transfer", "sepa_debit", "sofort", "swish", "us_bank_account", "wechat_pay")

    # Configure whether Stripe updates `subscription.default_payment_method` when payment succeeds. Defaults to `off`.
    @[JSON::Field(key: "save_default_payment_method", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter save_default_payment_method : String? = nil
    ERROR_MESSAGE_FOR_SAVE_DEFAULT_PAYMENT_METHOD = "invalid value for \"save_default_payment_method\", must be one of [off, on_subscription]."
    VALID_VALUES_FOR_SAVE_DEFAULT_PAYMENT_METHOD  = String.static_array("off", "on_subscription")

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @payment_method_options : Stripe::SubscriptionsResourcePaymentMethodOptions? = nil,
      @payment_method_types : Array(String)? = nil,
      @save_default_payment_method : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_payment_method_options = @payment_method_options).nil?
        invalid_properties.concat(_payment_method_options.list_invalid_properties_for("payment_method_options")) if _payment_method_options.is_a?(OpenApi::Validatable)
      end
      unless (_payment_method_types = @payment_method_types).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_PAYMENT_METHOD_TYPES) unless OpenApi::EnumValidator.valid?(_payment_method_types, VALID_VALUES_FOR_PAYMENT_METHOD_TYPES)
      end
      unless (_save_default_payment_method = @save_default_payment_method).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_SAVE_DEFAULT_PAYMENT_METHOD) unless OpenApi::EnumValidator.valid?(_save_default_payment_method, VALID_VALUES_FOR_SAVE_DEFAULT_PAYMENT_METHOD)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_payment_method_options = @payment_method_options).nil?
        return false if _payment_method_options.is_a?(OpenApi::Validatable) && !_payment_method_options.valid?
      end

      unless (_payment_method_types = @payment_method_types).nil?
        return false unless OpenApi::EnumValidator.valid?(_payment_method_types, VALID_VALUES_FOR_PAYMENT_METHOD_TYPES)
      end

      unless (_save_default_payment_method = @save_default_payment_method).nil?
        return false unless OpenApi::EnumValidator.valid?(_save_default_payment_method, VALID_VALUES_FOR_SAVE_DEFAULT_PAYMENT_METHOD)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_method_options Object to be assigned
    def payment_method_options=(new_value : Stripe::SubscriptionsResourcePaymentMethodOptions?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @payment_method_options = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_method_types Object to be assigned
    def payment_method_types=(new_value : Array(String)?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("payment_method_types", new_value, VALID_VALUES_FOR_PAYMENT_METHOD_TYPES)
      end

      @payment_method_types = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] save_default_payment_method Object to be assigned
    def save_default_payment_method=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("save_default_payment_method", new_value, VALID_VALUES_FOR_SAVE_DEFAULT_PAYMENT_METHOD)
      end

      @save_default_payment_method = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@payment_method_options, @payment_method_types, @save_default_payment_method)
  end
end
