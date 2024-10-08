#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./aba_access"

module Stripe
  class FinancialAddresses
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "aba", type: Stripe::AbaAccess?, default: nil, required: false, nullable: false, emit_null: false)]
    getter aba : Stripe::AbaAccess? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @aba : Stripe::AbaAccess? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_aba = @aba).nil?
        invalid_properties.concat(_aba.list_invalid_properties_for("aba")) if _aba.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_aba = @aba).nil?
        return false if _aba.is_a?(OpenApi::Validatable) && !_aba.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] aba Object to be assigned
    def aba=(new_value : Stripe::AbaAccess?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @aba = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@aba)
  end
end
