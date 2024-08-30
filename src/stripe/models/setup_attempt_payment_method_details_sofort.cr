#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./setup_attempt_payment_method_details_bancontact_generated_sepa_debit"
require "./setup_attempt_payment_method_details_bancontact_generated_sepa_debit_mandate"

module Stripe
  #
  class SetupAttemptPaymentMethodDetailsSofort
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Bank code of bank associated with the bank account.
    @[JSON::Field(key: "bank_code", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter bank_code : String? = nil
    MAX_LENGTH_FOR_BANK_CODE = 5000

    # Name of the bank associated with the bank account.
    @[JSON::Field(key: "bank_name", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter bank_name : String? = nil
    MAX_LENGTH_FOR_BANK_NAME = 5000

    # Bank Identifier Code of the bank associated with the bank account.
    @[JSON::Field(key: "bic", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter bic : String? = nil
    MAX_LENGTH_FOR_BIC = 5000

    @[JSON::Field(key: "generated_sepa_debit", type: Stripe::SetupAttemptPaymentMethodDetailsBancontactGeneratedSepaDebit?, default: nil, required: true, nullable: true, emit_null: true)]
    getter generated_sepa_debit : Stripe::SetupAttemptPaymentMethodDetailsBancontactGeneratedSepaDebit? = nil

    @[JSON::Field(key: "generated_sepa_debit_mandate", type: Stripe::SetupAttemptPaymentMethodDetailsBancontactGeneratedSepaDebitMandate?, default: nil, required: true, nullable: true, emit_null: true)]
    getter generated_sepa_debit_mandate : Stripe::SetupAttemptPaymentMethodDetailsBancontactGeneratedSepaDebitMandate? = nil

    # Last four characters of the IBAN.
    @[JSON::Field(key: "iban_last4", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter iban_last4 : String? = nil
    MAX_LENGTH_FOR_IBAN_LAST4 = 5000

    # Preferred language of the Sofort authorization page that the customer is redirected to. Can be one of `en`, `de`, `fr`, or `nl`
    @[JSON::Field(key: "preferred_language", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter preferred_language : String? = nil
    ERROR_MESSAGE_FOR_PREFERRED_LANGUAGE = "invalid value for \"preferred_language\", must be one of [de, en, fr, nl]."
    VALID_VALUES_FOR_PREFERRED_LANGUAGE  = String.static_array("de", "en", "fr", "nl")

    # Owner's verified full name. Values are verified or provided by Sofort directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
    @[JSON::Field(key: "verified_name", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter verified_name : String? = nil
    MAX_LENGTH_FOR_VERIFIED_NAME = 5000

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
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

      unless (_bank_code = @bank_code).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("bank_code", _bank_code.to_s.size, MAX_LENGTH_FOR_BANK_CODE)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_bank_name = @bank_name).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("bank_name", _bank_name.to_s.size, MAX_LENGTH_FOR_BANK_NAME)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_bic = @bic).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("bic", _bic.to_s.size, MAX_LENGTH_FOR_BIC)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_generated_sepa_debit = @generated_sepa_debit).nil?
        invalid_properties.concat(_generated_sepa_debit.list_invalid_properties_for("generated_sepa_debit")) if _generated_sepa_debit.is_a?(OpenApi::Validatable)
      end
      unless (_generated_sepa_debit_mandate = @generated_sepa_debit_mandate).nil?
        invalid_properties.concat(_generated_sepa_debit_mandate.list_invalid_properties_for("generated_sepa_debit_mandate")) if _generated_sepa_debit_mandate.is_a?(OpenApi::Validatable)
      end
      unless (_iban_last4 = @iban_last4).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("iban_last4", _iban_last4.to_s.size, MAX_LENGTH_FOR_IBAN_LAST4)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_preferred_language = @preferred_language).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_PREFERRED_LANGUAGE) unless OpenApi::EnumValidator.valid?(_preferred_language, VALID_VALUES_FOR_PREFERRED_LANGUAGE)
      end
      unless (_verified_name = @verified_name).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("verified_name", _verified_name.to_s.size, MAX_LENGTH_FOR_VERIFIED_NAME)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_bank_code = @bank_code).nil?
        return false if _bank_code.to_s.size > MAX_LENGTH_FOR_BANK_CODE
      end

      unless (_bank_name = @bank_name).nil?
        return false if _bank_name.to_s.size > MAX_LENGTH_FOR_BANK_NAME
      end

      unless (_bic = @bic).nil?
        return false if _bic.to_s.size > MAX_LENGTH_FOR_BIC
      end

      unless (_generated_sepa_debit = @generated_sepa_debit).nil?
        return false if _generated_sepa_debit.is_a?(OpenApi::Validatable) && !_generated_sepa_debit.valid?
      end

      unless (_generated_sepa_debit_mandate = @generated_sepa_debit_mandate).nil?
        return false if _generated_sepa_debit_mandate.is_a?(OpenApi::Validatable) && !_generated_sepa_debit_mandate.valid?
      end

      unless (_iban_last4 = @iban_last4).nil?
        return false if _iban_last4.to_s.size > MAX_LENGTH_FOR_IBAN_LAST4
      end

      unless (_preferred_language = @preferred_language).nil?
        return false unless OpenApi::EnumValidator.valid?(_preferred_language, VALID_VALUES_FOR_PREFERRED_LANGUAGE)
      end

      unless (_verified_name = @verified_name).nil?
        return false if _verified_name.to_s.size > MAX_LENGTH_FOR_VERIFIED_NAME
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bank_code Object to be assigned
    def bank_code=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("bank_code", new_value.to_s.size, MAX_LENGTH_FOR_BANK_CODE)
      end

      @bank_code = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bank_name Object to be assigned
    def bank_name=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("bank_name", new_value.to_s.size, MAX_LENGTH_FOR_BANK_NAME)
      end

      @bank_name = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bic Object to be assigned
    def bic=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("bic", new_value.to_s.size, MAX_LENGTH_FOR_BIC)
      end

      @bic = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] generated_sepa_debit Object to be assigned
    def generated_sepa_debit=(new_value : Stripe::SetupAttemptPaymentMethodDetailsBancontactGeneratedSepaDebit?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @generated_sepa_debit = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] generated_sepa_debit_mandate Object to be assigned
    def generated_sepa_debit_mandate=(new_value : Stripe::SetupAttemptPaymentMethodDetailsBancontactGeneratedSepaDebitMandate?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @generated_sepa_debit_mandate = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] iban_last4 Object to be assigned
    def iban_last4=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("iban_last4", new_value.to_s.size, MAX_LENGTH_FOR_IBAN_LAST4)
      end

      @iban_last4 = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] preferred_language Object to be assigned
    def preferred_language=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("preferred_language", new_value, VALID_VALUES_FOR_PREFERRED_LANGUAGE)
      end

      @preferred_language = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] verified_name Object to be assigned
    def verified_name=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("verified_name", new_value.to_s.size, MAX_LENGTH_FOR_VERIFIED_NAME)
      end

      @verified_name = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@bank_code, @bank_name, @bic, @generated_sepa_debit, @generated_sepa_debit_mandate, @iban_last4, @preferred_language, @verified_name)
  end
end
