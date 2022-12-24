#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-11-15
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

    # Optional Properties

    # The integer amount in cents (or local equivalent) of the charge to be applied to the upcoming invoice. If you want to apply a credit to the customer's account, pass a negative amount.
    @[JSON::Field(key: "amount", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter amount : Int64? = nil

    # An arbitrary string which you can attach to the invoice item. The description is displayed in the invoice for easy tracking.
    @[JSON::Field(key: "description", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter description : String? = nil
    MAX_LENGTH_FOR_DESCRIPTION = 5000

    # Controls whether discounts apply to this invoice item. Defaults to false for prorations or negative invoice items, and true for all other invoice items. Cannot be set to true for prorations.
    @[JSON::Field(key: "discountable", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter discountable : Bool? = nil

    @[JSON::Field(key: "discounts", type: Stripe::PostInvoiceitemsInvoiceitemRequestDiscounts?, default: nil, required: false, nullable: false, emit_null: false)]
    getter discounts : Stripe::PostInvoiceitemsInvoiceitemRequestDiscounts? = nil

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    @[JSON::Field(key: "metadata", type: Stripe::PostAccountsRequestMetadata?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Stripe::PostAccountsRequestMetadata? = nil

    @[JSON::Field(key: "period", type: Stripe::Period?, default: nil, required: false, nullable: false, emit_null: false)]
    getter period : Stripe::Period? = nil

    # The ID of the price object.
    @[JSON::Field(key: "price", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter price : String? = nil
    MAX_LENGTH_FOR_PRICE = 5000

    @[JSON::Field(key: "price_data", type: Stripe::OneTimePriceData?, default: nil, required: false, nullable: false, emit_null: false)]
    getter price_data : Stripe::OneTimePriceData? = nil

    # Non-negative integer. The quantity of units for the invoice item.
    @[JSON::Field(key: "quantity", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter quantity : Int64? = nil

    # Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
    @[JSON::Field(key: "tax_behavior", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter tax_behavior : String? = nil
    ERROR_MESSAGE_FOR_TAX_BEHAVIOR = "invalid value for \"tax_behavior\", must be one of [exclusive, inclusive, unspecified]."
    VALID_VALUES_FOR_TAX_BEHAVIOR  = String.static_array("exclusive", "inclusive", "unspecified")

    @[JSON::Field(key: "tax_code", type: Stripe::PostInvoiceitemsRequestTaxCode?, default: nil, required: false, nullable: false, emit_null: false)]
    getter tax_code : Stripe::PostInvoiceitemsRequestTaxCode? = nil

    @[JSON::Field(key: "tax_rates", type: Stripe::PostInvoiceitemsInvoiceitemRequestTaxRates?, default: nil, required: false, nullable: false, emit_null: false)]
    getter tax_rates : Stripe::PostInvoiceitemsInvoiceitemRequestTaxRates? = nil

    # The integer unit amount in cents (or local equivalent) of the charge to be applied to the upcoming invoice. This unit_amount will be multiplied by the quantity to get the full amount. If you want to apply a credit to the customer's account, pass a negative unit_amount.
    @[JSON::Field(key: "unit_amount", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter unit_amount : Int64? = nil

    # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
    @[JSON::Field(key: "unit_amount_decimal", type: BigDecimal?, default: nil, required: false, nullable: false, emit_null: false)]
    getter unit_amount_decimal : BigDecimal? = nil

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
      @metadata : Stripe::PostAccountsRequestMetadata? = nil,
      @period : Stripe::Period? = nil,
      @price : String? = nil,
      @price_data : Stripe::OneTimePriceData? = nil,
      @quantity : Int64? = nil,
      @tax_behavior : String? = nil,
      @tax_code : Stripe::PostInvoiceitemsRequestTaxCode? = nil,
      @tax_rates : Stripe::PostInvoiceitemsInvoiceitemRequestTaxRates? = nil,
      @unit_amount : Int64? = nil,
      @unit_amount_decimal : BigDecimal? = nil
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

      unless (_tax_behavior = @tax_behavior).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_TAX_BEHAVIOR) unless OpenApi::EnumValidator.valid?(_tax_behavior, VALID_VALUES_FOR_TAX_BEHAVIOR)
      end
      unless (_tax_code = @tax_code).nil?
        invalid_properties.concat(_tax_code.list_invalid_properties_for("tax_code")) if _tax_code.is_a?(OpenApi::Validatable)
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

      unless (_tax_behavior = @tax_behavior).nil?
        return false unless OpenApi::EnumValidator.valid?(_tax_behavior, VALID_VALUES_FOR_TAX_BEHAVIOR)
      end

      unless (_tax_code = @tax_code).nil?
        return false if _tax_code.is_a?(OpenApi::Validatable) && !_tax_code.valid?
      end

      unless (_tax_rates = @tax_rates).nil?
        return false if _tax_rates.is_a?(OpenApi::Validatable) && !_tax_rates.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount Object to be assigned
    def amount=(new_value : Int64?)
      @amount = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] description Object to be assigned
    def description=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("description", new_value.to_s.size, MAX_LENGTH_FOR_DESCRIPTION)
      end

      @description = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] discountable Object to be assigned
    def discountable=(new_value : Bool?)
      @discountable = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] discounts Object to be assigned
    def discounts=(new_value : Stripe::PostInvoiceitemsInvoiceitemRequestDiscounts?)
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
    def metadata=(new_value : Stripe::PostAccountsRequestMetadata?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @metadata = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] period Object to be assigned
    def period=(new_value : Stripe::Period?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @period = new_value
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
    def price_data=(new_value : Stripe::OneTimePriceData?)
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
    # @param [Object] tax_behavior Object to be assigned
    def tax_behavior=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("tax_behavior", new_value, VALID_VALUES_FOR_TAX_BEHAVIOR)
      end

      @tax_behavior = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tax_code Object to be assigned
    def tax_code=(new_value : Stripe::PostInvoiceitemsRequestTaxCode?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @tax_code = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tax_rates Object to be assigned
    def tax_rates=(new_value : Stripe::PostInvoiceitemsInvoiceitemRequestTaxRates?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @tax_rates = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] unit_amount Object to be assigned
    def unit_amount=(new_value : Int64?)
      @unit_amount = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] unit_amount_decimal Object to be assigned
    def unit_amount_decimal=(new_value : BigDecimal?)
      @unit_amount_decimal = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@amount, @description, @discountable, @discounts, @expand, @metadata, @period, @price, @price_data, @quantity, @tax_behavior, @tax_code, @tax_rates, @unit_amount, @unit_amount_decimal)
  end
end
