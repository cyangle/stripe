#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./tax_product_resource_tax_settings_status_details_resource_pending"

module Stripe
  #
  class TaxProductResourceTaxSettingsStatusDetails
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    #
    @[JSON::Field(key: "active", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter active : JSON::Any? = nil

    @[JSON::Field(key: "pending", type: Stripe::TaxProductResourceTaxSettingsStatusDetailsResourcePending?, default: nil, required: false, nullable: false, emit_null: false)]
    getter pending : Stripe::TaxProductResourceTaxSettingsStatusDetailsResourcePending? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @active : JSON::Any? = nil,
      @pending : Stripe::TaxProductResourceTaxSettingsStatusDetailsResourcePending? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_pending = @pending).nil?
        invalid_properties.concat(_pending.list_invalid_properties_for("pending")) if _pending.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_pending = @pending).nil?
        return false if _pending.is_a?(OpenApi::Validatable) && !_pending.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] active Object to be assigned
    def active=(new_value : JSON::Any?)
      @active = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] pending Object to be assigned
    def pending=(new_value : Stripe::TaxProductResourceTaxSettingsStatusDetailsResourcePending?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @pending = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@active, @pending)
  end
end
