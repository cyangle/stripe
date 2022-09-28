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
  # If this is an `fpx` PaymentMethod, this hash contains details about the FPX payment method.
  class Param14
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    @[JSON::Field(key: "bank", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter bank : String? = nil

    ENUM_VALIDATOR_FOR_BANK = EnumValidator.new("bank", "String", ["affin_bank", "agrobank", "alliance_bank", "ambank", "bank_islam", "bank_muamalat", "bank_rakyat", "bsn", "cimb", "deutsche_bank", "hong_leong_bank", "hsbc", "kfh", "maybank2e", "maybank2u", "ocbc", "pb_enterprise", "public_bank", "rhb", "standard_chartered", "uob"])

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @bank : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_BANK.error_message) unless ENUM_VALIDATOR_FOR_BANK.valid?(@bank, false)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false unless ENUM_VALIDATOR_FOR_BANK.valid?(@bank, false)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bank Object to be assigned
    def bank=(bank : String?)
      if bank.nil?
        raise ArgumentError.new("\"bank\" is required and cannot be null")
      end
      _bank = bank.not_nil!
      ENUM_VALIDATOR_FOR_BANK.valid!(_bank)
      @bank = _bank
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@bank)
  end
end
