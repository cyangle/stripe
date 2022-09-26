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
  class ConfigurationItemParams
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "billing_thresholds", type: Stripe::SubscriptionItemCreateParamsBillingThresholds?, default: nil, required: false, nullable: false, emit_null: false)]
    getter billing_thresholds : Stripe::SubscriptionItemCreateParamsBillingThresholds? = nil

    @[JSON::Field(key: "price", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter price : String? = nil

    @[JSON::Field(key: "price_data", type: Stripe::RecurringPriceData?, default: nil, required: false, nullable: false, emit_null: false)]
    getter price_data : Stripe::RecurringPriceData? = nil

    @[JSON::Field(key: "quantity", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter quantity : Int64? = nil

    @[JSON::Field(key: "tax_rates", type: Stripe::CreditNoteLineItemParamsTaxRates?, default: nil, required: false, nullable: false, emit_null: false)]
    getter tax_rates : Stripe::CreditNoteLineItemParamsTaxRates? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @billing_thresholds : Stripe::SubscriptionItemCreateParamsBillingThresholds? = nil,
      @price : String? = nil,
      @price_data : Stripe::RecurringPriceData? = nil,
      @quantity : Int64? = nil,
      @tax_rates : Stripe::CreditNoteLineItemParamsTaxRates? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      # This is a model billing_thresholds : Stripe::SubscriptionItemCreateParamsBillingThresholds?
      if _price = @price
        if _price.to_s.size > 5000
          invalid_properties.push("invalid value for \"price\", the character length must be smaller than or equal to 5000.")
        end
      end
      # This is a model price_data : Stripe::RecurringPriceData?
      # This is a model tax_rates : Stripe::CreditNoteLineItemParamsTaxRates?

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      if _price = @price
        return false if _price.to_s.size > 5000
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] billing_thresholds Object to be assigned
    def billing_thresholds=(billing_thresholds : Stripe::SubscriptionItemCreateParamsBillingThresholds?)
      if billing_thresholds.nil?
        return @billing_thresholds = nil
      end
      @billing_thresholds = billing_thresholds
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] price Object to be assigned
    def price=(price : String?)
      if price.nil?
        return @price = nil
      end
      _price = price.not_nil!
      if _price.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"price\", the character length must be smaller than or equal to 5000.")
      end

      @price = price
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] price_data Object to be assigned
    def price_data=(price_data : Stripe::RecurringPriceData?)
      if price_data.nil?
        return @price_data = nil
      end
      @price_data = price_data
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] quantity Object to be assigned
    def quantity=(quantity : Int64?)
      if quantity.nil?
        return @quantity = nil
      end
      @quantity = quantity
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tax_rates Object to be assigned
    def tax_rates=(tax_rates : Stripe::CreditNoteLineItemParamsTaxRates?)
      if tax_rates.nil?
        return @tax_rates = nil
      end
      @tax_rates = tax_rates
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
    def_equals_and_hash(@billing_thresholds, @price, @price_data, @quantity, @tax_rates)
  end
end
