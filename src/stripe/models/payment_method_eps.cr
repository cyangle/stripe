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
  class PaymentMethodEps
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # The customer's bank. Should be one of `arzte_und_apotheker_bank`, `austrian_anadi_bank_ag`, `bank_austria`, `bankhaus_carl_spangler`, `bankhaus_schelhammer_und_schattera_ag`, `bawag_psk_ag`, `bks_bank_ag`, `brull_kallmus_bank_ag`, `btv_vier_lander_bank`, `capital_bank_grawe_gruppe_ag`, `deutsche_bank_ag`, `dolomitenbank`, `easybank_ag`, `erste_bank_und_sparkassen`, `hypo_alpeadriabank_international_ag`, `hypo_noe_lb_fur_niederosterreich_u_wien`, `hypo_oberosterreich_salzburg_steiermark`, `hypo_tirol_bank_ag`, `hypo_vorarlberg_bank_ag`, `hypo_bank_burgenland_aktiengesellschaft`, `marchfelder_bank`, `oberbank_ag`, `raiffeisen_bankengruppe_osterreich`, `schoellerbank_ag`, `sparda_bank_wien`, `volksbank_gruppe`, `volkskreditbank_ag`, or `vr_bank_braunau`.
    @[JSON::Field(key: "bank", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: bank.nil? && !bank_present?)]
    getter bank : String? = nil
    ERROR_MESSAGE_FOR_BANK = "invalid value for \"bank\", must be one of [arzte_und_apotheker_bank, austrian_anadi_bank_ag, bank_austria, bankhaus_carl_spangler, bankhaus_schelhammer_und_schattera_ag, bawag_psk_ag, bks_bank_ag, brull_kallmus_bank_ag, btv_vier_lander_bank, capital_bank_grawe_gruppe_ag, deutsche_bank_ag, dolomitenbank, easybank_ag, erste_bank_und_sparkassen, hypo_alpeadriabank_international_ag, hypo_bank_burgenland_aktiengesellschaft, hypo_noe_lb_fur_niederosterreich_u_wien, hypo_oberosterreich_salzburg_steiermark, hypo_tirol_bank_ag, hypo_vorarlberg_bank_ag, marchfelder_bank, oberbank_ag, raiffeisen_bankengruppe_osterreich, schoellerbank_ag, sparda_bank_wien, volksbank_gruppe, volkskreditbank_ag, vr_bank_braunau]."
    VALID_VALUES_FOR_BANK  = StaticArray["arzte_und_apotheker_bank", "austrian_anadi_bank_ag", "bank_austria", "bankhaus_carl_spangler", "bankhaus_schelhammer_und_schattera_ag", "bawag_psk_ag", "bks_bank_ag", "brull_kallmus_bank_ag", "btv_vier_lander_bank", "capital_bank_grawe_gruppe_ag", "deutsche_bank_ag", "dolomitenbank", "easybank_ag", "erste_bank_und_sparkassen", "hypo_alpeadriabank_international_ag", "hypo_bank_burgenland_aktiengesellschaft", "hypo_noe_lb_fur_niederosterreich_u_wien", "hypo_oberosterreich_salzburg_steiermark", "hypo_tirol_bank_ag", "hypo_vorarlberg_bank_ag", "marchfelder_bank", "oberbank_ag", "raiffeisen_bankengruppe_osterreich", "schoellerbank_ag", "sparda_bank_wien", "volksbank_gruppe", "volkskreditbank_ag", "vr_bank_braunau"]

    @[JSON::Field(ignore: true)]
    property? bank_present : Bool = false

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
    def_equals_and_hash(@bank, @bank_present)
  end
end
