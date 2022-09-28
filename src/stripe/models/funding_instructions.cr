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
  # Each customer has a [`balance`](https://stripe.com/docs/api/customers/object#customer_object-balance) that is automatically applied to future invoices and payments using the `customer_balance` payment method. Customers can fund this balance by initiating a bank transfer to any account in the `financial_addresses` field. Related guide: [Customer Balance - Funding Instructions](https://stripe.com/docs/payments/customer-balance/funding-instructions) to learn more
  class FundingInstructions
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    @[JSON::Field(key: "bank_transfer", type: Stripe::FundingInstructionsBankTransfer?, default: nil, required: true, nullable: false, emit_null: false)]
    getter bank_transfer : Stripe::FundingInstructionsBankTransfer? = nil

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[JSON::Field(key: "currency", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter currency : String? = nil

    # The `funding_type` of the returned instructions
    @[JSON::Field(key: "funding_type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter funding_type : String? = nil

    ENUM_VALIDATOR_FOR_FUNDING_TYPE = EnumValidator.new("funding_type", "String", ["bank_transfer"])

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter livemode : Bool? = nil

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter object : String? = nil

    ENUM_VALIDATOR_FOR_OBJECT = EnumValidator.new("object", "String", ["funding_instructions"])

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @bank_transfer : Stripe::FundingInstructionsBankTransfer? = nil,
      @currency : String? = nil,
      @funding_type : String? = nil,
      @livemode : Bool? = nil,
      @object : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      invalid_properties.push("\"bank_transfer\" is required and cannot be null") if @bank_transfer.nil?
      if _bank_transfer = @bank_transfer
        if _bank_transfer.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_bank_transfer.list_invalid_properties_for("bank_transfer"))
        end
      end
      invalid_properties.push("\"currency\" is required and cannot be null") if @currency.nil?
      if _currency = @currency
        if _currency.to_s.size > 5000
          invalid_properties.push("invalid value for \"currency\", the character length must be smaller than or equal to 5000.")
        end
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_FUNDING_TYPE.error_message) unless ENUM_VALIDATOR_FOR_FUNDING_TYPE.valid?(@funding_type, false)
      invalid_properties.push("\"livemode\" is required and cannot be null") if @livemode.nil?

      invalid_properties.push(ENUM_VALIDATOR_FOR_OBJECT.error_message) unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @bank_transfer.nil?
      if _bank_transfer = @bank_transfer
        if _bank_transfer.is_a?(OpenApi::Validatable)
          return false unless _bank_transfer.valid?
        end
      end
      return false if @currency.nil?
      if _currency = @currency
        return false if _currency.to_s.size > 5000
      end
      return false unless ENUM_VALIDATOR_FOR_FUNDING_TYPE.valid?(@funding_type, false)
      return false if @livemode.nil?

      return false unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bank_transfer Object to be assigned
    def bank_transfer=(bank_transfer : Stripe::FundingInstructionsBankTransfer?)
      if bank_transfer.nil?
        raise ArgumentError.new("\"bank_transfer\" is required and cannot be null")
      end
      _bank_transfer = bank_transfer.not_nil!
      if _bank_transfer.is_a?(OpenApi::Validatable)
        _bank_transfer.validate
      end
      @bank_transfer = _bank_transfer
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] currency Object to be assigned
    def currency=(currency : String?)
      if currency.nil?
        raise ArgumentError.new("\"currency\" is required and cannot be null")
      end
      _currency = currency.not_nil!
      if _currency.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"currency\", the character length must be smaller than or equal to 5000.")
      end

      @currency = _currency
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] funding_type Object to be assigned
    def funding_type=(funding_type : String?)
      if funding_type.nil?
        raise ArgumentError.new("\"funding_type\" is required and cannot be null")
      end
      _funding_type = funding_type.not_nil!
      ENUM_VALIDATOR_FOR_FUNDING_TYPE.valid!(_funding_type)
      @funding_type = _funding_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] livemode Object to be assigned
    def livemode=(livemode : Bool?)
      if livemode.nil?
        raise ArgumentError.new("\"livemode\" is required and cannot be null")
      end
      _livemode = livemode.not_nil!
      @livemode = _livemode
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object : String?)
      if object.nil?
        raise ArgumentError.new("\"object\" is required and cannot be null")
      end
      _object = object.not_nil!
      ENUM_VALIDATOR_FOR_OBJECT.valid!(_object)
      @object = _object
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@bank_transfer, @currency, @funding_type, @livemode, @object)
  end
end
