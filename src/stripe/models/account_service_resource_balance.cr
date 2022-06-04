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
  # Balance information for the FinancialAccount
  @[JSON::Serializable::Options(emit_nulls: true)]
  class AccountServiceResourceBalance
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # Funds the user can spend right now.
    @[JSON::Field(key: "cash", type: Hash(String, Int64))]
    property cash : Hash(String, Int64)

    # Funds not spendable yet, but will become available at a later time.
    @[JSON::Field(key: "inbound_pending", type: Hash(String, Int64))]
    property inbound_pending : Hash(String, Int64)

    # Funds in the account, but not spendable because they are being held for pending outbound flows.
    @[JSON::Field(key: "outbound_pending", type: Hash(String, Int64))]
    property outbound_pending : Hash(String, Int64)

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @cash : Hash(String, Int64),
      @inbound_pending : Hash(String, Int64),
      @outbound_pending : Hash(String, Int64)
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
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
    def_equals_and_hash(@cash, @inbound_pending, @outbound_pending)
  end
end