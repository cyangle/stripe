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
  # Configure actions after a Checkout Session has expired.
  class AfterExpirationParams
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "recovery", type: Stripe::RecoveryParams?, default: nil, required: false, nullable: false, emit_null: false)]
    getter recovery : Stripe::RecoveryParams? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @recovery : Stripe::RecoveryParams? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      if _recovery = @recovery
        invalid_properties.concat(_recovery.list_invalid_properties_for("recovery")) if _recovery.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _recovery = @recovery
        return false if _recovery.is_a?(OpenApi::Validatable) && !_recovery.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] recovery Object to be assigned
    def recovery=(recovery : Stripe::RecoveryParams?)
      if recovery.nil?
        return @recovery = nil
      end
      _recovery = recovery.not_nil!
      _recovery.validate if _recovery.is_a?(OpenApi::Validatable)
      @recovery = _recovery
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@recovery)
  end
end
