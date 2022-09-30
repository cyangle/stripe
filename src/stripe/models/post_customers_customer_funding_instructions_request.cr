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
  class PostCustomersCustomerFundingInstructionsRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    @[JSON::Field(key: "bank_transfer", type: Stripe::BankTransferParams?, default: nil, required: true, nullable: false, emit_null: false)]
    getter bank_transfer : Stripe::BankTransferParams? = nil

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[JSON::Field(key: "currency", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter currency : String? = nil

    # The `funding_type` to get the instructions for.
    @[JSON::Field(key: "funding_type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter funding_type : String? = nil

    VALID_VALUES_FOR_FUNDING_TYPE = StaticArray["bank_transfer"]

    # Optional properties

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @bank_transfer : Stripe::BankTransferParams? = nil,
      @currency : String? = nil,
      @funding_type : String? = nil,
      # Optional properties
      @expand : Array(String)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"bank_transfer\" is required and cannot be null") if @bank_transfer.nil?

      if _bank_transfer = @bank_transfer
        invalid_properties.concat(_bank_transfer.list_invalid_properties_for("bank_transfer")) if _bank_transfer.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"currency\" is required and cannot be null") if @currency.nil?

      invalid_properties.push("\"funding_type\" is required and cannot be null") if @funding_type.nil?

      if _funding_type = @funding_type
        invalid_properties.push(OpenApi::EnumValidator.error_message("funding_type", VALID_VALUES_FOR_FUNDING_TYPE)) unless OpenApi::EnumValidator.valid?(_funding_type, VALID_VALUES_FOR_FUNDING_TYPE)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @bank_transfer.nil?
      if _bank_transfer = @bank_transfer
        return false if _bank_transfer.is_a?(OpenApi::Validatable) && !_bank_transfer.valid?
      end

      return false if @currency.nil?

      return false if @funding_type.nil?
      if _funding_type = @funding_type
        return false unless OpenApi::EnumValidator.valid?(_funding_type, VALID_VALUES_FOR_FUNDING_TYPE)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bank_transfer Object to be assigned
    def bank_transfer=(bank_transfer : Stripe::BankTransferParams?)
      if bank_transfer.nil?
        raise ArgumentError.new("\"bank_transfer\" is required and cannot be null")
      end
      _bank_transfer = bank_transfer.not_nil!
      _bank_transfer.validate if _bank_transfer.is_a?(OpenApi::Validatable)
      @bank_transfer = _bank_transfer
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] currency Object to be assigned
    def currency=(currency : String?)
      if currency.nil?
        raise ArgumentError.new("\"currency\" is required and cannot be null")
      end
      _currency = currency.not_nil!
      @currency = _currency
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] funding_type Object to be assigned
    def funding_type=(funding_type : String?)
      if funding_type.nil?
        raise ArgumentError.new("\"funding_type\" is required and cannot be null")
      end
      _funding_type = funding_type.not_nil!
      OpenApi::EnumValidator.validate("funding_type", _funding_type, VALID_VALUES_FOR_FUNDING_TYPE)
      @funding_type = _funding_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expand Object to be assigned
    def expand=(expand : Array(String)?)
      if expand.nil?
        return @expand = nil
      end
      _expand = expand.not_nil!
      @expand = _expand
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@bank_transfer, @currency, @funding_type, @expand)
  end
end
