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
  class TransactionsResourceAbstractTransactionResourceStatusTransitions
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Optional properties

    # Timestamp describing when the Transaction changed status to `posted`.
    @[JSON::Field(key: "posted_at", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: posted_at.nil? && !posted_at_present?)]
    getter posted_at : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? posted_at_present : Bool = false

    # Timestamp describing when the Transaction changed status to `void`.
    @[JSON::Field(key: "void_at", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: void_at.nil? && !void_at_present?)]
    getter void_at : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? void_at_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @posted_at : Int64? = nil,
      @void_at : Int64? = nil
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

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] posted_at Object to be assigned
    def posted_at=(posted_at : Int64?)
      if posted_at.nil?
        return @posted_at = nil
      end
      @posted_at = posted_at
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] void_at Object to be assigned
    def void_at=(void_at : Int64?)
      if void_at.nil?
        return @void_at = nil
      end
      @void_at = void_at
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
    def_equals_and_hash(@posted_at, @posted_at_present, @void_at, @void_at_present)
  end
end
