#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

module Stripe
  # Balance information for the FinancialAccount
  class TreasuryFinancialAccountsResourceBalance
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "cash", type: Hash(String, Int32)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter cash : Hash(String, Int32)? = nil

    @[JSON::Field(key: "inbound_pending", type: Hash(String, Int32)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter inbound_pending : Hash(String, Int32)? = nil

    @[JSON::Field(key: "outbound_pending", type: Hash(String, Int32)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter outbound_pending : Hash(String, Int32)? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @cash : Hash(String, Int32)? = nil,
      @inbound_pending : Hash(String, Int32)? = nil,
      @outbound_pending : Hash(String, Int32)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"cash\" is required and cannot be null") if @cash.nil?

      invalid_properties.push("\"inbound_pending\" is required and cannot be null") if @inbound_pending.nil?

      invalid_properties.push("\"outbound_pending\" is required and cannot be null") if @outbound_pending.nil?

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @cash.nil?

      return false if @inbound_pending.nil?

      return false if @outbound_pending.nil?

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cash Object to be assigned
    def cash=(new_value : Hash(String, Int32)?)
      raise ArgumentError.new("\"cash\" is required and cannot be null") if new_value.nil?

      @cash = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] inbound_pending Object to be assigned
    def inbound_pending=(new_value : Hash(String, Int32)?)
      raise ArgumentError.new("\"inbound_pending\" is required and cannot be null") if new_value.nil?

      @inbound_pending = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] outbound_pending Object to be assigned
    def outbound_pending=(new_value : Hash(String, Int32)?)
      raise ArgumentError.new("\"outbound_pending\" is required and cannot be null") if new_value.nil?

      @outbound_pending = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@cash, @inbound_pending, @outbound_pending)
  end
end
