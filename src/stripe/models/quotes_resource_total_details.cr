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
  class QuotesResourceTotalDetails
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # This is the sum of all the discounts.
    @[JSON::Field(key: "amount_discount", type: Int64)]
    property amount_discount : Int64

    # This is the sum of all the tax amounts.
    @[JSON::Field(key: "amount_tax", type: Int64)]
    property amount_tax : Int64

    # Optional properties

    # This is the sum of all the shipping amounts.
    @[JSON::Field(key: "amount_shipping", type: Int64?, presence: true, ignore_serialize: amount_shipping.nil? && !amount_shipping_present?)]
    property amount_shipping : Int64?

    @[JSON::Field(ignore: true)]
    property? amount_shipping_present : Bool = false

    @[JSON::Field(key: "breakdown", type: QuotesResourceTotalDetailsResourceBreakdown?, presence: true, ignore_serialize: breakdown.nil? && !breakdown_present?)]
    property breakdown : QuotesResourceTotalDetailsResourceBreakdown?

    @[JSON::Field(ignore: true)]
    property? breakdown_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @amount_discount : Int64,
      @amount_tax : Int64,
      # Optional properties
      @amount_shipping : Int64? = nil,
      @breakdown : QuotesResourceTotalDetailsResourceBreakdown? = nil
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
    def_equals_and_hash(@amount_discount, @amount_tax, @amount_shipping, @amount_shipping_present, @breakdown, @breakdown_present)
  end
end
