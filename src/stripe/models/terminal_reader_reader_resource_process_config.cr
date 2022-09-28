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
  # Represents a per-transaction override of a reader configuration
  class TerminalReaderReaderResourceProcessConfig
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    # Override showing a tipping selection screen on this transaction.
    @[JSON::Field(key: "skip_tipping", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter skip_tipping : Bool? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @skip_tipping : Bool? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] skip_tipping Object to be assigned
    def skip_tipping=(skip_tipping : Bool?)
      if skip_tipping.nil?
        return @skip_tipping = nil
      end
      _skip_tipping = skip_tipping.not_nil!
      @skip_tipping = _skip_tipping
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@skip_tipping)
  end
end
