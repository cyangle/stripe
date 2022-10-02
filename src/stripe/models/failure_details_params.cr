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
  # Details about a failed InboundTransfer.
  class FailureDetailsParams
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "code", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter code : String? = nil
    ERROR_MESSAGE_FOR_CODE = "invalid value for \"code\", must be one of [account_closed, account_frozen, bank_account_restricted, bank_ownership_changed, debit_not_authorized, incorrect_account_holder_address, incorrect_account_holder_name, incorrect_account_holder_tax_id, insufficient_funds, invalid_account_number, invalid_currency, no_account, other]."
    VALID_VALUES_FOR_CODE  = StaticArray["account_closed", "account_frozen", "bank_account_restricted", "bank_ownership_changed", "debit_not_authorized", "incorrect_account_holder_address", "incorrect_account_holder_name", "incorrect_account_holder_tax_id", "insufficient_funds", "invalid_account_number", "invalid_currency", "no_account", "other"]

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @code : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      if _code = @code
        invalid_properties.push(ERROR_MESSAGE_FOR_CODE) unless OpenApi::EnumValidator.valid?(_code, VALID_VALUES_FOR_CODE)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _code = @code
        return false unless OpenApi::EnumValidator.valid?(_code, VALID_VALUES_FOR_CODE)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] code Object to be assigned
    def code=(code : String?)
      if code.nil?
        return @code = nil
      end
      _code = code.not_nil!
      OpenApi::EnumValidator.validate("code", _code, VALID_VALUES_FOR_CODE)
      @code = _code
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@code)
  end
end
