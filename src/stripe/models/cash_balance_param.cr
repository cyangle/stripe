#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./balance_settings_param"

module Stripe
  class CashBalanceParam
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "settings", type: Stripe::BalanceSettingsParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter settings : Stripe::BalanceSettingsParam? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @settings : Stripe::BalanceSettingsParam? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_settings = @settings).nil?
        invalid_properties.concat(_settings.list_invalid_properties_for("settings")) if _settings.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_settings = @settings).nil?
        return false if _settings.is_a?(OpenApi::Validatable) && !_settings.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] settings Object to be assigned
    def settings=(new_value : Stripe::BalanceSettingsParam?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @settings = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@settings)
  end
end
