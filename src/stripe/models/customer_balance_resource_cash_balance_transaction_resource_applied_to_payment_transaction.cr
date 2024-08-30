#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./customer_balance_resource_cash_balance_transaction_resource_applied_to_payment_transaction_payment_intent"

module Stripe
  #
  class CustomerBalanceResourceCashBalanceTransactionResourceAppliedToPaymentTransaction
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "payment_intent", type: Stripe::CustomerBalanceResourceCashBalanceTransactionResourceAppliedToPaymentTransactionPaymentIntent?, default: nil, required: true, nullable: false, emit_null: false)]
    getter payment_intent : Stripe::CustomerBalanceResourceCashBalanceTransactionResourceAppliedToPaymentTransactionPaymentIntent? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @payment_intent : Stripe::CustomerBalanceResourceCashBalanceTransactionResourceAppliedToPaymentTransactionPaymentIntent? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"payment_intent\" is required and cannot be null") if @payment_intent.nil?

      unless (_payment_intent = @payment_intent).nil?
        invalid_properties.concat(_payment_intent.list_invalid_properties_for("payment_intent")) if _payment_intent.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @payment_intent.nil?
      unless (_payment_intent = @payment_intent).nil?
        return false if _payment_intent.is_a?(OpenApi::Validatable) && !_payment_intent.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_intent Object to be assigned
    def payment_intent=(new_value : Stripe::CustomerBalanceResourceCashBalanceTransactionResourceAppliedToPaymentTransactionPaymentIntent?)
      raise ArgumentError.new("\"payment_intent\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @payment_intent = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@payment_intent)
  end
end
