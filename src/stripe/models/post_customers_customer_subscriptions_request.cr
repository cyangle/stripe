#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-08-27
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module Stripe
  @[JSON::Serializable::Options(emit_nulls: true)]
  class PostCustomersCustomerSubscriptionsRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    # A list of prices and quantities that will generate invoice items appended to the first invoice for this subscription. You may pass up to 20 items.
    @[JSON::Field(key: "add_invoice_items", type: Array(AddInvoiceItemEntry)?, presence: true, ignore_serialize: add_invoice_items.nil? && !add_invoice_items_present?)]
    property add_invoice_items : Array(AddInvoiceItemEntry)?

    @[JSON::Field(ignore: true)]
    property? add_invoice_items_present : Bool = false

    # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice subtotal that will be transferred to the application owner's Stripe account. The request must be made by a platform account on a connected account in order to set an application fee percentage. For more information, see the application fees [documentation](https://stripe.com/docs/connect/subscriptions#collecting-fees-on-subscriptions).
    @[JSON::Field(key: "application_fee_percent", type: Float64?, presence: true, ignore_serialize: application_fee_percent.nil? && !application_fee_percent_present?)]
    property application_fee_percent : Float64?

    @[JSON::Field(ignore: true)]
    property? application_fee_percent_present : Bool = false

    @[JSON::Field(key: "automatic_tax", type: AutomaticTaxConfig?, presence: true, ignore_serialize: automatic_tax.nil? && !automatic_tax_present?)]
    property automatic_tax : AutomaticTaxConfig?

    @[JSON::Field(ignore: true)]
    property? automatic_tax_present : Bool = false

    # For new subscriptions, a past timestamp to backdate the subscription's start date to. If set, the first invoice will contain a proration for the timespan between the start date and the current time. Can be combined with trials and the billing cycle anchor.
    @[JSON::Field(key: "backdate_start_date", type: Int64?, presence: true, ignore_serialize: backdate_start_date.nil? && !backdate_start_date_present?)]
    property backdate_start_date : Int64?

    @[JSON::Field(ignore: true)]
    property? backdate_start_date_present : Bool = false

    # A future timestamp to anchor the subscription's [billing cycle](https://stripe.com/docs/subscriptions/billing-cycle). This is used to determine the date of the first full invoice, and, for plans with `month` or `year` intervals, the day of the month for subsequent invoices.
    @[JSON::Field(key: "billing_cycle_anchor", type: Int64?, presence: true, ignore_serialize: billing_cycle_anchor.nil? && !billing_cycle_anchor_present?)]
    property billing_cycle_anchor : Int64?

    @[JSON::Field(ignore: true)]
    property? billing_cycle_anchor_present : Bool = false

    @[JSON::Field(key: "billing_thresholds", type: PostCustomersCustomerSubscriptionsRequestBillingThresholds?, presence: true, ignore_serialize: billing_thresholds.nil? && !billing_thresholds_present?)]
    property billing_thresholds : PostCustomersCustomerSubscriptionsRequestBillingThresholds?

    @[JSON::Field(ignore: true)]
    property? billing_thresholds_present : Bool = false

    # A timestamp at which the subscription should cancel. If set to a date before the current period ends, this will cause a proration if prorations have been enabled using `proration_behavior`. If set during a future period, this will always cause a proration for that period.
    @[JSON::Field(key: "cancel_at", type: Int64?, presence: true, ignore_serialize: cancel_at.nil? && !cancel_at_present?)]
    property cancel_at : Int64?

    @[JSON::Field(ignore: true)]
    property? cancel_at_present : Bool = false

    # Boolean indicating whether this subscription should cancel at the end of the current period.
    @[JSON::Field(key: "cancel_at_period_end", type: Bool?, presence: true, ignore_serialize: cancel_at_period_end.nil? && !cancel_at_period_end_present?)]
    property cancel_at_period_end : Bool?

    @[JSON::Field(ignore: true)]
    property? cancel_at_period_end_present : Bool = false

    # Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay this subscription at the end of the cycle using the default source attached to the customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions. Defaults to `charge_automatically`.
    @[JSON::Field(key: "collection_method", type: String?, presence: true, ignore_serialize: collection_method.nil? && !collection_method_present?)]
    getter collection_method : String?

    @[JSON::Field(ignore: true)]
    property? collection_method_present : Bool = false

    ENUM_VALIDATOR_FOR_COLLECTION_METHOD = EnumValidator.new("collection_method", "String", ["charge_automatically", "send_invoice"])

    # The ID of the coupon to apply to this subscription. A coupon applied to a subscription will only affect invoices created for that particular subscription.
    @[JSON::Field(key: "coupon", type: String?, presence: true, ignore_serialize: coupon.nil? && !coupon_present?)]
    getter coupon : String?

    @[JSON::Field(ignore: true)]
    property? coupon_present : Bool = false

    # Number of days a customer has to pay invoices generated by this subscription. Valid only for subscriptions where `collection_method` is set to `send_invoice`.
    @[JSON::Field(key: "days_until_due", type: Int64?, presence: true, ignore_serialize: days_until_due.nil? && !days_until_due_present?)]
    property days_until_due : Int64?

    @[JSON::Field(ignore: true)]
    property? days_until_due_present : Bool = false

    # ID of the default payment method for the subscription. It must belong to the customer associated with the subscription. This takes precedence over `default_source`. If neither are set, invoices will use the customer's [invoice_settings.default_payment_method](https://stripe.com/docs/api/customers/object#customer_object-invoice_settings-default_payment_method) or [default_source](https://stripe.com/docs/api/customers/object#customer_object-default_source).
    @[JSON::Field(key: "default_payment_method", type: String?, presence: true, ignore_serialize: default_payment_method.nil? && !default_payment_method_present?)]
    getter default_payment_method : String?

    @[JSON::Field(ignore: true)]
    property? default_payment_method_present : Bool = false

    # ID of the default payment source for the subscription. It must belong to the customer associated with the subscription and be in a chargeable state. If `default_payment_method` is also set, `default_payment_method` will take precedence. If neither are set, invoices will use the customer's [invoice_settings.default_payment_method](https://stripe.com/docs/api/customers/object#customer_object-invoice_settings-default_payment_method) or [default_source](https://stripe.com/docs/api/customers/object#customer_object-default_source).
    @[JSON::Field(key: "default_source", type: String?, presence: true, ignore_serialize: default_source.nil? && !default_source_present?)]
    getter default_source : String?

    @[JSON::Field(ignore: true)]
    property? default_source_present : Bool = false

    @[JSON::Field(key: "default_tax_rates", type: PostCustomersCustomerSubscriptionsRequestDefaultTaxRates?, presence: true, ignore_serialize: default_tax_rates.nil? && !default_tax_rates_present?)]
    property default_tax_rates : PostCustomersCustomerSubscriptionsRequestDefaultTaxRates?

    @[JSON::Field(ignore: true)]
    property? default_tax_rates_present : Bool = false

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, presence: true, ignore_serialize: expand.nil? && !expand_present?)]
    property expand : Array(String)?

    @[JSON::Field(ignore: true)]
    property? expand_present : Bool = false

    # A list of up to 20 subscription items, each with an attached price.
    @[JSON::Field(key: "items", type: Array(SubscriptionItemCreateParams)?, presence: true, ignore_serialize: items.nil? && !items_present?)]
    property items : Array(SubscriptionItemCreateParams)?

    @[JSON::Field(ignore: true)]
    property? items_present : Bool = false

    @[JSON::Field(key: "metadata", type: PostAccountRequestMetadata?, presence: true, ignore_serialize: metadata.nil? && !metadata_present?)]
    property metadata : PostAccountRequestMetadata?

    @[JSON::Field(ignore: true)]
    property? metadata_present : Bool = false

    # Indicates if a customer is on or off-session while an invoice payment is attempted.
    @[JSON::Field(key: "off_session", type: Bool?, presence: true, ignore_serialize: off_session.nil? && !off_session_present?)]
    property off_session : Bool?

    @[JSON::Field(ignore: true)]
    property? off_session_present : Bool = false

    # Use `allow_incomplete` to create subscriptions with `status=incomplete` if the first invoice cannot be paid. Creating subscriptions with this status allows you to manage scenarios where additional user actions are needed to pay a subscription's invoice. For example, SCA regulation may require 3DS authentication to complete payment. See the [SCA Migration Guide](https://stripe.com/docs/billing/migration/strong-customer-authentication) for Billing to learn more. This is the default behavior.  Use `default_incomplete` to create Subscriptions with `status=incomplete` when the first invoice requires payment, otherwise start as active. Subscriptions transition to `status=active` when successfully confirming the payment intent on the first invoice. This allows simpler management of scenarios where additional user actions are needed to pay a subscription’s invoice. Such as failed payments, [SCA regulation](https://stripe.com/docs/billing/migration/strong-customer-authentication), or collecting a mandate for a bank debit payment method. If the payment intent is not confirmed within 23 hours subscriptions transition to `status=incomplete_expired`, which is a terminal state.  Use `error_if_incomplete` if you want Stripe to return an HTTP 402 status code if a subscription's first invoice cannot be paid. For example, if a payment method requires 3DS authentication due to SCA regulation and further user action is needed, this parameter does not create a subscription and returns an error instead. This was the default behavior for API versions prior to 2019-03-14. See the [changelog](https://stripe.com/docs/upgrades#2019-03-14) to learn more.  `pending_if_incomplete` is only used with updates and cannot be passed when creating a subscription.
    @[JSON::Field(key: "payment_behavior", type: String?, presence: true, ignore_serialize: payment_behavior.nil? && !payment_behavior_present?)]
    getter payment_behavior : String?

    @[JSON::Field(ignore: true)]
    property? payment_behavior_present : Bool = false

    ENUM_VALIDATOR_FOR_PAYMENT_BEHAVIOR = EnumValidator.new("payment_behavior", "String", ["allow_incomplete", "default_incomplete", "error_if_incomplete", "pending_if_incomplete"])

    @[JSON::Field(key: "payment_settings", type: PaymentSettings?, presence: true, ignore_serialize: payment_settings.nil? && !payment_settings_present?)]
    property payment_settings : PaymentSettings?

    @[JSON::Field(ignore: true)]
    property? payment_settings_present : Bool = false

    @[JSON::Field(key: "pending_invoice_item_interval", type: PostCustomersCustomerSubscriptionsRequestPendingInvoiceItemInterval?, presence: true, ignore_serialize: pending_invoice_item_interval.nil? && !pending_invoice_item_interval_present?)]
    property pending_invoice_item_interval : PostCustomersCustomerSubscriptionsRequestPendingInvoiceItemInterval?

    @[JSON::Field(ignore: true)]
    property? pending_invoice_item_interval_present : Bool = false

    # The API ID of a promotion code to apply to this subscription. A promotion code applied to a subscription will only affect invoices created for that particular subscription.
    @[JSON::Field(key: "promotion_code", type: String?, presence: true, ignore_serialize: promotion_code.nil? && !promotion_code_present?)]
    getter promotion_code : String?

    @[JSON::Field(ignore: true)]
    property? promotion_code_present : Bool = false

    # Determines how to handle [prorations](https://stripe.com/docs/subscriptions/billing-cycle#prorations) resulting from the `billing_cycle_anchor`. Valid values are `create_prorations` or `none`.  Passing `create_prorations` will cause proration invoice items to be created when applicable. Prorations can be disabled by passing `none`. If no value is passed, the default is `create_prorations`.
    @[JSON::Field(key: "proration_behavior", type: String?, presence: true, ignore_serialize: proration_behavior.nil? && !proration_behavior_present?)]
    getter proration_behavior : String?

    @[JSON::Field(ignore: true)]
    property? proration_behavior_present : Bool = false

    ENUM_VALIDATOR_FOR_PRORATION_BEHAVIOR = EnumValidator.new("proration_behavior", "String", ["always_invoice", "create_prorations", "none"])

    @[JSON::Field(key: "transfer_data", type: TransferDataSpecs3?, presence: true, ignore_serialize: transfer_data.nil? && !transfer_data_present?)]
    property transfer_data : TransferDataSpecs3?

    @[JSON::Field(ignore: true)]
    property? transfer_data_present : Bool = false

    @[JSON::Field(key: "trial_end", type: PostCustomersCustomerSubscriptionsRequestTrialEnd?, presence: true, ignore_serialize: trial_end.nil? && !trial_end_present?)]
    property trial_end : PostCustomersCustomerSubscriptionsRequestTrialEnd?

    @[JSON::Field(ignore: true)]
    property? trial_end_present : Bool = false

    # Indicates if a plan's `trial_period_days` should be applied to the subscription. Setting `trial_end` per subscription is preferred, and this defaults to `false`. Setting this flag to `true` together with `trial_end` is not allowed. See [Using trial periods on subscriptions](https://stripe.com/docs/billing/subscriptions/trials) to learn more.
    @[JSON::Field(key: "trial_from_plan", type: Bool?, presence: true, ignore_serialize: trial_from_plan.nil? && !trial_from_plan_present?)]
    property trial_from_plan : Bool?

    @[JSON::Field(ignore: true)]
    property? trial_from_plan_present : Bool = false

    # Integer representing the number of trial period days before the customer is charged for the first time. This will always overwrite any trials that might apply via a subscribed plan. See [Using trial periods on subscriptions](https://stripe.com/docs/billing/subscriptions/trials) to learn more.
    @[JSON::Field(key: "trial_period_days", type: Int64?, presence: true, ignore_serialize: trial_period_days.nil? && !trial_period_days_present?)]
    property trial_period_days : Int64?

    @[JSON::Field(ignore: true)]
    property? trial_period_days_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @add_invoice_items : Array(AddInvoiceItemEntry)? = nil,
      @application_fee_percent : Float64? = nil,
      @automatic_tax : AutomaticTaxConfig? = nil,
      @backdate_start_date : Int64? = nil,
      @billing_cycle_anchor : Int64? = nil,
      @billing_thresholds : PostCustomersCustomerSubscriptionsRequestBillingThresholds? = nil,
      @cancel_at : Int64? = nil,
      @cancel_at_period_end : Bool? = nil,
      @collection_method : String? = nil,
      @coupon : String? = nil,
      @days_until_due : Int64? = nil,
      @default_payment_method : String? = nil,
      @default_source : String? = nil,
      @default_tax_rates : PostCustomersCustomerSubscriptionsRequestDefaultTaxRates? = nil,
      @expand : Array(String)? = nil,
      @items : Array(SubscriptionItemCreateParams)? = nil,
      @metadata : PostAccountRequestMetadata? = nil,
      @off_session : Bool? = nil,
      @payment_behavior : String? = nil,
      @payment_settings : PaymentSettings? = nil,
      @pending_invoice_item_interval : PostCustomersCustomerSubscriptionsRequestPendingInvoiceItemInterval? = nil,
      @promotion_code : String? = nil,
      @proration_behavior : String? = nil,
      @transfer_data : TransferDataSpecs3? = nil,
      @trial_end : PostCustomersCustomerSubscriptionsRequestTrialEnd? = nil,
      @trial_from_plan : Bool? = nil,
      @trial_period_days : Int64? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_COLLECTION_METHOD.error_message) unless ENUM_VALIDATOR_FOR_COLLECTION_METHOD.valid?(@collection_method)

      if !@coupon.nil? && @coupon.to_s.size > 5000
        invalid_properties.push("invalid value for \"coupon\", the character length must be smaller than or equal to 5000.")
      end

      if !@default_payment_method.nil? && @default_payment_method.to_s.size > 5000
        invalid_properties.push("invalid value for \"default_payment_method\", the character length must be smaller than or equal to 5000.")
      end

      if !@default_source.nil? && @default_source.to_s.size > 5000
        invalid_properties.push("invalid value for \"default_source\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_PAYMENT_BEHAVIOR.error_message) unless ENUM_VALIDATOR_FOR_PAYMENT_BEHAVIOR.valid?(@payment_behavior)

      if !@promotion_code.nil? && @promotion_code.to_s.size > 5000
        invalid_properties.push("invalid value for \"promotion_code\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_PRORATION_BEHAVIOR.error_message) unless ENUM_VALIDATOR_FOR_PRORATION_BEHAVIOR.valid?(@proration_behavior)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR_COLLECTION_METHOD.valid?(@collection_method)
      return false if !@coupon.nil? && @coupon.to_s.size > 5000
      return false if !@default_payment_method.nil? && @default_payment_method.to_s.size > 5000
      return false if !@default_source.nil? && @default_source.to_s.size > 5000
      return false unless ENUM_VALIDATOR_FOR_PAYMENT_BEHAVIOR.valid?(@payment_behavior)
      return false if !@promotion_code.nil? && @promotion_code.to_s.size > 5000
      return false unless ENUM_VALIDATOR_FOR_PRORATION_BEHAVIOR.valid?(@proration_behavior)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] collection_method Object to be assigned
    def collection_method=(collection_method : String?)
      ENUM_VALIDATOR_FOR_COLLECTION_METHOD.valid!(collection_method)
      @collection_method = collection_method
    end

    # Custom attribute writer method with validation
    # @param [Object] coupon Value to be assigned
    def coupon=(coupon : String?)
      if !coupon.nil? && coupon.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"coupon\", the character length must be smaller than or equal to 5000.")
      end

      @coupon = coupon
    end

    # Custom attribute writer method with validation
    # @param [Object] default_payment_method Value to be assigned
    def default_payment_method=(default_payment_method : String?)
      if !default_payment_method.nil? && default_payment_method.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"default_payment_method\", the character length must be smaller than or equal to 5000.")
      end

      @default_payment_method = default_payment_method
    end

    # Custom attribute writer method with validation
    # @param [Object] default_source Value to be assigned
    def default_source=(default_source : String?)
      if !default_source.nil? && default_source.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"default_source\", the character length must be smaller than or equal to 5000.")
      end

      @default_source = default_source
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_behavior Object to be assigned
    def payment_behavior=(payment_behavior : String?)
      ENUM_VALIDATOR_FOR_PAYMENT_BEHAVIOR.valid!(payment_behavior)
      @payment_behavior = payment_behavior
    end

    # Custom attribute writer method with validation
    # @param [Object] promotion_code Value to be assigned
    def promotion_code=(promotion_code : String?)
      if !promotion_code.nil? && promotion_code.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"promotion_code\", the character length must be smaller than or equal to 5000.")
      end

      @promotion_code = promotion_code
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] proration_behavior Object to be assigned
    def proration_behavior=(proration_behavior : String?)
      ENUM_VALIDATOR_FOR_PRORATION_BEHAVIOR.valid!(proration_behavior)
      @proration_behavior = proration_behavior
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@add_invoice_items, @add_invoice_items_present, @application_fee_percent, @application_fee_percent_present, @automatic_tax, @automatic_tax_present, @backdate_start_date, @backdate_start_date_present, @billing_cycle_anchor, @billing_cycle_anchor_present, @billing_thresholds, @billing_thresholds_present, @cancel_at, @cancel_at_present, @cancel_at_period_end, @cancel_at_period_end_present, @collection_method, @collection_method_present, @coupon, @coupon_present, @days_until_due, @days_until_due_present, @default_payment_method, @default_payment_method_present, @default_source, @default_source_present, @default_tax_rates, @default_tax_rates_present, @expand, @expand_present, @items, @items_present, @metadata, @metadata_present, @off_session, @off_session_present, @payment_behavior, @payment_behavior_present, @payment_settings, @payment_settings_present, @pending_invoice_item_interval, @pending_invoice_item_interval_present, @promotion_code, @promotion_code_present, @proration_behavior, @proration_behavior_present, @transfer_data, @transfer_data_present, @trial_end, @trial_end_present, @trial_from_plan, @trial_from_plan_present, @trial_period_days, @trial_period_days_present)
  end
end
