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
  class SubscriptionCancellationReasonCreationParam
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Required properties

    @[JSON::Field(key: "enabled", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter enabled : Bool? = nil

    @[JSON::Field(key: "options", type: Stripe::SubscriptionCancellationReasonCreationParamOptions?, default: nil, required: true, nullable: false, emit_null: false)]
    getter options : Stripe::SubscriptionCancellationReasonCreationParamOptions? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @enabled : Bool? = nil,
      @options : Stripe::SubscriptionCancellationReasonCreationParamOptions? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      invalid_properties.push("\"enabled\" is required and cannot be null") if @enabled.nil?
      invalid_properties.push("\"options\" is required and cannot be null") if @options.nil?
      # This is a model options : Stripe::SubscriptionCancellationReasonCreationParamOptions?

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @enabled.nil?
      return false if @options.nil?

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] enabled Object to be assigned
    def enabled=(enabled : Bool?)
      if enabled.nil?
        raise ArgumentError.new("\"enabled\" is required and cannot be null")
      end
      @enabled = enabled
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] options Object to be assigned
    def options=(options : Stripe::SubscriptionCancellationReasonCreationParamOptions?)
      if options.nil?
        raise ArgumentError.new("\"options\" is required and cannot be null")
      end
      @options = options
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
    def_equals_and_hash(@enabled, @options)
  end
end
