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
  class PaymentLinksResourceShippingOption
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Required properties

    # A non-negative integer in cents representing how much to charge.
    @[JSON::Field(key: "shipping_amount", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter shipping_amount : Int64? = nil

    @[JSON::Field(key: "shipping_rate", type: Stripe::PaymentLinksResourceShippingOptionShippingRate?, default: nil, required: true, nullable: false, emit_null: false)]
    getter shipping_rate : Stripe::PaymentLinksResourceShippingOptionShippingRate? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @shipping_amount : Int64? = nil,
      @shipping_rate : Stripe::PaymentLinksResourceShippingOptionShippingRate? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      invalid_properties.push("\"shipping_amount\" is required and cannot be null") if @shipping_amount.nil?
      invalid_properties.push("\"shipping_rate\" is required and cannot be null") if @shipping_rate.nil?
      # This is a model shipping_rate : Stripe::PaymentLinksResourceShippingOptionShippingRate?

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @shipping_amount.nil?
      return false if @shipping_rate.nil?

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] shipping_amount Object to be assigned
    def shipping_amount=(shipping_amount : Int64?)
      if shipping_amount.nil?
        raise ArgumentError.new("\"shipping_amount\" is required and cannot be null")
      end
      @shipping_amount = shipping_amount
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] shipping_rate Object to be assigned
    def shipping_rate=(shipping_rate : Stripe::PaymentLinksResourceShippingOptionShippingRate?)
      if shipping_rate.nil?
        raise ArgumentError.new("\"shipping_rate\" is required and cannot be null")
      end
      @shipping_rate = shipping_rate
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
    def_equals_and_hash(@shipping_amount, @shipping_rate)
  end
end
