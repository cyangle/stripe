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
  class CreditNoteLineItemParams
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    @[JSON::Field(key: "type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter _type : String? = nil

    ENUM_VALIDATOR_FOR__TYPE = OpenApi::EnumValidator.new("_type", "String", ["custom_line_item", "invoice_line_item"])

    # Optional properties

    @[JSON::Field(key: "amount", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter amount : Int64? = nil

    @[JSON::Field(key: "description", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter description : String? = nil

    @[JSON::Field(key: "invoice_line_item", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter invoice_line_item : String? = nil

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
      # Required properties
      @_type : String? = nil,
      # Optional properties
      @amount : Int64? = nil,
      @description : String? = nil,
      @invoice_line_item : String? = nil,
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

      invalid_properties.push(ENUM_VALIDATOR_FOR__TYPE.error_message) unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type, false)

      if _description = @description
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("description", _description.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _invoice_line_item = @invoice_line_item
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("invoice_line_item", _invoice_line_item.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end

      if _tax_rates = @tax_rates
        invalid_properties.concat(_tax_rates.list_invalid_properties_for("tax_rates")) if _tax_rates.is_a?(OpenApi::Validatable)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type, false)

      if _description = @description
        return false if _description.to_s.size > 5000
      end
      if _invoice_line_item = @invoice_line_item
        return false if _invoice_line_item.to_s.size > 5000
      end

      if _tax_rates = @tax_rates
        return false if _tax_rates.is_a?(OpenApi::Validatable) && !_tax_rates.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(_type : String?)
      if _type.nil?
        raise ArgumentError.new("\"_type\" is required and cannot be null")
      end
      __type = _type.not_nil!
      ENUM_VALIDATOR_FOR__TYPE.valid!(__type)
      @_type = __type
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
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("description", _description.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @description = _description
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] invoice_line_item Object to be assigned
    def invoice_line_item=(invoice_line_item : String?)
      if invoice_line_item.nil?
        return @invoice_line_item = nil
      end
      _invoice_line_item = invoice_line_item.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("invoice_line_item", _invoice_line_item.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @invoice_line_item = _invoice_line_item
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
    def_equals_and_hash(@_type, @amount, @description, @invoice_line_item, @quantity, @tax_rates, @unit_amount, @unit_amount_decimal)
  end
end
