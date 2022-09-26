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
  # FinancialAddresses contain identifying information that resolves to a FinancialAccount.
  class TreasuryFinancialAccountsResourceFinancialAddress
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Required properties

    # The type of financial address
    @[JSON::Field(key: "type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter _type : String? = nil

    ENUM_VALIDATOR_FOR__TYPE = EnumValidator.new("_type", "String", ["aba"])

    # Optional properties

    @[JSON::Field(key: "aba", type: Stripe::TreasuryFinancialAccountsResourceAbaRecord?, default: nil, required: false, nullable: false, emit_null: false)]
    getter aba : Stripe::TreasuryFinancialAccountsResourceAbaRecord? = nil

    # The list of networks that the address supports
    @[JSON::Field(key: "supported_networks", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter supported_networks : Array(String)? = nil

    ENUM_VALIDATOR_FOR_SUPPORTED_NETWORKS = EnumValidator.new("supported_networks", "Array(String)", ["ach", "us_domestic_wire"])

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @_type : String? = nil,
      # Optional properties
      @aba : Stripe::TreasuryFinancialAccountsResourceAbaRecord? = nil,
      @supported_networks : Array(String)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR__TYPE.error_message) unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type, false)
      # This is a model aba : Stripe::TreasuryFinancialAccountsResourceAbaRecord?

      invalid_properties.push(ENUM_VALIDATOR_FOR_SUPPORTED_NETWORKS.error_message) unless ENUM_VALIDATOR_FOR_SUPPORTED_NETWORKS.all_valid?(@supported_networks)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type, false)
      return false unless ENUM_VALIDATOR_FOR_SUPPORTED_NETWORKS.all_valid?(@supported_networks)

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
      @_type = _type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] aba Object to be assigned
    def aba=(aba : Stripe::TreasuryFinancialAccountsResourceAbaRecord?)
      if aba.nil?
        return @aba = nil
      end
      @aba = aba
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] supported_networks Object to be assigned
    def supported_networks=(supported_networks : Array(String)?)
      if supported_networks.nil?
        return @supported_networks = nil
      end
      _supported_networks = supported_networks.not_nil!
      ENUM_VALIDATOR_FOR_SUPPORTED_NETWORKS.all_valid!(_supported_networks)
      @supported_networks = supported_networks
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
    def_equals_and_hash(@_type, @aba, @supported_networks)
  end
end
