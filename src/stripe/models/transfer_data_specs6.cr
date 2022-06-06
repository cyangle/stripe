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
  @[JSON::Serializable::Options(emit_nulls: true)]
  class TransferDataSpecs6
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    @[JSON::Field(key: "destination", type: String)]
    property destination : String

    # Optional properties

    @[JSON::Field(key: "amount", type: Int64?, presence: true, ignore_serialize: amount.nil? && !amount_present?)]
    property amount : Int64?

    @[JSON::Field(ignore: true)]
    property? amount_present : Bool = false

    @[JSON::Field(key: "amount_percent", type: Float64?, presence: true, ignore_serialize: amount_percent.nil? && !amount_percent_present?)]
    property amount_percent : Float64?

    @[JSON::Field(ignore: true)]
    property? amount_percent_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @destination : String,
      # Optional properties
      @amount : Int64? = nil,
      @amount_percent : Float64? = nil
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
    def_equals_and_hash(@destination, @amount, @amount_present, @amount_percent, @amount_percent_present)
  end
end
