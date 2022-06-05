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
  @[JSON::Serializable::Options(emit_nulls: true)]
  class TransformQuantity
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # Divide usage by this number.
    @[JSON::Field(key: "divide_by", type: Int64)]
    property divide_by : Int64

    # After division, either round the result `up` or `down`.
    @[JSON::Field(key: "round", type: String)]
    getter round : String

    ENUM_VALIDATOR_FOR_ROUND = EnumValidator.new("round", "String", ["down", "up"])

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @divide_by : Int64,
      @round : String
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_ROUND.error_message) unless ENUM_VALIDATOR_FOR_ROUND.valid?(@round, false)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR_ROUND.valid?(@round, false)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] round Object to be assigned
    def round=(round)
      ENUM_VALIDATOR_FOR_ROUND.valid!(round, false)
      @round = round
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
    def_equals_and_hash(@divide_by, @round)
  end
end
