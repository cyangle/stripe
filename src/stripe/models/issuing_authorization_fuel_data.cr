#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

module Stripe
  #
  class IssuingAuthorizationFuelData
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # [Conexxus Payment System Product Code](https://www.conexxus.org/conexxus-payment-system-product-codes) identifying the primary fuel product purchased.
    @[JSON::Field(key: "industry_product_code", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter industry_product_code : String? = nil
    MAX_LENGTH_FOR_INDUSTRY_PRODUCT_CODE = 5000

    # The quantity of `unit`s of fuel that was dispensed, represented as a decimal string with at most 12 decimal places.
    @[JSON::Field(key: "quantity_decimal", type: BigDecimal?, default: nil, required: true, nullable: true, emit_null: true)]
    getter quantity_decimal : BigDecimal? = nil

    # The type of fuel that was purchased.
    @[JSON::Field(key: "type", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter _type : String? = nil
    ERROR_MESSAGE_FOR__TYPE = "invalid value for \"_type\", must be one of [diesel, other, unleaded_plus, unleaded_regular, unleaded_super]."
    VALID_VALUES_FOR__TYPE  = String.static_array("diesel", "other", "unleaded_plus", "unleaded_regular", "unleaded_super")

    # The units for `quantity_decimal`.
    @[JSON::Field(key: "unit", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter unit : String? = nil
    ERROR_MESSAGE_FOR_UNIT = "invalid value for \"unit\", must be one of [charging_minute, imperial_gallon, kilogram, kilowatt_hour, liter, other, pound, us_gallon]."
    VALID_VALUES_FOR_UNIT  = String.static_array("charging_minute", "imperial_gallon", "kilogram", "kilowatt_hour", "liter", "other", "pound", "us_gallon")

    # The cost in cents per each unit of fuel, represented as a decimal string with at most 12 decimal places.
    @[JSON::Field(key: "unit_cost_decimal", type: BigDecimal?, default: nil, required: true, nullable: true, emit_null: true)]
    getter unit_cost_decimal : BigDecimal? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @industry_product_code : String? = nil,
      @quantity_decimal : BigDecimal? = nil,
      @_type : String? = nil,
      @unit : String? = nil,
      @unit_cost_decimal : BigDecimal? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_industry_product_code = @industry_product_code).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("industry_product_code", _industry_product_code.to_s.size, MAX_LENGTH_FOR_INDUSTRY_PRODUCT_CODE)
          invalid_properties.push(max_length_error)
        end
      end

      unless (__type = @_type).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR__TYPE) unless OpenApi::EnumValidator.valid?(__type, VALID_VALUES_FOR__TYPE)
      end
      unless (_unit = @unit).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_UNIT) unless OpenApi::EnumValidator.valid?(_unit, VALID_VALUES_FOR_UNIT)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_industry_product_code = @industry_product_code).nil?
        return false if _industry_product_code.to_s.size > MAX_LENGTH_FOR_INDUSTRY_PRODUCT_CODE
      end

      unless (__type = @_type).nil?
        return false unless OpenApi::EnumValidator.valid?(__type, VALID_VALUES_FOR__TYPE)
      end

      unless (_unit = @unit).nil?
        return false unless OpenApi::EnumValidator.valid?(_unit, VALID_VALUES_FOR_UNIT)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] industry_product_code Object to be assigned
    def industry_product_code=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("industry_product_code", new_value.to_s.size, MAX_LENGTH_FOR_INDUSTRY_PRODUCT_CODE)
      end

      @industry_product_code = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] quantity_decimal Object to be assigned
    def quantity_decimal=(new_value : BigDecimal?)
      @quantity_decimal = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("_type", new_value, VALID_VALUES_FOR__TYPE)
      end

      @_type = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] unit Object to be assigned
    def unit=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("unit", new_value, VALID_VALUES_FOR_UNIT)
      end

      @unit = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] unit_cost_decimal Object to be assigned
    def unit_cost_decimal=(new_value : BigDecimal?)
      @unit_cost_decimal = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@industry_product_code, @quantity_decimal, @_type, @unit, @unit_cost_decimal)
  end
end