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
  # A phase describes the plans, coupon, and trialing status of a subscription for a predefined time period.
  class SubscriptionSchedulePhaseConfiguration
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # A list of prices and quantities that will generate invoice items appended to the next invoice for this phase.
    @[JSON::Field(key: "add_invoice_items", type: Array(Stripe::SubscriptionScheduleAddInvoiceItem)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter add_invoice_items : Array(Stripe::SubscriptionScheduleAddInvoiceItem)? = nil

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[JSON::Field(key: "currency", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter currency : String? = nil

    # The end of this phase of the subscription schedule.
    @[JSON::Field(key: "end_date", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter end_date : Int64? = nil

    # Subscription items to configure the subscription to during this phase of the subscription schedule.
    @[JSON::Field(key: "items", type: Array(Stripe::SubscriptionScheduleConfigurationItem)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter items : Array(Stripe::SubscriptionScheduleConfigurationItem)? = nil

    # If the subscription schedule will prorate when transitioning to this phase. Possible values are `create_prorations` and `none`.
    @[JSON::Field(key: "proration_behavior", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter proration_behavior : String? = nil
    ERROR_MESSAGE_FOR_PRORATION_BEHAVIOR = "invalid value for \"proration_behavior\", must be one of [always_invoice, create_prorations, none]."
    VALID_VALUES_FOR_PRORATION_BEHAVIOR  = String.static_array("always_invoice", "create_prorations", "none")

    # The start of this phase of the subscription schedule.
    @[JSON::Field(key: "start_date", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter start_date : Int64? = nil

    # End of Required Properties

    # Optional Properties

    # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice subtotal that will be transferred to the application owner's Stripe account during this phase of the schedule.
    @[JSON::Field(key: "application_fee_percent", type: Float64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: application_fee_percent.nil? && !application_fee_percent_present?)]
    getter application_fee_percent : Float64? = nil

    @[JSON::Field(ignore: true)]
    property? application_fee_percent_present : Bool = false

    @[JSON::Field(key: "automatic_tax", type: Stripe::SchedulesPhaseAutomaticTax?, default: nil, required: false, nullable: false, emit_null: false)]
    getter automatic_tax : Stripe::SchedulesPhaseAutomaticTax? = nil

    # Possible values are `phase_start` or `automatic`. If `phase_start` then billing cycle anchor of the subscription is set to the start of the phase when entering the phase. If `automatic` then the billing cycle anchor is automatically modified as needed when entering the phase. For more information, see the billing cycle [documentation](https://stripe.com/docs/billing/subscriptions/billing-cycle).
    @[JSON::Field(key: "billing_cycle_anchor", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: billing_cycle_anchor.nil? && !billing_cycle_anchor_present?)]
    getter billing_cycle_anchor : String? = nil
    ERROR_MESSAGE_FOR_BILLING_CYCLE_ANCHOR = "invalid value for \"billing_cycle_anchor\", must be one of [automatic, phase_start]."
    VALID_VALUES_FOR_BILLING_CYCLE_ANCHOR  = String.static_array("automatic", "phase_start")

    @[JSON::Field(ignore: true)]
    property? billing_cycle_anchor_present : Bool = false

    @[JSON::Field(key: "billing_thresholds", type: Stripe::SubscriptionBillingThresholds1?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: billing_thresholds.nil? && !billing_thresholds_present?)]
    getter billing_thresholds : Stripe::SubscriptionBillingThresholds1? = nil

    @[JSON::Field(ignore: true)]
    property? billing_thresholds_present : Bool = false

    # Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay the underlying subscription at the end of each billing cycle using the default source attached to the customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions and mark the subscription as `active`.
    @[JSON::Field(key: "collection_method", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: collection_method.nil? && !collection_method_present?)]
    getter collection_method : String? = nil
    ERROR_MESSAGE_FOR_COLLECTION_METHOD = "invalid value for \"collection_method\", must be one of [charge_automatically, send_invoice]."
    VALID_VALUES_FOR_COLLECTION_METHOD  = String.static_array("charge_automatically", "send_invoice")

    @[JSON::Field(ignore: true)]
    property? collection_method_present : Bool = false

    @[JSON::Field(key: "coupon", type: Stripe::SubscriptionSchedulePhaseConfigurationCoupon?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: coupon.nil? && !coupon_present?)]
    getter coupon : Stripe::SubscriptionSchedulePhaseConfigurationCoupon? = nil

    @[JSON::Field(ignore: true)]
    property? coupon_present : Bool = false

    @[JSON::Field(key: "default_payment_method", type: Stripe::SubscriptionSchedulePhaseConfigurationDefaultPaymentMethod?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: default_payment_method.nil? && !default_payment_method_present?)]
    getter default_payment_method : Stripe::SubscriptionSchedulePhaseConfigurationDefaultPaymentMethod? = nil

    @[JSON::Field(ignore: true)]
    property? default_payment_method_present : Bool = false

    # The default tax rates to apply to the subscription during this phase of the subscription schedule.
    @[JSON::Field(key: "default_tax_rates", type: Array(Stripe::TaxRate)?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: default_tax_rates.nil? && !default_tax_rates_present?)]
    getter default_tax_rates : Array(Stripe::TaxRate)? = nil

    @[JSON::Field(ignore: true)]
    property? default_tax_rates_present : Bool = false

    # Subscription description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription.
    @[JSON::Field(key: "description", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: description.nil? && !description_present?)]
    getter description : String? = nil
    MAX_LENGTH_FOR_DESCRIPTION = 5000

    @[JSON::Field(ignore: true)]
    property? description_present : Bool = false

    @[JSON::Field(key: "invoice_settings", type: Stripe::SubscriptionSchedulePhaseConfigurationInvoiceSettings?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: invoice_settings.nil? && !invoice_settings_present?)]
    getter invoice_settings : Stripe::SubscriptionSchedulePhaseConfigurationInvoiceSettings? = nil

    @[JSON::Field(ignore: true)]
    property? invoice_settings_present : Bool = false

    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: metadata.nil? && !metadata_present?)]
    getter metadata : Hash(String, String)? = nil

    @[JSON::Field(ignore: true)]
    property? metadata_present : Bool = false

    @[JSON::Field(key: "on_behalf_of", type: Stripe::SubscriptionSchedulePhaseConfigurationOnBehalfOf?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: on_behalf_of.nil? && !on_behalf_of_present?)]
    getter on_behalf_of : Stripe::SubscriptionSchedulePhaseConfigurationOnBehalfOf? = nil

    @[JSON::Field(ignore: true)]
    property? on_behalf_of_present : Bool = false

    @[JSON::Field(key: "transfer_data", type: Stripe::SubscriptionSchedulePhaseConfigurationTransferData?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: transfer_data.nil? && !transfer_data_present?)]
    getter transfer_data : Stripe::SubscriptionSchedulePhaseConfigurationTransferData? = nil

    @[JSON::Field(ignore: true)]
    property? transfer_data_present : Bool = false

    # When the trial ends within the phase.
    @[JSON::Field(key: "trial_end", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: trial_end.nil? && !trial_end_present?)]
    getter trial_end : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? trial_end_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @add_invoice_items : Array(Stripe::SubscriptionScheduleAddInvoiceItem)? = nil,
      @currency : String? = nil,
      @end_date : Int64? = nil,
      @items : Array(Stripe::SubscriptionScheduleConfigurationItem)? = nil,
      @proration_behavior : String? = nil,
      @start_date : Int64? = nil,
      # Optional properties
      @application_fee_percent : Float64? = nil,
      @automatic_tax : Stripe::SchedulesPhaseAutomaticTax? = nil,
      @billing_cycle_anchor : String? = nil,
      @billing_thresholds : Stripe::SubscriptionBillingThresholds1? = nil,
      @collection_method : String? = nil,
      @coupon : Stripe::SubscriptionSchedulePhaseConfigurationCoupon? = nil,
      @default_payment_method : Stripe::SubscriptionSchedulePhaseConfigurationDefaultPaymentMethod? = nil,
      @default_tax_rates : Array(Stripe::TaxRate)? = nil,
      @description : String? = nil,
      @invoice_settings : Stripe::SubscriptionSchedulePhaseConfigurationInvoiceSettings? = nil,
      @metadata : Hash(String, String)? = nil,
      @on_behalf_of : Stripe::SubscriptionSchedulePhaseConfigurationOnBehalfOf? = nil,
      @transfer_data : Stripe::SubscriptionSchedulePhaseConfigurationTransferData? = nil,
      @trial_end : Int64? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"add_invoice_items\" is required and cannot be null") if @add_invoice_items.nil?

      unless (_add_invoice_items = @add_invoice_items).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "add_invoice_items", container: _add_invoice_items)) if _add_invoice_items.is_a?(Array)
      end
      invalid_properties.push("\"currency\" is required and cannot be null") if @currency.nil?

      invalid_properties.push("\"end_date\" is required and cannot be null") if @end_date.nil?

      invalid_properties.push("\"items\" is required and cannot be null") if @items.nil?

      unless (_items = @items).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "items", container: _items)) if _items.is_a?(Array)
      end
      invalid_properties.push("\"proration_behavior\" is required and cannot be null") if @proration_behavior.nil?

      unless (_proration_behavior = @proration_behavior).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_PRORATION_BEHAVIOR) unless OpenApi::EnumValidator.valid?(_proration_behavior, VALID_VALUES_FOR_PRORATION_BEHAVIOR)
      end
      invalid_properties.push("\"start_date\" is required and cannot be null") if @start_date.nil?

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
      unless (_coupon = @coupon).nil?
        invalid_properties.concat(_coupon.list_invalid_properties_for("coupon")) if _coupon.is_a?(OpenApi::Validatable)
      end
      unless (_default_payment_method = @default_payment_method).nil?
        invalid_properties.concat(_default_payment_method.list_invalid_properties_for("default_payment_method")) if _default_payment_method.is_a?(OpenApi::Validatable)
      end
      unless (_default_tax_rates = @default_tax_rates).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "default_tax_rates", container: _default_tax_rates)) if _default_tax_rates.is_a?(Array)
      end
      unless (_description = @description).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("description", _description.to_s.size, MAX_LENGTH_FOR_DESCRIPTION)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_invoice_settings = @invoice_settings).nil?
        invalid_properties.concat(_invoice_settings.list_invalid_properties_for("invoice_settings")) if _invoice_settings.is_a?(OpenApi::Validatable)
      end

      unless (_on_behalf_of = @on_behalf_of).nil?
        invalid_properties.concat(_on_behalf_of.list_invalid_properties_for("on_behalf_of")) if _on_behalf_of.is_a?(OpenApi::Validatable)
      end
      unless (_transfer_data = @transfer_data).nil?
        invalid_properties.concat(_transfer_data.list_invalid_properties_for("transfer_data")) if _transfer_data.is_a?(OpenApi::Validatable)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @add_invoice_items.nil?
      unless (_add_invoice_items = @add_invoice_items).nil?
        return false if _add_invoice_items.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _add_invoice_items)
      end

      return false if @currency.nil?

      return false if @end_date.nil?

      return false if @items.nil?
      unless (_items = @items).nil?
        return false if _items.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _items)
      end

      return false if @proration_behavior.nil?
      unless (_proration_behavior = @proration_behavior).nil?
        return false unless OpenApi::EnumValidator.valid?(_proration_behavior, VALID_VALUES_FOR_PRORATION_BEHAVIOR)
      end

      return false if @start_date.nil?

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

      unless (_coupon = @coupon).nil?
        return false if _coupon.is_a?(OpenApi::Validatable) && !_coupon.valid?
      end

      unless (_default_payment_method = @default_payment_method).nil?
        return false if _default_payment_method.is_a?(OpenApi::Validatable) && !_default_payment_method.valid?
      end

      unless (_default_tax_rates = @default_tax_rates).nil?
        return false if _default_tax_rates.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _default_tax_rates)
      end

      unless (_description = @description).nil?
        return false if _description.to_s.size > MAX_LENGTH_FOR_DESCRIPTION
      end

      unless (_invoice_settings = @invoice_settings).nil?
        return false if _invoice_settings.is_a?(OpenApi::Validatable) && !_invoice_settings.valid?
      end

      unless (_on_behalf_of = @on_behalf_of).nil?
        return false if _on_behalf_of.is_a?(OpenApi::Validatable) && !_on_behalf_of.valid?
      end

      unless (_transfer_data = @transfer_data).nil?
        return false if _transfer_data.is_a?(OpenApi::Validatable) && !_transfer_data.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] add_invoice_items Object to be assigned
    def add_invoice_items=(add_invoice_items : Array(Stripe::SubscriptionScheduleAddInvoiceItem)?)
      if add_invoice_items.nil?
        raise ArgumentError.new("\"add_invoice_items\" is required and cannot be null")
      end
      _add_invoice_items = add_invoice_items.not_nil!
      OpenApi::ContainerValidator.validate(container: _add_invoice_items) if _add_invoice_items.is_a?(Array)
      @add_invoice_items = _add_invoice_items
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] currency Object to be assigned
    def currency=(currency : String?)
      if currency.nil?
        raise ArgumentError.new("\"currency\" is required and cannot be null")
      end
      _currency = currency.not_nil!
      @currency = _currency
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] end_date Object to be assigned
    def end_date=(end_date : Int64?)
      if end_date.nil?
        raise ArgumentError.new("\"end_date\" is required and cannot be null")
      end
      _end_date = end_date.not_nil!
      @end_date = _end_date
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] items Object to be assigned
    def items=(items : Array(Stripe::SubscriptionScheduleConfigurationItem)?)
      if items.nil?
        raise ArgumentError.new("\"items\" is required and cannot be null")
      end
      _items = items.not_nil!
      OpenApi::ContainerValidator.validate(container: _items) if _items.is_a?(Array)
      @items = _items
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] proration_behavior Object to be assigned
    def proration_behavior=(proration_behavior : String?)
      if proration_behavior.nil?
        raise ArgumentError.new("\"proration_behavior\" is required and cannot be null")
      end
      _proration_behavior = proration_behavior.not_nil!
      OpenApi::EnumValidator.validate("proration_behavior", _proration_behavior, VALID_VALUES_FOR_PRORATION_BEHAVIOR)
      @proration_behavior = _proration_behavior
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] start_date Object to be assigned
    def start_date=(start_date : Int64?)
      if start_date.nil?
        raise ArgumentError.new("\"start_date\" is required and cannot be null")
      end
      _start_date = start_date.not_nil!
      @start_date = _start_date
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
    def automatic_tax=(automatic_tax : Stripe::SchedulesPhaseAutomaticTax?)
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
    def billing_thresholds=(billing_thresholds : Stripe::SubscriptionBillingThresholds1?)
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
    # @param [Object] coupon Object to be assigned
    def coupon=(coupon : Stripe::SubscriptionSchedulePhaseConfigurationCoupon?)
      if coupon.nil?
        return @coupon = nil
      end
      _coupon = coupon.not_nil!
      _coupon.validate if _coupon.is_a?(OpenApi::Validatable)
      @coupon = _coupon
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] default_payment_method Object to be assigned
    def default_payment_method=(default_payment_method : Stripe::SubscriptionSchedulePhaseConfigurationDefaultPaymentMethod?)
      if default_payment_method.nil?
        return @default_payment_method = nil
      end
      _default_payment_method = default_payment_method.not_nil!
      _default_payment_method.validate if _default_payment_method.is_a?(OpenApi::Validatable)
      @default_payment_method = _default_payment_method
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] default_tax_rates Object to be assigned
    def default_tax_rates=(default_tax_rates : Array(Stripe::TaxRate)?)
      if default_tax_rates.nil?
        return @default_tax_rates = nil
      end
      _default_tax_rates = default_tax_rates.not_nil!
      OpenApi::ContainerValidator.validate(container: _default_tax_rates) if _default_tax_rates.is_a?(Array)
      @default_tax_rates = _default_tax_rates
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
    def invoice_settings=(invoice_settings : Stripe::SubscriptionSchedulePhaseConfigurationInvoiceSettings?)
      if invoice_settings.nil?
        return @invoice_settings = nil
      end
      _invoice_settings = invoice_settings.not_nil!
      _invoice_settings.validate if _invoice_settings.is_a?(OpenApi::Validatable)
      @invoice_settings = _invoice_settings
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(metadata : Hash(String, String)?)
      if metadata.nil?
        return @metadata = nil
      end
      _metadata = metadata.not_nil!
      @metadata = _metadata
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] on_behalf_of Object to be assigned
    def on_behalf_of=(on_behalf_of : Stripe::SubscriptionSchedulePhaseConfigurationOnBehalfOf?)
      if on_behalf_of.nil?
        return @on_behalf_of = nil
      end
      _on_behalf_of = on_behalf_of.not_nil!
      _on_behalf_of.validate if _on_behalf_of.is_a?(OpenApi::Validatable)
      @on_behalf_of = _on_behalf_of
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transfer_data Object to be assigned
    def transfer_data=(transfer_data : Stripe::SubscriptionSchedulePhaseConfigurationTransferData?)
      if transfer_data.nil?
        return @transfer_data = nil
      end
      _transfer_data = transfer_data.not_nil!
      _transfer_data.validate if _transfer_data.is_a?(OpenApi::Validatable)
      @transfer_data = _transfer_data
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] trial_end Object to be assigned
    def trial_end=(trial_end : Int64?)
      if trial_end.nil?
        return @trial_end = nil
      end
      _trial_end = trial_end.not_nil!
      @trial_end = _trial_end
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@add_invoice_items, @currency, @end_date, @items, @proration_behavior, @start_date, @application_fee_percent, @application_fee_percent_present, @automatic_tax, @billing_cycle_anchor, @billing_cycle_anchor_present, @billing_thresholds, @billing_thresholds_present, @collection_method, @collection_method_present, @coupon, @coupon_present, @default_payment_method, @default_payment_method_present, @default_tax_rates, @default_tax_rates_present, @description, @description_present, @invoice_settings, @invoice_settings_present, @metadata, @metadata_present, @on_behalf_of, @on_behalf_of_present, @transfer_data, @transfer_data_present, @trial_end, @trial_end_present)
  end
end
