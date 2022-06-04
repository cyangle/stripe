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
  @[JSON::Serializable::Options(emit_nulls: true)]
  class AfterCompletionConfirmationPageParams
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    @[JSON::Field(key: "custom_message", type: String?, presence: true, ignore_serialize: custom_message.nil? && !custom_message_present?)]
    getter custom_message : String?

    @[JSON::Field(ignore: true)]
    property? custom_message_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @custom_message : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if !@custom_message.nil? && @custom_message.to_s.size > 500
        invalid_properties.push("invalid value for \"custom_message\", the character length must be smaller than or equal to 500.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@custom_message.nil? && @custom_message.to_s.size > 500

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] custom_message Value to be assigned
    def custom_message=(custom_message)
      if !custom_message.nil? && custom_message.to_s.size > 500
        raise ArgumentError.new("invalid value for \"custom_message\", the character length must be smaller than or equal to 500.")
      end

      @custom_message = custom_message
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
    def_equals_and_hash(@custom_message)
  end
end