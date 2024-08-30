#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./payment_method_config_resource_display_preference"

module Stripe
  #
  class PaymentMethodConfigResourcePaymentMethodProperties
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Whether this payment method may be offered at checkout. True if `display_preference` is `on` and the payment method's capability is active.
    @[JSON::Field(key: "available", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter available : Bool? = nil

    @[JSON::Field(key: "display_preference", type: Stripe::PaymentMethodConfigResourceDisplayPreference?, default: nil, required: true, nullable: false, emit_null: false)]
    getter display_preference : Stripe::PaymentMethodConfigResourceDisplayPreference? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @available : Bool? = nil,
      @display_preference : Stripe::PaymentMethodConfigResourceDisplayPreference? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"available\" is required and cannot be null") if @available.nil?

      invalid_properties.push("\"display_preference\" is required and cannot be null") if @display_preference.nil?

      unless (_display_preference = @display_preference).nil?
        invalid_properties.concat(_display_preference.list_invalid_properties_for("display_preference")) if _display_preference.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @available.nil?

      return false if @display_preference.nil?
      unless (_display_preference = @display_preference).nil?
        return false if _display_preference.is_a?(OpenApi::Validatable) && !_display_preference.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] available Object to be assigned
    def available=(new_value : Bool?)
      raise ArgumentError.new("\"available\" is required and cannot be null") if new_value.nil?

      @available = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] display_preference Object to be assigned
    def display_preference=(new_value : Stripe::PaymentMethodConfigResourceDisplayPreference?)
      raise ArgumentError.new("\"display_preference\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @display_preference = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@available, @display_preference)
  end
end