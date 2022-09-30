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
  #
  class CurrencyOption
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "custom_unit_amount", type: Stripe::CurrencyOptionCustomUnitAmount?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: custom_unit_amount.nil? && !custom_unit_amount_present?)]
    getter custom_unit_amount : Stripe::CurrencyOptionCustomUnitAmount? = nil

    @[JSON::Field(ignore: true)]
    property? custom_unit_amount_present : Bool = false

    # Specifies whether the price is considered inclusive of taxes or exclusive of taxes. One of `inclusive`, `exclusive`, or `unspecified`. Once specified as either `inclusive` or `exclusive`, it cannot be changed.
    @[JSON::Field(key: "tax_behavior", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: tax_behavior.nil? && !tax_behavior_present?)]
    getter tax_behavior : String? = nil

    @[JSON::Field(ignore: true)]
    property? tax_behavior_present : Bool = false
    VALID_VALUES_FOR_TAX_BEHAVIOR = StaticArray["exclusive", "inclusive", "unspecified"]

    # Each element represents a pricing tier. This parameter requires `billing_scheme` to be set to `tiered`. See also the documentation for `billing_scheme`.
    @[JSON::Field(key: "tiers", type: Array(Stripe::PriceTier)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter tiers : Array(Stripe::PriceTier)? = nil

    # The unit amount in %s to be charged, represented as a whole integer if possible. Only set if `billing_scheme=per_unit`.
    @[JSON::Field(key: "unit_amount", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: unit_amount.nil? && !unit_amount_present?)]
    getter unit_amount : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? unit_amount_present : Bool = false

    # The unit amount in %s to be charged, represented as a decimal string with at most 12 decimal places. Only set if `billing_scheme=per_unit`.
    @[JSON::Field(key: "unit_amount_decimal", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: unit_amount_decimal.nil? && !unit_amount_decimal_present?)]
    getter unit_amount_decimal : String? = nil

    @[JSON::Field(ignore: true)]
    property? unit_amount_decimal_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @custom_unit_amount : Stripe::CurrencyOptionCustomUnitAmount? = nil,
      @tax_behavior : String? = nil,
      @tiers : Array(Stripe::PriceTier)? = nil,
      @unit_amount : Int64? = nil,
      @unit_amount_decimal : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      if _custom_unit_amount = @custom_unit_amount
        invalid_properties.concat(_custom_unit_amount.list_invalid_properties_for("custom_unit_amount")) if _custom_unit_amount.is_a?(OpenApi::Validatable)
      end
      if _tax_behavior = @tax_behavior
        invalid_properties.push(OpenApi::EnumValidator.error_message("tax_behavior", VALID_VALUES_FOR_TAX_BEHAVIOR)) unless OpenApi::EnumValidator.valid?(_tax_behavior, VALID_VALUES_FOR_TAX_BEHAVIOR)
      end
      if _tiers = @tiers
        invalid_properties.concat(OpenApi::ArrayValidator.list_invalid_properties_for(key: "tiers", array: _tiers)) if _tiers.is_a?(Array)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _custom_unit_amount = @custom_unit_amount
        return false if _custom_unit_amount.is_a?(OpenApi::Validatable) && !_custom_unit_amount.valid?
      end

      if _tax_behavior = @tax_behavior
        return false unless OpenApi::EnumValidator.valid?(_tax_behavior, VALID_VALUES_FOR_TAX_BEHAVIOR)
      end

      if _tiers = @tiers
        return false if _tiers.is_a?(Array) && !OpenApi::ArrayValidator.valid?(array: _tiers)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] custom_unit_amount Object to be assigned
    def custom_unit_amount=(custom_unit_amount : Stripe::CurrencyOptionCustomUnitAmount?)
      if custom_unit_amount.nil?
        return @custom_unit_amount = nil
      end
      _custom_unit_amount = custom_unit_amount.not_nil!
      _custom_unit_amount.validate if _custom_unit_amount.is_a?(OpenApi::Validatable)
      @custom_unit_amount = _custom_unit_amount
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
    # @param [Object] tiers Object to be assigned
    def tiers=(tiers : Array(Stripe::PriceTier)?)
      if tiers.nil?
        return @tiers = nil
      end
      _tiers = tiers.not_nil!
      OpenApi::ArrayValidator.validate(array: _tiers) if _tiers.is_a?(Array)
      @tiers = _tiers
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
    def_equals_and_hash(@custom_unit_amount, @custom_unit_amount_present, @tax_behavior, @tax_behavior_present, @tiers, @unit_amount, @unit_amount_present, @unit_amount_decimal, @unit_amount_decimal_present)
  end
end
