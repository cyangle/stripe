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
  class PaymentMethodSepaDebit
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    # Bank code of bank associated with the bank account.
    @[JSON::Field(key: "bank_code", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: bank_code.nil? && !bank_code_present?)]
    getter bank_code : String? = nil

    @[JSON::Field(ignore: true)]
    property? bank_code_present : Bool = false

    # Branch code of bank associated with the bank account.
    @[JSON::Field(key: "branch_code", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: branch_code.nil? && !branch_code_present?)]
    getter branch_code : String? = nil

    @[JSON::Field(ignore: true)]
    property? branch_code_present : Bool = false

    # Two-letter ISO code representing the country the bank account is located in.
    @[JSON::Field(key: "country", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: country.nil? && !country_present?)]
    getter country : String? = nil

    @[JSON::Field(ignore: true)]
    property? country_present : Bool = false

    # Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
    @[JSON::Field(key: "fingerprint", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: fingerprint.nil? && !fingerprint_present?)]
    getter fingerprint : String? = nil

    @[JSON::Field(ignore: true)]
    property? fingerprint_present : Bool = false

    @[JSON::Field(key: "generated_from", type: Stripe::PaymentMethodSepaDebitGeneratedFrom?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: generated_from.nil? && !generated_from_present?)]
    getter generated_from : Stripe::PaymentMethodSepaDebitGeneratedFrom? = nil

    @[JSON::Field(ignore: true)]
    property? generated_from_present : Bool = false

    # Last four characters of the IBAN.
    @[JSON::Field(key: "last4", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: last4.nil? && !last4_present?)]
    getter last4 : String? = nil

    @[JSON::Field(ignore: true)]
    property? last4_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @bank_code : String? = nil,
      @branch_code : String? = nil,
      @country : String? = nil,
      @fingerprint : String? = nil,
      @generated_from : Stripe::PaymentMethodSepaDebitGeneratedFrom? = nil,
      @last4 : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      if _bank_code = @bank_code
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("bank_code", _bank_code.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _branch_code = @branch_code
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("branch_code", _branch_code.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _country = @country
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("country", _country.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _fingerprint = @fingerprint
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("fingerprint", _fingerprint.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _generated_from = @generated_from
        invalid_properties.concat(_generated_from.list_invalid_properties_for("generated_from")) if _generated_from.is_a?(OpenApi::Validatable)
      end
      if _last4 = @last4
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("last4", _last4.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _bank_code = @bank_code
        return false if _bank_code.to_s.size > 5000
      end
      if _branch_code = @branch_code
        return false if _branch_code.to_s.size > 5000
      end
      if _country = @country
        return false if _country.to_s.size > 5000
      end
      if _fingerprint = @fingerprint
        return false if _fingerprint.to_s.size > 5000
      end
      if _generated_from = @generated_from
        return false if _generated_from.is_a?(OpenApi::Validatable) && !_generated_from.valid?
      end
      if _last4 = @last4
        return false if _last4.to_s.size > 5000
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
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("bank_code", _bank_code.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @bank_code = _bank_code
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] branch_code Object to be assigned
    def branch_code=(branch_code : String?)
      if branch_code.nil?
        return @branch_code = nil
      end
      _branch_code = branch_code.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("branch_code", _branch_code.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @branch_code = _branch_code
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] country Object to be assigned
    def country=(country : String?)
      if country.nil?
        return @country = nil
      end
      _country = country.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("country", _country.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @country = _country
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] fingerprint Object to be assigned
    def fingerprint=(fingerprint : String?)
      if fingerprint.nil?
        return @fingerprint = nil
      end
      _fingerprint = fingerprint.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("fingerprint", _fingerprint.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @fingerprint = _fingerprint
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] generated_from Object to be assigned
    def generated_from=(generated_from : Stripe::PaymentMethodSepaDebitGeneratedFrom?)
      if generated_from.nil?
        return @generated_from = nil
      end
      _generated_from = generated_from.not_nil!
      _generated_from.validate if _generated_from.is_a?(OpenApi::Validatable)
      @generated_from = _generated_from
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] last4 Object to be assigned
    def last4=(last4 : String?)
      if last4.nil?
        return @last4 = nil
      end
      _last4 = last4.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("last4", _last4.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @last4 = _last4
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@bank_code, @bank_code_present, @branch_code, @branch_code_present, @country, @country_present, @fingerprint, @fingerprint_present, @generated_from, @generated_from_present, @last4, @last4_present)
  end
end
