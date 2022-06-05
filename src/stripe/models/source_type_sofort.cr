#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-08-27
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module Stripe
  @[JSON::Serializable::Options(emit_nulls: true)]
  class SourceTypeSofort
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    @[JSON::Field(key: "bank_code", type: String?, presence: true, ignore_serialize: bank_code.nil? && !bank_code_present?)]
    property bank_code : String?

    @[JSON::Field(ignore: true)]
    property? bank_code_present : Bool = false

    @[JSON::Field(key: "bank_name", type: String?, presence: true, ignore_serialize: bank_name.nil? && !bank_name_present?)]
    property bank_name : String?

    @[JSON::Field(ignore: true)]
    property? bank_name_present : Bool = false

    @[JSON::Field(key: "bic", type: String?, presence: true, ignore_serialize: bic.nil? && !bic_present?)]
    property bic : String?

    @[JSON::Field(ignore: true)]
    property? bic_present : Bool = false

    @[JSON::Field(key: "country", type: String?, presence: true, ignore_serialize: country.nil? && !country_present?)]
    property country : String?

    @[JSON::Field(ignore: true)]
    property? country_present : Bool = false

    @[JSON::Field(key: "iban_last4", type: String?, presence: true, ignore_serialize: iban_last4.nil? && !iban_last4_present?)]
    property iban_last4 : String?

    @[JSON::Field(ignore: true)]
    property? iban_last4_present : Bool = false

    @[JSON::Field(key: "preferred_language", type: String?, presence: true, ignore_serialize: preferred_language.nil? && !preferred_language_present?)]
    property preferred_language : String?

    @[JSON::Field(ignore: true)]
    property? preferred_language_present : Bool = false

    @[JSON::Field(key: "statement_descriptor", type: String?, presence: true, ignore_serialize: statement_descriptor.nil? && !statement_descriptor_present?)]
    property statement_descriptor : String?

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
      @country : String? = nil,
      @iban_last4 : String? = nil,
      @preferred_language : String? = nil,
      @statement_descriptor : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
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
    def_equals_and_hash(@bank_code, @bank_name, @bic, @country, @iban_last4, @preferred_language, @statement_descriptor)
  end
end
