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
  class PostCustomersCustomerSubscriptionsRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # A list of prices and quantities that will generate invoice items appended to the next invoice for this subscription. You may pass up to 20 items.
    @[JSON::Field(key: "add_invoice_items", type: Array(Stripe::AddInvoiceItemEntry)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter add_invoice_items : Array(Stripe::AddInvoiceItemEntry)? = nil

    # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice subtotal that will be transferred to the application owner's Stripe account. The request must be made by a platform account on a connected account in order to set an application fee percentage. For more information, see the application fees [documentation](https://stripe.com/docs/connect/subscriptions#collecting-fees-on-subscriptions).
    @[JSON::Field(key: "application_fee_percent", type: Float64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter application_fee_percent : Float64? = nil

    @[JSON::Field(key: "automatic_tax", type: Stripe::AutomaticTaxConfig?, default: nil, required: false, nullable: false, emit_null: false)]
    getter automatic_tax : Stripe::AutomaticTaxConfig? = nil

    # For new subscriptions, a past timestamp to backdate the subscription's start date to. If set, the first invoice will contain a proration for the timespan between the start date and the current time. Can be combined with trials and the billing cycle anchor.
    @[JSON::Field(key: "backdate_start_date", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter backdate_start_date : Int64? = nil

    # A future timestamp to anchor the subscription's [billing cycle](https://stripe.com/docs/subscriptions/billing-cycle). This is used to determine the date of the first full invoice, and, for plans with `month` or `year` intervals, the day of the month for subsequent invoices. The timestamp is in UTC format.
    @[JSON::Field(key: "billing_cycle_anchor", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter billing_cycle_anchor : Int64? = nil

    @[JSON::Field(key: "billing_thresholds", type: Stripe::PostCustomersCustomerSubscriptionsRequestBillingThresholds?, default: nil, required: false, nullable: false, emit_null: false)]
    getter billing_thresholds : Stripe::PostCustomersCustomerSubscriptionsRequestBillingThresholds? = nil

    # A timestamp at which the subscription should cancel. If set to a date before the current period ends, this will cause a proration if prorations have been enabled using `proration_behavior`. If set during a future period, this will always cause a proration for that period.
    @[JSON::Field(key: "cancel_at", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter cancel_at : Int64? = nil

    # Boolean indicating whether this subscription should cancel at the end of the current period.
    @[JSON::Field(key: "cancel_at_period_end", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter cancel_at_period_end : Bool? = nil

    # Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay this subscription at the end of the cycle using the default source attached to the customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions. Defaults to `charge_automatically`.
    @[JSON::Field(key: "collection_method", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter collection_method : String? = nil
    ERROR_MESSAGE_FOR_COLLECTION_METHOD = "invalid value for \"collection_method\", must be one of [charge_automatically, send_invoice]."
    VALID_VALUES_FOR_COLLECTION_METHOD  = String.static_array("charge_automatically", "send_invoice")

    # The ID of the coupon to apply to this subscription. A coupon applied to a subscription will only affect invoices created for that particular subscription.
    @[JSON::Field(key: "coupon", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter coupon : String? = nil
    MAX_LENGTH_FOR_COUPON = 5000

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[JSON::Field(key: "currency", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter currency : String? = nil

    # Number of days a customer has to pay invoices generated by this subscription. Valid only for subscriptions where `collection_method` is set to `send_invoice`.
    @[JSON::Field(key: "days_until_due", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter days_until_due : Int64? = nil

    # ID of the default payment method for the subscription. It must belong to the customer associated with the subscription. This takes precedence over `default_source`. If neither are set, invoices will use the customer's [invoice_settings.default_payment_method](https://stripe.com/docs/api/customers/object#customer_object-invoice_settings-default_payment_method) or [default_source](https://stripe.com/docs/api/customers/object#customer_object-default_source).
    @[JSON::Field(key: "default_payment_method", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter default_payment_method : String? = nil
    MAX_LENGTH_FOR_DEFAULT_PAYMENT_METHOD = 5000

    # ID of the default payment source for the subscription. It must belong to the customer associated with the subscription and be in a chargeable state. If `default_payment_method` is also set, `default_payment_method` will take precedence. If neither are set, invoices will use the customer's [invoice_settings.default_payment_method](https://stripe.com/docs/api/customers/object#customer_object-invoice_settings-default_payment_method) or [default_source](https://stripe.com/docs/api/customers/object#customer_object-default_source).
    @[JSON::Field(key: "default_source", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter default_source : String? = nil
    MAX_LENGTH_FOR_DEFAULT_SOURCE = 5000

    @[JSON::Field(key: "default_tax_rates", type: Stripe::PostCustomersCustomerSubscriptionsRequestDefaultTaxRates?, default: nil, required: false, nullable: false, emit_null: false)]
    getter default_tax_rates : Stripe::PostCustomersCustomerSubscriptionsRequestDefaultTaxRates? = nil

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    # A list of up to 20 subscription items, each with an attached price.
    @[JSON::Field(key: "items", type: Array(Stripe::SubscriptionItemCreateParams)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter items : Array(Stripe::SubscriptionItemCreateParams)? = nil

    @[JSON::Field(key: "metadata", type: Stripe::PostAccountRequestMetadata?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Stripe::PostAccountRequestMetadata? = nil

    # Indicates if a customer is on or off-session while an invoice payment is attempted.
    @[JSON::Field(key: "off_session", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter off_session : Bool? = nil

    # Use `allow_incomplete` to create subscriptions with `status=incomplete` if the first invoice cannot be paid. Creating subscriptions with this status allows you to manage scenarios where additional user actions are needed to pay a subscription's invoice. For example, SCA regulation may require 3DS authentication to complete payment. See the [SCA Migration Guide](https://stripe.com/docs/billing/migration/strong-customer-authentication) for Billing to learn more. This is the default behavior.  Use `default_incomplete` to create Subscriptions with `status=incomplete` when the first invoice requires payment, otherwise start as active. Subscriptions transition to `status=active` when successfully confirming the payment intent on the first invoice. This allows simpler management of scenarios where additional user actions are needed to pay a subscription’s invoice. Such as failed payments, [SCA regulation](https://stripe.com/docs/billing/migration/strong-customer-authentication), or collecting a mandate for a bank debit payment method. If the payment intent is not confirmed within 23 hours subscriptions transition to `status=incomplete_expired`, which is a terminal state.  Use `error_if_incomplete` if you want Stripe to return an HTTP 402 status code if a subscription's first invoice cannot be paid. For example, if a payment method requires 3DS authentication due to SCA regulation and further user action is needed, this parameter does not create a subscription and returns an error instead. This was the default behavior for API versions prior to 2019-03-14. See the [changelog](https://stripe.com/docs/upgrades#2019-03-14) to learn more.  `pending_if_incomplete` is only used with updates and cannot be passed when creating a subscription.
    @[JSON::Field(key: "payment_behavior", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter payment_behavior : String? = nil
    ERROR_MESSAGE_FOR_PAYMENT_BEHAVIOR = "invalid value for \"payment_behavior\", must be one of [allow_incomplete, default_incomplete, error_if_incomplete, pending_if_incomplete]."
    VALID_VALUES_FOR_PAYMENT_BEHAVIOR  = String.static_array("allow_incomplete", "default_incomplete", "error_if_incomplete", "pending_if_incomplete")

    @[JSON::Field(key: "payment_settings", type: Stripe::PaymentSettings?, default: nil, required: false, nullable: false, emit_null: false)]
    getter payment_settings : Stripe::PaymentSettings? = nil

    @[JSON::Field(key: "pending_invoice_item_interval", type: Stripe::PostCustomersCustomerSubscriptionsRequestPendingInvoiceItemInterval?, default: nil, required: false, nullable: false, emit_null: false)]
    getter pending_invoice_item_interval : Stripe::PostCustomersCustomerSubscriptionsRequestPendingInvoiceItemInterval? = nil

    # The API ID of a promotion code to apply to this subscription. A promotion code applied to a subscription will only affect invoices created for that particular subscription.
    @[JSON::Field(key: "promotion_code", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter promotion_code : String? = nil
    MAX_LENGTH_FOR_PROMOTION_CODE = 5000

    # Determines how to handle [prorations](https://stripe.com/docs/subscriptions/billing-cycle#prorations) resulting from the `billing_cycle_anchor`. If no value is passed, the default is `create_prorations`.
    @[JSON::Field(key: "proration_behavior", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter proration_behavior : String? = nil
    ERROR_MESSAGE_FOR_PRORATION_BEHAVIOR = "invalid value for \"proration_behavior\", must be one of [always_invoice, create_prorations, none]."
    VALID_VALUES_FOR_PRORATION_BEHAVIOR  = String.static_array("always_invoice", "create_prorations", "none")

    @[JSON::Field(key: "transfer_data", type: Stripe::TransferDataSpecs3?, default: nil, required: false, nullable: false, emit_null: false)]
    getter transfer_data : Stripe::TransferDataSpecs3? = nil

    @[JSON::Field(key: "trial_end", type: Stripe::PostCustomersCustomerSubscriptionsRequestTrialEnd?, default: nil, required: false, nullable: false, emit_null: false)]
    getter trial_end : Stripe::PostCustomersCustomerSubscriptionsRequestTrialEnd? = nil

    # Indicates if a plan's `trial_period_days` should be applied to the subscription. Setting `trial_end` per subscription is preferred, and this defaults to `false`. Setting this flag to `true` together with `trial_end` is not allowed. See [Using trial periods on subscriptions](https://stripe.com/docs/billing/subscriptions/trials) to learn more.
    @[JSON::Field(key: "trial_from_plan", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter trial_from_plan : Bool? = nil

    # Integer representing the number of trial period days before the customer is charged for the first time. This will always overwrite any trials that might apply via a subscribed plan. See [Using trial periods on subscriptions](https://stripe.com/docs/billing/subscriptions/trials) to learn more.
    @[JSON::Field(key: "trial_period_days", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter trial_period_days : Int64? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @add_invoice_items : Array(Stripe::AddInvoiceItemEntry)? = nil,
      @application_fee_percent : Float64? = nil,
      @automatic_tax : Stripe::AutomaticTaxConfig? = nil,
      @backdate_start_date : Int64? = nil,
      @billing_cycle_anchor : Int64? = nil,
      @billing_thresholds : Stripe::PostCustomersCustomerSubscriptionsRequestBillingThresholds? = nil,
      @cancel_at : Int64? = nil,
      @cancel_at_period_end : Bool? = nil,
      @collection_method : String? = nil,
      @coupon : String? = nil,
      @currency : String? = nil,
      @days_until_due : Int64? = nil,
      @default_payment_method : String? = nil,
      @default_source : String? = nil,
      @default_tax_rates : Stripe::PostCustomersCustomerSubscriptionsRequestDefaultTaxRates? = nil,
      @expand : Array(String)? = nil,
      @items : Array(Stripe::SubscriptionItemCreateParams)? = nil,
      @metadata : Stripe::PostAccountRequestMetadata? = nil,
      @off_session : Bool? = nil,
      @payment_behavior : String? = nil,
      @payment_settings : Stripe::PaymentSettings? = nil,
      @pending_invoice_item_interval : Stripe::PostCustomersCustomerSubscriptionsRequestPendingInvoiceItemInterval? = nil,
      @promotion_code : String? = nil,
      @proration_behavior : String? = nil,
      @transfer_data : Stripe::TransferDataSpecs3? = nil,
      @trial_end : Stripe::PostCustomersCustomerSubscriptionsRequestTrialEnd? = nil,
      @trial_from_plan : Bool? = nil,
      @trial_period_days : Int64? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_add_invoice_items = @add_invoice_items).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "add_invoice_items", container: _add_invoice_items)) if _add_invoice_items.is_a?(Array)
      end

      unless (_automatic_tax = @automatic_tax).nil?
        invalid_properties.concat(_automatic_tax.list_invalid_properties_for("automatic_tax")) if _automatic_tax.is_a?(OpenApi::Validatable)
      end

      unless (_billing_thresholds = @billing_thresholds).nil?
        invalid_properties.concat(_billing_thresholds.list_invalid_properties_for("billing_thresholds")) if _billing_thresholds.is_a?(OpenApi::Validatable)
      end

      unless (_collection_method = @collection_method).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_COLLECTION_METHOD) unless OpenApi::EnumValidator.valid?(_collection_method, VALID_VALUES_FOR_COLLECTION_METHOD)
      end
      unless (_coupon = @coupon).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("coupon", _coupon.to_s.size, MAX_LENGTH_FOR_COUPON)
          invalid_properties.push(max_length_error)
        end
      end

      unless (_default_payment_method = @default_payment_method).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("default_payment_method", _default_payment_method.to_s.size, MAX_LENGTH_FOR_DEFAULT_PAYMENT_METHOD)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_default_source = @default_source).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("default_source", _default_source.to_s.size, MAX_LENGTH_FOR_DEFAULT_SOURCE)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_default_tax_rates = @default_tax_rates).nil?
        invalid_properties.concat(_default_tax_rates.list_invalid_properties_for("default_tax_rates")) if _default_tax_rates.is_a?(OpenApi::Validatable)
      end

      unless (_items = @items).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "items", container: _items)) if _items.is_a?(Array)
      end
      unless (_metadata = @metadata).nil?
        invalid_properties.concat(_metadata.list_invalid_properties_for("metadata")) if _metadata.is_a?(OpenApi::Validatable)
      end

      unless (_payment_behavior = @payment_behavior).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_PAYMENT_BEHAVIOR) unless OpenApi::EnumValidator.valid?(_payment_behavior, VALID_VALUES_FOR_PAYMENT_BEHAVIOR)
      end
      unless (_payment_settings = @payment_settings).nil?
        invalid_properties.concat(_payment_settings.list_invalid_properties_for("payment_settings")) if _payment_settings.is_a?(OpenApi::Validatable)
      end
      unless (_pending_invoice_item_interval = @pending_invoice_item_interval).nil?
        invalid_properties.concat(_pending_invoice_item_interval.list_invalid_properties_for("pending_invoice_item_interval")) if _pending_invoice_item_interval.is_a?(OpenApi::Validatable)
      end
      unless (_promotion_code = @promotion_code).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("promotion_code", _promotion_code.to_s.size, MAX_LENGTH_FOR_PROMOTION_CODE)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_proration_behavior = @proration_behavior).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_PRORATION_BEHAVIOR) unless OpenApi::EnumValidator.valid?(_proration_behavior, VALID_VALUES_FOR_PRORATION_BEHAVIOR)
      end
      unless (_transfer_data = @transfer_data).nil?
        invalid_properties.concat(_transfer_data.list_invalid_properties_for("transfer_data")) if _transfer_data.is_a?(OpenApi::Validatable)
      end
      unless (_trial_end = @trial_end).nil?
        invalid_properties.concat(_trial_end.list_invalid_properties_for("trial_end")) if _trial_end.is_a?(OpenApi::Validatable)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_add_invoice_items = @add_invoice_items).nil?
        return false if _add_invoice_items.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _add_invoice_items)
      end

      unless (_automatic_tax = @automatic_tax).nil?
        return false if _automatic_tax.is_a?(OpenApi::Validatable) && !_automatic_tax.valid?
      end

      unless (_billing_thresholds = @billing_thresholds).nil?
        return false if _billing_thresholds.is_a?(OpenApi::Validatable) && !_billing_thresholds.valid?
      end

      unless (_collection_method = @collection_method).nil?
        return false unless OpenApi::EnumValidator.valid?(_collection_method, VALID_VALUES_FOR_COLLECTION_METHOD)
      end

      unless (_coupon = @coupon).nil?
        return false if _coupon.to_s.size > MAX_LENGTH_FOR_COUPON
      end

      unless (_default_payment_method = @default_payment_method).nil?
        return false if _default_payment_method.to_s.size > MAX_LENGTH_FOR_DEFAULT_PAYMENT_METHOD
      end

      unless (_default_source = @default_source).nil?
        return false if _default_source.to_s.size > MAX_LENGTH_FOR_DEFAULT_SOURCE
      end

      unless (_default_tax_rates = @default_tax_rates).nil?
        return false if _default_tax_rates.is_a?(OpenApi::Validatable) && !_default_tax_rates.valid?
      end

      unless (_items = @items).nil?
        return false if _items.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _items)
      end

      unless (_metadata = @metadata).nil?
        return false if _metadata.is_a?(OpenApi::Validatable) && !_metadata.valid?
      end

      unless (_payment_behavior = @payment_behavior).nil?
        return false unless OpenApi::EnumValidator.valid?(_payment_behavior, VALID_VALUES_FOR_PAYMENT_BEHAVIOR)
      end

      unless (_payment_settings = @payment_settings).nil?
        return false if _payment_settings.is_a?(OpenApi::Validatable) && !_payment_settings.valid?
      end

      unless (_pending_invoice_item_interval = @pending_invoice_item_interval).nil?
        return false if _pending_invoice_item_interval.is_a?(OpenApi::Validatable) && !_pending_invoice_item_interval.valid?
      end

      unless (_promotion_code = @promotion_code).nil?
        return false if _promotion_code.to_s.size > MAX_LENGTH_FOR_PROMOTION_CODE
      end

      unless (_proration_behavior = @proration_behavior).nil?
        return false unless OpenApi::EnumValidator.valid?(_proration_behavior, VALID_VALUES_FOR_PRORATION_BEHAVIOR)
      end

      unless (_transfer_data = @transfer_data).nil?
        return false if _transfer_data.is_a?(OpenApi::Validatable) && !_transfer_data.valid?
      end

      unless (_trial_end = @trial_end).nil?
        return false if _trial_end.is_a?(OpenApi::Validatable) && !_trial_end.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] add_invoice_items Object to be assigned
    def add_invoice_items=(add_invoice_items : Array(Stripe::AddInvoiceItemEntry)?)
      if add_invoice_items.nil?
        return @add_invoice_items = nil
      end
      _add_invoice_items = add_invoice_items.not_nil!
      OpenApi::ContainerValidator.validate(container: _add_invoice_items) if _add_invoice_items.is_a?(Array)
      @add_invoice_items = _add_invoice_items
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
    def automatic_tax=(automatic_tax : Stripe::AutomaticTaxConfig?)
      if automatic_tax.nil?
        return @automatic_tax = nil
      end
      _automatic_tax = automatic_tax.not_nil!
      _automatic_tax.validate if _automatic_tax.is_a?(OpenApi::Validatable)
      @automatic_tax = _automatic_tax
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] backdate_start_date Object to be assigned
    def backdate_start_date=(backdate_start_date : Int64?)
      if backdate_start_date.nil?
        return @backdate_start_date = nil
      end
      _backdate_start_date = backdate_start_date.not_nil!
      @backdate_start_date = _backdate_start_date
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] billing_cycle_anchor Object to be assigned
    def billing_cycle_anchor=(billing_cycle_anchor : Int64?)
      if billing_cycle_anchor.nil?
        return @billing_cycle_anchor = nil
      end
      _billing_cycle_anchor = billing_cycle_anchor.not_nil!
      @billing_cycle_anchor = _billing_cycle_anchor
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] billing_thresholds Object to be assigned
    def billing_thresholds=(billing_thresholds : Stripe::PostCustomersCustomerSubscriptionsRequestBillingThresholds?)
      if billing_thresholds.nil?
        return @billing_thresholds = nil
      end
      _billing_thresholds = billing_thresholds.not_nil!
      _billing_thresholds.validate if _billing_thresholds.is_a?(OpenApi::Validatable)
      @billing_thresholds = _billing_thresholds
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cancel_at Object to be assigned
    def cancel_at=(cancel_at : Int64?)
      if cancel_at.nil?
        return @cancel_at = nil
      end
      _cancel_at = cancel_at.not_nil!
      @cancel_at = _cancel_at
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cancel_at_period_end Object to be assigned
    def cancel_at_period_end=(cancel_at_period_end : Bool?)
      if cancel_at_period_end.nil?
        return @cancel_at_period_end = nil
      end
      _cancel_at_period_end = cancel_at_period_end.not_nil!
      @cancel_at_period_end = _cancel_at_period_end
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
    def coupon=(coupon : String?)
      if coupon.nil?
        return @coupon = nil
      end
      _coupon = coupon.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("coupon", _coupon.to_s.size, MAX_LENGTH_FOR_COUPON)
      @coupon = _coupon
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] currency Object to be assigned
    def currency=(currency : String?)
      if currency.nil?
        return @currency = nil
      end
      _currency = currency.not_nil!
      @currency = _currency
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] days_until_due Object to be assigned
    def days_until_due=(days_until_due : Int64?)
      if days_until_due.nil?
        return @days_until_due = nil
      end
      _days_until_due = days_until_due.not_nil!
      @days_until_due = _days_until_due
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
    # @param [Object] default_source Object to be assigned
    def default_source=(default_source : String?)
      if default_source.nil?
        return @default_source = nil
      end
      _default_source = default_source.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("default_source", _default_source.to_s.size, MAX_LENGTH_FOR_DEFAULT_SOURCE)
      @default_source = _default_source
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] default_tax_rates Object to be assigned
    def default_tax_rates=(default_tax_rates : Stripe::PostCustomersCustomerSubscriptionsRequestDefaultTaxRates?)
      if default_tax_rates.nil?
        return @default_tax_rates = nil
      end
      _default_tax_rates = default_tax_rates.not_nil!
      _default_tax_rates.validate if _default_tax_rates.is_a?(OpenApi::Validatable)
      @default_tax_rates = _default_tax_rates
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expand Object to be assigned
    def expand=(expand : Array(String)?)
      if expand.nil?
        return @expand = nil
      end
      _expand = expand.not_nil!
      @expand = _expand
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] items Object to be assigned
    def items=(items : Array(Stripe::SubscriptionItemCreateParams)?)
      if items.nil?
        return @items = nil
      end
      _items = items.not_nil!
      OpenApi::ContainerValidator.validate(container: _items) if _items.is_a?(Array)
      @items = _items
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(metadata : Stripe::PostAccountRequestMetadata?)
      if metadata.nil?
        return @metadata = nil
      end
      _metadata = metadata.not_nil!
      _metadata.validate if _metadata.is_a?(OpenApi::Validatable)
      @metadata = _metadata
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] off_session Object to be assigned
    def off_session=(off_session : Bool?)
      if off_session.nil?
        return @off_session = nil
      end
      _off_session = off_session.not_nil!
      @off_session = _off_session
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_behavior Object to be assigned
    def payment_behavior=(payment_behavior : String?)
      if payment_behavior.nil?
        return @payment_behavior = nil
      end
      _payment_behavior = payment_behavior.not_nil!
      OpenApi::EnumValidator.validate("payment_behavior", _payment_behavior, VALID_VALUES_FOR_PAYMENT_BEHAVIOR)
      @payment_behavior = _payment_behavior
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_settings Object to be assigned
    def payment_settings=(payment_settings : Stripe::PaymentSettings?)
      if payment_settings.nil?
        return @payment_settings = nil
      end
      _payment_settings = payment_settings.not_nil!
      _payment_settings.validate if _payment_settings.is_a?(OpenApi::Validatable)
      @payment_settings = _payment_settings
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] pending_invoice_item_interval Object to be assigned
    def pending_invoice_item_interval=(pending_invoice_item_interval : Stripe::PostCustomersCustomerSubscriptionsRequestPendingInvoiceItemInterval?)
      if pending_invoice_item_interval.nil?
        return @pending_invoice_item_interval = nil
      end
      _pending_invoice_item_interval = pending_invoice_item_interval.not_nil!
      _pending_invoice_item_interval.validate if _pending_invoice_item_interval.is_a?(OpenApi::Validatable)
      @pending_invoice_item_interval = _pending_invoice_item_interval
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] promotion_code Object to be assigned
    def promotion_code=(promotion_code : String?)
      if promotion_code.nil?
        return @promotion_code = nil
      end
      _promotion_code = promotion_code.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("promotion_code", _promotion_code.to_s.size, MAX_LENGTH_FOR_PROMOTION_CODE)
      @promotion_code = _promotion_code
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] proration_behavior Object to be assigned
    def proration_behavior=(proration_behavior : String?)
      if proration_behavior.nil?
        return @proration_behavior = nil
      end
      _proration_behavior = proration_behavior.not_nil!
      OpenApi::EnumValidator.validate("proration_behavior", _proration_behavior, VALID_VALUES_FOR_PRORATION_BEHAVIOR)
      @proration_behavior = _proration_behavior
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transfer_data Object to be assigned
    def transfer_data=(transfer_data : Stripe::TransferDataSpecs3?)
      if transfer_data.nil?
        return @transfer_data = nil
      end
      _transfer_data = transfer_data.not_nil!
      _transfer_data.validate if _transfer_data.is_a?(OpenApi::Validatable)
      @transfer_data = _transfer_data
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] trial_end Object to be assigned
    def trial_end=(trial_end : Stripe::PostCustomersCustomerSubscriptionsRequestTrialEnd?)
      if trial_end.nil?
        return @trial_end = nil
      end
      _trial_end = trial_end.not_nil!
      _trial_end.validate if _trial_end.is_a?(OpenApi::Validatable)
      @trial_end = _trial_end
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] trial_from_plan Object to be assigned
    def trial_from_plan=(trial_from_plan : Bool?)
      if trial_from_plan.nil?
        return @trial_from_plan = nil
      end
      _trial_from_plan = trial_from_plan.not_nil!
      @trial_from_plan = _trial_from_plan
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] trial_period_days Object to be assigned
    def trial_period_days=(trial_period_days : Int64?)
      if trial_period_days.nil?
        return @trial_period_days = nil
      end
      _trial_period_days = trial_period_days.not_nil!
      @trial_period_days = _trial_period_days
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@add_invoice_items, @application_fee_percent, @automatic_tax, @backdate_start_date, @billing_cycle_anchor, @billing_thresholds, @cancel_at, @cancel_at_period_end, @collection_method, @coupon, @currency, @days_until_due, @default_payment_method, @default_source, @default_tax_rates, @expand, @items, @metadata, @off_session, @payment_behavior, @payment_settings, @pending_invoice_item_interval, @promotion_code, @proration_behavior, @transfer_data, @trial_end, @trial_from_plan, @trial_period_days)
  end
end
