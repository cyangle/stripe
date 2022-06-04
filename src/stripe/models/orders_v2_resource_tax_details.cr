#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-08-27
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module Stripe
  # 
  @[JSON::Serializable::Options(emit_nulls: true)]
  class OrdersV2ResourceTaxDetails
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # Describes the purchaser's tax exemption status. One of `none`, `exempt`, or `reverse`.
    @[JSON::Field(key: "tax_exempt", type: String)]
    getter tax_exempt : String

    ENUM_VALIDATOR_FOR_TAX_EXEMPT = EnumValidator.new("tax_exempt", "String", ["exempt", "none", "reverse"])

    # The purchaser's tax IDs to be used in calculation of tax for this Order.
    @[JSON::Field(key: "tax_ids", type: Array(OrdersV2ResourceTaxDetailsResourceTaxId))]
    property tax_ids : Array(OrdersV2ResourceTaxDetailsResourceTaxId)

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *, 
      # Required properties
      @tax_exempt : String, 
      @tax_ids : Array(OrdersV2ResourceTaxDetailsResourceTaxId)
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_TAX_EXEMPT.error_message) unless ENUM_VALIDATOR_FOR_TAX_EXEMPT.valid?(@tax_exempt, false)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR_TAX_EXEMPT.valid?(@tax_exempt, false)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tax_exempt Object to be assigned
    def tax_exempt=(tax_exempt)
      ENUM_VALIDATOR_FOR_TAX_EXEMPT.valid!(tax_exempt, false)
      @tax_exempt = tax_exempt
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@tax_exempt, @tax_ids)
  end
end
