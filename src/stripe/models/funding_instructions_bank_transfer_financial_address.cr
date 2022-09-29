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
  class FundingInstructionsBankTransferFinancialAddress
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    # The type of financial address
    @[JSON::Field(key: "type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter _type : String? = nil

    ENUM_VALIDATOR_FOR__TYPE = OpenApi::EnumValidator.new("_type", "String", ["iban", "sort_code", "spei", "zengin"])

    # Optional properties

    @[JSON::Field(key: "iban", type: Stripe::FundingInstructionsBankTransferIbanRecord?, default: nil, required: false, nullable: false, emit_null: false)]
    getter iban : Stripe::FundingInstructionsBankTransferIbanRecord? = nil

    @[JSON::Field(key: "sort_code", type: Stripe::FundingInstructionsBankTransferSortCodeRecord?, default: nil, required: false, nullable: false, emit_null: false)]
    getter sort_code : Stripe::FundingInstructionsBankTransferSortCodeRecord? = nil

    @[JSON::Field(key: "spei", type: Stripe::FundingInstructionsBankTransferSpeiRecord?, default: nil, required: false, nullable: false, emit_null: false)]
    getter spei : Stripe::FundingInstructionsBankTransferSpeiRecord? = nil

    # The payment networks supported by this FinancialAddress
    @[JSON::Field(key: "supported_networks", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter supported_networks : Array(String)? = nil

    ENUM_VALIDATOR_FOR_SUPPORTED_NETWORKS = OpenApi::EnumValidator.new("supported_networks", "Array(String)", ["bacs", "fps", "sepa", "spei", "zengin"])

    @[JSON::Field(key: "zengin", type: Stripe::FundingInstructionsBankTransferZenginRecord?, default: nil, required: false, nullable: false, emit_null: false)]
    getter zengin : Stripe::FundingInstructionsBankTransferZenginRecord? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @_type : String? = nil,
      # Optional properties
      @iban : Stripe::FundingInstructionsBankTransferIbanRecord? = nil,
      @sort_code : Stripe::FundingInstructionsBankTransferSortCodeRecord? = nil,
      @spei : Stripe::FundingInstructionsBankTransferSpeiRecord? = nil,
      @supported_networks : Array(String)? = nil,
      @zengin : Stripe::FundingInstructionsBankTransferZenginRecord? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR__TYPE.error_message) unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type, false)
      if _iban = @iban
        invalid_properties.concat(_iban.list_invalid_properties_for("iban")) if _iban.is_a?(OpenApi::Validatable)
      end
      if _sort_code = @sort_code
        invalid_properties.concat(_sort_code.list_invalid_properties_for("sort_code")) if _sort_code.is_a?(OpenApi::Validatable)
      end
      if _spei = @spei
        invalid_properties.concat(_spei.list_invalid_properties_for("spei")) if _spei.is_a?(OpenApi::Validatable)
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_SUPPORTED_NETWORKS.error_message) unless ENUM_VALIDATOR_FOR_SUPPORTED_NETWORKS.all_valid?(@supported_networks)
      if _zengin = @zengin
        invalid_properties.concat(_zengin.list_invalid_properties_for("zengin")) if _zengin.is_a?(OpenApi::Validatable)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type, false)
      if _iban = @iban
        return false if _iban.is_a?(OpenApi::Validatable) && !_iban.valid?
      end
      if _sort_code = @sort_code
        return false if _sort_code.is_a?(OpenApi::Validatable) && !_sort_code.valid?
      end
      if _spei = @spei
        return false if _spei.is_a?(OpenApi::Validatable) && !_spei.valid?
      end
      return false unless ENUM_VALIDATOR_FOR_SUPPORTED_NETWORKS.all_valid?(@supported_networks)
      if _zengin = @zengin
        return false if _zengin.is_a?(OpenApi::Validatable) && !_zengin.valid?
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
    # @param [Object] iban Object to be assigned
    def iban=(iban : Stripe::FundingInstructionsBankTransferIbanRecord?)
      if iban.nil?
        return @iban = nil
      end
      _iban = iban.not_nil!
      _iban.validate if _iban.is_a?(OpenApi::Validatable)
      @iban = _iban
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sort_code Object to be assigned
    def sort_code=(sort_code : Stripe::FundingInstructionsBankTransferSortCodeRecord?)
      if sort_code.nil?
        return @sort_code = nil
      end
      _sort_code = sort_code.not_nil!
      _sort_code.validate if _sort_code.is_a?(OpenApi::Validatable)
      @sort_code = _sort_code
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] spei Object to be assigned
    def spei=(spei : Stripe::FundingInstructionsBankTransferSpeiRecord?)
      if spei.nil?
        return @spei = nil
      end
      _spei = spei.not_nil!
      _spei.validate if _spei.is_a?(OpenApi::Validatable)
      @spei = _spei
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] supported_networks Object to be assigned
    def supported_networks=(supported_networks : Array(String)?)
      if supported_networks.nil?
        return @supported_networks = nil
      end
      _supported_networks = supported_networks.not_nil!
      ENUM_VALIDATOR_FOR_SUPPORTED_NETWORKS.all_valid!(_supported_networks)
      @supported_networks = _supported_networks
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] zengin Object to be assigned
    def zengin=(zengin : Stripe::FundingInstructionsBankTransferZenginRecord?)
      if zengin.nil?
        return @zengin = nil
      end
      _zengin = zengin.not_nil!
      _zengin.validate if _zengin.is_a?(OpenApi::Validatable)
      @zengin = _zengin
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@_type, @iban, @sort_code, @spei, @supported_networks, @zengin)
  end
end
