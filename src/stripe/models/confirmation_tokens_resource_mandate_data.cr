#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./confirmation_tokens_resource_mandate_data_resource_customer_acceptance"

module Stripe
  # Data used for generating a Mandate.
  class ConfirmationTokensResourceMandateData
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "customer_acceptance", type: Stripe::ConfirmationTokensResourceMandateDataResourceCustomerAcceptance?, default: nil, required: true, nullable: false, emit_null: false)]
    getter customer_acceptance : Stripe::ConfirmationTokensResourceMandateDataResourceCustomerAcceptance? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @customer_acceptance : Stripe::ConfirmationTokensResourceMandateDataResourceCustomerAcceptance? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"customer_acceptance\" is required and cannot be null") if @customer_acceptance.nil?

      unless (_customer_acceptance = @customer_acceptance).nil?
        invalid_properties.concat(_customer_acceptance.list_invalid_properties_for("customer_acceptance")) if _customer_acceptance.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @customer_acceptance.nil?
      unless (_customer_acceptance = @customer_acceptance).nil?
        return false if _customer_acceptance.is_a?(OpenApi::Validatable) && !_customer_acceptance.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] customer_acceptance Object to be assigned
    def customer_acceptance=(new_value : Stripe::ConfirmationTokensResourceMandateDataResourceCustomerAcceptance?)
      raise ArgumentError.new("\"customer_acceptance\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @customer_acceptance = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@customer_acceptance)
  end
end