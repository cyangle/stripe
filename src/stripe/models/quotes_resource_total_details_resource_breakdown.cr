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
  #
  class QuotesResourceTotalDetailsResourceBreakdown
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Required properties

    # The aggregated discounts.
    @[JSON::Field(key: "discounts", type: Array(Stripe::LineItemsDiscountAmount)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter discounts : Array(Stripe::LineItemsDiscountAmount)? = nil

    # The aggregated tax amounts by rate.
    @[JSON::Field(key: "taxes", type: Array(Stripe::LineItemsTaxAmount)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter taxes : Array(Stripe::LineItemsTaxAmount)? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @discounts : Array(Stripe::LineItemsDiscountAmount)? = nil,
      @taxes : Array(Stripe::LineItemsTaxAmount)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      invalid_properties.push("\"discounts\" is required and cannot be null") if @discounts.nil?
      # Container discounts array has values of Stripe::LineItemsDiscountAmount
      invalid_properties.push("\"taxes\" is required and cannot be null") if @taxes.nil?
      # Container taxes array has values of Stripe::LineItemsTaxAmount

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @discounts.nil?
      return false if @taxes.nil?

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] discounts Object to be assigned
    def discounts=(discounts : Array(Stripe::LineItemsDiscountAmount)?)
      if discounts.nil?
        raise ArgumentError.new("\"discounts\" is required and cannot be null")
      end
      @discounts = discounts
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] taxes Object to be assigned
    def taxes=(taxes : Array(Stripe::LineItemsTaxAmount)?)
      if taxes.nil?
        raise ArgumentError.new("\"taxes\" is required and cannot be null")
      end
      @taxes = taxes
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
    def_equals_and_hash(@discounts, @taxes)
  end
end
