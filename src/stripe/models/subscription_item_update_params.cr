#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./post_accounts_request_metadata"
require "./post_subscription_items_request_billing_thresholds"
require "./post_subscription_items_request_discounts"
require "./post_subscription_items_request_tax_rates"
require "./recurring_price_data"

module Stripe
  class SubscriptionItemUpdateParams
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "billing_thresholds", type: Stripe::PostSubscriptionItemsRequestBillingThresholds?, default: nil, required: false, nullable: false, emit_null: false)]
    getter billing_thresholds : Stripe::PostSubscriptionItemsRequestBillingThresholds? = nil

    # Delete all usage for a given subscription item. Allowed only when `deleted` is set to `true` and the current plan's `usage_type` is `metered`.
    @[JSON::Field(key: "clear_usage", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter clear_usage : Bool? = nil

    # A flag that, if set to `true`, will delete the specified item.
    @[JSON::Field(key: "deleted", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter deleted : Bool? = nil

    @[JSON::Field(key: "discounts", type: Stripe::PostSubscriptionItemsRequestDiscounts?, default: nil, required: false, nullable: false, emit_null: false)]
    getter discounts : Stripe::PostSubscriptionItemsRequestDiscounts? = nil

    # Subscription item to update.
    @[JSON::Field(key: "id", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter id : String? = nil
    MAX_LENGTH_FOR_ID = 5000

    @[JSON::Field(key: "metadata", type: Stripe::PostAccountsRequestMetadata?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Stripe::PostAccountsRequestMetadata? = nil

    # Plan ID for this item, as a string.
    @[JSON::Field(key: "plan", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter plan : String? = nil
    MAX_LENGTH_FOR_PLAN = 5000

    # The ID of the price object. One of `price` or `price_data` is required. When changing a subscription item's price, `quantity` is set to 1 unless a `quantity` parameter is provided.
    @[JSON::Field(key: "price", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter price : String? = nil
    MAX_LENGTH_FOR_PRICE = 5000

    @[JSON::Field(key: "price_data", type: Stripe::RecurringPriceData?, default: nil, required: false, nullable: false, emit_null: false)]
    getter price_data : Stripe::RecurringPriceData? = nil

    # Quantity for this item.
    @[JSON::Field(key: "quantity", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter quantity : Int64? = nil

    @[JSON::Field(key: "tax_rates", type: Stripe::PostSubscriptionItemsRequestTaxRates?, default: nil, required: false, nullable: false, emit_null: false)]
    getter tax_rates : Stripe::PostSubscriptionItemsRequestTaxRates? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @billing_thresholds : Stripe::PostSubscriptionItemsRequestBillingThresholds? = nil,
      @clear_usage : Bool? = nil,
      @deleted : Bool? = nil,
      @discounts : Stripe::PostSubscriptionItemsRequestDiscounts? = nil,
      @id : String? = nil,
      @metadata : Stripe::PostAccountsRequestMetadata? = nil,
      @plan : String? = nil,
      @price : String? = nil,
      @price_data : Stripe::RecurringPriceData? = nil,
      @quantity : Int64? = nil,
      @tax_rates : Stripe::PostSubscriptionItemsRequestTaxRates? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_billing_thresholds = @billing_thresholds).nil?
        invalid_properties.concat(_billing_thresholds.list_invalid_properties_for("billing_thresholds")) if _billing_thresholds.is_a?(OpenApi::Validatable)
      end

      unless (_discounts = @discounts).nil?
        invalid_properties.concat(_discounts.list_invalid_properties_for("discounts")) if _discounts.is_a?(OpenApi::Validatable)
      end
      unless (_id = @id).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("id", _id.to_s.size, MAX_LENGTH_FOR_ID)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_metadata = @metadata).nil?
        invalid_properties.concat(_metadata.list_invalid_properties_for("metadata")) if _metadata.is_a?(OpenApi::Validatable)
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

      unless (_tax_rates = @tax_rates).nil?
        invalid_properties.concat(_tax_rates.list_invalid_properties_for("tax_rates")) if _tax_rates.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_billing_thresholds = @billing_thresholds).nil?
        return false if _billing_thresholds.is_a?(OpenApi::Validatable) && !_billing_thresholds.valid?
      end

      unless (_discounts = @discounts).nil?
        return false if _discounts.is_a?(OpenApi::Validatable) && !_discounts.valid?
      end

      unless (_id = @id).nil?
        return false if _id.to_s.size > MAX_LENGTH_FOR_ID
      end

      unless (_metadata = @metadata).nil?
        return false if _metadata.is_a?(OpenApi::Validatable) && !_metadata.valid?
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

      unless (_tax_rates = @tax_rates).nil?
        return false if _tax_rates.is_a?(OpenApi::Validatable) && !_tax_rates.valid?
      end

      true
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
    # @param [Object] clear_usage Object to be assigned
    def clear_usage=(new_value : Bool?)
      @clear_usage = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] deleted Object to be assigned
    def deleted=(new_value : Bool?)
      @deleted = new_value
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
    # @param [Object] id Object to be assigned
    def id=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("id", new_value.to_s.size, MAX_LENGTH_FOR_ID)
      end

      @id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(new_value : Stripe::PostAccountsRequestMetadata?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @metadata = new_value
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
    def_equals_and_hash(@billing_thresholds, @clear_usage, @deleted, @discounts, @id, @metadata, @plan, @price, @price_data, @quantity, @tax_rates)
  end
end
