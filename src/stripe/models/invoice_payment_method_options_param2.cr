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
  class InvoicePaymentMethodOptionsParam2
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "bank_transfer", type: Stripe::BankTransferParam1?, default: nil, required: false, nullable: false, emit_null: false)]
    getter bank_transfer : Stripe::BankTransferParam1? = nil

    @[JSON::Field(key: "funding_type", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter funding_type : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @bank_transfer : Stripe::BankTransferParam1? = nil,
      @funding_type : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      if _bank_transfer = @bank_transfer
        if _bank_transfer.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_bank_transfer.list_invalid_properties_for("bank_transfer"))
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _bank_transfer = @bank_transfer
        if _bank_transfer.is_a?(OpenApi::Validatable)
          return false unless _bank_transfer.valid?
        end
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bank_transfer Object to be assigned
    def bank_transfer=(bank_transfer : Stripe::BankTransferParam1?)
      if bank_transfer.nil?
        return @bank_transfer = nil
      end
      _bank_transfer = bank_transfer.not_nil!
      if _bank_transfer.is_a?(OpenApi::Validatable)
        _bank_transfer.validate
      end
      @bank_transfer = _bank_transfer
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] funding_type Object to be assigned
    def funding_type=(funding_type : String?)
      if funding_type.nil?
        return @funding_type = nil
      end
      _funding_type = funding_type.not_nil!
      @funding_type = _funding_type
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@bank_transfer, @funding_type)
  end
end
