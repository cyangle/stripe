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
  class TreasurySettingsSpecs
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "tos_acceptance", type: Stripe::SettingsTermsOfServiceSpecs?, default: nil, required: false, nullable: false, emit_null: false)]
    getter tos_acceptance : Stripe::SettingsTermsOfServiceSpecs? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @tos_acceptance : Stripe::SettingsTermsOfServiceSpecs? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_tos_acceptance = @tos_acceptance).nil?
        invalid_properties.concat(_tos_acceptance.list_invalid_properties_for("tos_acceptance")) if _tos_acceptance.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_tos_acceptance = @tos_acceptance).nil?
        return false if _tos_acceptance.is_a?(OpenApi::Validatable) && !_tos_acceptance.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tos_acceptance Object to be assigned
    def tos_acceptance=(tos_acceptance : Stripe::SettingsTermsOfServiceSpecs?)
      if tos_acceptance.nil?
        return @tos_acceptance = nil
      end
      _tos_acceptance = tos_acceptance.not_nil!
      _tos_acceptance.validate if _tos_acceptance.is_a?(OpenApi::Validatable)
      @tos_acceptance = _tos_acceptance
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@tos_acceptance)
  end
end
