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
  class PriceData
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    @[JSON::Field(key: "currency", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter currency : String? = nil

    @[JSON::Field(key: "product", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter product : String? = nil

    # Optional properties

    @[JSON::Field(key: "recurring", type: Stripe::RecurringAdhoc?, default: nil, required: false, nullable: false, emit_null: false)]
    getter recurring : Stripe::RecurringAdhoc? = nil

    @[JSON::Field(key: "tax_behavior", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter tax_behavior : String? = nil

    ENUM_VALIDATOR_FOR_TAX_BEHAVIOR = EnumValidator.new("tax_behavior", "String", ["exclusive", "inclusive", "unspecified"])

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
      # Optional properties
      @recurring : Stripe::RecurringAdhoc? = nil,
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
        if _product.to_s.size > 5000
          invalid_properties.push("invalid value for \"product\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _recurring = @recurring
        if _recurring.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_recurring.list_invalid_properties_for("recurring"))
        end
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_TAX_BEHAVIOR.error_message) unless ENUM_VALIDATOR_FOR_TAX_BEHAVIOR.valid?(@tax_behavior)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @currency.nil?

      return false if @product.nil?
      if _product = @product
        return false if _product.to_s.size > 5000
      end
      if _recurring = @recurring
        if _recurring.is_a?(OpenApi::Validatable)
          return false unless _recurring.valid?
        end
      end
      return false unless ENUM_VALIDATOR_FOR_TAX_BEHAVIOR.valid?(@tax_behavior)

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
      if _product.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"product\", the character length must be smaller than or equal to 5000.")
      end

      @product = _product
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] recurring Object to be assigned
    def recurring=(recurring : Stripe::RecurringAdhoc?)
      if recurring.nil?
        return @recurring = nil
      end
      _recurring = recurring.not_nil!
      if _recurring.is_a?(OpenApi::Validatable)
        _recurring.validate
      end
      @recurring = _recurring
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tax_behavior Object to be assigned
    def tax_behavior=(tax_behavior : String?)
      if tax_behavior.nil?
        return @tax_behavior = nil
      end
      _tax_behavior = tax_behavior.not_nil!
      ENUM_VALIDATOR_FOR_TAX_BEHAVIOR.valid!(_tax_behavior)
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
