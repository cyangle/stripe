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
  class PaymentPagesCheckoutSessionShippingOption
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # A non-negative integer in cents representing how much to charge.
    @[JSON::Field(key: "shipping_amount", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter shipping_amount : Int64? = nil

    @[JSON::Field(key: "shipping_rate", type: Stripe::PaymentPagesCheckoutSessionShippingOptionShippingRate?, default: nil, required: true, nullable: false, emit_null: false)]
    getter shipping_rate : Stripe::PaymentPagesCheckoutSessionShippingOptionShippingRate? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @shipping_amount : Int64? = nil,
      @shipping_rate : Stripe::PaymentPagesCheckoutSessionShippingOptionShippingRate? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"shipping_amount\" is required and cannot be null") if @shipping_amount.nil?

      invalid_properties.push("\"shipping_rate\" is required and cannot be null") if @shipping_rate.nil?

      unless (_shipping_rate = @shipping_rate).nil?
        invalid_properties.concat(_shipping_rate.list_invalid_properties_for("shipping_rate")) if _shipping_rate.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @shipping_amount.nil?

      return false if @shipping_rate.nil?
      unless (_shipping_rate = @shipping_rate).nil?
        return false if _shipping_rate.is_a?(OpenApi::Validatable) && !_shipping_rate.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] shipping_amount Object to be assigned
    def shipping_amount=(shipping_amount : Int64?)
      if shipping_amount.nil?
        raise ArgumentError.new("\"shipping_amount\" is required and cannot be null")
      end
      _shipping_amount = shipping_amount.not_nil!
      @shipping_amount = _shipping_amount
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] shipping_rate Object to be assigned
    def shipping_rate=(shipping_rate : Stripe::PaymentPagesCheckoutSessionShippingOptionShippingRate?)
      if shipping_rate.nil?
        raise ArgumentError.new("\"shipping_rate\" is required and cannot be null")
      end
      _shipping_rate = shipping_rate.not_nil!
      _shipping_rate.validate if _shipping_rate.is_a?(OpenApi::Validatable)
      @shipping_rate = _shipping_rate
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@shipping_amount, @shipping_rate)
  end
end
