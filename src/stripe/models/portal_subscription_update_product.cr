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
  class PortalSubscriptionUpdateProduct
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # The list of price IDs which, when subscribed to, a subscription can be updated.
    @[JSON::Field(key: "prices", type: Array(String))]
    property prices : Array(String)

    # The product ID.
    @[JSON::Field(key: "product", type: String)]
    getter product : String

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *, 
      # Required properties
      @prices : Array(String), 
      @product : String
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if @product.to_s.size > 5000
        invalid_properties.push("invalid value for \"product\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @product.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] product Value to be assigned
    def product=(product)
      if product.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"product\", the character length must be smaller than or equal to 5000.")
      end

      @product = product
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
    def_equals_and_hash(@prices, @product)
  end
end
