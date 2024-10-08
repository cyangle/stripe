#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./invoice_setting_subscription_schedule_setting"
require "./subscription_billing_thresholds1"
require "./subscription_schedule_phase_configuration_on_behalf_of"
require "./subscription_schedule_phase_configuration_transfer_data"
require "./subscription_schedules_resource_default_settings_automatic_tax"
require "./subscription_schedules_resource_default_settings_default_payment_method"

module Stripe
  #
  class SubscriptionSchedulesResourceDefaultSettings
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account during this phase of the schedule.
    @[JSON::Field(key: "application_fee_percent", type: Float64?, default: nil, required: true, nullable: true, emit_null: true)]
    getter application_fee_percent : Float64? = nil

    # Possible values are `phase_start` or `automatic`. If `phase_start` then billing cycle anchor of the subscription is set to the start of the phase when entering the phase. If `automatic` then the billing cycle anchor is automatically modified as needed when entering the phase. For more information, see the billing cycle [documentation](https://stripe.com/docs/billing/subscriptions/billing-cycle).
    @[JSON::Field(key: "billing_cycle_anchor", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter billing_cycle_anchor : String? = nil
    ERROR_MESSAGE_FOR_BILLING_CYCLE_ANCHOR = "invalid value for \"billing_cycle_anchor\", must be one of [automatic, phase_start]."
    VALID_VALUES_FOR_BILLING_CYCLE_ANCHOR  = String.static_array("automatic", "phase_start")

    @[JSON::Field(key: "billing_thresholds", type: Stripe::SubscriptionBillingThresholds1?, default: nil, required: true, nullable: true, emit_null: true)]
    getter billing_thresholds : Stripe::SubscriptionBillingThresholds1? = nil

    # Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay the underlying subscription at the end of each billing cycle using the default source attached to the customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions and mark the subscription as `active`.
    @[JSON::Field(key: "collection_method", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter collection_method : String? = nil
    ERROR_MESSAGE_FOR_COLLECTION_METHOD = "invalid value for \"collection_method\", must be one of [charge_automatically, send_invoice]."
    VALID_VALUES_FOR_COLLECTION_METHOD  = String.static_array("charge_automatically", "send_invoice")

    @[JSON::Field(key: "default_payment_method", type: Stripe::SubscriptionSchedulesResourceDefaultSettingsDefaultPaymentMethod?, default: nil, required: true, nullable: true, emit_null: true)]
    getter default_payment_method : Stripe::SubscriptionSchedulesResourceDefaultSettingsDefaultPaymentMethod? = nil

    # Subscription description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
    @[JSON::Field(key: "description", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter description : String? = nil
    MAX_LENGTH_FOR_DESCRIPTION = 5000

    @[JSON::Field(key: "invoice_settings", type: Stripe::InvoiceSettingSubscriptionScheduleSetting?, default: nil, required: true, nullable: false, emit_null: false)]
    getter invoice_settings : Stripe::InvoiceSettingSubscriptionScheduleSetting? = nil

    @[JSON::Field(key: "on_behalf_of", type: Stripe::SubscriptionSchedulePhaseConfigurationOnBehalfOf?, default: nil, required: true, nullable: true, emit_null: true)]
    getter on_behalf_of : Stripe::SubscriptionSchedulePhaseConfigurationOnBehalfOf? = nil

    @[JSON::Field(key: "transfer_data", type: Stripe::SubscriptionSchedulePhaseConfigurationTransferData?, default: nil, required: true, nullable: true, emit_null: true)]
    getter transfer_data : Stripe::SubscriptionSchedulePhaseConfigurationTransferData? = nil

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "automatic_tax", type: Stripe::SubscriptionSchedulesResourceDefaultSettingsAutomaticTax?, default: nil, required: false, nullable: false, emit_null: false)]
    getter automatic_tax : Stripe::SubscriptionSchedulesResourceDefaultSettingsAutomaticTax? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @application_fee_percent : Float64? = nil,
      @billing_cycle_anchor : String? = nil,
      @billing_thresholds : Stripe::SubscriptionBillingThresholds1? = nil,
      @collection_method : String? = nil,
      @default_payment_method : Stripe::SubscriptionSchedulesResourceDefaultSettingsDefaultPaymentMethod? = nil,
      @description : String? = nil,
      @invoice_settings : Stripe::InvoiceSettingSubscriptionScheduleSetting? = nil,
      @on_behalf_of : Stripe::SubscriptionSchedulePhaseConfigurationOnBehalfOf? = nil,
      @transfer_data : Stripe::SubscriptionSchedulePhaseConfigurationTransferData? = nil,
      # Optional properties
      @automatic_tax : Stripe::SubscriptionSchedulesResourceDefaultSettingsAutomaticTax? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"billing_cycle_anchor\" is required and cannot be null") if @billing_cycle_anchor.nil?

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
        invalid_properties.concat(_default_payment_method.list_invalid_properties_for("default_payment_method")) if _default_payment_method.is_a?(OpenApi::Validatable)
      end
      unless (_description = @description).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("description", _description.to_s.size, MAX_LENGTH_FOR_DESCRIPTION)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"invoice_settings\" is required and cannot be null") if @invoice_settings.nil?

      unless (_invoice_settings = @invoice_settings).nil?
        invalid_properties.concat(_invoice_settings.list_invalid_properties_for("invoice_settings")) if _invoice_settings.is_a?(OpenApi::Validatable)
      end
      unless (_on_behalf_of = @on_behalf_of).nil?
        invalid_properties.concat(_on_behalf_of.list_invalid_properties_for("on_behalf_of")) if _on_behalf_of.is_a?(OpenApi::Validatable)
      end
      unless (_transfer_data = @transfer_data).nil?
        invalid_properties.concat(_transfer_data.list_invalid_properties_for("transfer_data")) if _transfer_data.is_a?(OpenApi::Validatable)
      end
      unless (_automatic_tax = @automatic_tax).nil?
        invalid_properties.concat(_automatic_tax.list_invalid_properties_for("automatic_tax")) if _automatic_tax.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @billing_cycle_anchor.nil?
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
        return false if _default_payment_method.is_a?(OpenApi::Validatable) && !_default_payment_method.valid?
      end

      unless (_description = @description).nil?
        return false if _description.to_s.size > MAX_LENGTH_FOR_DESCRIPTION
      end

      return false if @invoice_settings.nil?
      unless (_invoice_settings = @invoice_settings).nil?
        return false if _invoice_settings.is_a?(OpenApi::Validatable) && !_invoice_settings.valid?
      end

      unless (_on_behalf_of = @on_behalf_of).nil?
        return false if _on_behalf_of.is_a?(OpenApi::Validatable) && !_on_behalf_of.valid?
      end

      unless (_transfer_data = @transfer_data).nil?
        return false if _transfer_data.is_a?(OpenApi::Validatable) && !_transfer_data.valid?
      end

      unless (_automatic_tax = @automatic_tax).nil?
        return false if _automatic_tax.is_a?(OpenApi::Validatable) && !_automatic_tax.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] application_fee_percent Object to be assigned
    def application_fee_percent=(new_value : Float64?)
      @application_fee_percent = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] billing_cycle_anchor Object to be assigned
    def billing_cycle_anchor=(new_value : String?)
      raise ArgumentError.new("\"billing_cycle_anchor\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::EnumValidator.validate("billing_cycle_anchor", new_value, VALID_VALUES_FOR_BILLING_CYCLE_ANCHOR)
      end

      @billing_cycle_anchor = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] billing_thresholds Object to be assigned
    def billing_thresholds=(new_value : Stripe::SubscriptionBillingThresholds1?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @billing_thresholds = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] collection_method Object to be assigned
    def collection_method=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("collection_method", new_value, VALID_VALUES_FOR_COLLECTION_METHOD)
      end

      @collection_method = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] default_payment_method Object to be assigned
    def default_payment_method=(new_value : Stripe::SubscriptionSchedulesResourceDefaultSettingsDefaultPaymentMethod?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @default_payment_method = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] description Object to be assigned
    def description=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("description", new_value.to_s.size, MAX_LENGTH_FOR_DESCRIPTION)
      end

      @description = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] invoice_settings Object to be assigned
    def invoice_settings=(new_value : Stripe::InvoiceSettingSubscriptionScheduleSetting?)
      raise ArgumentError.new("\"invoice_settings\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @invoice_settings = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] on_behalf_of Object to be assigned
    def on_behalf_of=(new_value : Stripe::SubscriptionSchedulePhaseConfigurationOnBehalfOf?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @on_behalf_of = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transfer_data Object to be assigned
    def transfer_data=(new_value : Stripe::SubscriptionSchedulePhaseConfigurationTransferData?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @transfer_data = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] automatic_tax Object to be assigned
    def automatic_tax=(new_value : Stripe::SubscriptionSchedulesResourceDefaultSettingsAutomaticTax?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @automatic_tax = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@application_fee_percent, @billing_cycle_anchor, @billing_thresholds, @collection_method, @default_payment_method, @description, @invoice_settings, @on_behalf_of, @transfer_data, @automatic_tax)
  end
end
