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
  # If this is an `ideal` PaymentMethod, this hash contains details about the iDEAL payment method.
  class PostPaymentMethodsRequestIdeal
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "bank", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter bank : String? = nil
    MAX_LENGTH_FOR_BANK    = 5000
    ERROR_MESSAGE_FOR_BANK = "invalid value for \"bank\", must be one of [abn_amro, asn_bank, bunq, handelsbanken, ing, knab, moneyou, rabobank, regiobank, revolut, sns_bank, triodos_bank, van_lanschot]."
    VALID_VALUES_FOR_BANK  = String.static_array("abn_amro", "asn_bank", "bunq", "handelsbanken", "ing", "knab", "moneyou", "rabobank", "regiobank", "revolut", "sns_bank", "triodos_bank", "van_lanschot")

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @bank : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_bank = @bank).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_BANK) unless OpenApi::EnumValidator.valid?(_bank, VALID_VALUES_FOR_BANK)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_bank = @bank).nil?
        return false unless OpenApi::EnumValidator.valid?(_bank, VALID_VALUES_FOR_BANK)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bank Object to be assigned
    def bank=(bank : String?)
      if bank.nil?
        return @bank = nil
      end
      _bank = bank.not_nil!
      OpenApi::EnumValidator.validate("bank", _bank, VALID_VALUES_FOR_BANK)
      @bank = _bank
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@bank)
  end
end