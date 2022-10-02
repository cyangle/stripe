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
  class RecurringPriceData
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    @[JSON::Field(key: "currency", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter currency : String? = nil

    @[JSON::Field(key: "product", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter product : String? = nil
    MAX_LENGTH_FOR_PRODUCT = 5000

    @[JSON::Field(key: "recurring", type: Stripe::RecurringAdhoc?, default: nil, required: true, nullable: false, emit_null: false)]
    getter recurring : Stripe::RecurringAdhoc? = nil

    # Optional properties

    @[JSON::Field(key: "tax_behavior", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter tax_behavior : String? = nil
    ERROR_MESSAGE_FOR_TAX_BEHAVIOR = "invalid value for \"tax_behavior\", must be one of [exclusive, inclusive, unspecified]."
    VALID_VALUES_FOR_TAX_BEHAVIOR  = StaticArray["exclusive", "inclusive", "unspecified"]

    @[JSON::Field(key: "unit_amount", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter unit_amount : Int64? = nil

    @[JSON::Field(key: "unit_amount_decimal", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter unit_amount_decimal : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @currency : String? = nil,
      @product : String? = nil,
      @recurring : Stripe::RecurringAdhoc? = nil,
      # Optional properties
      @tax_behavior : String? = nil,
      @unit_amount : Int64? = nil,
      @unit_amount_decimal : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"currency\" is required and cannot be null") if @currency.nil?

      invalid_properties.push("\"product\" is required and cannot be null") if @product.nil?

      if _product = @product
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("product", _product.to_s.size, MAX_LENGTH_FOR_PRODUCT)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"recurring\" is required and cannot be null") if @recurring.nil?

      if _recurring = @recurring
        invalid_properties.concat(_recurring.list_invalid_properties_for("recurring")) if _recurring.is_a?(OpenApi::Validatable)
      end
      if _tax_behavior = @tax_behavior
        invalid_properties.push(ERROR_MESSAGE_FOR_TAX_BEHAVIOR) unless OpenApi::EnumValidator.valid?(_tax_behavior, VALID_VALUES_FOR_TAX_BEHAVIOR)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @currency.nil?

      return false if @product.nil?
      if _product = @product
        return false if _product.to_s.size > MAX_LENGTH_FOR_PRODUCT
      end

      return false if @recurring.nil?
      if _recurring = @recurring
        return false if _recurring.is_a?(OpenApi::Validatable) && !_recurring.valid?
      end

      if _tax_behavior = @tax_behavior
        return false unless OpenApi::EnumValidator.valid?(_tax_behavior, VALID_VALUES_FOR_TAX_BEHAVIOR)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] currency Object to be assigned
    def currency=(currency : String?)
      if currency.nil?
        raise ArgumentError.new("\"currency\" is required and cannot be null")
      end
      _currency = currency.not_nil!
      @currency = _currency
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] product Object to be assigned
    def product=(product : String?)
      if product.nil?
        raise ArgumentError.new("\"product\" is required and cannot be null")
      end
      _product = product.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("product", _product.to_s.size, MAX_LENGTH_FOR_PRODUCT)
      @product = _product
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] recurring Object to be assigned
    def recurring=(recurring : Stripe::RecurringAdhoc?)
      if recurring.nil?
        raise ArgumentError.new("\"recurring\" is required and cannot be null")
      end
      _recurring = recurring.not_nil!
      _recurring.validate if _recurring.is_a?(OpenApi::Validatable)
      @recurring = _recurring
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tax_behavior Object to be assigned
    def tax_behavior=(tax_behavior : String?)
      if tax_behavior.nil?
        return @tax_behavior = nil
      end
      _tax_behavior = tax_behavior.not_nil!
      OpenApi::EnumValidator.validate("tax_behavior", _tax_behavior, VALID_VALUES_FOR_TAX_BEHAVIOR)
      @tax_behavior = _tax_behavior
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
    def_equals_and_hash(@currency, @product, @recurring, @tax_behavior, @unit_amount, @unit_amount_decimal)
  end
end
