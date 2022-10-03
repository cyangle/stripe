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
  # This hash contains details about the Mandate to create. This parameter can only be used with [`confirm=true`](https://stripe.com/docs/api/payment_intents/create#create_payment_intent-confirm).
  class SecretKeyParam
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "customer_acceptance", type: Stripe::CustomerAcceptanceParam?, default: nil, required: true, nullable: false, emit_null: false)]
    getter customer_acceptance : Stripe::CustomerAcceptanceParam? = nil

    # End of Required Properties

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
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"customer_acceptance\" is required and cannot be null") if @customer_acceptance.nil?

      unless (_customer_acceptance = @customer_acceptance).nil?
        invalid_properties.concat(_customer_acceptance.list_invalid_properties_for("customer_acceptance")) if _customer_acceptance.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @customer_acceptance.nil?
      unless (_customer_acceptance = @customer_acceptance).nil?
        return false if _customer_acceptance.is_a?(OpenApi::Validatable) && !_customer_acceptance.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] customer_acceptance Object to be assigned
    def customer_acceptance=(customer_acceptance : Stripe::CustomerAcceptanceParam?)
      if customer_acceptance.nil?
        raise ArgumentError.new("\"customer_acceptance\" is required and cannot be null")
      end
      _customer_acceptance = customer_acceptance.not_nil!
      _customer_acceptance.validate if _customer_acceptance.is_a?(OpenApi::Validatable)
      @customer_acceptance = _customer_acceptance
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@customer_acceptance)
  end
end
