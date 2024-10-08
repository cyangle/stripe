#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./balance_amount"

module Stripe
  #
  class BalanceDetail
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Funds that are available for use.
    @[JSON::Field(key: "available", type: Array(Stripe::BalanceAmount)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter available : Array(Stripe::BalanceAmount)? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @available : Array(Stripe::BalanceAmount)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"available\" is required and cannot be null") if @available.nil?

      unless (_available = @available).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "available", container: _available)) if _available.is_a?(Array)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @available.nil?
      unless (_available = @available).nil?
        return false if _available.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _available)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] available Object to be assigned
    def available=(new_value : Array(Stripe::BalanceAmount)?)
      raise ArgumentError.new("\"available\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::ContainerValidator.validate(container: new_value) if new_value.is_a?(Array)
      end

      @available = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@available)
  end
end
