#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-11-15
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module Stripe
  #
  class InvoicePaymentMethodOptionsUsBankAccountLinkedAccountOptions
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # The list of permissions to request. The `payment_method` permission must be included.
    @[JSON::Field(key: "permissions", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter permissions : Array(String)? = nil
    ERROR_MESSAGE_FOR_PERMISSIONS = "invalid value for \"permissions\", must be one of [balances, payment_method, transactions]."
    VALID_VALUES_FOR_PERMISSIONS  = String.static_array("balances", "payment_method", "transactions")

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @permissions : Array(String)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_permissions = @permissions).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_PERMISSIONS) unless OpenApi::EnumValidator.valid?(_permissions, VALID_VALUES_FOR_PERMISSIONS)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_permissions = @permissions).nil?
        return false unless OpenApi::EnumValidator.valid?(_permissions, VALID_VALUES_FOR_PERMISSIONS)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] permissions Object to be assigned
    def permissions=(new_value : Array(String)?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("permissions", new_value, VALID_VALUES_FOR_PERMISSIONS)
      end

      @permissions = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@permissions)
  end
end
