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
  class OutboundTransfersPaymentMethodDetails
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    @[JSON::Field(key: "billing_details", type: Stripe::TreasurySharedResourceBillingDetails?, default: nil, required: true, nullable: false, emit_null: false)]
    getter billing_details : Stripe::TreasurySharedResourceBillingDetails? = nil

    # The type of the payment method used in the OutboundTransfer.
    @[JSON::Field(key: "type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter _type : String? = nil

    ENUM_VALIDATOR_FOR__TYPE = OpenApi::EnumValidator.new("_type", "String", ["us_bank_account"])

    # Optional properties

    @[JSON::Field(key: "us_bank_account", type: Stripe::OutboundTransfersPaymentMethodDetailsUsBankAccount?, default: nil, required: false, nullable: false, emit_null: false)]
    getter us_bank_account : Stripe::OutboundTransfersPaymentMethodDetailsUsBankAccount? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @billing_details : Stripe::TreasurySharedResourceBillingDetails? = nil,
      @_type : String? = nil,
      # Optional properties
      @us_bank_account : Stripe::OutboundTransfersPaymentMethodDetailsUsBankAccount? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      invalid_properties.push("\"billing_details\" is required and cannot be null") if @billing_details.nil?
      if _billing_details = @billing_details
        invalid_properties.concat(_billing_details.list_invalid_properties_for("billing_details")) if _billing_details.is_a?(OpenApi::Validatable)
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR__TYPE.error_message) unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type, false)
      if _us_bank_account = @us_bank_account
        invalid_properties.concat(_us_bank_account.list_invalid_properties_for("us_bank_account")) if _us_bank_account.is_a?(OpenApi::Validatable)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @billing_details.nil?
      if _billing_details = @billing_details
        return false if _billing_details.is_a?(OpenApi::Validatable) && !_billing_details.valid?
      end
      return false unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type, false)
      if _us_bank_account = @us_bank_account
        return false if _us_bank_account.is_a?(OpenApi::Validatable) && !_us_bank_account.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] billing_details Object to be assigned
    def billing_details=(billing_details : Stripe::TreasurySharedResourceBillingDetails?)
      if billing_details.nil?
        raise ArgumentError.new("\"billing_details\" is required and cannot be null")
      end
      _billing_details = billing_details.not_nil!
      _billing_details.validate if _billing_details.is_a?(OpenApi::Validatable)
      @billing_details = _billing_details
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(_type : String?)
      if _type.nil?
        raise ArgumentError.new("\"_type\" is required and cannot be null")
      end
      __type = _type.not_nil!
      ENUM_VALIDATOR_FOR__TYPE.valid!(__type)
      @_type = __type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] us_bank_account Object to be assigned
    def us_bank_account=(us_bank_account : Stripe::OutboundTransfersPaymentMethodDetailsUsBankAccount?)
      if us_bank_account.nil?
        return @us_bank_account = nil
      end
      _us_bank_account = us_bank_account.not_nil!
      _us_bank_account.validate if _us_bank_account.is_a?(OpenApi::Validatable)
      @us_bank_account = _us_bank_account
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@billing_details, @_type, @us_bank_account)
  end
end
