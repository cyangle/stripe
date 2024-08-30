#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./post_subscription_items_request_billing_thresholds"
require "./post_subscription_items_request_discounts"
require "./post_subscription_items_request_tax_rates"
require "./recurring_price_data"

module Stripe
  class PostSubscriptionItemsRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The identifier of the subscription to modify.
    @[JSON::Field(key: "subscription", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter subscription : String? = nil
    MAX_LENGTH_FOR_SUBSCRIPTION = 5000

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "billing_thresholds", type: Stripe::PostSubscriptionItemsRequestBillingThresholds?, default: nil, required: false, nullable: false, emit_null: false)]
    getter billing_thresholds : Stripe::PostSubscriptionItemsRequestBillingThresholds? = nil

    @[JSON::Field(key: "discounts", type: Stripe::PostSubscriptionItemsRequestDiscounts?, default: nil, required: false, nullable: false, emit_null: false)]
    getter discounts : Stripe::PostSubscriptionItemsRequestDiscounts? = nil

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Hash(String, String)? = nil

    # Use `allow_incomplete` to transition the subscription to `status=past_due` if a payment is required but cannot be paid. This allows you to manage scenarios where additional user actions are needed to pay a subscription's invoice. For example, SCA regulation may require 3DS authentication to complete payment. See the [SCA Migration Guide](https://stripe.com/docs/billing/migration/strong-customer-authentication) for Billing to learn more. This is the default behavior.  Use `default_incomplete` to transition the subscription to `status=past_due` when payment is required and await explicit confirmation of the invoice's payment intent. This allows simpler management of scenarios where additional user actions are needed to pay a subscription’s invoice. Such as failed payments, [SCA regulation](https://stripe.com/docs/billing/migration/strong-customer-authentication), or collecting a mandate for a bank debit payment method.  Use `pending_if_incomplete` to update the subscription using [pending updates](https://stripe.com/docs/billing/subscriptions/pending-updates). When you use `pending_if_incomplete` you can only pass the parameters [supported by pending updates](https://stripe.com/docs/billing/pending-updates-reference#supported-attributes).  Use `error_if_incomplete` if you want Stripe to return an HTTP 402 status code if a subscription's invoice cannot be paid. For example, if a payment method requires 3DS authentication due to SCA regulation and further user action is needed, this parameter does not update the subscription and returns an error instead. This was the default behavior for API versions prior to 2019-03-14. See the [changelog](https://stripe.com/docs/upgrades#2019-03-14) to learn more.
    @[JSON::Field(key: "payment_behavior", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter payment_behavior : String? = nil
    ERROR_MESSAGE_FOR_PAYMENT_BEHAVIOR = "invalid value for \"payment_behavior\", must be one of [allow_incomplete, default_incomplete, error_if_incomplete, pending_if_incomplete]."
    VALID_VALUES_FOR_PAYMENT_BEHAVIOR  = String.static_array("allow_incomplete", "default_incomplete", "error_if_incomplete", "pending_if_incomplete")

    # The identifier of the plan to add to the subscription.
    @[JSON::Field(key: "plan", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter plan : String? = nil
    MAX_LENGTH_FOR_PLAN = 5000

    # The ID of the price object.
    @[JSON::Field(key: "price", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter price : String? = nil
    MAX_LENGTH_FOR_PRICE = 5000

    @[JSON::Field(key: "price_data", type: Stripe::RecurringPriceData?, default: nil, required: false, nullable: false, emit_null: false)]
    getter price_data : Stripe::RecurringPriceData? = nil

    # Determines how to handle [prorations](https://stripe.com/docs/billing/subscriptions/prorations) when the billing cycle changes (e.g., when switching plans, resetting `billing_cycle_anchor=now`, or starting a trial), or if an item's `quantity` changes. The default value is `create_prorations`.
    @[JSON::Field(key: "proration_behavior", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter proration_behavior : String? = nil
    ERROR_MESSAGE_FOR_PRORATION_BEHAVIOR = "invalid value for \"proration_behavior\", must be one of [always_invoice, create_prorations, none]."
    VALID_VALUES_FOR_PRORATION_BEHAVIOR  = String.static_array("always_invoice", "create_prorations", "none")

    # If set, the proration will be calculated as though the subscription was updated at the given time. This can be used to apply the same proration that was previewed with the [upcoming invoice](https://stripe.com/docs/api#retrieve_customer_invoice) endpoint.
    @[JSON::Field(key: "proration_date", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter proration_date : Int64? = nil

    # The quantity you'd like to apply to the subscription item you're creating.
    @[JSON::Field(key: "quantity", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter quantity : Int64? = nil

    @[JSON::Field(key: "tax_rates", type: Stripe::PostSubscriptionItemsRequestTaxRates?, default: nil, required: false, nullable: false, emit_null: false)]
    getter tax_rates : Stripe::PostSubscriptionItemsRequestTaxRates? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @subscription : String? = nil,
      # Optional properties
      @billing_thresholds : Stripe::PostSubscriptionItemsRequestBillingThresholds? = nil,
      @discounts : Stripe::PostSubscriptionItemsRequestDiscounts? = nil,
      @expand : Array(String)? = nil,
      @metadata : Hash(String, String)? = nil,
      @payment_behavior : String? = nil,
      @plan : String? = nil,
      @price : String? = nil,
      @price_data : Stripe::RecurringPriceData? = nil,
      @proration_behavior : String? = nil,
      @proration_date : Int64? = nil,
      @quantity : Int64? = nil,
      @tax_rates : Stripe::PostSubscriptionItemsRequestTaxRates? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"subscription\" is required and cannot be null") if @subscription.nil?

      unless (_subscription = @subscription).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("subscription", _subscription.to_s.size, MAX_LENGTH_FOR_SUBSCRIPTION)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_billing_thresholds = @billing_thresholds).nil?
        invalid_properties.concat(_billing_thresholds.list_invalid_properties_for("billing_thresholds")) if _billing_thresholds.is_a?(OpenApi::Validatable)
      end
      unless (_discounts = @discounts).nil?
        invalid_properties.concat(_discounts.list_invalid_properties_for("discounts")) if _discounts.is_a?(OpenApi::Validatable)
      end

      unless (_payment_behavior = @payment_behavior).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_PAYMENT_BEHAVIOR) unless OpenApi::EnumValidator.valid?(_payment_behavior, VALID_VALUES_FOR_PAYMENT_BEHAVIOR)
      end
      unless (_plan = @plan).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("plan", _plan.to_s.size, MAX_LENGTH_FOR_PLAN)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_price = @price).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("price", _price.to_s.size, MAX_LENGTH_FOR_PRICE)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_price_data = @price_data).nil?
        invalid_properties.concat(_price_data.list_invalid_properties_for("price_data")) if _price_data.is_a?(OpenApi::Validatable)
      end
      unless (_proration_behavior = @proration_behavior).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_PRORATION_BEHAVIOR) unless OpenApi::EnumValidator.valid?(_proration_behavior, VALID_VALUES_FOR_PRORATION_BEHAVIOR)
      end

      unless (_tax_rates = @tax_rates).nil?
        invalid_properties.concat(_tax_rates.list_invalid_properties_for("tax_rates")) if _tax_rates.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @subscription.nil?
      unless (_subscription = @subscription).nil?
        return false if _subscription.to_s.size > MAX_LENGTH_FOR_SUBSCRIPTION
      end

      unless (_billing_thresholds = @billing_thresholds).nil?
        return false if _billing_thresholds.is_a?(OpenApi::Validatable) && !_billing_thresholds.valid?
      end

      unless (_discounts = @discounts).nil?
        return false if _discounts.is_a?(OpenApi::Validatable) && !_discounts.valid?
      end

      unless (_payment_behavior = @payment_behavior).nil?
        return false unless OpenApi::EnumValidator.valid?(_payment_behavior, VALID_VALUES_FOR_PAYMENT_BEHAVIOR)
      end

      unless (_plan = @plan).nil?
        return false if _plan.to_s.size > MAX_LENGTH_FOR_PLAN
      end

      unless (_price = @price).nil?
        return false if _price.to_s.size > MAX_LENGTH_FOR_PRICE
      end

      unless (_price_data = @price_data).nil?
        return false if _price_data.is_a?(OpenApi::Validatable) && !_price_data.valid?
      end

      unless (_proration_behavior = @proration_behavior).nil?
        return false unless OpenApi::EnumValidator.valid?(_proration_behavior, VALID_VALUES_FOR_PRORATION_BEHAVIOR)
      end

      unless (_tax_rates = @tax_rates).nil?
        return false if _tax_rates.is_a?(OpenApi::Validatable) && !_tax_rates.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] subscription Object to be assigned
    def subscription=(new_value : String?)
      raise ArgumentError.new("\"subscription\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("subscription", new_value.to_s.size, MAX_LENGTH_FOR_SUBSCRIPTION)
      end

      @subscription = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] billing_thresholds Object to be assigned
    def billing_thresholds=(new_value : Stripe::PostSubscriptionItemsRequestBillingThresholds?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @billing_thresholds = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] discounts Object to be assigned
    def discounts=(new_value : Stripe::PostSubscriptionItemsRequestDiscounts?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @discounts = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expand Object to be assigned
    def expand=(new_value : Array(String)?)
      @expand = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(new_value : Hash(String, String)?)
      @metadata = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_behavior Object to be assigned
    def payment_behavior=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("payment_behavior", new_value, VALID_VALUES_FOR_PAYMENT_BEHAVIOR)
      end

      @payment_behavior = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] plan Object to be assigned
    def plan=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("plan", new_value.to_s.size, MAX_LENGTH_FOR_PLAN)
      end

      @plan = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] price Object to be assigned
    def price=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("price", new_value.to_s.size, MAX_LENGTH_FOR_PRICE)
      end

      @price = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] price_data Object to be assigned
    def price_data=(new_value : Stripe::RecurringPriceData?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @price_data = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] proration_behavior Object to be assigned
    def proration_behavior=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("proration_behavior", new_value, VALID_VALUES_FOR_PRORATION_BEHAVIOR)
      end

      @proration_behavior = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] proration_date Object to be assigned
    def proration_date=(new_value : Int64?)
      @proration_date = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] quantity Object to be assigned
    def quantity=(new_value : Int64?)
      @quantity = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tax_rates Object to be assigned
    def tax_rates=(new_value : Stripe::PostSubscriptionItemsRequestTaxRates?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @tax_rates = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@subscription, @billing_thresholds, @discounts, @expand, @metadata, @payment_behavior, @plan, @price, @price_data, @proration_behavior, @proration_date, @quantity, @tax_rates)
  end
end
