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
  class SourceTypeBancontact
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "bank_code", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: bank_code.nil? && !bank_code_present?)]
    getter bank_code : String? = nil

    @[JSON::Field(ignore: true)]
    property? bank_code_present : Bool = false

    @[JSON::Field(key: "bank_name", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: bank_name.nil? && !bank_name_present?)]
    getter bank_name : String? = nil

    @[JSON::Field(ignore: true)]
    property? bank_name_present : Bool = false

    @[JSON::Field(key: "bic", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: bic.nil? && !bic_present?)]
    getter bic : String? = nil

    @[JSON::Field(ignore: true)]
    property? bic_present : Bool = false

    @[JSON::Field(key: "iban_last4", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: iban_last4.nil? && !iban_last4_present?)]
    getter iban_last4 : String? = nil

    @[JSON::Field(ignore: true)]
    property? iban_last4_present : Bool = false

    @[JSON::Field(key: "preferred_language", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: preferred_language.nil? && !preferred_language_present?)]
    getter preferred_language : String? = nil

    @[JSON::Field(ignore: true)]
    property? preferred_language_present : Bool = false

    @[JSON::Field(key: "statement_descriptor", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: statement_descriptor.nil? && !statement_descriptor_present?)]
    getter statement_descriptor : String? = nil

    @[JSON::Field(ignore: true)]
    property? statement_descriptor_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @bank_code : String? = nil,
      @bank_name : String? = nil,
      @bic : String? = nil,
      @iban_last4 : String? = nil,
      @preferred_language : String? = nil,
      @statement_descriptor : String? = nil
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
    # @param [Object] bank_code Object to be assigned
    def bank_code=(bank_code : String?)
      if bank_code.nil?
        return @bank_code = nil
      end
      _bank_code = bank_code.not_nil!
      @bank_code = _bank_code
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bank_name Object to be assigned
    def bank_name=(bank_name : String?)
      if bank_name.nil?
        return @bank_name = nil
      end
      _bank_name = bank_name.not_nil!
      @bank_name = _bank_name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bic Object to be assigned
    def bic=(bic : String?)
      if bic.nil?
        return @bic = nil
      end
      _bic = bic.not_nil!
      @bic = _bic
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] iban_last4 Object to be assigned
    def iban_last4=(iban_last4 : String?)
      if iban_last4.nil?
        return @iban_last4 = nil
      end
      _iban_last4 = iban_last4.not_nil!
      @iban_last4 = _iban_last4
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] preferred_language Object to be assigned
    def preferred_language=(preferred_language : String?)
      if preferred_language.nil?
        return @preferred_language = nil
      end
      _preferred_language = preferred_language.not_nil!
      @preferred_language = _preferred_language
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] statement_descriptor Object to be assigned
    def statement_descriptor=(statement_descriptor : String?)
      if statement_descriptor.nil?
        return @statement_descriptor = nil
      end
      _statement_descriptor = statement_descriptor.not_nil!
      @statement_descriptor = _statement_descriptor
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@bank_code, @bank_code_present, @bank_name, @bank_name_present, @bic, @bic_present, @iban_last4, @iban_last4_present, @preferred_language, @preferred_language_present, @statement_descriptor, @statement_descriptor_present)
  end
end
