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
  class PostTreasuryDebitReversalsRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    # The ReceivedDebit to reverse.
    @[JSON::Field(key: "received_debit", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter received_debit : String? = nil

    # Optional properties

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Hash(String, String)? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @received_debit : String? = nil,
      # Optional properties
      @expand : Array(String)? = nil,
      @metadata : Hash(String, String)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      invalid_properties.push("\"received_debit\" is required and cannot be null") if @received_debit.nil?
      if _received_debit = @received_debit
        if _received_debit.to_s.size > 5000
          invalid_properties.push("invalid value for \"received_debit\", the character length must be smaller than or equal to 5000.")
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
      if _received_debit.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"received_debit\", the character length must be smaller than or equal to 5000.")
      end

      @received_debit = _received_debit
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expand Object to be assigned
    def expand=(expand : Array(String)?)
      if expand.nil?
        return @expand = nil
      end
      _expand = expand.not_nil!
      @expand = _expand
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(metadata : Hash(String, String)?)
      if metadata.nil?
        return @metadata = nil
      end
      _metadata = metadata.not_nil!
      @metadata = _metadata
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@received_debit, @expand, @metadata)
  end
end
