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
  #
  @[JSON::Serializable::Options(emit_nulls: true)]
  class OutboundPaymentsResourceTreasuryReturnedStatus
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # Reason for the return.
    @[JSON::Field(key: "code", type: String)]
    getter code : String

    ENUM_VALIDATOR_FOR_CODE = EnumValidator.new("code", "String", ["account_closed", "account_frozen", "bank_account_restricted", "bank_ownership_changed", "declined", "incorrect_account_holder_name", "invalid_account_number", "invalid_currency", "no_account", "other"])

    @[JSON::Field(key: "transaction", type: OutboundPaymentsResourceTreasuryReturnedStatusTransaction)]
    property transaction : OutboundPaymentsResourceTreasuryReturnedStatusTransaction

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @code : String,
      @transaction : OutboundPaymentsResourceTreasuryReturnedStatusTransaction
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_CODE.error_message) unless ENUM_VALIDATOR_FOR_CODE.valid?(@code, false)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR_CODE.valid?(@code, false)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] code Object to be assigned
    def code=(code : String)
      ENUM_VALIDATOR_FOR_CODE.valid!(code, false)
      @code = code
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
    def_equals_and_hash(@code, @transaction)
  end
end
