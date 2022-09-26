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
  #
  class CustomerBalanceResourceCashBalanceTransactionResourceFundedTransaction
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Required properties

    @[JSON::Field(key: "bank_transfer", type: Stripe::CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransfer?, default: nil, required: true, nullable: false, emit_null: false)]
    getter bank_transfer : Stripe::CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransfer? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @bank_transfer : Stripe::CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransfer? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      invalid_properties.push("\"bank_transfer\" is required and cannot be null") if @bank_transfer.nil?
      # This is a model bank_transfer : Stripe::CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransfer?

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @bank_transfer.nil?

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bank_transfer Object to be assigned
    def bank_transfer=(bank_transfer : Stripe::CustomerBalanceResourceCashBalanceTransactionResourceFundedTransactionResourceBankTransfer?)
      if bank_transfer.nil?
        raise ArgumentError.new("\"bank_transfer\" is required and cannot be null")
      end
      @bank_transfer = bank_transfer
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@bank_transfer)
  end
end