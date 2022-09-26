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
  class PaymentPagesCheckoutSessionShippingCost
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Required properties

    # Total shipping cost before any discounts or taxes are applied.
    @[JSON::Field(key: "amount_subtotal", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter amount_subtotal : Int64? = nil

    # Total tax amount applied due to shipping costs. If no tax was applied, defaults to 0.
    @[JSON::Field(key: "amount_tax", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter amount_tax : Int64? = nil

    # Total shipping cost after discounts and taxes are applied.
    @[JSON::Field(key: "amount_total", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter amount_total : Int64? = nil

    # Optional properties

    @[JSON::Field(key: "shipping_rate", type: Stripe::OrdersV2ResourceShippingCostShippingRate?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: shipping_rate.nil? && !shipping_rate_present?)]
    getter shipping_rate : Stripe::OrdersV2ResourceShippingCostShippingRate? = nil

    @[JSON::Field(ignore: true)]
    property? shipping_rate_present : Bool = false

    # The taxes applied to the shipping rate.
    @[JSON::Field(key: "taxes", type: Array(Stripe::LineItemsTaxAmount)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter taxes : Array(Stripe::LineItemsTaxAmount)? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @amount_subtotal : Int64? = nil,
      @amount_tax : Int64? = nil,
      @amount_total : Int64? = nil,
      # Optional properties
      @shipping_rate : Stripe::OrdersV2ResourceShippingCostShippingRate? = nil,
      @taxes : Array(Stripe::LineItemsTaxAmount)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      invalid_properties.push("\"amount_subtotal\" is required and cannot be null") if @amount_subtotal.nil?
      invalid_properties.push("\"amount_tax\" is required and cannot be null") if @amount_tax.nil?
      invalid_properties.push("\"amount_total\" is required and cannot be null") if @amount_total.nil?
      # This is a model shipping_rate : Stripe::OrdersV2ResourceShippingCostShippingRate?
      # Container taxes array has values of Stripe::LineItemsTaxAmount

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @amount_subtotal.nil?
      return false if @amount_tax.nil?
      return false if @amount_total.nil?

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount_subtotal Object to be assigned
    def amount_subtotal=(amount_subtotal : Int64?)
      if amount_subtotal.nil?
        raise ArgumentError.new("\"amount_subtotal\" is required and cannot be null")
      end
      @amount_subtotal = amount_subtotal
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount_tax Object to be assigned
    def amount_tax=(amount_tax : Int64?)
      if amount_tax.nil?
        raise ArgumentError.new("\"amount_tax\" is required and cannot be null")
      end
      @amount_tax = amount_tax
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount_total Object to be assigned
    def amount_total=(amount_total : Int64?)
      if amount_total.nil?
        raise ArgumentError.new("\"amount_total\" is required and cannot be null")
      end
      @amount_total = amount_total
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] shipping_rate Object to be assigned
    def shipping_rate=(shipping_rate : Stripe::OrdersV2ResourceShippingCostShippingRate?)
      if shipping_rate.nil?
        return @shipping_rate = nil
      end
      @shipping_rate = shipping_rate
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] taxes Object to be assigned
    def taxes=(taxes : Array(Stripe::LineItemsTaxAmount)?)
      if taxes.nil?
        return @taxes = nil
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
    def_equals_and_hash(@amount_subtotal, @amount_tax, @amount_total, @shipping_rate, @shipping_rate_present, @taxes)
  end
end
