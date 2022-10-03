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
  # Object representing the subscription schedule's default settings.
  class DefaultSettingsParams
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "application_fee_percent", type: Float64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter application_fee_percent : Float64? = nil

    @[JSON::Field(key: "automatic_tax", type: Stripe::AutomaticTaxConfig1?, default: nil, required: false, nullable: false, emit_null: false)]
    getter automatic_tax : Stripe::AutomaticTaxConfig1? = nil

    @[JSON::Field(key: "billing_cycle_anchor", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter billing_cycle_anchor : String? = nil
    ERROR_MESSAGE_FOR_BILLING_CYCLE_ANCHOR = "invalid value for \"billing_cycle_anchor\", must be one of [automatic, phase_start]."
    VALID_VALUES_FOR_BILLING_CYCLE_ANCHOR  = StaticArray["automatic", "phase_start"]

    @[JSON::Field(key: "billing_thresholds", type: Stripe::DefaultSettingsParamsBillingThresholds?, default: nil, required: false, nullable: false, emit_null: false)]
    getter billing_thresholds : Stripe::DefaultSettingsParamsBillingThresholds? = nil

    @[JSON::Field(key: "collection_method", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter collection_method : String? = nil
    ERROR_MESSAGE_FOR_COLLECTION_METHOD = "invalid value for \"collection_method\", must be one of [charge_automatically, send_invoice]."
    VALID_VALUES_FOR_COLLECTION_METHOD  = StaticArray["charge_automatically", "send_invoice"]

    @[JSON::Field(key: "default_payment_method", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter default_payment_method : String? = nil
    MAX_LENGTH_FOR_DEFAULT_PAYMENT_METHOD = 5000

    @[JSON::Field(key: "description", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter description : String? = nil
    MAX_LENGTH_FOR_DESCRIPTION = 500

    @[JSON::Field(key: "invoice_settings", type: Stripe::SubscriptionSchedulesParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter invoice_settings : Stripe::SubscriptionSchedulesParam? = nil

    @[JSON::Field(key: "transfer_data", type: Stripe::DefaultSettingsParamsTransferData?, default: nil, required: false, nullable: false, emit_null: false)]
    getter transfer_data : Stripe::DefaultSettingsParamsTransferData? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @application_fee_percent : Float64? = nil,
      @automatic_tax : Stripe::AutomaticTaxConfig1? = nil,
      @billing_cycle_anchor : String? = nil,
      @billing_thresholds : Stripe::DefaultSettingsParamsBillingThresholds? = nil,
      @collection_method : String? = nil,
      @default_payment_method : String? = nil,
      @description : String? = nil,
      @invoice_settings : Stripe::SubscriptionSchedulesParam? = nil,
      @transfer_data : Stripe::DefaultSettingsParamsTransferData? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_automatic_tax = @automatic_tax).nil?
        invalid_properties.concat(_automatic_tax.list_invalid_properties_for("automatic_tax")) if _automatic_tax.is_a?(OpenApi::Validatable)
      end
      unless (_billing_cycle_anchor = @billing_cycle_anchor).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_BILLING_CYCLE_ANCHOR) unless OpenApi::EnumValidator.valid?(_billing_cycle_anchor, VALID_VALUES_FOR_BILLING_CYCLE_ANCHOR)
      end
      unless (_billing_thresholds = @billing_thresholds).nil?
        invalid_properties.concat(_billing_thresholds.list_invalid_properties_for("billing_thresholds")) if _billing_thresholds.is_a?(OpenApi::Validatable)
      end
      unless (_collection_method = @collection_method).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_COLLECTION_METHOD) unless OpenApi::EnumValidator.valid?(_collection_method, VALID_VALUES_FOR_COLLECTION_METHOD)
      end
      unless (_default_payment_method = @default_payment_method).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("default_payment_method", _default_payment_method.to_s.size, MAX_LENGTH_FOR_DEFAULT_PAYMENT_METHOD)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_description = @description).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("description", _description.to_s.size, MAX_LENGTH_FOR_DESCRIPTION)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_invoice_settings = @invoice_settings).nil?
        invalid_properties.concat(_invoice_settings.list_invalid_properties_for("invoice_settings")) if _invoice_settings.is_a?(OpenApi::Validatable)
      end
      unless (_transfer_data = @transfer_data).nil?
        invalid_properties.concat(_transfer_data.list_invalid_properties_for("transfer_data")) if _transfer_data.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_automatic_tax = @automatic_tax).nil?
        return false if _automatic_tax.is_a?(OpenApi::Validatable) && !_automatic_tax.valid?
      end

      unless (_billing_cycle_anchor = @billing_cycle_anchor).nil?
        return false unless OpenApi::EnumValidator.valid?(_billing_cycle_anchor, VALID_VALUES_FOR_BILLING_CYCLE_ANCHOR)
      end

      unless (_billing_thresholds = @billing_thresholds).nil?
        return false if _billing_thresholds.is_a?(OpenApi::Validatable) && !_billing_thresholds.valid?
      end

      unless (_collection_method = @collection_method).nil?
        return false unless OpenApi::EnumValidator.valid?(_collection_method, VALID_VALUES_FOR_COLLECTION_METHOD)
      end

      unless (_default_payment_method = @default_payment_method).nil?
        return false if _default_payment_method.to_s.size > MAX_LENGTH_FOR_DEFAULT_PAYMENT_METHOD
      end

      unless (_description = @description).nil?
        return false if _description.to_s.size > MAX_LENGTH_FOR_DESCRIPTION
      end

      unless (_invoice_settings = @invoice_settings).nil?
        return false if _invoice_settings.is_a?(OpenApi::Validatable) && !_invoice_settings.valid?
      end

      unless (_transfer_data = @transfer_data).nil?
        return false if _transfer_data.is_a?(OpenApi::Validatable) && !_transfer_data.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] application_fee_percent Object to be assigned
    def application_fee_percent=(application_fee_percent : Float64?)
      if application_fee_percent.nil?
        return @application_fee_percent = nil
      end
      _application_fee_percent = application_fee_percent.not_nil!
      @application_fee_percent = _application_fee_percent
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] automatic_tax Object to be assigned
    def automatic_tax=(automatic_tax : Stripe::AutomaticTaxConfig1?)
      if automatic_tax.nil?
        return @automatic_tax = nil
      end
      _automatic_tax = automatic_tax.not_nil!
      _automatic_tax.validate if _automatic_tax.is_a?(OpenApi::Validatable)
      @automatic_tax = _automatic_tax
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] billing_cycle_anchor Object to be assigned
    def billing_cycle_anchor=(billing_cycle_anchor : String?)
      if billing_cycle_anchor.nil?
        return @billing_cycle_anchor = nil
      end
      _billing_cycle_anchor = billing_cycle_anchor.not_nil!
      OpenApi::EnumValidator.validate("billing_cycle_anchor", _billing_cycle_anchor, VALID_VALUES_FOR_BILLING_CYCLE_ANCHOR)
      @billing_cycle_anchor = _billing_cycle_anchor
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] billing_thresholds Object to be assigned
    def billing_thresholds=(billing_thresholds : Stripe::DefaultSettingsParamsBillingThresholds?)
      if billing_thresholds.nil?
        return @billing_thresholds = nil
      end
      _billing_thresholds = billing_thresholds.not_nil!
      _billing_thresholds.validate if _billing_thresholds.is_a?(OpenApi::Validatable)
      @billing_thresholds = _billing_thresholds
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] collection_method Object to be assigned
    def collection_method=(collection_method : String?)
      if collection_method.nil?
        return @collection_method = nil
      end
      _collection_method = collection_method.not_nil!
      OpenApi::EnumValidator.validate("collection_method", _collection_method, VALID_VALUES_FOR_COLLECTION_METHOD)
      @collection_method = _collection_method
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] default_payment_method Object to be assigned
    def default_payment_method=(default_payment_method : String?)
      if default_payment_method.nil?
        return @default_payment_method = nil
      end
      _default_payment_method = default_payment_method.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("default_payment_method", _default_payment_method.to_s.size, MAX_LENGTH_FOR_DEFAULT_PAYMENT_METHOD)
      @default_payment_method = _default_payment_method
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] description Object to be assigned
    def description=(description : String?)
      if description.nil?
        return @description = nil
      end
      _description = description.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("description", _description.to_s.size, MAX_LENGTH_FOR_DESCRIPTION)
      @description = _description
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] invoice_settings Object to be assigned
    def invoice_settings=(invoice_settings : Stripe::SubscriptionSchedulesParam?)
      if invoice_settings.nil?
        return @invoice_settings = nil
      end
      _invoice_settings = invoice_settings.not_nil!
      _invoice_settings.validate if _invoice_settings.is_a?(OpenApi::Validatable)
      @invoice_settings = _invoice_settings
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transfer_data Object to be assigned
    def transfer_data=(transfer_data : Stripe::DefaultSettingsParamsTransferData?)
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
    def_equals_and_hash(@application_fee_percent, @automatic_tax, @billing_cycle_anchor, @billing_thresholds, @collection_method, @default_payment_method, @description, @invoice_settings, @transfer_data)
  end
end
