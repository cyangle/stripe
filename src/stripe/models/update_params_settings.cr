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
  class UpdateParamsSettings
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "application_fee_amount", type: Stripe::UpdateParamsSettingsApplicationFeeAmount?, default: nil, required: false, nullable: false, emit_null: false)]
    getter application_fee_amount : Stripe::UpdateParamsSettingsApplicationFeeAmount? = nil

    @[JSON::Field(key: "payment_method_options", type: Stripe::UpdateParamsSettingsPaymentMethodOptions?, default: nil, required: false, nullable: false, emit_null: false)]
    getter payment_method_options : Stripe::UpdateParamsSettingsPaymentMethodOptions? = nil

    @[JSON::Field(key: "payment_method_types", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter payment_method_types : Array(String)? = nil
    ERROR_MESSAGE_FOR_PAYMENT_METHOD_TYPES = "invalid value for \"payment_method_types\", must be one of [acss_debit, afterpay_clearpay, alipay, au_becs_debit, bacs_debit, bancontact, card, customer_balance, eps, fpx, giropay, grabpay, ideal, klarna, link, oxxo, p24, sepa_debit, sofort, wechat_pay]."
    VALID_VALUES_FOR_PAYMENT_METHOD_TYPES  = String.static_array("acss_debit", "afterpay_clearpay", "alipay", "au_becs_debit", "bacs_debit", "bancontact", "card", "customer_balance", "eps", "fpx", "giropay", "grabpay", "ideal", "klarna", "link", "oxxo", "p24", "sepa_debit", "sofort", "wechat_pay")

    @[JSON::Field(key: "return_url", type: Stripe::BusinessProfileSpecsSupportUrl?, default: nil, required: false, nullable: false, emit_null: false)]
    getter return_url : Stripe::BusinessProfileSpecsSupportUrl? = nil

    @[JSON::Field(key: "statement_descriptor", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter statement_descriptor : String? = nil
    MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR = 22

    @[JSON::Field(key: "statement_descriptor_suffix", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter statement_descriptor_suffix : String? = nil
    MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR_SUFFIX = 22

    @[JSON::Field(key: "transfer_data", type: Stripe::UpdateParamsSettingsTransferData?, default: nil, required: false, nullable: false, emit_null: false)]
    getter transfer_data : Stripe::UpdateParamsSettingsTransferData? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @application_fee_amount : Stripe::UpdateParamsSettingsApplicationFeeAmount? = nil,
      @payment_method_options : Stripe::UpdateParamsSettingsPaymentMethodOptions? = nil,
      @payment_method_types : Array(String)? = nil,
      @return_url : Stripe::BusinessProfileSpecsSupportUrl? = nil,
      @statement_descriptor : String? = nil,
      @statement_descriptor_suffix : String? = nil,
      @transfer_data : Stripe::UpdateParamsSettingsTransferData? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_application_fee_amount = @application_fee_amount).nil?
        invalid_properties.concat(_application_fee_amount.list_invalid_properties_for("application_fee_amount")) if _application_fee_amount.is_a?(OpenApi::Validatable)
      end
      unless (_payment_method_options = @payment_method_options).nil?
        invalid_properties.concat(_payment_method_options.list_invalid_properties_for("payment_method_options")) if _payment_method_options.is_a?(OpenApi::Validatable)
      end
      unless (_payment_method_types = @payment_method_types).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_PAYMENT_METHOD_TYPES) unless OpenApi::EnumValidator.valid?(_payment_method_types, VALID_VALUES_FOR_PAYMENT_METHOD_TYPES)
      end
      unless (_return_url = @return_url).nil?
        invalid_properties.concat(_return_url.list_invalid_properties_for("return_url")) if _return_url.is_a?(OpenApi::Validatable)
      end
      unless (_statement_descriptor = @statement_descriptor).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("statement_descriptor", _statement_descriptor.to_s.size, MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_statement_descriptor_suffix = @statement_descriptor_suffix).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("statement_descriptor_suffix", _statement_descriptor_suffix.to_s.size, MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR_SUFFIX)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_transfer_data = @transfer_data).nil?
        invalid_properties.concat(_transfer_data.list_invalid_properties_for("transfer_data")) if _transfer_data.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_application_fee_amount = @application_fee_amount).nil?
        return false if _application_fee_amount.is_a?(OpenApi::Validatable) && !_application_fee_amount.valid?
      end

      unless (_payment_method_options = @payment_method_options).nil?
        return false if _payment_method_options.is_a?(OpenApi::Validatable) && !_payment_method_options.valid?
      end

      unless (_payment_method_types = @payment_method_types).nil?
        return false unless OpenApi::EnumValidator.valid?(_payment_method_types, VALID_VALUES_FOR_PAYMENT_METHOD_TYPES)
      end

      unless (_return_url = @return_url).nil?
        return false if _return_url.is_a?(OpenApi::Validatable) && !_return_url.valid?
      end

      unless (_statement_descriptor = @statement_descriptor).nil?
        return false if _statement_descriptor.to_s.size > MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR
      end

      unless (_statement_descriptor_suffix = @statement_descriptor_suffix).nil?
        return false if _statement_descriptor_suffix.to_s.size > MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR_SUFFIX
      end

      unless (_transfer_data = @transfer_data).nil?
        return false if _transfer_data.is_a?(OpenApi::Validatable) && !_transfer_data.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] application_fee_amount Object to be assigned
    def application_fee_amount=(application_fee_amount : Stripe::UpdateParamsSettingsApplicationFeeAmount?)
      if application_fee_amount.nil?
        return @application_fee_amount = nil
      end
      _application_fee_amount = application_fee_amount.not_nil!
      _application_fee_amount.validate if _application_fee_amount.is_a?(OpenApi::Validatable)
      @application_fee_amount = _application_fee_amount
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_method_options Object to be assigned
    def payment_method_options=(payment_method_options : Stripe::UpdateParamsSettingsPaymentMethodOptions?)
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
      OpenApi::EnumValidator.validate("payment_method_types", _payment_method_types, VALID_VALUES_FOR_PAYMENT_METHOD_TYPES)
      @payment_method_types = _payment_method_types
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] return_url Object to be assigned
    def return_url=(return_url : Stripe::BusinessProfileSpecsSupportUrl?)
      if return_url.nil?
        return @return_url = nil
      end
      _return_url = return_url.not_nil!
      _return_url.validate if _return_url.is_a?(OpenApi::Validatable)
      @return_url = _return_url
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] statement_descriptor Object to be assigned
    def statement_descriptor=(statement_descriptor : String?)
      if statement_descriptor.nil?
        return @statement_descriptor = nil
      end
      _statement_descriptor = statement_descriptor.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("statement_descriptor", _statement_descriptor.to_s.size, MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR)
      @statement_descriptor = _statement_descriptor
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] statement_descriptor_suffix Object to be assigned
    def statement_descriptor_suffix=(statement_descriptor_suffix : String?)
      if statement_descriptor_suffix.nil?
        return @statement_descriptor_suffix = nil
      end
      _statement_descriptor_suffix = statement_descriptor_suffix.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("statement_descriptor_suffix", _statement_descriptor_suffix.to_s.size, MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR_SUFFIX)
      @statement_descriptor_suffix = _statement_descriptor_suffix
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transfer_data Object to be assigned
    def transfer_data=(transfer_data : Stripe::UpdateParamsSettingsTransferData?)
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
    def_equals_and_hash(@application_fee_amount, @payment_method_options, @payment_method_types, @return_url, @statement_descriptor, @statement_descriptor_suffix, @transfer_data)
  end
end
