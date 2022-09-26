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
  class PromotionCodeCurrencyOption
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Required properties

    # Minimum amount required to redeem this Promotion Code into a Coupon (e.g., a purchase must be $100 or more to work).
    @[JSON::Field(key: "minimum_amount", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter minimum_amount : Int64? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @minimum_amount : Int64? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      invalid_properties.push("\"minimum_amount\" is required and cannot be null") if @minimum_amount.nil?

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @minimum_amount.nil?

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] minimum_amount Object to be assigned
    def minimum_amount=(minimum_amount : Int64?)
      if minimum_amount.nil?
        raise ArgumentError.new("\"minimum_amount\" is required and cannot be null")
      end
      @minimum_amount = minimum_amount
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
    def_equals_and_hash(@minimum_amount)
  end
end