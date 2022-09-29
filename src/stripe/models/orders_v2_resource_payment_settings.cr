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
  class OrdersV2ResourcePaymentSettings
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    # The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account.
    @[JSON::Field(key: "application_fee_amount", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: application_fee_amount.nil? && !application_fee_amount_present?)]
    getter application_fee_amount : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? application_fee_amount_present : Bool = false

    @[JSON::Field(key: "automatic_payment_methods", type: Stripe::OrdersV2ResourcePaymentSettingsAutomaticPaymentMethods?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: automatic_payment_methods.nil? && !automatic_payment_methods_present?)]
    getter automatic_payment_methods : Stripe::OrdersV2ResourcePaymentSettingsAutomaticPaymentMethods? = nil

    @[JSON::Field(ignore: true)]
    property? automatic_payment_methods_present : Bool = false

    @[JSON::Field(key: "payment_method_options", type: Stripe::OrdersV2ResourcePaymentSettingsPaymentMethodOptions?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: payment_method_options.nil? && !payment_method_options_present?)]
    getter payment_method_options : Stripe::OrdersV2ResourcePaymentSettingsPaymentMethodOptions? = nil

    @[JSON::Field(ignore: true)]
    property? payment_method_options_present : Bool = false

    # The list of [payment method types](https://stripe.com/docs/payments/payment-methods/overview) to provide to the order's PaymentIntent. Do not include this attribute if you prefer to manage your payment methods from the [Stripe Dashboard](https://dashboard.stripe.com/settings/payment_methods).
    @[JSON::Field(key: "payment_method_types", type: Array(String)?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: payment_method_types.nil? && !payment_method_types_present?)]
    getter payment_method_types : Array(String)? = nil

    @[JSON::Field(ignore: true)]
    property? payment_method_types_present : Bool = false

    ENUM_VALIDATOR_FOR_PAYMENT_METHOD_TYPES = OpenApi::EnumValidator.new("payment_method_types", "Array(String)", ["acss_debit", "afterpay_clearpay", "alipay", "au_becs_debit", "bacs_debit", "bancontact", "card", "customer_balance", "eps", "fpx", "giropay", "grabpay", "ideal", "klarna", "link", "oxxo", "p24", "sepa_debit", "sofort", "wechat_pay"])

    # The URL to redirect the customer to after they authenticate their payment.
    @[JSON::Field(key: "return_url", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: return_url.nil? && !return_url_present?)]
    getter return_url : String? = nil

    @[JSON::Field(ignore: true)]
    property? return_url_present : Bool = false

    # For non-card charges, you can use this value as the complete description that appears on your customers' statements. Must contain at least one letter, maximum 22 characters.
    @[JSON::Field(key: "statement_descriptor", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: statement_descriptor.nil? && !statement_descriptor_present?)]
    getter statement_descriptor : String? = nil

    @[JSON::Field(ignore: true)]
    property? statement_descriptor_present : Bool = false

    # Provides information about a card payment that customers see on their statements. Concatenated with the prefix (shortened descriptor) or statement descriptor that’s set on the account to form the complete statement descriptor. Maximum 22 characters for the concatenated descriptor.
    @[JSON::Field(key: "statement_descriptor_suffix", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: statement_descriptor_suffix.nil? && !statement_descriptor_suffix_present?)]
    getter statement_descriptor_suffix : String? = nil

    @[JSON::Field(ignore: true)]
    property? statement_descriptor_suffix_present : Bool = false

    @[JSON::Field(key: "transfer_data", type: Stripe::OrdersV2ResourcePaymentSettingsTransferData?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: transfer_data.nil? && !transfer_data_present?)]
    getter transfer_data : Stripe::OrdersV2ResourcePaymentSettingsTransferData? = nil

    @[JSON::Field(ignore: true)]
    property? transfer_data_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @application_fee_amount : Int64? = nil,
      @automatic_payment_methods : Stripe::OrdersV2ResourcePaymentSettingsAutomaticPaymentMethods? = nil,
      @payment_method_options : Stripe::OrdersV2ResourcePaymentSettingsPaymentMethodOptions? = nil,
      @payment_method_types : Array(String)? = nil,
      @return_url : String? = nil,
      @statement_descriptor : String? = nil,
      @statement_descriptor_suffix : String? = nil,
      @transfer_data : Stripe::OrdersV2ResourcePaymentSettingsTransferData? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      if _automatic_payment_methods = @automatic_payment_methods
        invalid_properties.concat(_automatic_payment_methods.list_invalid_properties_for("automatic_payment_methods")) if _automatic_payment_methods.is_a?(OpenApi::Validatable)
      end
      if _payment_method_options = @payment_method_options
        invalid_properties.concat(_payment_method_options.list_invalid_properties_for("payment_method_options")) if _payment_method_options.is_a?(OpenApi::Validatable)
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_PAYMENT_METHOD_TYPES.error_message) unless ENUM_VALIDATOR_FOR_PAYMENT_METHOD_TYPES.all_valid?(@payment_method_types)
      if _return_url = @return_url
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("return_url", _return_url.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _statement_descriptor = @statement_descriptor
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("statement_descriptor", _statement_descriptor.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _statement_descriptor_suffix = @statement_descriptor_suffix
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("statement_descriptor_suffix", _statement_descriptor_suffix.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _transfer_data = @transfer_data
        invalid_properties.concat(_transfer_data.list_invalid_properties_for("transfer_data")) if _transfer_data.is_a?(OpenApi::Validatable)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _automatic_payment_methods = @automatic_payment_methods
        return false if _automatic_payment_methods.is_a?(OpenApi::Validatable) && !_automatic_payment_methods.valid?
      end
      if _payment_method_options = @payment_method_options
        return false if _payment_method_options.is_a?(OpenApi::Validatable) && !_payment_method_options.valid?
      end
      return false unless ENUM_VALIDATOR_FOR_PAYMENT_METHOD_TYPES.all_valid?(@payment_method_types)
      if _return_url = @return_url
        return false if _return_url.to_s.size > 5000
      end
      if _statement_descriptor = @statement_descriptor
        return false if _statement_descriptor.to_s.size > 5000
      end
      if _statement_descriptor_suffix = @statement_descriptor_suffix
        return false if _statement_descriptor_suffix.to_s.size > 5000
      end
      if _transfer_data = @transfer_data
        return false if _transfer_data.is_a?(OpenApi::Validatable) && !_transfer_data.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] application_fee_amount Object to be assigned
    def application_fee_amount=(application_fee_amount : Int64?)
      if application_fee_amount.nil?
        return @application_fee_amount = nil
      end
      _application_fee_amount = application_fee_amount.not_nil!
      @application_fee_amount = _application_fee_amount
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] automatic_payment_methods Object to be assigned
    def automatic_payment_methods=(automatic_payment_methods : Stripe::OrdersV2ResourcePaymentSettingsAutomaticPaymentMethods?)
      if automatic_payment_methods.nil?
        return @automatic_payment_methods = nil
      end
      _automatic_payment_methods = automatic_payment_methods.not_nil!
      _automatic_payment_methods.validate if _automatic_payment_methods.is_a?(OpenApi::Validatable)
      @automatic_payment_methods = _automatic_payment_methods
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_method_options Object to be assigned
    def payment_method_options=(payment_method_options : Stripe::OrdersV2ResourcePaymentSettingsPaymentMethodOptions?)
      if payment_method_options.nil?
        return @payment_method_options = nil
      end
      _payment_method_options = payment_method_options.not_nil!
      _payment_method_options.validate if _payment_method_options.is_a?(OpenApi::Validatable)
      @payment_method_options = _payment_method_options
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_method_types Object to be assigned
    def payment_method_types=(payment_method_types : Array(String)?)
      if payment_method_types.nil?
        return @payment_method_types = nil
      end
      _payment_method_types = payment_method_types.not_nil!
      ENUM_VALIDATOR_FOR_PAYMENT_METHOD_TYPES.all_valid!(_payment_method_types)
      @payment_method_types = _payment_method_types
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] return_url Object to be assigned
    def return_url=(return_url : String?)
      if return_url.nil?
        return @return_url = nil
      end
      _return_url = return_url.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("return_url", _return_url.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @return_url = _return_url
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] statement_descriptor Object to be assigned
    def statement_descriptor=(statement_descriptor : String?)
      if statement_descriptor.nil?
        return @statement_descriptor = nil
      end
      _statement_descriptor = statement_descriptor.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("statement_descriptor", _statement_descriptor.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @statement_descriptor = _statement_descriptor
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] statement_descriptor_suffix Object to be assigned
    def statement_descriptor_suffix=(statement_descriptor_suffix : String?)
      if statement_descriptor_suffix.nil?
        return @statement_descriptor_suffix = nil
      end
      _statement_descriptor_suffix = statement_descriptor_suffix.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("statement_descriptor_suffix", _statement_descriptor_suffix.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @statement_descriptor_suffix = _statement_descriptor_suffix
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transfer_data Object to be assigned
    def transfer_data=(transfer_data : Stripe::OrdersV2ResourcePaymentSettingsTransferData?)
      if transfer_data.nil?
        return @transfer_data = nil
      end
      _transfer_data = transfer_data.not_nil!
      _transfer_data.validate if _transfer_data.is_a?(OpenApi::Validatable)
      @transfer_data = _transfer_data
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@application_fee_amount, @application_fee_amount_present, @automatic_payment_methods, @automatic_payment_methods_present, @payment_method_options, @payment_method_options_present, @payment_method_types, @payment_method_types_present, @return_url, @return_url_present, @statement_descriptor, @statement_descriptor_present, @statement_descriptor_suffix, @statement_descriptor_suffix_present, @transfer_data, @transfer_data_present)
  end
end
