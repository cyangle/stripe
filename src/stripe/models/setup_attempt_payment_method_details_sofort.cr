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
  class SetupAttemptPaymentMethodDetailsSofort
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    # Bank code of bank associated with the bank account.
    @[JSON::Field(key: "bank_code", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: bank_code.nil? && !bank_code_present?)]
    getter bank_code : String? = nil
    MAX_LENGTH_FOR_BANK_CODE = 5000

    @[JSON::Field(ignore: true)]
    property? bank_code_present : Bool = false

    # Name of the bank associated with the bank account.
    @[JSON::Field(key: "bank_name", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: bank_name.nil? && !bank_name_present?)]
    getter bank_name : String? = nil
    MAX_LENGTH_FOR_BANK_NAME = 5000

    @[JSON::Field(ignore: true)]
    property? bank_name_present : Bool = false

    # Bank Identifier Code of the bank associated with the bank account.
    @[JSON::Field(key: "bic", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: bic.nil? && !bic_present?)]
    getter bic : String? = nil
    MAX_LENGTH_FOR_BIC = 5000

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
    MAX_LENGTH_FOR_IBAN_LAST4 = 5000

    @[JSON::Field(ignore: true)]
    property? iban_last4_present : Bool = false

    # Preferred language of the Sofort authorization page that the customer is redirected to. Can be one of `en`, `de`, `fr`, or `nl`
    @[JSON::Field(key: "preferred_language", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: preferred_language.nil? && !preferred_language_present?)]
    getter preferred_language : String? = nil
    ERROR_MESSAGE_FOR_PREFERRED_LANGUAGE = "invalid value for \"preferred_language\", must be one of [de, en, fr, nl]."
    VALID_VALUES_FOR_PREFERRED_LANGUAGE  = StaticArray["de", "en", "fr", "nl"]

    @[JSON::Field(ignore: true)]
    property? preferred_language_present : Bool = false

    # Owner's verified full name. Values are verified or provided by Sofort directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
    @[JSON::Field(key: "verified_name", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: verified_name.nil? && !verified_name_present?)]
    getter verified_name : String? = nil
    MAX_LENGTH_FOR_VERIFIED_NAME = 5000

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
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      if _bank_code = @bank_code
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("bank_code", _bank_code.to_s.size, MAX_LENGTH_FOR_BANK_CODE)
          invalid_properties.push(max_length_error)
        end
      end
      if _bank_name = @bank_name
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("bank_name", _bank_name.to_s.size, MAX_LENGTH_FOR_BANK_NAME)
          invalid_properties.push(max_length_error)
        end
      end
      if _bic = @bic
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("bic", _bic.to_s.size, MAX_LENGTH_FOR_BIC)
          invalid_properties.push(max_length_error)
        end
      end
      if _generated_sepa_debit = @generated_sepa_debit
        invalid_properties.concat(_generated_sepa_debit.list_invalid_properties_for("generated_sepa_debit")) if _generated_sepa_debit.is_a?(OpenApi::Validatable)
      end
      if _generated_sepa_debit_mandate = @generated_sepa_debit_mandate
        invalid_properties.concat(_generated_sepa_debit_mandate.list_invalid_properties_for("generated_sepa_debit_mandate")) if _generated_sepa_debit_mandate.is_a?(OpenApi::Validatable)
      end
      if _iban_last4 = @iban_last4
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("iban_last4", _iban_last4.to_s.size, MAX_LENGTH_FOR_IBAN_LAST4)
          invalid_properties.push(max_length_error)
        end
      end
      if _preferred_language = @preferred_language
        invalid_properties.push(ERROR_MESSAGE_FOR_PREFERRED_LANGUAGE) unless OpenApi::EnumValidator.valid?(_preferred_language, VALID_VALUES_FOR_PREFERRED_LANGUAGE)
      end
      if _verified_name = @verified_name
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("verified_name", _verified_name.to_s.size, MAX_LENGTH_FOR_VERIFIED_NAME)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _bank_code = @bank_code
        return false if _bank_code.to_s.size > MAX_LENGTH_FOR_BANK_CODE
      end

      if _bank_name = @bank_name
        return false if _bank_name.to_s.size > MAX_LENGTH_FOR_BANK_NAME
      end

      if _bic = @bic
        return false if _bic.to_s.size > MAX_LENGTH_FOR_BIC
      end

      if _generated_sepa_debit = @generated_sepa_debit
        return false if _generated_sepa_debit.is_a?(OpenApi::Validatable) && !_generated_sepa_debit.valid?
      end

      if _generated_sepa_debit_mandate = @generated_sepa_debit_mandate
        return false if _generated_sepa_debit_mandate.is_a?(OpenApi::Validatable) && !_generated_sepa_debit_mandate.valid?
      end

      if _iban_last4 = @iban_last4
        return false if _iban_last4.to_s.size > MAX_LENGTH_FOR_IBAN_LAST4
      end

      if _preferred_language = @preferred_language
        return false unless OpenApi::EnumValidator.valid?(_preferred_language, VALID_VALUES_FOR_PREFERRED_LANGUAGE)
      end

      if _verified_name = @verified_name
        return false if _verified_name.to_s.size > MAX_LENGTH_FOR_VERIFIED_NAME
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
      OpenApi::PrimitiveValidator.validate_max_length("bank_code", _bank_code.to_s.size, MAX_LENGTH_FOR_BANK_CODE)
      @bank_code = _bank_code
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bank_name Object to be assigned
    def bank_name=(bank_name : String?)
      if bank_name.nil?
        return @bank_name = nil
      end
      _bank_name = bank_name.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("bank_name", _bank_name.to_s.size, MAX_LENGTH_FOR_BANK_NAME)
      @bank_name = _bank_name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bic Object to be assigned
    def bic=(bic : String?)
      if bic.nil?
        return @bic = nil
      end
      _bic = bic.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("bic", _bic.to_s.size, MAX_LENGTH_FOR_BIC)
      @bic = _bic
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] generated_sepa_debit Object to be assigned
    def generated_sepa_debit=(generated_sepa_debit : Stripe::SetupAttemptPaymentMethodDetailsBancontactGeneratedSepaDebit?)
      if generated_sepa_debit.nil?
        return @generated_sepa_debit = nil
      end
      _generated_sepa_debit = generated_sepa_debit.not_nil!
      _generated_sepa_debit.validate if _generated_sepa_debit.is_a?(OpenApi::Validatable)
      @generated_sepa_debit = _generated_sepa_debit
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] generated_sepa_debit_mandate Object to be assigned
    def generated_sepa_debit_mandate=(generated_sepa_debit_mandate : Stripe::SetupAttemptPaymentMethodDetailsBancontactGeneratedSepaDebitMandate?)
      if generated_sepa_debit_mandate.nil?
        return @generated_sepa_debit_mandate = nil
      end
      _generated_sepa_debit_mandate = generated_sepa_debit_mandate.not_nil!
      _generated_sepa_debit_mandate.validate if _generated_sepa_debit_mandate.is_a?(OpenApi::Validatable)
      @generated_sepa_debit_mandate = _generated_sepa_debit_mandate
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] iban_last4 Object to be assigned
    def iban_last4=(iban_last4 : String?)
      if iban_last4.nil?
        return @iban_last4 = nil
      end
      _iban_last4 = iban_last4.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("iban_last4", _iban_last4.to_s.size, MAX_LENGTH_FOR_IBAN_LAST4)
      @iban_last4 = _iban_last4
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] preferred_language Object to be assigned
    def preferred_language=(preferred_language : String?)
      if preferred_language.nil?
        return @preferred_language = nil
      end
      _preferred_language = preferred_language.not_nil!
      OpenApi::EnumValidator.validate("preferred_language", _preferred_language, VALID_VALUES_FOR_PREFERRED_LANGUAGE)
      @preferred_language = _preferred_language
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] verified_name Object to be assigned
    def verified_name=(verified_name : String?)
      if verified_name.nil?
        return @verified_name = nil
      end
      _verified_name = verified_name.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("verified_name", _verified_name.to_s.size, MAX_LENGTH_FOR_VERIFIED_NAME)
      @verified_name = _verified_name
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@bank_code, @bank_code_present, @bank_name, @bank_name_present, @bic, @bic_present, @generated_sepa_debit, @generated_sepa_debit_present, @generated_sepa_debit_mandate, @generated_sepa_debit_mandate_present, @iban_last4, @iban_last4_present, @preferred_language, @preferred_language_present, @verified_name, @verified_name_present)
  end
end
