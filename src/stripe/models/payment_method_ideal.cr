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
  class PaymentMethodIdeal
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    # The customer's bank, if provided. Can be one of `abn_amro`, `asn_bank`, `bunq`, `handelsbanken`, `ing`, `knab`, `moneyou`, `rabobank`, `regiobank`, `revolut`, `sns_bank`, `triodos_bank`, or `van_lanschot`.
    @[JSON::Field(key: "bank", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: bank.nil? && !bank_present?)]
    getter bank : String? = nil

    @[JSON::Field(ignore: true)]
    property? bank_present : Bool = false
    VALID_VALUES_FOR_BANK = StaticArray["abn_amro", "asn_bank", "bunq", "handelsbanken", "ing", "knab", "moneyou", "rabobank", "regiobank", "revolut", "sns_bank", "triodos_bank", "van_lanschot"]

    # The Bank Identifier Code of the customer's bank, if the bank was provided.
    @[JSON::Field(key: "bic", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: bic.nil? && !bic_present?)]
    getter bic : String? = nil

    @[JSON::Field(ignore: true)]
    property? bic_present : Bool = false
    VALID_VALUES_FOR_BIC = StaticArray["ABNANL2A", "ASNBNL21", "BUNQNL2A", "FVLBNL22", "HANDNL2A", "INGBNL2A", "KNABNL2H", "MOYONL21", "RABONL2U", "RBRBNL21", "REVOLT21", "SNSBNL2A", "TRIONL2U"]

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @bank : String? = nil,
      @bic : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      if _bank = @bank
        invalid_properties.push(OpenApi::EnumValidator.error_message("bank", VALID_VALUES_FOR_BANK)) unless OpenApi::EnumValidator.valid?(_bank, VALID_VALUES_FOR_BANK)
      end
      if _bic = @bic
        invalid_properties.push(OpenApi::EnumValidator.error_message("bic", VALID_VALUES_FOR_BIC)) unless OpenApi::EnumValidator.valid?(_bic, VALID_VALUES_FOR_BIC)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _bank = @bank
        return false unless OpenApi::EnumValidator.valid?(_bank, VALID_VALUES_FOR_BANK)
      end

      if _bic = @bic
        return false unless OpenApi::EnumValidator.valid?(_bic, VALID_VALUES_FOR_BIC)
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

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bic Object to be assigned
    def bic=(bic : String?)
      if bic.nil?
        return @bic = nil
      end
      _bic = bic.not_nil!
      OpenApi::EnumValidator.validate("bic", _bic, VALID_VALUES_FOR_BIC)
      @bic = _bic
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@bank, @bank_present, @bic, @bic_present)
  end
end
