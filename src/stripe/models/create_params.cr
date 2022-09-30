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
  class CreateParams
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "description", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter description : String? = nil

    @[JSON::Field(key: "discounts", type: Stripe::GetInvoicesUpcomingDiscountsParameter?, default: nil, required: false, nullable: false, emit_null: false)]
    getter discounts : Stripe::GetInvoicesUpcomingDiscountsParameter? = nil

    @[JSON::Field(key: "price", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter price : String? = nil

    @[JSON::Field(key: "price_data", type: Stripe::PriceDataWithOptionalProduct?, default: nil, required: false, nullable: false, emit_null: false)]
    getter price_data : Stripe::PriceDataWithOptionalProduct? = nil

    @[JSON::Field(key: "product", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter product : String? = nil

    @[JSON::Field(key: "product_data", type: Stripe::ProductUpsertData?, default: nil, required: false, nullable: false, emit_null: false)]
    getter product_data : Stripe::ProductUpsertData? = nil

    @[JSON::Field(key: "quantity", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter quantity : Int64? = nil

    @[JSON::Field(key: "tax_rates", type: Stripe::CreditNoteLineItemParamsTaxRates?, default: nil, required: false, nullable: false, emit_null: false)]
    getter tax_rates : Stripe::CreditNoteLineItemParamsTaxRates? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @description : String? = nil,
      @discounts : Stripe::GetInvoicesUpcomingDiscountsParameter? = nil,
      @price : String? = nil,
      @price_data : Stripe::PriceDataWithOptionalProduct? = nil,
      @product : String? = nil,
      @product_data : Stripe::ProductUpsertData? = nil,
      @quantity : Int64? = nil,
      @tax_rates : Stripe::CreditNoteLineItemParamsTaxRates? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      if _description = @description
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("description", _description.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _discounts = @discounts
        invalid_properties.concat(_discounts.list_invalid_properties_for("discounts")) if _discounts.is_a?(OpenApi::Validatable)
      end
      if _price = @price
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("price", _price.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _price_data = @price_data
        invalid_properties.concat(_price_data.list_invalid_properties_for("price_data")) if _price_data.is_a?(OpenApi::Validatable)
      end
      if _product = @product
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("product", _product.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _product_data = @product_data
        invalid_properties.concat(_product_data.list_invalid_properties_for("product_data")) if _product_data.is_a?(OpenApi::Validatable)
      end

      if _tax_rates = @tax_rates
        invalid_properties.concat(_tax_rates.list_invalid_properties_for("tax_rates")) if _tax_rates.is_a?(OpenApi::Validatable)
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
        return false if _discounts.is_a?(OpenApi::Validatable) && !_discounts.valid?
      end

      if _price = @price
        return false if _price.to_s.size > 5000
      end

      if _price_data = @price_data
        return false if _price_data.is_a?(OpenApi::Validatable) && !_price_data.valid?
      end

      if _product = @product
        return false if _product.to_s.size > 5000
      end

      if _product_data = @product_data
        return false if _product_data.is_a?(OpenApi::Validatable) && !_product_data.valid?
      end

      if _tax_rates = @tax_rates
        return false if _tax_rates.is_a?(OpenApi::Validatable) && !_tax_rates.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] description Object to be assigned
    def description=(description : String?)
      if description.nil?
        return @description = nil
      end
      _description = description.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("description", _description.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @description = _description
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
    # @param [Object] price Object to be assigned
    def price=(price : String?)
      if price.nil?
        return @price = nil
      end
      _price = price.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("price", _price.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @price = _price
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] price_data Object to be assigned
    def price_data=(price_data : Stripe::PriceDataWithOptionalProduct?)
      if price_data.nil?
        return @price_data = nil
      end
      _price_data = price_data.not_nil!
      _price_data.validate if _price_data.is_a?(OpenApi::Validatable)
      @price_data = _price_data
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] product Object to be assigned
    def product=(product : String?)
      if product.nil?
        return @product = nil
      end
      _product = product.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("product", _product.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @product = _product
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] product_data Object to be assigned
    def product_data=(product_data : Stripe::ProductUpsertData?)
      if product_data.nil?
        return @product_data = nil
      end
      _product_data = product_data.not_nil!
      _product_data.validate if _product_data.is_a?(OpenApi::Validatable)
      @product_data = _product_data
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

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@description, @discounts, @price, @price_data, @product, @product_data, @quantity, @tax_rates)
  end
end
