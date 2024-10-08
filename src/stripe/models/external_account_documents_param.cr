#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./documents_param"

module Stripe
  class ExternalAccountDocumentsParam
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "bank_account_ownership_verification", type: Stripe::DocumentsParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter bank_account_ownership_verification : Stripe::DocumentsParam? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @bank_account_ownership_verification : Stripe::DocumentsParam? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_bank_account_ownership_verification = @bank_account_ownership_verification).nil?
        invalid_properties.concat(_bank_account_ownership_verification.list_invalid_properties_for("bank_account_ownership_verification")) if _bank_account_ownership_verification.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_bank_account_ownership_verification = @bank_account_ownership_verification).nil?
        return false if _bank_account_ownership_verification.is_a?(OpenApi::Validatable) && !_bank_account_ownership_verification.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bank_account_ownership_verification Object to be assigned
    def bank_account_ownership_verification=(new_value : Stripe::DocumentsParam?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @bank_account_ownership_verification = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@bank_account_ownership_verification)
  end
end
