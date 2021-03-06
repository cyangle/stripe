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
  class PaymentIntentNextActionWechatPayRedirectToIosApp
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # An universal link that redirect to WeChat Pay app
    @[JSON::Field(key: "native_url", type: String)]
    getter native_url : String

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @native_url : String
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if @native_url.to_s.size > 5000
        invalid_properties.push("invalid value for \"native_url\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @native_url.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] native_url Value to be assigned
    def native_url=(native_url : String)
      if native_url.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"native_url\", the character length must be smaller than or equal to 5000.")
      end

      @native_url = native_url
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
    def_equals_and_hash(@native_url)
  end
end
