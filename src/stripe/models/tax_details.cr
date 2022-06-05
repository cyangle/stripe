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
  # Additional tax details about the purchaser to be used for this order.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class TaxDetails
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    @[JSON::Field(key: "tax_exempt", type: String?, presence: true, ignore_serialize: tax_exempt.nil? && !tax_exempt_present?)]
    getter tax_exempt : String?

    @[JSON::Field(ignore: true)]
    property? tax_exempt_present : Bool = false

    ENUM_VALIDATOR_FOR_TAX_EXEMPT = EnumValidator.new("tax_exempt", "String", ["", "exempt", "none", "reverse"])

    @[JSON::Field(key: "tax_ids", type: Array(DataParams)?, presence: true, ignore_serialize: tax_ids.nil? && !tax_ids_present?)]
    property tax_ids : Array(DataParams)?

    @[JSON::Field(ignore: true)]
    property? tax_ids_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @tax_exempt : String? = nil,
      @tax_ids : Array(DataParams)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_TAX_EXEMPT.error_message) unless ENUM_VALIDATOR_FOR_TAX_EXEMPT.valid?(@tax_exempt)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR_TAX_EXEMPT.valid?(@tax_exempt)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tax_exempt Object to be assigned
    def tax_exempt=(tax_exempt)
      ENUM_VALIDATOR_FOR_TAX_EXEMPT.valid!(tax_exempt)
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
