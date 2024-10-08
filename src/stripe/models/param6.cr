#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

module Stripe
  # If this is a `p24` PaymentMethod, this hash contains details about the P24 payment method.
  class Param6
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # The customer's bank.
    @[JSON::Field(key: "bank", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter bank : String? = nil
    ERROR_MESSAGE_FOR_BANK = "invalid value for \"bank\", must be one of [alior_bank, bank_millennium, bank_nowy_bfg_sa, bank_pekao_sa, banki_spbdzielcze, blik, bnp_paribas, boz, citi_handlowy, credit_agricole, envelobank, etransfer_pocztowy24, getin_bank, ideabank, ing, inteligo, mbank_mtransfer, nest_przelew, noble_pay, pbac_z_ipko, plus_bank, santander_przelew24, tmobile_usbugi_bankowe, toyota_bank, velobank, volkswagen_bank]."
    VALID_VALUES_FOR_BANK  = String.static_array("alior_bank", "bank_millennium", "bank_nowy_bfg_sa", "bank_pekao_sa", "banki_spbdzielcze", "blik", "bnp_paribas", "boz", "citi_handlowy", "credit_agricole", "envelobank", "etransfer_pocztowy24", "getin_bank", "ideabank", "ing", "inteligo", "mbank_mtransfer", "nest_przelew", "noble_pay", "pbac_z_ipko", "plus_bank", "santander_przelew24", "tmobile_usbugi_bankowe", "toyota_bank", "velobank", "volkswagen_bank")

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
    def bank=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("bank", new_value, VALID_VALUES_FOR_BANK)
      end

      @bank = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@bank)
  end
end
