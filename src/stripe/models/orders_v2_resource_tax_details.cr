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
  class OrdersV2ResourceTaxDetails
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    # Describes the purchaser's tax exemption status. One of `none`, `exempt`, or `reverse`.
    @[JSON::Field(key: "tax_exempt", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter tax_exempt : String? = nil

    ENUM_VALIDATOR_FOR_TAX_EXEMPT = OpenApi::EnumValidator.new("tax_exempt", "String", ["exempt", "none", "reverse"])

    # The purchaser's tax IDs to be used in calculation of tax for this Order.
    @[JSON::Field(key: "tax_ids", type: Array(Stripe::OrdersV2ResourceTaxDetailsResourceTaxId)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter tax_ids : Array(Stripe::OrdersV2ResourceTaxDetailsResourceTaxId)? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @tax_exempt : String? = nil,
      @tax_ids : Array(Stripe::OrdersV2ResourceTaxDetailsResourceTaxId)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_TAX_EXEMPT.error_message) unless ENUM_VALIDATOR_FOR_TAX_EXEMPT.valid?(@tax_exempt, false)
      invalid_properties.push("\"tax_ids\" is required and cannot be null") if @tax_ids.nil?
      if _tax_ids = @tax_ids
        invalid_properties.concat(OpenApi::ArrayValidator.list_invalid_properties_for(key: "tax_ids", array: _tax_ids)) if _tax_ids.is_a?(Array)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false unless ENUM_VALIDATOR_FOR_TAX_EXEMPT.valid?(@tax_exempt, false)
      return false if @tax_ids.nil?
      if _tax_ids = @tax_ids
        return false if _tax_ids.is_a?(Array) && !OpenApi::ArrayValidator.valid?(array: _tax_ids)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tax_exempt Object to be assigned
    def tax_exempt=(tax_exempt : String?)
      if tax_exempt.nil?
        raise ArgumentError.new("\"tax_exempt\" is required and cannot be null")
      end
      _tax_exempt = tax_exempt.not_nil!
      ENUM_VALIDATOR_FOR_TAX_EXEMPT.valid!(_tax_exempt)
      @tax_exempt = _tax_exempt
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tax_ids Object to be assigned
    def tax_ids=(tax_ids : Array(Stripe::OrdersV2ResourceTaxDetailsResourceTaxId)?)
      if tax_ids.nil?
        raise ArgumentError.new("\"tax_ids\" is required and cannot be null")
      end
      _tax_ids = tax_ids.not_nil!
      OpenApi::ArrayValidator.validate(array: _tax_ids) if _tax_ids.is_a?(Array)
      @tax_ids = _tax_ids
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@tax_exempt, @tax_ids)
  end
end
