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
  class QuotesResourceUpfront
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # Total before any discounts or taxes are applied.
    @[JSON::Field(key: "amount_subtotal", type: Int64)]
    property amount_subtotal : Int64

    # Total after discounts and taxes are applied.
    @[JSON::Field(key: "amount_total", type: Int64)]
    property amount_total : Int64

    @[JSON::Field(key: "total_details", type: QuotesResourceTotalDetails)]
    property total_details : QuotesResourceTotalDetails

    # Optional properties

    @[JSON::Field(key: "line_items", type: QuotesResourceListLineItems2?, presence: true, ignore_serialize: line_items.nil? && !line_items_present?)]
    property line_items : QuotesResourceListLineItems2?

    @[JSON::Field(ignore: true)]
    property? line_items_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *, 
      # Required properties
      @amount_subtotal : Int64, 
      @amount_total : Int64, 
      @total_details : QuotesResourceTotalDetails, 
      # Optional properties
      @line_items : QuotesResourceListLineItems2? = nil
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
    def_equals_and_hash(@amount_subtotal, @amount_total, @total_details, @line_items)
  end
end
