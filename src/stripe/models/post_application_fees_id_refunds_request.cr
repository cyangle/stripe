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
  class PostApplicationFeesIdRefundsRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # A positive integer, in _cents (or local equivalent)_, representing how much of this fee to refund. Can refund only up to the remaining unrefunded amount of the fee.
    @[JSON::Field(key: "amount", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter amount : Int64? = nil

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Hash(String, String)? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @amount : Int64? = nil,
      @expand : Array(String)? = nil,
      @metadata : Hash(String, String)? = nil
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
    # @param [Object] amount Object to be assigned
    def amount=(amount : Int64?)
      if amount.nil?
        return @amount = nil
      end
      _amount = amount.not_nil!
      @amount = _amount
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
    def_equals_and_hash(@amount, @expand, @metadata)
  end
end
