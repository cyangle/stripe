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
  class PostInvoiceitemsInvoiceitemRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    # The integer amount in cents (or local equivalent) of the charge to be applied to the upcoming invoice. If you want to apply a credit to the customer's account, pass a negative amount.
    @[JSON::Field(key: "amount", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter amount : Int64? = nil

    # An arbitrary string which you can attach to the invoice item. The description is displayed in the invoice for easy tracking.
    @[JSON::Field(key: "description", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter description : String? = nil

    # Controls whether discounts apply to this invoice item. Defaults to false for prorations or negative invoice items, and true for all other invoice items. Cannot be set to true for prorations.
    @[JSON::Field(key: "discountable", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter discountable : Bool? = nil

    @[JSON::Field(key: "discounts", type: Stripe::PostInvoiceitemsInvoiceitemRequestDiscounts?, default: nil, required: false, nullable: false, emit_null: false)]
    getter discounts : Stripe::PostInvoiceitemsInvoiceitemRequestDiscounts? = nil

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    @[JSON::Field(key: "metadata", type: Stripe::PostAccountRequestMetadata?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Stripe::PostAccountRequestMetadata? = nil

    @[JSON::Field(key: "period", type: Stripe::Period1?, default: nil, required: false, nullable: false, emit_null: false)]
    getter period : Stripe::Period1? = nil

    # The ID of the price object.
    @[JSON::Field(key: "price", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter price : String? = nil

    @[JSON::Field(key: "price_data", type: Stripe::OneTimePriceData1?, default: nil, required: false, nullable: false, emit_null: false)]
    getter price_data : Stripe::OneTimePriceData1? = nil

    # Non-negative integer. The quantity of units for the invoice item.
    @[JSON::Field(key: "quantity", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter quantity : Int64? = nil

    @[JSON::Field(key: "tax_rates", type: Stripe::PostInvoiceitemsInvoiceitemRequestTaxRates?, default: nil, required: false, nullable: false, emit_null: false)]
    getter tax_rates : Stripe::PostInvoiceitemsInvoiceitemRequestTaxRates? = nil

    # The integer unit amount in cents (or local equivalent) of the charge to be applied to the upcoming invoice. This unit_amount will be multiplied by the quantity to get the full amount. If you want to apply a credit to the customer's account, pass a negative unit_amount.
    @[JSON::Field(key: "unit_amount", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter unit_amount : Int64? = nil

    # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
    @[JSON::Field(key: "unit_amount_decimal", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter unit_amount_decimal : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @amount : Int64? = nil,
      @description : String? = nil,
      @discountable : Bool? = nil,
      @discounts : Stripe::PostInvoiceitemsInvoiceitemRequestDiscounts? = nil,
      @expand : Array(String)? = nil,
      @metadata : Stripe::PostAccountRequestMetadata? = nil,
      @period : Stripe::Period1? = nil,
      @price : String? = nil,
      @price_data : Stripe::OneTimePriceData1? = nil,
      @quantity : Int64? = nil,
      @tax_rates : Stripe::PostInvoiceitemsInvoiceitemRequestTaxRates? = nil,
      @unit_amount : Int64? = nil,
      @unit_amount_decimal : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      if _description = @description
        if _description.to_s.size > 5000
          invalid_properties.push("invalid value for \"description\", the character length must be smaller than or equal to 5000.")
        end
      end

      if _discounts = @discounts
        if _discounts.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_discounts.list_invalid_properties_for("discounts"))
        end
      end

      if _metadata = @metadata
        if _metadata.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_metadata.list_invalid_properties_for("metadata"))
        end
      end
      if _period = @period
        if _period.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_period.list_invalid_properties_for("period"))
        end
      end
      if _price = @price
        if _price.to_s.size > 5000
          invalid_properties.push("invalid value for \"price\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _price_data = @price_data
        if _price_data.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_price_data.list_invalid_properties_for("price_data"))
        end
      end

      if _tax_rates = @tax_rates
        if _tax_rates.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_tax_rates.list_invalid_properties_for("tax_rates"))
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _description = @description
        return false if _description.to_s.size > 5000
      end

      if _discounts = @discounts
        if _discounts.is_a?(OpenApi::Validatable)
          return false unless _discounts.valid?
        end
      end

      if _metadata = @metadata
        if _metadata.is_a?(OpenApi::Validatable)
          return false unless _metadata.valid?
        end
      end
      if _period = @period
        if _period.is_a?(OpenApi::Validatable)
          return false unless _period.valid?
        end
      end
      if _price = @price
        return false if _price.to_s.size > 5000
      end
      if _price_data = @price_data
        if _price_data.is_a?(OpenApi::Validatable)
          return false unless _price_data.valid?
        end
      end

      if _tax_rates = @tax_rates
        if _tax_rates.is_a?(OpenApi::Validatable)
          return false unless _tax_rates.valid?
        end
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount Object to be assigned
    def amount=(amount : Int64?)
      if amount.nil?
        return @amount = nil
      end
      _amount = amount.not_nil!
      @amount = _amount
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] description Object to be assigned
    def description=(description : String?)
      if description.nil?
        return @description = nil
      end
      _description = description.not_nil!
      if _description.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"description\", the character length must be smaller than or equal to 5000.")
      end

      @description = _description
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] discountable Object to be assigned
    def discountable=(discountable : Bool?)
      if discountable.nil?
        return @discountable = nil
      end
      _discountable = discountable.not_nil!
      @discountable = _discountable
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] discounts Object to be assigned
    def discounts=(discounts : Stripe::PostInvoiceitemsInvoiceitemRequestDiscounts?)
      if discounts.nil?
        return @discounts = nil
      end
      _discounts = discounts.not_nil!
      if _discounts.is_a?(OpenApi::Validatable)
        _discounts.validate
      end
      @discounts = _discounts
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
    # @param [Object] metadata Object to be assigned
    def metadata=(metadata : Stripe::PostAccountRequestMetadata?)
      if metadata.nil?
        return @metadata = nil
      end
      _metadata = metadata.not_nil!
      if _metadata.is_a?(OpenApi::Validatable)
        _metadata.validate
      end
      @metadata = _metadata
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] period Object to be assigned
    def period=(period : Stripe::Period1?)
      if period.nil?
        return @period = nil
      end
      _period = period.not_nil!
      if _period.is_a?(OpenApi::Validatable)
        _period.validate
      end
      @period = _period
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

      @price = _price
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] price_data Object to be assigned
    def price_data=(price_data : Stripe::OneTimePriceData1?)
      if price_data.nil?
        return @price_data = nil
      end
      _price_data = price_data.not_nil!
      if _price_data.is_a?(OpenApi::Validatable)
        _price_data.validate
      end
      @price_data = _price_data
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] quantity Object to be assigned
    def quantity=(quantity : Int64?)
      if quantity.nil?
        return @quantity = nil
      end
      _quantity = quantity.not_nil!
      @quantity = _quantity
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tax_rates Object to be assigned
    def tax_rates=(tax_rates : Stripe::PostInvoiceitemsInvoiceitemRequestTaxRates?)
      if tax_rates.nil?
        return @tax_rates = nil
      end
      _tax_rates = tax_rates.not_nil!
      if _tax_rates.is_a?(OpenApi::Validatable)
        _tax_rates.validate
      end
      @tax_rates = _tax_rates
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] unit_amount Object to be assigned
    def unit_amount=(unit_amount : Int64?)
      if unit_amount.nil?
        return @unit_amount = nil
      end
      _unit_amount = unit_amount.not_nil!
      @unit_amount = _unit_amount
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] unit_amount_decimal Object to be assigned
    def unit_amount_decimal=(unit_amount_decimal : String?)
      if unit_amount_decimal.nil?
        return @unit_amount_decimal = nil
      end
      _unit_amount_decimal = unit_amount_decimal.not_nil!
      @unit_amount_decimal = _unit_amount_decimal
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@amount, @description, @discountable, @discounts, @expand, @metadata, @period, @price, @price_data, @quantity, @tax_rates, @unit_amount, @unit_amount_decimal)
  end
end
