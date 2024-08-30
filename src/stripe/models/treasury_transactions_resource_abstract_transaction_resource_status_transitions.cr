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
  #
  class TreasuryTransactionsResourceAbstractTransactionResourceStatusTransitions
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Timestamp describing when the Transaction changed status to `posted`.
    @[JSON::Field(key: "posted_at", type: Int64?, default: nil, required: true, nullable: true, emit_null: true)]
    getter posted_at : Int64? = nil

    # Timestamp describing when the Transaction changed status to `void`.
    @[JSON::Field(key: "void_at", type: Int64?, default: nil, required: true, nullable: true, emit_null: true)]
    getter void_at : Int64? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @posted_at : Int64? = nil,
      @void_at : Int64? = nil
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
    # @param [Object] posted_at Object to be assigned
    def posted_at=(new_value : Int64?)
      @posted_at = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] void_at Object to be assigned
    def void_at=(new_value : Int64?)
      @void_at = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@posted_at, @void_at)
  end
end
