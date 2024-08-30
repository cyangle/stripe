#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./invoice_payment_method_options_customer_balance_bank_transfer_eu_bank_transfer"

module Stripe
  #
  class InvoicePaymentMethodOptionsCustomerBalanceBankTransfer
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The bank transfer type that can be used for funding. Permitted values include: `eu_bank_transfer`, `gb_bank_transfer`, `jp_bank_transfer`, `mx_bank_transfer`, or `us_bank_transfer`.
    @[JSON::Field(key: "type", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter _type : String? = nil

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "eu_bank_transfer", type: Stripe::InvoicePaymentMethodOptionsCustomerBalanceBankTransferEuBankTransfer?, default: nil, required: false, nullable: false, emit_null: false)]
    getter eu_bank_transfer : Stripe::InvoicePaymentMethodOptionsCustomerBalanceBankTransferEuBankTransfer? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @_type : String? = nil,
      # Optional properties
      @eu_bank_transfer : Stripe::InvoicePaymentMethodOptionsCustomerBalanceBankTransferEuBankTransfer? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_eu_bank_transfer = @eu_bank_transfer).nil?
        invalid_properties.concat(_eu_bank_transfer.list_invalid_properties_for("eu_bank_transfer")) if _eu_bank_transfer.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_eu_bank_transfer = @eu_bank_transfer).nil?
        return false if _eu_bank_transfer.is_a?(OpenApi::Validatable) && !_eu_bank_transfer.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(new_value : String?)
      @_type = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] eu_bank_transfer Object to be assigned
    def eu_bank_transfer=(new_value : Stripe::InvoicePaymentMethodOptionsCustomerBalanceBankTransferEuBankTransfer?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @eu_bank_transfer = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@_type, @eu_bank_transfer)
  end
end
