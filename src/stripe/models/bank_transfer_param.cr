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
  class BankTransferParam
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    @[JSON::Field(key: "type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter _type : String? = nil

    VALID_VALUES_FOR__TYPE = StaticArray["eu_bank_transfer", "gb_bank_transfer", "jp_bank_transfer", "mx_bank_transfer"]

    # Optional properties

    @[JSON::Field(key: "eu_bank_transfer", type: Stripe::EuBankTransferParams?, default: nil, required: false, nullable: false, emit_null: false)]
    getter eu_bank_transfer : Stripe::EuBankTransferParams? = nil

    @[JSON::Field(key: "requested_address_types", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter requested_address_types : Array(String)? = nil

    VALID_VALUES_FOR_REQUESTED_ADDRESS_TYPES = StaticArray["iban", "sepa", "sort_code", "spei", "zengin"]

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @_type : String? = nil,
      # Optional properties
      @eu_bank_transfer : Stripe::EuBankTransferParams? = nil,
      @requested_address_types : Array(String)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"_type\" is required and cannot be null") if @_type.nil?

      if __type = @_type
        invalid_properties.push(OpenApi::EnumValidator.error_message("_type", VALID_VALUES_FOR__TYPE)) unless OpenApi::EnumValidator.valid?(__type, VALID_VALUES_FOR__TYPE)
      end
      if _eu_bank_transfer = @eu_bank_transfer
        invalid_properties.concat(_eu_bank_transfer.list_invalid_properties_for("eu_bank_transfer")) if _eu_bank_transfer.is_a?(OpenApi::Validatable)
      end
      if _requested_address_types = @requested_address_types
        invalid_properties.push(OpenApi::EnumValidator.error_message("requested_address_types", VALID_VALUES_FOR_REQUESTED_ADDRESS_TYPES)) unless OpenApi::EnumValidator.valid?(_requested_address_types, VALID_VALUES_FOR_REQUESTED_ADDRESS_TYPES)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @_type.nil?
      if __type = @_type
        return false unless OpenApi::EnumValidator.valid?(__type, VALID_VALUES_FOR__TYPE)
      end

      if _eu_bank_transfer = @eu_bank_transfer
        return false if _eu_bank_transfer.is_a?(OpenApi::Validatable) && !_eu_bank_transfer.valid?
      end

      if _requested_address_types = @requested_address_types
        return false unless OpenApi::EnumValidator.valid?(_requested_address_types, VALID_VALUES_FOR_REQUESTED_ADDRESS_TYPES)
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
    # @param [Object] eu_bank_transfer Object to be assigned
    def eu_bank_transfer=(eu_bank_transfer : Stripe::EuBankTransferParams?)
      if eu_bank_transfer.nil?
        return @eu_bank_transfer = nil
      end
      _eu_bank_transfer = eu_bank_transfer.not_nil!
      _eu_bank_transfer.validate if _eu_bank_transfer.is_a?(OpenApi::Validatable)
      @eu_bank_transfer = _eu_bank_transfer
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] requested_address_types Object to be assigned
    def requested_address_types=(requested_address_types : Array(String)?)
      if requested_address_types.nil?
        return @requested_address_types = nil
      end
      _requested_address_types = requested_address_types.not_nil!
      OpenApi::EnumValidator.validate("requested_address_types", _requested_address_types, VALID_VALUES_FOR_REQUESTED_ADDRESS_TYPES)
      @requested_address_types = _requested_address_types
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@_type, @eu_bank_transfer, @requested_address_types)
  end
end
