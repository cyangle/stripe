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
  # This hash contains details about the Mandate to create. This parameter can only be used with [`confirm=true`](https://stripe.com/docs/api/setup_intents/create#create_setup_intent-confirm).
  class SecretKeyParam2
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Required properties

    @[JSON::Field(key: "customer_acceptance", type: Stripe::CustomerAcceptanceParam?, default: nil, required: true, nullable: false, emit_null: false)]
    getter customer_acceptance : Stripe::CustomerAcceptanceParam? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @customer_acceptance : Stripe::CustomerAcceptanceParam? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      invalid_properties.push("\"customer_acceptance\" is required and cannot be null") if @customer_acceptance.nil?
      # This is a model customer_acceptance : Stripe::CustomerAcceptanceParam?

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @customer_acceptance.nil?

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] customer_acceptance Object to be assigned
    def customer_acceptance=(customer_acceptance : Stripe::CustomerAcceptanceParam?)
      if customer_acceptance.nil?
        raise ArgumentError.new("\"customer_acceptance\" is required and cannot be null")
      end
      @customer_acceptance = customer_acceptance
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
    def_equals_and_hash(@customer_acceptance)
  end
end
