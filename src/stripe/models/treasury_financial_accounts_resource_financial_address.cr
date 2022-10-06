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
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The type of financial address
    @[JSON::Field(key: "type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter _type : String? = nil
    ERROR_MESSAGE_FOR__TYPE = "invalid value for \"_type\", must be one of [aba]."
    VALID_VALUES_FOR__TYPE  = String.static_array("aba")

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "aba", type: Stripe::TreasuryFinancialAccountsResourceAbaRecord?, default: nil, required: false, nullable: false, emit_null: false)]
    getter aba : Stripe::TreasuryFinancialAccountsResourceAbaRecord? = nil

    # The list of networks that the address supports
    @[JSON::Field(key: "supported_networks", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter supported_networks : Array(String)? = nil
    ERROR_MESSAGE_FOR_SUPPORTED_NETWORKS = "invalid value for \"supported_networks\", must be one of [ach, us_domestic_wire]."
    VALID_VALUES_FOR_SUPPORTED_NETWORKS  = String.static_array("ach", "us_domestic_wire")

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
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"_type\" is required and cannot be null") if @_type.nil?

      unless (__type = @_type).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR__TYPE) unless OpenApi::EnumValidator.valid?(__type, VALID_VALUES_FOR__TYPE)
      end
      unless (_aba = @aba).nil?
        invalid_properties.concat(_aba.list_invalid_properties_for("aba")) if _aba.is_a?(OpenApi::Validatable)
      end
      unless (_supported_networks = @supported_networks).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_SUPPORTED_NETWORKS) unless OpenApi::EnumValidator.valid?(_supported_networks, VALID_VALUES_FOR_SUPPORTED_NETWORKS)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @_type.nil?
      unless (__type = @_type).nil?
        return false unless OpenApi::EnumValidator.valid?(__type, VALID_VALUES_FOR__TYPE)
      end

      unless (_aba = @aba).nil?
        return false if _aba.is_a?(OpenApi::Validatable) && !_aba.valid?
      end

      unless (_supported_networks = @supported_networks).nil?
        return false unless OpenApi::EnumValidator.valid?(_supported_networks, VALID_VALUES_FOR_SUPPORTED_NETWORKS)
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
      OpenApi::EnumValidator.validate("_type", __type, VALID_VALUES_FOR__TYPE)
      @_type = __type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] aba Object to be assigned
    def aba=(aba : Stripe::TreasuryFinancialAccountsResourceAbaRecord?)
      if aba.nil?
        return @aba = nil
      end
      _aba = aba.not_nil!
      _aba.validate if _aba.is_a?(OpenApi::Validatable)
      @aba = _aba
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] supported_networks Object to be assigned
    def supported_networks=(supported_networks : Array(String)?)
      if supported_networks.nil?
        return @supported_networks = nil
      end
      _supported_networks = supported_networks.not_nil!
      OpenApi::EnumValidator.validate("supported_networks", _supported_networks, VALID_VALUES_FOR_SUPPORTED_NETWORKS)
      @supported_networks = _supported_networks
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@_type, @aba, @supported_networks)
  end
end
