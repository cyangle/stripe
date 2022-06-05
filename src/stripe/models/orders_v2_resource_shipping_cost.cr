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
  class OrdersV2ResourceShippingCost
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # Total shipping cost before any discounts or taxes are applied.
    @[JSON::Field(key: "amount_subtotal", type: Int64)]
    property amount_subtotal : Int64

    # Total tax amount applied due to shipping costs. If no tax was applied, defaults to 0.
    @[JSON::Field(key: "amount_tax", type: Int64)]
    property amount_tax : Int64

    # Total shipping cost after discounts and taxes are applied.
    @[JSON::Field(key: "amount_total", type: Int64)]
    property amount_total : Int64

    # Optional properties

    @[JSON::Field(key: "shipping_rate", type: OrdersV2ResourceShippingCostShippingRate?, presence: true, ignore_serialize: shipping_rate.nil? && !shipping_rate_present?)]
    property shipping_rate : OrdersV2ResourceShippingCostShippingRate?

    @[JSON::Field(ignore: true)]
    property? shipping_rate_present : Bool = false

    # The taxes applied to the shipping rate.
    @[JSON::Field(key: "taxes", type: Array(LineItemsTaxAmount)?, presence: true, ignore_serialize: taxes.nil? && !taxes_present?)]
    property taxes : Array(LineItemsTaxAmount)?

    @[JSON::Field(ignore: true)]
    property? taxes_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @amount_subtotal : Int64,
      @amount_tax : Int64,
      @amount_total : Int64,
      # Optional properties
      @shipping_rate : OrdersV2ResourceShippingCostShippingRate? = nil,
      @taxes : Array(LineItemsTaxAmount)? = nil
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
    def_equals_and_hash(@amount_subtotal, @amount_tax, @amount_total, @shipping_rate, @taxes)
  end
end
