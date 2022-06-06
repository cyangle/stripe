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
  class AccountServiceResourceTreasuryClosedStatusDetails
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # The array that contains reasons for a FinancialAccount closure.
    @[JSON::Field(key: "reasons", type: Array(String))]
    getter reasons : Array(String)

    ENUM_VALIDATOR_FOR_REASONS = EnumValidator.new("reasons", "Array(String)", ["account_rejected", "closed_by_platform", "other"])

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @reasons : Array(String)
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_REASONS.error_message) unless ENUM_VALIDATOR_FOR_REASONS.all_valid?(@reasons, false)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR_REASONS.all_valid?(@reasons, false)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] reasons Object to be assigned
    def reasons=(reasons : Array(String))
      ENUM_VALIDATOR_FOR_REASONS.all_valid!(reasons, false)
      @reasons = reasons
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
    def_equals_and_hash(@reasons)
  end
end
