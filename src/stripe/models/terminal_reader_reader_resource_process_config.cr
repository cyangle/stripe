#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./terminal_reader_reader_resource_tipping_config"

module Stripe
  # Represents a per-transaction override of a reader configuration
  class TerminalReaderReaderResourceProcessConfig
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # Enable customer initiated cancellation when processing this payment.
    @[JSON::Field(key: "enable_customer_cancellation", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter enable_customer_cancellation : Bool? = nil

    # Override showing a tipping selection screen on this transaction.
    @[JSON::Field(key: "skip_tipping", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter skip_tipping : Bool? = nil

    @[JSON::Field(key: "tipping", type: Stripe::TerminalReaderReaderResourceTippingConfig?, default: nil, required: false, nullable: false, emit_null: false)]
    getter tipping : Stripe::TerminalReaderReaderResourceTippingConfig? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @enable_customer_cancellation : Bool? = nil,
      @skip_tipping : Bool? = nil,
      @tipping : Stripe::TerminalReaderReaderResourceTippingConfig? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_tipping = @tipping).nil?
        invalid_properties.concat(_tipping.list_invalid_properties_for("tipping")) if _tipping.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_tipping = @tipping).nil?
        return false if _tipping.is_a?(OpenApi::Validatable) && !_tipping.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] enable_customer_cancellation Object to be assigned
    def enable_customer_cancellation=(new_value : Bool?)
      @enable_customer_cancellation = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] skip_tipping Object to be assigned
    def skip_tipping=(new_value : Bool?)
      @skip_tipping = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tipping Object to be assigned
    def tipping=(new_value : Stripe::TerminalReaderReaderResourceTippingConfig?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @tipping = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@enable_customer_cancellation, @skip_tipping, @tipping)
  end
end
