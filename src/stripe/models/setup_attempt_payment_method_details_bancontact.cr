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
  class SetupAttemptPaymentMethodDetailsBancontact
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Optional properties

    # Bank code of bank associated with the bank account.
    @[JSON::Field(key: "bank_code", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: bank_code.nil? && !bank_code_present?)]
    getter bank_code : String? = nil

    @[JSON::Field(ignore: true)]
    property? bank_code_present : Bool = false

    # Name of the bank associated with the bank account.
    @[JSON::Field(key: "bank_name", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: bank_name.nil? && !bank_name_present?)]
    getter bank_name : String? = nil

    @[JSON::Field(ignore: true)]
    property? bank_name_present : Bool = false

    # Bank Identifier Code of the bank associated with the bank account.
    @[JSON::Field(key: "bic", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: bic.nil? && !bic_present?)]
    getter bic : String? = nil

    @[JSON::Field(ignore: true)]
    property? bic_present : Bool = false

    @[JSON::Field(key: "generated_sepa_debit", type: Stripe::SetupAttemptPaymentMethodDetailsBancontactGeneratedSepaDebit?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: generated_sepa_debit.nil? && !generated_sepa_debit_present?)]
    getter generated_sepa_debit : Stripe::SetupAttemptPaymentMethodDetailsBancontactGeneratedSepaDebit? = nil

    @[JSON::Field(ignore: true)]
    property? generated_sepa_debit_present : Bool = false

    @[JSON::Field(key: "generated_sepa_debit_mandate", type: Stripe::SetupAttemptPaymentMethodDetailsBancontactGeneratedSepaDebitMandate?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: generated_sepa_debit_mandate.nil? && !generated_sepa_debit_mandate_present?)]
    getter generated_sepa_debit_mandate : Stripe::SetupAttemptPaymentMethodDetailsBancontactGeneratedSepaDebitMandate? = nil

    @[JSON::Field(ignore: true)]
    property? generated_sepa_debit_mandate_present : Bool = false

    # Last four characters of the IBAN.
    @[JSON::Field(key: "iban_last4", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: iban_last4.nil? && !iban_last4_present?)]
    getter iban_last4 : String? = nil

    @[JSON::Field(ignore: true)]
    property? iban_last4_present : Bool = false

    # Preferred language of the Bancontact authorization page that the customer is redirected to. Can be one of `en`, `de`, `fr`, or `nl`
    @[JSON::Field(key: "preferred_language", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: preferred_language.nil? && !preferred_language_present?)]
    getter preferred_language : String? = nil

    @[JSON::Field(ignore: true)]
    property? preferred_language_present : Bool = false

    ENUM_VALIDATOR_FOR_PREFERRED_LANGUAGE = EnumValidator.new("preferred_language", "String", ["de", "en", "fr", "nl"])

    # Owner's verified full name. Values are verified or provided by Bancontact directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
    @[JSON::Field(key: "verified_name", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: verified_name.nil? && !verified_name_present?)]
    getter verified_name : String? = nil

    @[JSON::Field(ignore: true)]
    property? verified_name_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @bank_code : String? = nil,
      @bank_name : String? = nil,
      @bic : String? = nil,
      @generated_sepa_debit : Stripe::SetupAttemptPaymentMethodDetailsBancontactGeneratedSepaDebit? = nil,
      @generated_sepa_debit_mandate : Stripe::SetupAttemptPaymentMethodDetailsBancontactGeneratedSepaDebitMandate? = nil,
      @iban_last4 : String? = nil,
      @preferred_language : String? = nil,
      @verified_name : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      if _bank_code = @bank_code
        if _bank_code.to_s.size > 5000
          invalid_properties.push("invalid value for \"bank_code\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _bank_name = @bank_name
        if _bank_name.to_s.size > 5000
          invalid_properties.push("invalid value for \"bank_name\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _bic = @bic
        if _bic.to_s.size > 5000
          invalid_properties.push("invalid value for \"bic\", the character length must be smaller than or equal to 5000.")
        end
      end
      # This is a model generated_sepa_debit : Stripe::SetupAttemptPaymentMethodDetailsBancontactGeneratedSepaDebit?
      # This is a model generated_sepa_debit_mandate : Stripe::SetupAttemptPaymentMethodDetailsBancontactGeneratedSepaDebitMandate?
      if _iban_last4 = @iban_last4
        if _iban_last4.to_s.size > 5000
          invalid_properties.push("invalid value for \"iban_last4\", the character length must be smaller than or equal to 5000.")
        end
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_PREFERRED_LANGUAGE.error_message) unless ENUM_VALIDATOR_FOR_PREFERRED_LANGUAGE.valid?(@preferred_language)
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
      if _bank_code = @bank_code
        return false if _bank_code.to_s.size > 5000
      end
      if _bank_name = @bank_name
        return false if _bank_name.to_s.size > 5000
      end
      if _bic = @bic
        return false if _bic.to_s.size > 5000
      end
      if _iban_last4 = @iban_last4
        return false if _iban_last4.to_s.size > 5000
      end
      return false unless ENUM_VALIDATOR_FOR_PREFERRED_LANGUAGE.valid?(@preferred_language)
      if _verified_name = @verified_name
        return false if _verified_name.to_s.size > 5000
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bank_code Object to be assigned
    def bank_code=(bank_code : String?)
      if bank_code.nil?
        return @bank_code = nil
      end
      _bank_code = bank_code.not_nil!
      if _bank_code.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"bank_code\", the character length must be smaller than or equal to 5000.")
      end

      @bank_code = bank_code
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bank_name Object to be assigned
    def bank_name=(bank_name : String?)
      if bank_name.nil?
        return @bank_name = nil
      end
      _bank_name = bank_name.not_nil!
      if _bank_name.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"bank_name\", the character length must be smaller than or equal to 5000.")
      end

      @bank_name = bank_name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bic Object to be assigned
    def bic=(bic : String?)
      if bic.nil?
        return @bic = nil
      end
      _bic = bic.not_nil!
      if _bic.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"bic\", the character length must be smaller than or equal to 5000.")
      end

      @bic = bic
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] generated_sepa_debit Object to be assigned
    def generated_sepa_debit=(generated_sepa_debit : Stripe::SetupAttemptPaymentMethodDetailsBancontactGeneratedSepaDebit?)
      if generated_sepa_debit.nil?
        return @generated_sepa_debit = nil
      end
      @generated_sepa_debit = generated_sepa_debit
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] generated_sepa_debit_mandate Object to be assigned
    def generated_sepa_debit_mandate=(generated_sepa_debit_mandate : Stripe::SetupAttemptPaymentMethodDetailsBancontactGeneratedSepaDebitMandate?)
      if generated_sepa_debit_mandate.nil?
        return @generated_sepa_debit_mandate = nil
      end
      @generated_sepa_debit_mandate = generated_sepa_debit_mandate
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] iban_last4 Object to be assigned
    def iban_last4=(iban_last4 : String?)
      if iban_last4.nil?
        return @iban_last4 = nil
      end
      _iban_last4 = iban_last4.not_nil!
      if _iban_last4.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"iban_last4\", the character length must be smaller than or equal to 5000.")
      end

      @iban_last4 = iban_last4
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] preferred_language Object to be assigned
    def preferred_language=(preferred_language : String?)
      if preferred_language.nil?
        return @preferred_language = nil
      end
      _preferred_language = preferred_language.not_nil!
      ENUM_VALIDATOR_FOR_PREFERRED_LANGUAGE.valid!(_preferred_language)
      @preferred_language = preferred_language
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
    def_equals_and_hash(@bank_code, @bank_code_present, @bank_name, @bank_name_present, @bic, @bic_present, @generated_sepa_debit, @generated_sepa_debit_present, @generated_sepa_debit_mandate, @generated_sepa_debit_mandate_present, @iban_last4, @iban_last4_present, @preferred_language, @preferred_language_present, @verified_name, @verified_name_present)
  end
end
