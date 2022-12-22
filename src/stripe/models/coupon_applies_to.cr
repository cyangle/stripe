#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-11-15
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module Stripe
  #
  class CouponAppliesTo
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # A list of product IDs this coupon applies to
    @[JSON::Field(key: "products", type: Array(String)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter products : Array(String)? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @products : Array(String)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"products\" is required and cannot be null") if @products.nil?

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @products.nil?

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] products Object to be assigned
    def products=(products : Array(String)?)
      if products.nil?
        raise ArgumentError.new("\"products\" is required and cannot be null")
      end
      _products = products.not_nil!
      @products = _products
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@products)
  end
end
