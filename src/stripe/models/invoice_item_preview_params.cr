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
  class InvoiceItemPreviewParams
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "amount", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter amount : Int64? = nil

    @[JSON::Field(key: "currency", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter currency : String? = nil

    @[JSON::Field(key: "description", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter description : String? = nil
    MAX_LENGTH_FOR_DESCRIPTION = 5000

    @[JSON::Field(key: "discountable", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter discountable : Bool? = nil

    @[JSON::Field(key: "discounts", type: Stripe::GetInvoicesUpcomingDiscountsParameter?, default: nil, required: false, nullable: false, emit_null: false)]
    getter discounts : Stripe::GetInvoicesUpcomingDiscountsParameter? = nil

    @[JSON::Field(key: "invoiceitem", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter invoiceitem : String? = nil
    MAX_LENGTH_FOR_INVOICEITEM = 5000

    @[JSON::Field(key: "metadata", type: Stripe::IndividualSpecsMetadata?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Stripe::IndividualSpecsMetadata? = nil

    @[JSON::Field(key: "period", type: Stripe::Period2?, default: nil, required: false, nullable: false, emit_null: false)]
    getter period : Stripe::Period2? = nil

    @[JSON::Field(key: "price", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter price : String? = nil
    MAX_LENGTH_FOR_PRICE = 5000

    @[JSON::Field(key: "price_data", type: Stripe::OneTimePriceData?, default: nil, required: false, nullable: false, emit_null: false)]
    getter price_data : Stripe::OneTimePriceData? = nil

    @[JSON::Field(key: "quantity", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter quantity : Int64? = nil

    @[JSON::Field(key: "tax_rates", type: Stripe::CreditNoteLineItemParamsTaxRates?, default: nil, required: false, nullable: false, emit_null: false)]
    getter tax_rates : Stripe::CreditNoteLineItemParamsTaxRates? = nil

    @[JSON::Field(key: "unit_amount", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter unit_amount : Int64? = nil

    @[JSON::Field(key: "unit_amount_decimal", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter unit_amount_decimal : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @amount : Int64? = nil,
      @currency : String? = nil,
      @description : String? = nil,
      @discountable : Bool? = nil,
      @discounts : Stripe::GetInvoicesUpcomingDiscountsParameter? = nil,
      @invoiceitem : String? = nil,
      @metadata : Stripe::IndividualSpecsMetadata? = nil,
      @period : Stripe::Period2? = nil,
      @price : String? = nil,
      @price_data : Stripe::OneTimePriceData? = nil,
      @quantity : Int64? = nil,
      @tax_rates : Stripe::CreditNoteLineItemParamsTaxRates? = nil,
      @unit_amount : Int64? = nil,
      @unit_amount_decimal : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_description = @description).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("description", _description.to_s.size, MAX_LENGTH_FOR_DESCRIPTION)
          invalid_properties.push(max_length_error)
        end
      end

      unless (_discounts = @discounts).nil?
        invalid_properties.concat(_discounts.list_invalid_properties_for("discounts")) if _discounts.is_a?(OpenApi::Validatable)
      end
      unless (_invoiceitem = @invoiceitem).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("invoiceitem", _invoiceitem.to_s.size, MAX_LENGTH_FOR_INVOICEITEM)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_metadata = @metadata).nil?
        invalid_properties.concat(_metadata.list_invalid_properties_for("metadata")) if _metadata.is_a?(OpenApi::Validatable)
      end
      unless (_period = @period).nil?
        invalid_properties.concat(_period.list_invalid_properties_for("period")) if _period.is_a?(OpenApi::Validatable)
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
      unless (_description = @description).nil?
        return false if _description.to_s.size > MAX_LENGTH_FOR_DESCRIPTION
      end

      unless (_discounts = @discounts).nil?
        return false if _discounts.is_a?(OpenApi::Validatable) && !_discounts.valid?
      end

      unless (_invoiceitem = @invoiceitem).nil?
        return false if _invoiceitem.to_s.size > MAX_LENGTH_FOR_INVOICEITEM
      end

      unless (_metadata = @metadata).nil?
        return false if _metadata.is_a?(OpenApi::Validatable) && !_metadata.valid?
      end

      unless (_period = @period).nil?
        return false if _period.is_a?(OpenApi::Validatable) && !_period.valid?
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
    # @param [Object] amount Object to be assigned
    def amount=(amount : Int64?)
      if amount.nil?
        return @amount = nil
      end
      _amount = amount.not_nil!
      @amount = _amount
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
    # @param [Object] description Object to be assigned
    def description=(description : String?)
      if description.nil?
        return @description = nil
      end
      _description = description.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("description", _description.to_s.size, MAX_LENGTH_FOR_DESCRIPTION)
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
    def discounts=(discounts : Stripe::GetInvoicesUpcomingDiscountsParameter?)
      if discounts.nil?
        return @discounts = nil
      end
      _discounts = discounts.not_nil!
      _discounts.validate if _discounts.is_a?(OpenApi::Validatable)
      @discounts = _discounts
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] invoiceitem Object to be assigned
    def invoiceitem=(invoiceitem : String?)
      if invoiceitem.nil?
        return @invoiceitem = nil
      end
      _invoiceitem = invoiceitem.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("invoiceitem", _invoiceitem.to_s.size, MAX_LENGTH_FOR_INVOICEITEM)
      @invoiceitem = _invoiceitem
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(metadata : Stripe::IndividualSpecsMetadata?)
      if metadata.nil?
        return @metadata = nil
      end
      _metadata = metadata.not_nil!
      _metadata.validate if _metadata.is_a?(OpenApi::Validatable)
      @metadata = _metadata
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] period Object to be assigned
    def period=(period : Stripe::Period2?)
      if period.nil?
        return @period = nil
      end
      _period = period.not_nil!
      _period.validate if _period.is_a?(OpenApi::Validatable)
      @period = _period
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] price Object to be assigned
    def price=(price : String?)
      if price.nil?
        return @price = nil
      end
      _price = price.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("price", _price.to_s.size, MAX_LENGTH_FOR_PRICE)
      @price = _price
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] price_data Object to be assigned
    def price_data=(price_data : Stripe::OneTimePriceData?)
      if price_data.nil?
        return @price_data = nil
      end
      _price_data = price_data.not_nil!
      _price_data.validate if _price_data.is_a?(OpenApi::Validatable)
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
    def tax_rates=(tax_rates : Stripe::CreditNoteLineItemParamsTaxRates?)
      if tax_rates.nil?
        return @tax_rates = nil
      end
      _tax_rates = tax_rates.not_nil!
      _tax_rates.validate if _tax_rates.is_a?(OpenApi::Validatable)
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
    def_equals_and_hash(@amount, @currency, @description, @discountable, @discounts, @invoiceitem, @metadata, @period, @price, @price_data, @quantity, @tax_rates, @unit_amount, @unit_amount_decimal)
  end
end
