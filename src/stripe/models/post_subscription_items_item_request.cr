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
  class PostSubscriptionItemsItemRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    @[JSON::Field(key: "billing_thresholds", type: PostSubscriptionItemsRequestBillingThresholds?, presence: true, ignore_serialize: billing_thresholds.nil? && !billing_thresholds_present?)]
    property billing_thresholds : PostSubscriptionItemsRequestBillingThresholds?

    @[JSON::Field(ignore: true)]
    property? billing_thresholds_present : Bool = false

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, presence: true, ignore_serialize: expand.nil? && !expand_present?)]
    property expand : Array(String)?

    @[JSON::Field(ignore: true)]
    property? expand_present : Bool = false

    @[JSON::Field(key: "metadata", type: PostAccountRequestMetadata?, presence: true, ignore_serialize: metadata.nil? && !metadata_present?)]
    property metadata : PostAccountRequestMetadata?

    @[JSON::Field(ignore: true)]
    property? metadata_present : Bool = false

    # Indicates if a customer is on or off-session while an invoice payment is attempted.
    @[JSON::Field(key: "off_session", type: Bool?, presence: true, ignore_serialize: off_session.nil? && !off_session_present?)]
    property off_session : Bool?

    @[JSON::Field(ignore: true)]
    property? off_session_present : Bool = false

    # Use `allow_incomplete` to transition the subscription to `status=past_due` if a payment is required but cannot be paid. This allows you to manage scenarios where additional user actions are needed to pay a subscription's invoice. For example, SCA regulation may require 3DS authentication to complete payment. See the [SCA Migration Guide](https://stripe.com/docs/billing/migration/strong-customer-authentication) for Billing to learn more. This is the default behavior.  Use `default_incomplete` to transition the subscription to `status=past_due` when payment is required and await explicit confirmation of the invoice's payment intent. This allows simpler management of scenarios where additional user actions are needed to pay a subscription’s invoice. Such as failed payments, [SCA regulation](https://stripe.com/docs/billing/migration/strong-customer-authentication), or collecting a mandate for a bank debit payment method.  Use `pending_if_incomplete` to update the subscription using [pending updates](https://stripe.com/docs/billing/subscriptions/pending-updates). When you use `pending_if_incomplete` you can only pass the parameters [supported by pending updates](https://stripe.com/docs/billing/pending-updates-reference#supported-attributes).  Use `error_if_incomplete` if you want Stripe to return an HTTP 402 status code if a subscription's invoice cannot be paid. For example, if a payment method requires 3DS authentication due to SCA regulation and further user action is needed, this parameter does not update the subscription and returns an error instead. This was the default behavior for API versions prior to 2019-03-14. See the [changelog](https://stripe.com/docs/upgrades#2019-03-14) to learn more.
    @[JSON::Field(key: "payment_behavior", type: String?, presence: true, ignore_serialize: payment_behavior.nil? && !payment_behavior_present?)]
    getter payment_behavior : String?

    @[JSON::Field(ignore: true)]
    property? payment_behavior_present : Bool = false

    ENUM_VALIDATOR_FOR_PAYMENT_BEHAVIOR = EnumValidator.new("payment_behavior", "String", ["allow_incomplete", "default_incomplete", "error_if_incomplete", "pending_if_incomplete"])

    # The ID of the price object. When changing a subscription item's price, `quantity` is set to 1 unless a `quantity` parameter is provided.
    @[JSON::Field(key: "price", type: String?, presence: true, ignore_serialize: price.nil? && !price_present?)]
    getter price : String?

    @[JSON::Field(ignore: true)]
    property? price_present : Bool = false

    @[JSON::Field(key: "price_data", type: RecurringPriceData1?, presence: true, ignore_serialize: price_data.nil? && !price_data_present?)]
    property price_data : RecurringPriceData1?

    @[JSON::Field(ignore: true)]
    property? price_data_present : Bool = false

    # Determines how to handle [prorations](https://stripe.com/docs/subscriptions/billing-cycle#prorations) when the billing cycle changes (e.g., when switching plans, resetting `billing_cycle_anchor=now`, or starting a trial), or if an item's `quantity` changes. Valid values are `create_prorations`, `none`, or `always_invoice`.  Passing `create_prorations` will cause proration invoice items to be created when applicable. These proration items will only be invoiced immediately under [certain conditions](https://stripe.com/docs/subscriptions/upgrading-downgrading#immediate-payment). In order to always invoice immediately for prorations, pass `always_invoice`.  Prorations can be disabled by passing `none`.
    @[JSON::Field(key: "proration_behavior", type: String?, presence: true, ignore_serialize: proration_behavior.nil? && !proration_behavior_present?)]
    getter proration_behavior : String?

    @[JSON::Field(ignore: true)]
    property? proration_behavior_present : Bool = false

    ENUM_VALIDATOR_FOR_PRORATION_BEHAVIOR = EnumValidator.new("proration_behavior", "String", ["always_invoice", "create_prorations", "none"])

    # If set, the proration will be calculated as though the subscription was updated at the given time. This can be used to apply the same proration that was previewed with the [upcoming invoice](https://stripe.com/docs/api#retrieve_customer_invoice) endpoint.
    @[JSON::Field(key: "proration_date", type: Int64?, presence: true, ignore_serialize: proration_date.nil? && !proration_date_present?)]
    property proration_date : Int64?

    @[JSON::Field(ignore: true)]
    property? proration_date_present : Bool = false

    # The quantity you'd like to apply to the subscription item you're creating.
    @[JSON::Field(key: "quantity", type: Int64?, presence: true, ignore_serialize: quantity.nil? && !quantity_present?)]
    property quantity : Int64?

    @[JSON::Field(ignore: true)]
    property? quantity_present : Bool = false

    @[JSON::Field(key: "tax_rates", type: PostSubscriptionItemsRequestTaxRates?, presence: true, ignore_serialize: tax_rates.nil? && !tax_rates_present?)]
    property tax_rates : PostSubscriptionItemsRequestTaxRates?

    @[JSON::Field(ignore: true)]
    property? tax_rates_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @billing_thresholds : PostSubscriptionItemsRequestBillingThresholds? = nil,
      @expand : Array(String)? = nil,
      @metadata : PostAccountRequestMetadata? = nil,
      @off_session : Bool? = nil,
      @payment_behavior : String? = nil,
      @price : String? = nil,
      @price_data : RecurringPriceData1? = nil,
      @proration_behavior : String? = nil,
      @proration_date : Int64? = nil,
      @quantity : Int64? = nil,
      @tax_rates : PostSubscriptionItemsRequestTaxRates? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_PAYMENT_BEHAVIOR.error_message) unless ENUM_VALIDATOR_FOR_PAYMENT_BEHAVIOR.valid?(@payment_behavior)

      if !@price.nil? && @price.to_s.size > 5000
        invalid_properties.push("invalid value for \"price\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_PRORATION_BEHAVIOR.error_message) unless ENUM_VALIDATOR_FOR_PRORATION_BEHAVIOR.valid?(@proration_behavior)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR_PAYMENT_BEHAVIOR.valid?(@payment_behavior)
      return false if !@price.nil? && @price.to_s.size > 5000
      return false unless ENUM_VALIDATOR_FOR_PRORATION_BEHAVIOR.valid?(@proration_behavior)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_behavior Object to be assigned
    def payment_behavior=(payment_behavior : String?)
      ENUM_VALIDATOR_FOR_PAYMENT_BEHAVIOR.valid!(payment_behavior)
      @payment_behavior = payment_behavior
    end

    # Custom attribute writer method with validation
    # @param [Object] price Value to be assigned
    def price=(price : String?)
      if !price.nil? && price.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"price\", the character length must be smaller than or equal to 5000.")
      end

      @price = price
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
    def_equals_and_hash(@billing_thresholds, @billing_thresholds_present, @expand, @expand_present, @metadata, @metadata_present, @off_session, @off_session_present, @payment_behavior, @payment_behavior_present, @price, @price_present, @price_data, @price_data_present, @proration_behavior, @proration_behavior_present, @proration_date, @proration_date_present, @quantity, @quantity_present, @tax_rates, @tax_rates_present)
  end
end
