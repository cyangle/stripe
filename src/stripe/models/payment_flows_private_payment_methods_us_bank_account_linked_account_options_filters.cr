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
  class PaymentFlowsPrivatePaymentMethodsUsBankAccountLinkedAccountOptionsFilters
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # The account subcategories to use to filter for possible accounts to link. Valid subcategories are `checking` and `savings`.
    @[JSON::Field(key: "account_subcategories", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter account_subcategories : Array(String)? = nil
    ERROR_MESSAGE_FOR_ACCOUNT_SUBCATEGORIES = "invalid value for \"account_subcategories\", must be one of [checking, savings]."
    VALID_VALUES_FOR_ACCOUNT_SUBCATEGORIES  = String.static_array("checking", "savings")

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @account_subcategories : Array(String)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_account_subcategories = @account_subcategories).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_ACCOUNT_SUBCATEGORIES) unless OpenApi::EnumValidator.valid?(_account_subcategories, VALID_VALUES_FOR_ACCOUNT_SUBCATEGORIES)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_account_subcategories = @account_subcategories).nil?
        return false unless OpenApi::EnumValidator.valid?(_account_subcategories, VALID_VALUES_FOR_ACCOUNT_SUBCATEGORIES)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account_subcategories Object to be assigned
    def account_subcategories=(new_value : Array(String)?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("account_subcategories", new_value, VALID_VALUES_FOR_ACCOUNT_SUBCATEGORIES)
      end

      @account_subcategories = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@account_subcategories)
  end
end
