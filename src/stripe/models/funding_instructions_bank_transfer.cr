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
  class FundingInstructionsBankTransfer
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The country of the bank account to fund
    @[JSON::Field(key: "country", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter country : String? = nil
    MAX_LENGTH_FOR_COUNTRY = 5000

    # A list of financial addresses that can be used to fund a particular balance
    @[JSON::Field(key: "financial_addresses", type: Array(Stripe::FundingInstructionsBankTransferFinancialAddress)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter financial_addresses : Array(Stripe::FundingInstructionsBankTransferFinancialAddress)? = nil

    # The bank_transfer type
    @[JSON::Field(key: "type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter _type : String? = nil
    ERROR_MESSAGE_FOR__TYPE = "invalid value for \"_type\", must be one of [eu_bank_transfer, jp_bank_transfer]."
    VALID_VALUES_FOR__TYPE  = String.static_array("eu_bank_transfer", "jp_bank_transfer")

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @country : String? = nil,
      @financial_addresses : Array(Stripe::FundingInstructionsBankTransferFinancialAddress)? = nil,
      @_type : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"country\" is required and cannot be null") if @country.nil?

      unless (_country = @country).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("country", _country.to_s.size, MAX_LENGTH_FOR_COUNTRY)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"financial_addresses\" is required and cannot be null") if @financial_addresses.nil?

      unless (_financial_addresses = @financial_addresses).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "financial_addresses", container: _financial_addresses)) if _financial_addresses.is_a?(Array)
      end
      invalid_properties.push("\"_type\" is required and cannot be null") if @_type.nil?

      unless (__type = @_type).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR__TYPE) unless OpenApi::EnumValidator.valid?(__type, VALID_VALUES_FOR__TYPE)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @country.nil?
      unless (_country = @country).nil?
        return false if _country.to_s.size > MAX_LENGTH_FOR_COUNTRY
      end

      return false if @financial_addresses.nil?
      unless (_financial_addresses = @financial_addresses).nil?
        return false if _financial_addresses.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _financial_addresses)
      end

      return false if @_type.nil?
      unless (__type = @_type).nil?
        return false unless OpenApi::EnumValidator.valid?(__type, VALID_VALUES_FOR__TYPE)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] country Object to be assigned
    def country=(country : String?)
      if country.nil?
        raise ArgumentError.new("\"country\" is required and cannot be null")
      end
      _country = country.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("country", _country.to_s.size, MAX_LENGTH_FOR_COUNTRY)
      @country = _country
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] financial_addresses Object to be assigned
    def financial_addresses=(financial_addresses : Array(Stripe::FundingInstructionsBankTransferFinancialAddress)?)
      if financial_addresses.nil?
        raise ArgumentError.new("\"financial_addresses\" is required and cannot be null")
      end
      _financial_addresses = financial_addresses.not_nil!
      OpenApi::ContainerValidator.validate(container: _financial_addresses) if _financial_addresses.is_a?(Array)
      @financial_addresses = _financial_addresses
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

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@country, @financial_addresses, @_type)
  end
end
