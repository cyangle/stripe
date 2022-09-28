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
  class TreasuryOutboundPaymentsResourceReturnedStatus
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    # Reason for the return.
    @[JSON::Field(key: "code", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter code : String? = nil

    ENUM_VALIDATOR_FOR_CODE = EnumValidator.new("code", "String", ["account_closed", "account_frozen", "bank_account_restricted", "bank_ownership_changed", "declined", "incorrect_account_holder_name", "invalid_account_number", "invalid_currency", "no_account", "other"])

    @[JSON::Field(key: "transaction", type: Stripe::TreasuryOutboundPaymentTransaction?, default: nil, required: true, nullable: false, emit_null: false)]
    getter transaction : Stripe::TreasuryOutboundPaymentTransaction? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @code : String? = nil,
      @transaction : Stripe::TreasuryOutboundPaymentTransaction? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_CODE.error_message) unless ENUM_VALIDATOR_FOR_CODE.valid?(@code, false)
      invalid_properties.push("\"transaction\" is required and cannot be null") if @transaction.nil?
      if _transaction = @transaction
        if _transaction.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_transaction.list_invalid_properties_for("transaction"))
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false unless ENUM_VALIDATOR_FOR_CODE.valid?(@code, false)
      return false if @transaction.nil?
      if _transaction = @transaction
        if _transaction.is_a?(OpenApi::Validatable)
          return false unless _transaction.valid?
        end
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] code Object to be assigned
    def code=(code : String?)
      if code.nil?
        raise ArgumentError.new("\"code\" is required and cannot be null")
      end
      _code = code.not_nil!
      ENUM_VALIDATOR_FOR_CODE.valid!(_code)
      @code = _code
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transaction Object to be assigned
    def transaction=(transaction : Stripe::TreasuryOutboundPaymentTransaction?)
      if transaction.nil?
        raise ArgumentError.new("\"transaction\" is required and cannot be null")
      end
      _transaction = transaction.not_nil!
      if _transaction.is_a?(OpenApi::Validatable)
        _transaction.validate
      end
      @transaction = _transaction
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@code, @transaction)
  end
end
