#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

module Stripe
  #
  class PaymentMethodUsBankAccountBlocked
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The ACH network code that resulted in this block.
    @[JSON::Field(key: "network_code", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter network_code : String? = nil
    ERROR_MESSAGE_FOR_NETWORK_CODE = "invalid value for \"network_code\", must be one of [R02, R03, R04, R05, R07, R08, R10, R11, R16, R20, R29, R31]."
    VALID_VALUES_FOR_NETWORK_CODE  = String.static_array("R02", "R03", "R04", "R05", "R07", "R08", "R10", "R11", "R16", "R20", "R29", "R31")

    # The reason why this PaymentMethod's fingerprint has been blocked
    @[JSON::Field(key: "reason", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter reason : String? = nil
    ERROR_MESSAGE_FOR_REASON = "invalid value for \"reason\", must be one of [bank_account_closed, bank_account_frozen, bank_account_invalid_details, bank_account_restricted, bank_account_unusable, debit_not_authorized]."
    VALID_VALUES_FOR_REASON  = String.static_array("bank_account_closed", "bank_account_frozen", "bank_account_invalid_details", "bank_account_restricted", "bank_account_unusable", "debit_not_authorized")

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @network_code : String? = nil,
      @reason : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_network_code = @network_code).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_NETWORK_CODE) unless OpenApi::EnumValidator.valid?(_network_code, VALID_VALUES_FOR_NETWORK_CODE)
      end
      unless (_reason = @reason).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_REASON) unless OpenApi::EnumValidator.valid?(_reason, VALID_VALUES_FOR_REASON)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_network_code = @network_code).nil?
        return false unless OpenApi::EnumValidator.valid?(_network_code, VALID_VALUES_FOR_NETWORK_CODE)
      end

      unless (_reason = @reason).nil?
        return false unless OpenApi::EnumValidator.valid?(_reason, VALID_VALUES_FOR_REASON)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] network_code Object to be assigned
    def network_code=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("network_code", new_value, VALID_VALUES_FOR_NETWORK_CODE)
      end

      @network_code = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] reason Object to be assigned
    def reason=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("reason", new_value, VALID_VALUES_FOR_REASON)
      end

      @reason = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@network_code, @reason)
  end
end
