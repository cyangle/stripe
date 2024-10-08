#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./customer_balance_resource_cash_balance_transaction_resource_transferred_to_balance_balance_transaction"

module Stripe
  #
  class CustomerBalanceResourceCashBalanceTransactionResourceTransferredToBalance
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "balance_transaction", type: Stripe::CustomerBalanceResourceCashBalanceTransactionResourceTransferredToBalanceBalanceTransaction?, default: nil, required: true, nullable: false, emit_null: false)]
    getter balance_transaction : Stripe::CustomerBalanceResourceCashBalanceTransactionResourceTransferredToBalanceBalanceTransaction? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @balance_transaction : Stripe::CustomerBalanceResourceCashBalanceTransactionResourceTransferredToBalanceBalanceTransaction? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"balance_transaction\" is required and cannot be null") if @balance_transaction.nil?

      unless (_balance_transaction = @balance_transaction).nil?
        invalid_properties.concat(_balance_transaction.list_invalid_properties_for("balance_transaction")) if _balance_transaction.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @balance_transaction.nil?
      unless (_balance_transaction = @balance_transaction).nil?
        return false if _balance_transaction.is_a?(OpenApi::Validatable) && !_balance_transaction.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] balance_transaction Object to be assigned
    def balance_transaction=(new_value : Stripe::CustomerBalanceResourceCashBalanceTransactionResourceTransferredToBalanceBalanceTransaction?)
      raise ArgumentError.new("\"balance_transaction\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @balance_transaction = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@balance_transaction)
  end
end
