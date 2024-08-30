#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./configuration_item_params_billing_thresholds"
require "./configuration_item_params_discounts"
require "./configuration_item_params_tax_rates"
require "./recurring_price_data"

module Stripe
  class ConfigurationItemParams
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "billing_thresholds", type: Stripe::ConfigurationItemParamsBillingThresholds?, default: nil, required: false, nullable: false, emit_null: false)]
    getter billing_thresholds : Stripe::ConfigurationItemParamsBillingThresholds? = nil

    @[JSON::Field(key: "discounts", type: Stripe::ConfigurationItemParamsDiscounts?, default: nil, required: false, nullable: false, emit_null: false)]
    getter discounts : Stripe::ConfigurationItemParamsDiscounts? = nil

    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Hash(String, String)? = nil

    # The plan ID to subscribe to. You may specify the same ID in `plan` and `price`.
    @[JSON::Field(key: "plan", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter plan : String? = nil
    MAX_LENGTH_FOR_PLAN = 5000

    # The ID of the price object.
    @[JSON::Field(key: "price", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter price : String? = nil
    MAX_LENGTH_FOR_PRICE = 5000

    @[JSON::Field(key: "price_data", type: Stripe::RecurringPriceData?, default: nil, required: false, nullable: false, emit_null: false)]
    getter price_data : Stripe::RecurringPriceData? = nil

    # Quantity for the given price. Can be set only if the price's `usage_type` is `licensed` and not `metered`.
    @[JSON::Field(key: "quantity", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter quantity : Int64? = nil

    @[JSON::Field(key: "tax_rates", type: Stripe::ConfigurationItemParamsTaxRates?, default: nil, required: false, nullable: false, emit_null: false)]
    getter tax_rates : Stripe::ConfigurationItemParamsTaxRates? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @billing_thresholds : Stripe::ConfigurationItemParamsBillingThresholds? = nil,
      @discounts : Stripe::ConfigurationItemParamsDiscounts? = nil,
      @metadata : Hash(String, String)? = nil,
      @plan : String? = nil,
      @price : String? = nil,
      @price_data : Stripe::RecurringPriceData? = nil,
      @quantity : Int64? = nil,
      @tax_rates : Stripe::ConfigurationItemParamsTaxRates? = nil
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
    def billing_thresholds=(new_value : Stripe::ConfigurationItemParamsBillingThresholds?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @billing_thresholds = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] discounts Object to be assigned
    def discounts=(new_value : Stripe::ConfigurationItemParamsDiscounts?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @discounts = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(new_value : Hash(String, String)?)
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
    def tax_rates=(new_value : Stripe::ConfigurationItemParamsTaxRates?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @tax_rates = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@billing_thresholds, @discounts, @metadata, @plan, @price, @price_data, @quantity, @tax_rates)
  end
end
