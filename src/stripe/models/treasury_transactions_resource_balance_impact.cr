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
  # Change to a FinancialAccount's balance
  class TreasuryTransactionsResourceBalanceImpact
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Required properties

    # The change made to funds the user can spend right now.
    @[JSON::Field(key: "cash", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter cash : Int64? = nil

    # The change made to funds that are not spendable yet, but will become available at a later time.
    @[JSON::Field(key: "inbound_pending", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter inbound_pending : Int64? = nil

    # The change made to funds in the account, but not spendable because they are being held for pending outbound flows.
    @[JSON::Field(key: "outbound_pending", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter outbound_pending : Int64? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @cash : Int64? = nil,
      @inbound_pending : Int64? = nil,
      @outbound_pending : Int64? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      invalid_properties.push("\"cash\" is required and cannot be null") if @cash.nil?
      invalid_properties.push("\"inbound_pending\" is required and cannot be null") if @inbound_pending.nil?
      invalid_properties.push("\"outbound_pending\" is required and cannot be null") if @outbound_pending.nil?

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @cash.nil?
      return false if @inbound_pending.nil?
      return false if @outbound_pending.nil?

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cash Object to be assigned
    def cash=(cash : Int64?)
      if cash.nil?
        raise ArgumentError.new("\"cash\" is required and cannot be null")
      end
      @cash = cash
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] inbound_pending Object to be assigned
    def inbound_pending=(inbound_pending : Int64?)
      if inbound_pending.nil?
        raise ArgumentError.new("\"inbound_pending\" is required and cannot be null")
      end
      @inbound_pending = inbound_pending
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] outbound_pending Object to be assigned
    def outbound_pending=(outbound_pending : Int64?)
      if outbound_pending.nil?
        raise ArgumentError.new("\"outbound_pending\" is required and cannot be null")
      end
      @outbound_pending = outbound_pending
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