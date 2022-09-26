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
  class PaymentMethodDetailsP24
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Optional properties

    # The customer's bank. Can be one of `ing`, `citi_handlowy`, `tmobile_usbugi_bankowe`, `plus_bank`, `etransfer_pocztowy24`, `banki_spbdzielcze`, `bank_nowy_bfg_sa`, `getin_bank`, `blik`, `noble_pay`, `ideabank`, `envelobank`, `santander_przelew24`, `nest_przelew`, `mbank_mtransfer`, `inteligo`, `pbac_z_ipko`, `bnp_paribas`, `credit_agricole`, `toyota_bank`, `bank_pekao_sa`, `volkswagen_bank`, `bank_millennium`, `alior_bank`, or `boz`.
    @[JSON::Field(key: "bank", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: bank.nil? && !bank_present?)]
    getter bank : String? = nil

    @[JSON::Field(ignore: true)]
    property? bank_present : Bool = false

    ENUM_VALIDATOR_FOR_BANK = EnumValidator.new("bank", "String", ["alior_bank", "bank_millennium", "bank_nowy_bfg_sa", "bank_pekao_sa", "banki_spbdzielcze", "blik", "bnp_paribas", "boz", "citi_handlowy", "credit_agricole", "envelobank", "etransfer_pocztowy24", "getin_bank", "ideabank", "ing", "inteligo", "mbank_mtransfer", "nest_przelew", "noble_pay", "pbac_z_ipko", "plus_bank", "santander_przelew24", "tmobile_usbugi_bankowe", "toyota_bank", "volkswagen_bank"])

    # Unique reference for this Przelewy24 payment.
    @[JSON::Field(key: "reference", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: reference.nil? && !reference_present?)]
    getter reference : String? = nil

    @[JSON::Field(ignore: true)]
    property? reference_present : Bool = false

    # Owner's verified full name. Values are verified or provided by Przelewy24 directly (if supported) at the time of authorization or settlement. They cannot be set or mutated. Przelewy24 rarely provides this information so the attribute is usually empty.
    @[JSON::Field(key: "verified_name", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: verified_name.nil? && !verified_name_present?)]
    getter verified_name : String? = nil

    @[JSON::Field(ignore: true)]
    property? verified_name_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @bank : String? = nil,
      @reference : String? = nil,
      @verified_name : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_BANK.error_message) unless ENUM_VALIDATOR_FOR_BANK.valid?(@bank)
      if _reference = @reference
        if _reference.to_s.size > 5000
          invalid_properties.push("invalid value for \"reference\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _verified_name = @verified_name
        if _verified_name.to_s.size > 5000
          invalid_properties.push("invalid value for \"verified_name\", the character length must be smaller than or equal to 5000.")
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR_BANK.valid?(@bank)
      if _reference = @reference
        return false if _reference.to_s.size > 5000
      end
      if _verified_name = @verified_name
        return false if _verified_name.to_s.size > 5000
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
      ENUM_VALIDATOR_FOR_BANK.valid!(_bank)
      @bank = bank
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] reference Object to be assigned
    def reference=(reference : String?)
      if reference.nil?
        return @reference = nil
      end
      _reference = reference.not_nil!
      if _reference.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"reference\", the character length must be smaller than or equal to 5000.")
      end

      @reference = reference
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] verified_name Object to be assigned
    def verified_name=(verified_name : String?)
      if verified_name.nil?
        return @verified_name = nil
      end
      _verified_name = verified_name.not_nil!
      if _verified_name.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"verified_name\", the character length must be smaller than or equal to 5000.")
      end

      @verified_name = verified_name
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
    def_equals_and_hash(@bank, @bank_present, @reference, @reference_present, @verified_name, @verified_name_present)
  end
end
