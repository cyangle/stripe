#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-11-15
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module Stripe
  class PaymentMethodDataParamsP24
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "bank", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter bank : String? = nil
    ERROR_MESSAGE_FOR_BANK = "invalid value for \"bank\", must be one of [alior_bank, bank_millennium, bank_nowy_bfg_sa, bank_pekao_sa, banki_spbdzielcze, blik, bnp_paribas, boz, citi_handlowy, credit_agricole, envelobank, etransfer_pocztowy24, getin_bank, ideabank, ing, inteligo, mbank_mtransfer, nest_przelew, noble_pay, pbac_z_ipko, plus_bank, santander_przelew24, tmobile_usbugi_bankowe, toyota_bank, volkswagen_bank]."
    VALID_VALUES_FOR_BANK  = String.static_array("alior_bank", "bank_millennium", "bank_nowy_bfg_sa", "bank_pekao_sa", "banki_spbdzielcze", "blik", "bnp_paribas", "boz", "citi_handlowy", "credit_agricole", "envelobank", "etransfer_pocztowy24", "getin_bank", "ideabank", "ing", "inteligo", "mbank_mtransfer", "nest_przelew", "noble_pay", "pbac_z_ipko", "plus_bank", "santander_przelew24", "tmobile_usbugi_bankowe", "toyota_bank", "volkswagen_bank")

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

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bank Object to be assigned
    def bank=(bank : String?)
      @bank = bank
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@bank)
  end
end
