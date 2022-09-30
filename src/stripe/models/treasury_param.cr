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
  # Params for disputes related to Treasury FinancialAccounts
  class TreasuryParam
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    @[JSON::Field(key: "received_debit", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter received_debit : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @received_debit : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"received_debit\" is required and cannot be null") if @received_debit.nil?

      if _received_debit = @received_debit
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("received_debit", _received_debit.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @received_debit.nil?
      if _received_debit = @received_debit
        return false if _received_debit.to_s.size > 5000
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] received_debit Object to be assigned
    def received_debit=(received_debit : String?)
      if received_debit.nil?
        raise ArgumentError.new("\"received_debit\" is required and cannot be null")
      end
      _received_debit = received_debit.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("received_debit", _received_debit.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @received_debit = _received_debit
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@received_debit)
  end
end
