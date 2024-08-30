#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./sepa_debit_generated_from"

module Stripe
  #
  class PaymentMethodSepaDebit
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Bank code of bank associated with the bank account.
    @[JSON::Field(key: "bank_code", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter bank_code : String? = nil
    MAX_LENGTH_FOR_BANK_CODE = 5000

    # Branch code of bank associated with the bank account.
    @[JSON::Field(key: "branch_code", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter branch_code : String? = nil
    MAX_LENGTH_FOR_BRANCH_CODE = 5000

    # Two-letter ISO code representing the country the bank account is located in.
    @[JSON::Field(key: "country", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter country : String? = nil
    MAX_LENGTH_FOR_COUNTRY = 5000

    # Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
    @[JSON::Field(key: "fingerprint", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter fingerprint : String? = nil
    MAX_LENGTH_FOR_FINGERPRINT = 5000

    @[JSON::Field(key: "generated_from", type: Stripe::SepaDebitGeneratedFrom?, default: nil, required: true, nullable: true, emit_null: true)]
    getter generated_from : Stripe::SepaDebitGeneratedFrom? = nil

    # Last four characters of the IBAN.
    @[JSON::Field(key: "last4", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter last4 : String? = nil
    MAX_LENGTH_FOR_LAST4 = 5000

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @bank_code : String? = nil,
      @branch_code : String? = nil,
      @country : String? = nil,
      @fingerprint : String? = nil,
      @generated_from : Stripe::SepaDebitGeneratedFrom? = nil,
      @last4 : String? = nil
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
      unless (_branch_code = @branch_code).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("branch_code", _branch_code.to_s.size, MAX_LENGTH_FOR_BRANCH_CODE)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_country = @country).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("country", _country.to_s.size, MAX_LENGTH_FOR_COUNTRY)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_fingerprint = @fingerprint).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("fingerprint", _fingerprint.to_s.size, MAX_LENGTH_FOR_FINGERPRINT)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_generated_from = @generated_from).nil?
        invalid_properties.concat(_generated_from.list_invalid_properties_for("generated_from")) if _generated_from.is_a?(OpenApi::Validatable)
      end
      unless (_last4 = @last4).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("last4", _last4.to_s.size, MAX_LENGTH_FOR_LAST4)
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

      unless (_branch_code = @branch_code).nil?
        return false if _branch_code.to_s.size > MAX_LENGTH_FOR_BRANCH_CODE
      end

      unless (_country = @country).nil?
        return false if _country.to_s.size > MAX_LENGTH_FOR_COUNTRY
      end

      unless (_fingerprint = @fingerprint).nil?
        return false if _fingerprint.to_s.size > MAX_LENGTH_FOR_FINGERPRINT
      end

      unless (_generated_from = @generated_from).nil?
        return false if _generated_from.is_a?(OpenApi::Validatable) && !_generated_from.valid?
      end

      unless (_last4 = @last4).nil?
        return false if _last4.to_s.size > MAX_LENGTH_FOR_LAST4
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
    # @param [Object] branch_code Object to be assigned
    def branch_code=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("branch_code", new_value.to_s.size, MAX_LENGTH_FOR_BRANCH_CODE)
      end

      @branch_code = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] country Object to be assigned
    def country=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("country", new_value.to_s.size, MAX_LENGTH_FOR_COUNTRY)
      end

      @country = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] fingerprint Object to be assigned
    def fingerprint=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("fingerprint", new_value.to_s.size, MAX_LENGTH_FOR_FINGERPRINT)
      end

      @fingerprint = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] generated_from Object to be assigned
    def generated_from=(new_value : Stripe::SepaDebitGeneratedFrom?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @generated_from = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] last4 Object to be assigned
    def last4=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("last4", new_value.to_s.size, MAX_LENGTH_FOR_LAST4)
      end

      @last4 = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@bank_code, @branch_code, @country, @fingerprint, @generated_from, @last4)
  end
end
