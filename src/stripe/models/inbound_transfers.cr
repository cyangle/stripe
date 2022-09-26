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
  class InboundTransfers
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Required properties

    @[JSON::Field(key: "billing_details", type: Stripe::TreasurySharedResourceBillingDetails?, default: nil, required: true, nullable: false, emit_null: false)]
    getter billing_details : Stripe::TreasurySharedResourceBillingDetails? = nil

    # The type of the payment method used in the InboundTransfer.
    @[JSON::Field(key: "type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter _type : String? = nil

    ENUM_VALIDATOR_FOR__TYPE = EnumValidator.new("_type", "String", ["us_bank_account"])

    # Optional properties

    @[JSON::Field(key: "us_bank_account", type: Stripe::InboundTransfersPaymentMethodDetailsUsBankAccount?, default: nil, required: false, nullable: false, emit_null: false)]
    getter us_bank_account : Stripe::InboundTransfersPaymentMethodDetailsUsBankAccount? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @billing_details : Stripe::TreasurySharedResourceBillingDetails? = nil,
      @_type : String? = nil,
      # Optional properties
      @us_bank_account : Stripe::InboundTransfersPaymentMethodDetailsUsBankAccount? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      invalid_properties.push("\"billing_details\" is required and cannot be null") if @billing_details.nil?
      # This is a model billing_details : Stripe::TreasurySharedResourceBillingDetails?

      invalid_properties.push(ENUM_VALIDATOR_FOR__TYPE.error_message) unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type, false)
      # This is a model us_bank_account : Stripe::InboundTransfersPaymentMethodDetailsUsBankAccount?

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @billing_details.nil?
      return false unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type, false)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] billing_details Object to be assigned
    def billing_details=(billing_details : Stripe::TreasurySharedResourceBillingDetails?)
      if billing_details.nil?
        raise ArgumentError.new("\"billing_details\" is required and cannot be null")
      end
      @billing_details = billing_details
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(_type : String?)
      if _type.nil?
        raise ArgumentError.new("\"_type\" is required and cannot be null")
      end
      __type = _type.not_nil!
      ENUM_VALIDATOR_FOR__TYPE.valid!(__type)
      @_type = _type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] us_bank_account Object to be assigned
    def us_bank_account=(us_bank_account : Stripe::InboundTransfersPaymentMethodDetailsUsBankAccount?)
      if us_bank_account.nil?
        return @us_bank_account = nil
      end
      @us_bank_account = us_bank_account
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
    def_equals_and_hash(@billing_details, @_type, @us_bank_account)
  end
end
