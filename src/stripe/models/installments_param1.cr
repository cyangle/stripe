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
  class InstallmentsParam1
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "enabled", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter enabled : Bool? = nil

    @[JSON::Field(key: "plan", type: Stripe::InstallmentsParam1Plan?, default: nil, required: false, nullable: false, emit_null: false)]
    getter plan : Stripe::InstallmentsParam1Plan? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @enabled : Bool? = nil,
      @plan : Stripe::InstallmentsParam1Plan? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      # This is a model plan : Stripe::InstallmentsParam1Plan?

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] enabled Object to be assigned
    def enabled=(enabled : Bool?)
      if enabled.nil?
        return @enabled = nil
      end
      @enabled = enabled
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] plan Object to be assigned
    def plan=(plan : Stripe::InstallmentsParam1Plan?)
      if plan.nil?
        return @plan = nil
      end
      @plan = plan
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
    def_equals_and_hash(@enabled, @plan)
  end
end
