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
  class Tier
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    @[JSON::Field(key: "up_to", type: TierUpTo)]
    property up_to : TierUpTo

    # Optional properties

    @[JSON::Field(key: "flat_amount", type: Int64?, presence: true, ignore_serialize: flat_amount.nil? && !flat_amount_present?)]
    property flat_amount : Int64?

    @[JSON::Field(ignore: true)]
    property? flat_amount_present : Bool = false

    @[JSON::Field(key: "flat_amount_decimal", type: String?, presence: true, ignore_serialize: flat_amount_decimal.nil? && !flat_amount_decimal_present?)]
    property flat_amount_decimal : String?

    @[JSON::Field(ignore: true)]
    property? flat_amount_decimal_present : Bool = false

    @[JSON::Field(key: "unit_amount", type: Int64?, presence: true, ignore_serialize: unit_amount.nil? && !unit_amount_present?)]
    property unit_amount : Int64?

    @[JSON::Field(ignore: true)]
    property? unit_amount_present : Bool = false

    @[JSON::Field(key: "unit_amount_decimal", type: String?, presence: true, ignore_serialize: unit_amount_decimal.nil? && !unit_amount_decimal_present?)]
    property unit_amount_decimal : String?

    @[JSON::Field(ignore: true)]
    property? unit_amount_decimal_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @up_to : TierUpTo,
      # Optional properties
      @flat_amount : Int64? = nil,
      @flat_amount_decimal : String? = nil,
      @unit_amount : Int64? = nil,
      @unit_amount_decimal : String? = nil
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
    def_equals_and_hash(@up_to, @flat_amount, @flat_amount_present, @flat_amount_decimal, @flat_amount_decimal_present, @unit_amount, @unit_amount_present, @unit_amount_decimal, @unit_amount_decimal_present)
  end
end
