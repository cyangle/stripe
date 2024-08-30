#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./add_invoice_item_entry_tax_rates"
require "./discounts_data_param"
require "./one_time_price_data_with_negative_amounts"

module Stripe
  class AddInvoiceItemEntry
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # The coupons to redeem into discounts for the item.
    @[JSON::Field(key: "discounts", type: Array(Stripe::DiscountsDataParam)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter discounts : Array(Stripe::DiscountsDataParam)? = nil

    # The ID of the price object. One of `price` or `price_data` is required.
    @[JSON::Field(key: "price", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter price : String? = nil
    MAX_LENGTH_FOR_PRICE = 5000

    @[JSON::Field(key: "price_data", type: Stripe::OneTimePriceDataWithNegativeAmounts?, default: nil, required: false, nullable: false, emit_null: false)]
    getter price_data : Stripe::OneTimePriceDataWithNegativeAmounts? = nil

    # Quantity for this item. Defaults to 1.
    @[JSON::Field(key: "quantity", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter quantity : Int64? = nil

    @[JSON::Field(key: "tax_rates", type: Stripe::AddInvoiceItemEntryTaxRates?, default: nil, required: false, nullable: false, emit_null: false)]
    getter tax_rates : Stripe::AddInvoiceItemEntryTaxRates? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @discounts : Array(Stripe::DiscountsDataParam)? = nil,
      @price : String? = nil,
      @price_data : Stripe::OneTimePriceDataWithNegativeAmounts? = nil,
      @quantity : Int64? = nil,
      @tax_rates : Stripe::AddInvoiceItemEntryTaxRates? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_discounts = @discounts).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "discounts", container: _discounts)) if _discounts.is_a?(Array)
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
      unless (_discounts = @discounts).nil?
        return false if _discounts.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _discounts)
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
    # @param [Object] discounts Object to be assigned
    def discounts=(new_value : Array(Stripe::DiscountsDataParam)?)
      unless new_value.nil?
        OpenApi::ContainerValidator.validate(container: new_value) if new_value.is_a?(Array)
      end

      @discounts = new_value
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
    def price_data=(new_value : Stripe::OneTimePriceDataWithNegativeAmounts?)
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
    def tax_rates=(new_value : Stripe::AddInvoiceItemEntryTaxRates?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @tax_rates = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@discounts, @price, @price_data, @quantity, @tax_rates)
  end
end
