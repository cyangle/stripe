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
  #
  class PaymentMethodDetailsSepaDebit
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # Bank code of bank associated with the bank account.
    @[JSON::Field(key: "bank_code", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: bank_code.nil? && !bank_code_present?)]
    getter bank_code : String? = nil
    MAX_LENGTH_FOR_BANK_CODE = 5000

    @[JSON::Field(ignore: true)]
    property? bank_code_present : Bool = false

    # Branch code of bank associated with the bank account.
    @[JSON::Field(key: "branch_code", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: branch_code.nil? && !branch_code_present?)]
    getter branch_code : String? = nil
    MAX_LENGTH_FOR_BRANCH_CODE = 5000

    @[JSON::Field(ignore: true)]
    property? branch_code_present : Bool = false

    # Two-letter ISO code representing the country the bank account is located in.
    @[JSON::Field(key: "country", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: country.nil? && !country_present?)]
    getter country : String? = nil
    MAX_LENGTH_FOR_COUNTRY = 5000

    @[JSON::Field(ignore: true)]
    property? country_present : Bool = false

    # Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
    @[JSON::Field(key: "fingerprint", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: fingerprint.nil? && !fingerprint_present?)]
    getter fingerprint : String? = nil
    MAX_LENGTH_FOR_FINGERPRINT = 5000

    @[JSON::Field(ignore: true)]
    property? fingerprint_present : Bool = false

    # Last four characters of the IBAN.
    @[JSON::Field(key: "last4", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: last4.nil? && !last4_present?)]
    getter last4 : String? = nil
    MAX_LENGTH_FOR_LAST4 = 5000

    @[JSON::Field(ignore: true)]
    property? last4_present : Bool = false

    # ID of the mandate used to make this payment.
    @[JSON::Field(key: "mandate", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: mandate.nil? && !mandate_present?)]
    getter mandate : String? = nil
    MAX_LENGTH_FOR_MANDATE = 5000

    @[JSON::Field(ignore: true)]
    property? mandate_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @bank_code : String? = nil,
      @branch_code : String? = nil,
      @country : String? = nil,
      @fingerprint : String? = nil,
      @last4 : String? = nil,
      @mandate : String? = nil
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
      unless (_last4 = @last4).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("last4", _last4.to_s.size, MAX_LENGTH_FOR_LAST4)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_mandate = @mandate).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("mandate", _mandate.to_s.size, MAX_LENGTH_FOR_MANDATE)
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

      unless (_last4 = @last4).nil?
        return false if _last4.to_s.size > MAX_LENGTH_FOR_LAST4
      end

      unless (_mandate = @mandate).nil?
        return false if _mandate.to_s.size > MAX_LENGTH_FOR_MANDATE
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
    # @param [Object] branch_code Object to be assigned
    def branch_code=(branch_code : String?)
      if branch_code.nil?
        return @branch_code = nil
      end
      _branch_code = branch_code.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("branch_code", _branch_code.to_s.size, MAX_LENGTH_FOR_BRANCH_CODE)
      @branch_code = _branch_code
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] country Object to be assigned
    def country=(country : String?)
      if country.nil?
        return @country = nil
      end
      _country = country.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("country", _country.to_s.size, MAX_LENGTH_FOR_COUNTRY)
      @country = _country
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] fingerprint Object to be assigned
    def fingerprint=(fingerprint : String?)
      if fingerprint.nil?
        return @fingerprint = nil
      end
      _fingerprint = fingerprint.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("fingerprint", _fingerprint.to_s.size, MAX_LENGTH_FOR_FINGERPRINT)
      @fingerprint = _fingerprint
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] last4 Object to be assigned
    def last4=(last4 : String?)
      if last4.nil?
        return @last4 = nil
      end
      _last4 = last4.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("last4", _last4.to_s.size, MAX_LENGTH_FOR_LAST4)
      @last4 = _last4
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] mandate Object to be assigned
    def mandate=(mandate : String?)
      if mandate.nil?
        return @mandate = nil
      end
      _mandate = mandate.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("mandate", _mandate.to_s.size, MAX_LENGTH_FOR_MANDATE)
      @mandate = _mandate
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@bank_code, @bank_code_present, @branch_code, @branch_code_present, @country, @country_present, @fingerprint, @fingerprint_present, @last4, @last4_present, @mandate, @mandate_present)
  end
end
