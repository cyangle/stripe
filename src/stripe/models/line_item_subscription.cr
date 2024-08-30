#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./cancellation_details"
require "./discount"
require "./invoiceitem_discounts_inner"
require "./subscription"
require "./subscription_application"
require "./subscription_automatic_tax"
require "./subscription_billing_thresholds"
require "./subscription_customer"
require "./subscription_default_payment_method"
require "./subscription_default_source"
require "./subscription_item_list"
require "./subscription_latest_invoice"
require "./subscription_on_behalf_of"
require "./subscription_pending_invoice_item_interval"
require "./subscription_pending_setup_intent"
require "./subscription_schedule1"
require "./subscription_test_clock"
require "./subscription_transfer_data"
require "./subscriptions_resource_billing_cycle_anchor_config"
require "./subscriptions_resource_pause_collection"
require "./subscriptions_resource_payment_settings"
require "./subscriptions_resource_pending_update"
require "./subscriptions_resource_subscription_invoice_settings"
require "./subscriptions_trials_resource_trial_settings"
require "./tax_rate"

module Stripe
  # The subscription that the invoice item pertains to, if any.
  class LineItemSubscription
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "application", type: Stripe::SubscriptionApplication?, default: nil, required: true, nullable: true, emit_null: true)]
    property application : Stripe::SubscriptionApplication? = nil

    # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice total that will be transferred to the application owner's Stripe account.
    @[JSON::Field(key: "application_fee_percent", type: Float64?, default: nil, required: true, nullable: true, emit_null: true)]
    property application_fee_percent : Float64? = nil

    @[JSON::Field(key: "automatic_tax", type: Stripe::SubscriptionAutomaticTax?, default: nil, required: true, nullable: false, emit_null: false)]
    property automatic_tax : Stripe::SubscriptionAutomaticTax? = nil

    # The reference point that aligns future [billing cycle](https://stripe.com/docs/subscriptions/billing-cycle) dates. It sets the day of week for `week` intervals, the day of month for `month` and `year` intervals, and the month of year for `year` intervals. The timestamp is in UTC format.
    @[JSON::Field(key: "billing_cycle_anchor", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    property billing_cycle_anchor : Int64? = nil

    @[JSON::Field(key: "billing_cycle_anchor_config", type: Stripe::SubscriptionsResourceBillingCycleAnchorConfig?, default: nil, required: true, nullable: false, emit_null: false)]
    property billing_cycle_anchor_config : Stripe::SubscriptionsResourceBillingCycleAnchorConfig? = nil

    @[JSON::Field(key: "billing_thresholds", type: Stripe::SubscriptionBillingThresholds?, default: nil, required: true, nullable: false, emit_null: false)]
    property billing_thresholds : Stripe::SubscriptionBillingThresholds? = nil

    # A date in the future at which the subscription will automatically get canceled
    @[JSON::Field(key: "cancel_at", type: Int64?, default: nil, required: true, nullable: true, emit_null: true)]
    property cancel_at : Int64? = nil

    # Whether this subscription will (if `status=active`) or did (if `status=canceled`) cancel at the end of the current billing period.
    @[JSON::Field(key: "cancel_at_period_end", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    property cancel_at_period_end : Bool? = nil

    # If the subscription has been canceled, the date of that cancellation. If the subscription was canceled with `cancel_at_period_end`, `canceled_at` will reflect the time of the most recent update request, not the end of the subscription period when the subscription is automatically moved to a canceled state.
    @[JSON::Field(key: "canceled_at", type: Int64?, default: nil, required: true, nullable: true, emit_null: true)]
    property canceled_at : Int64? = nil

    @[JSON::Field(key: "cancellation_details", type: Stripe::CancellationDetails?, default: nil, required: true, nullable: false, emit_null: false)]
    property cancellation_details : Stripe::CancellationDetails? = nil

    # Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay this subscription at the end of the cycle using the default source attached to the customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions and mark the subscription as `active`.
    @[JSON::Field(key: "collection_method", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    property collection_method : String? = nil
    ERROR_MESSAGE_FOR_COLLECTION_METHOD = "invalid value for \"collection_method\", must be one of [charge_automatically, send_invoice]."
    VALID_VALUES_FOR_COLLECTION_METHOD  = String.static_array("charge_automatically", "send_invoice")

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    property created : Int64? = nil

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[JSON::Field(key: "currency", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    property currency : String? = nil

    # End of the current period that the subscription has been invoiced for. At the end of this period, a new invoice will be created.
    @[JSON::Field(key: "current_period_end", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    property current_period_end : Int64? = nil

    # Start of the current period that the subscription has been invoiced for.
    @[JSON::Field(key: "current_period_start", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    property current_period_start : Int64? = nil

    @[JSON::Field(key: "customer", type: Stripe::SubscriptionCustomer?, default: nil, required: true, nullable: false, emit_null: false)]
    property customer : Stripe::SubscriptionCustomer? = nil

    # Number of days a customer has to pay invoices generated by this subscription. This value will be `null` for subscriptions where `collection_method=charge_automatically`.
    @[JSON::Field(key: "days_until_due", type: Int64?, default: nil, required: true, nullable: true, emit_null: true)]
    property days_until_due : Int64? = nil

    @[JSON::Field(key: "default_payment_method", type: Stripe::SubscriptionDefaultPaymentMethod?, default: nil, required: true, nullable: true, emit_null: true)]
    property default_payment_method : Stripe::SubscriptionDefaultPaymentMethod? = nil

    @[JSON::Field(key: "default_source", type: Stripe::SubscriptionDefaultSource?, default: nil, required: true, nullable: true, emit_null: true)]
    property default_source : Stripe::SubscriptionDefaultSource? = nil

    # The subscription's description, meant to be displayable to the customer. Use this field to optionally store an explanation of the subscription for rendering in Stripe surfaces and certain local payment methods UIs.
    @[JSON::Field(key: "description", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    property description : String? = nil
    MAX_LENGTH_FOR_DESCRIPTION = 500

    @[JSON::Field(key: "discount", type: Stripe::Discount?, default: nil, required: true, nullable: false, emit_null: false)]
    property discount : Stripe::Discount? = nil

    # The discounts applied to the subscription. Subscription item discounts are applied before subscription discounts. Use `expand[]=discounts` to expand each discount.
    @[JSON::Field(key: "discounts", type: Array(Stripe::InvoiceitemDiscountsInner)?, default: nil, required: true, nullable: false, emit_null: false)]
    property discounts : Array(Stripe::InvoiceitemDiscountsInner)? = nil

    # If the subscription has ended, the date the subscription ended.
    @[JSON::Field(key: "ended_at", type: Int64?, default: nil, required: true, nullable: true, emit_null: true)]
    property ended_at : Int64? = nil

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    property id : String? = nil
    MAX_LENGTH_FOR_ID = 5000

    @[JSON::Field(key: "invoice_settings", type: Stripe::SubscriptionsResourceSubscriptionInvoiceSettings?, default: nil, required: true, nullable: false, emit_null: false)]
    property invoice_settings : Stripe::SubscriptionsResourceSubscriptionInvoiceSettings? = nil

    @[JSON::Field(key: "items", type: Stripe::SubscriptionItemList?, default: nil, required: true, nullable: false, emit_null: false)]
    property items : Stripe::SubscriptionItemList? = nil

    @[JSON::Field(key: "latest_invoice", type: Stripe::SubscriptionLatestInvoice?, default: nil, required: true, nullable: true, emit_null: true)]
    property latest_invoice : Stripe::SubscriptionLatestInvoice? = nil

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    property livemode : Bool? = nil

    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: true, nullable: false, emit_null: false)]
    property metadata : Hash(String, String)? = nil

    # Specifies the approximate timestamp on which any pending invoice items will be billed according to the schedule provided at `pending_invoice_item_interval`.
    @[JSON::Field(key: "next_pending_invoice_item_invoice", type: Int64?, default: nil, required: true, nullable: true, emit_null: true)]
    property next_pending_invoice_item_invoice : Int64? = nil

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    property object : String? = nil
    ERROR_MESSAGE_FOR_OBJECT = "invalid value for \"object\", must be one of [subscription]."
    VALID_VALUES_FOR_OBJECT  = String.static_array("subscription")

    @[JSON::Field(key: "on_behalf_of", type: Stripe::SubscriptionOnBehalfOf?, default: nil, required: true, nullable: true, emit_null: true)]
    property on_behalf_of : Stripe::SubscriptionOnBehalfOf? = nil

    @[JSON::Field(key: "pause_collection", type: Stripe::SubscriptionsResourcePauseCollection?, default: nil, required: true, nullable: false, emit_null: false)]
    property pause_collection : Stripe::SubscriptionsResourcePauseCollection? = nil

    @[JSON::Field(key: "payment_settings", type: Stripe::SubscriptionsResourcePaymentSettings?, default: nil, required: true, nullable: false, emit_null: false)]
    property payment_settings : Stripe::SubscriptionsResourcePaymentSettings? = nil

    @[JSON::Field(key: "pending_invoice_item_interval", type: Stripe::SubscriptionPendingInvoiceItemInterval?, default: nil, required: true, nullable: false, emit_null: false)]
    property pending_invoice_item_interval : Stripe::SubscriptionPendingInvoiceItemInterval? = nil

    @[JSON::Field(key: "pending_setup_intent", type: Stripe::SubscriptionPendingSetupIntent?, default: nil, required: true, nullable: true, emit_null: true)]
    property pending_setup_intent : Stripe::SubscriptionPendingSetupIntent? = nil

    @[JSON::Field(key: "pending_update", type: Stripe::SubscriptionsResourcePendingUpdate?, default: nil, required: true, nullable: false, emit_null: false)]
    property pending_update : Stripe::SubscriptionsResourcePendingUpdate? = nil

    @[JSON::Field(key: "schedule", type: Stripe::SubscriptionSchedule1?, default: nil, required: true, nullable: true, emit_null: true)]
    property schedule : Stripe::SubscriptionSchedule1? = nil

    # Date when the subscription was first created. The date might differ from the `created` date due to backdating.
    @[JSON::Field(key: "start_date", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    property start_date : Int64? = nil

    # Possible values are `incomplete`, `incomplete_expired`, `trialing`, `active`, `past_due`, `canceled`, `unpaid`, or `paused`.   For `collection_method=charge_automatically` a subscription moves into `incomplete` if the initial payment attempt fails. A subscription in this status can only have metadata and default_source updated. Once the first invoice is paid, the subscription moves into an `active` status. If the first invoice is not paid within 23 hours, the subscription transitions to `incomplete_expired`. This is a terminal status, the open invoice will be voided and no further invoices will be generated.   A subscription that is currently in a trial period is `trialing` and moves to `active` when the trial period is over.   A subscription can only enter a `paused` status [when a trial ends without a payment method](/billing/subscriptions/trials#create-free-trials-without-payment). A `paused` subscription doesn't generate invoices and can be resumed after your customer adds their payment method. The `paused` status is different from [pausing collection](/billing/subscriptions/pause-payment), which still generates invoices and leaves the subscription's status unchanged.   If subscription `collection_method=charge_automatically`, it becomes `past_due` when payment is required but cannot be paid (due to failed payment or awaiting additional user actions). Once Stripe has exhausted all payment retry attempts, the subscription will become `canceled` or `unpaid` (depending on your subscriptions settings).   If subscription `collection_method=send_invoice` it becomes `past_due` when its invoice is not paid by the due date, and `canceled` or `unpaid` if it is still not paid by an additional deadline after that. Note that when a subscription has a status of `unpaid`, no subsequent invoices will be attempted (invoices will be created, but then immediately automatically closed). After receiving updated payment information from a customer, you may choose to reopen and pay their closed invoices.
    @[JSON::Field(key: "status", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    property status : String? = nil
    ERROR_MESSAGE_FOR_STATUS = "invalid value for \"status\", must be one of [active, canceled, incomplete, incomplete_expired, past_due, paused, trialing, unpaid]."
    VALID_VALUES_FOR_STATUS  = String.static_array("active", "canceled", "incomplete", "incomplete_expired", "past_due", "paused", "trialing", "unpaid")

    @[JSON::Field(key: "test_clock", type: Stripe::SubscriptionTestClock?, default: nil, required: true, nullable: true, emit_null: true)]
    property test_clock : Stripe::SubscriptionTestClock? = nil

    @[JSON::Field(key: "transfer_data", type: Stripe::SubscriptionTransferData?, default: nil, required: true, nullable: false, emit_null: false)]
    property transfer_data : Stripe::SubscriptionTransferData? = nil

    # If the subscription has a trial, the end of that trial.
    @[JSON::Field(key: "trial_end", type: Int64?, default: nil, required: true, nullable: true, emit_null: true)]
    property trial_end : Int64? = nil

    @[JSON::Field(key: "trial_settings", type: Stripe::SubscriptionsTrialsResourceTrialSettings?, default: nil, required: true, nullable: false, emit_null: false)]
    property trial_settings : Stripe::SubscriptionsTrialsResourceTrialSettings? = nil

    # If the subscription has a trial, the beginning of that trial.
    @[JSON::Field(key: "trial_start", type: Int64?, default: nil, required: true, nullable: true, emit_null: true)]
    property trial_start : Int64? = nil

    # End of Required Properties

    # Optional Properties

    # The tax rates that will apply to any subscription item that does not have `tax_rates` set. Invoices created will have their `default_tax_rates` populated from the subscription.
    @[JSON::Field(key: "default_tax_rates", type: Array(Stripe::TaxRate)?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: default_tax_rates.nil? && !default_tax_rates_present?)]
    property default_tax_rates : Array(Stripe::TaxRate)? = nil

    @[JSON::Field(ignore: true)]
    property? default_tax_rates_present : Bool = false

    # List of class defined in anyOf (OpenAPI v3)
    def self.openapi_any_of
      [
        String,
        Stripe::Subscription,
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @application : Stripe::SubscriptionApplication? = nil,
      @application_fee_percent : Float64? = nil,
      @automatic_tax : Stripe::SubscriptionAutomaticTax? = nil,
      @billing_cycle_anchor : Int64? = nil,
      @billing_cycle_anchor_config : Stripe::SubscriptionsResourceBillingCycleAnchorConfig? = nil,
      @billing_thresholds : Stripe::SubscriptionBillingThresholds? = nil,
      @cancel_at : Int64? = nil,
      @cancel_at_period_end : Bool? = nil,
      @canceled_at : Int64? = nil,
      @cancellation_details : Stripe::CancellationDetails? = nil,
      @collection_method : String? = nil,
      @created : Int64? = nil,
      @currency : String? = nil,
      @current_period_end : Int64? = nil,
      @current_period_start : Int64? = nil,
      @customer : Stripe::SubscriptionCustomer? = nil,
      @days_until_due : Int64? = nil,
      @default_payment_method : Stripe::SubscriptionDefaultPaymentMethod? = nil,
      @default_source : Stripe::SubscriptionDefaultSource? = nil,
      @description : String? = nil,
      @discount : Stripe::Discount? = nil,
      @discounts : Array(Stripe::InvoiceitemDiscountsInner)? = nil,
      @ended_at : Int64? = nil,
      @id : String? = nil,
      @invoice_settings : Stripe::SubscriptionsResourceSubscriptionInvoiceSettings? = nil,
      @items : Stripe::SubscriptionItemList? = nil,
      @latest_invoice : Stripe::SubscriptionLatestInvoice? = nil,
      @livemode : Bool? = nil,
      @metadata : Hash(String, String)? = nil,
      @next_pending_invoice_item_invoice : Int64? = nil,
      @object : String? = nil,
      @on_behalf_of : Stripe::SubscriptionOnBehalfOf? = nil,
      @pause_collection : Stripe::SubscriptionsResourcePauseCollection? = nil,
      @payment_settings : Stripe::SubscriptionsResourcePaymentSettings? = nil,
      @pending_invoice_item_interval : Stripe::SubscriptionPendingInvoiceItemInterval? = nil,
      @pending_setup_intent : Stripe::SubscriptionPendingSetupIntent? = nil,
      @pending_update : Stripe::SubscriptionsResourcePendingUpdate? = nil,
      @schedule : Stripe::SubscriptionSchedule1? = nil,
      @start_date : Int64? = nil,
      @status : String? = nil,
      @test_clock : Stripe::SubscriptionTestClock? = nil,
      @transfer_data : Stripe::SubscriptionTransferData? = nil,
      @trial_end : Int64? = nil,
      @trial_settings : Stripe::SubscriptionsTrialsResourceTrialSettings? = nil,
      @trial_start : Int64? = nil,
      # Optional properties
      @default_tax_rates : Array(Stripe::TaxRate)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      _any_of_found = false
      json_string : String = self.to_json
      _any_of_found = self.class.openapi_any_of.any? do |_class|
        _any_of = begin
          _class.from_json(json_string)
        rescue
          nil
        end

        !_any_of.nil? && _any_of.not_nil!.valid?
      end
      return false if !_any_of_found

      true
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@application, @application_fee_percent, @automatic_tax, @billing_cycle_anchor, @billing_cycle_anchor_config, @billing_thresholds, @cancel_at, @cancel_at_period_end, @canceled_at, @cancellation_details, @collection_method, @created, @currency, @current_period_end, @current_period_start, @customer, @days_until_due, @default_payment_method, @default_source, @description, @discount, @discounts, @ended_at, @id, @invoice_settings, @items, @latest_invoice, @livemode, @metadata, @next_pending_invoice_item_invoice, @object, @on_behalf_of, @pause_collection, @payment_settings, @pending_invoice_item_interval, @pending_setup_intent, @pending_update, @schedule, @start_date, @status, @test_clock, @transfer_data, @trial_end, @trial_settings, @trial_start, @default_tax_rates, @default_tax_rates_present)
  end
end