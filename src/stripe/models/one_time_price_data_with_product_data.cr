#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./product_data"

module Stripe
  class OneTimePriceDataWithProductData
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[JSON::Field(key: "currency", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter currency : String? = nil

    # End of Required Properties

    # Optional Properties

    # The ID of the product that this price will belong to. One of `product` or `product_data` is required.
    @[JSON::Field(key: "product", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter product : String? = nil
    MAX_LENGTH_FOR_PRODUCT = 5000

    @[JSON::Field(key: "product_data", type: Stripe::ProductData?, default: nil, required: false, nullable: false, emit_null: false)]
    getter product_data : Stripe::ProductData? = nil

    # Only required if a [default tax behavior](https://stripe.com/docs/tax/products-prices-tax-categories-tax-behavior#setting-a-default-tax-behavior-(recommended)) was not provided in the Stripe Tax settings. Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
    @[JSON::Field(key: "tax_behavior", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter tax_behavior : String? = nil
    ERROR_MESSAGE_FOR_TAX_BEHAVIOR = "invalid value for \"tax_behavior\", must be one of [exclusive, inclusive, unspecified]."
    VALID_VALUES_FOR_TAX_BEHAVIOR  = String.static_array("exclusive", "inclusive", "unspecified")

    # A non-negative integer in cents (or local equivalent) representing how much to charge. One of `unit_amount` or `unit_amount_decimal` is required.
    @[JSON::Field(key: "unit_amount", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter unit_amount : Int64? = nil

    # Same as `unit_amount`, but accepts a decimal value in cents (or local equivalent) with at most 12 decimal places. Only one of `unit_amount` and `unit_amount_decimal` can be set.
    @[JSON::Field(key: "unit_amount_decimal", type: BigDecimal?, default: nil, required: false, nullable: false, emit_null: false)]
    getter unit_amount_decimal : BigDecimal? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @currency : String? = nil,
      # Optional properties
      @product : String? = nil,
      @product_data : Stripe::ProductData? = nil,
      @tax_behavior : String? = nil,
      @unit_amount : Int64? = nil,
      @unit_amount_decimal : BigDecimal? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"currency\" is required and cannot be null") if @currency.nil?

      unless (_product = @product).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("product", _product.to_s.size, MAX_LENGTH_FOR_PRODUCT)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_product_data = @product_data).nil?
        invalid_properties.concat(_product_data.list_invalid_properties_for("product_data")) if _product_data.is_a?(OpenApi::Validatable)
      end
      unless (_tax_behavior = @tax_behavior).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_TAX_BEHAVIOR) unless OpenApi::EnumValidator.valid?(_tax_behavior, VALID_VALUES_FOR_TAX_BEHAVIOR)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @currency.nil?

      unless (_product = @product).nil?
        return false if _product.to_s.size > MAX_LENGTH_FOR_PRODUCT
      end

      unless (_product_data = @product_data).nil?
        return false if _product_data.is_a?(OpenApi::Validatable) && !_product_data.valid?
      end

      unless (_tax_behavior = @tax_behavior).nil?
        return false unless OpenApi::EnumValidator.valid?(_tax_behavior, VALID_VALUES_FOR_TAX_BEHAVIOR)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] currency Object to be assigned
    def currency=(new_value : String?)
      raise ArgumentError.new("\"currency\" is required and cannot be null") if new_value.nil?

      @currency = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] product Object to be assigned
    def product=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("product", new_value.to_s.size, MAX_LENGTH_FOR_PRODUCT)
      end

      @product = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] product_data Object to be assigned
    def product_data=(new_value : Stripe::ProductData?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @product_data = new_value
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
    def_equals_and_hash(@currency, @product, @product_data, @tax_behavior, @unit_amount, @unit_amount_decimal)
  end
end