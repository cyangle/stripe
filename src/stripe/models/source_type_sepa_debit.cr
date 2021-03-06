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
  class SourceTypeSepaDebit
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    @[JSON::Field(key: "bank_code", type: String?, presence: true, ignore_serialize: bank_code.nil? && !bank_code_present?)]
    property bank_code : String?

    @[JSON::Field(ignore: true)]
    property? bank_code_present : Bool = false

    @[JSON::Field(key: "branch_code", type: String?, presence: true, ignore_serialize: branch_code.nil? && !branch_code_present?)]
    property branch_code : String?

    @[JSON::Field(ignore: true)]
    property? branch_code_present : Bool = false

    @[JSON::Field(key: "country", type: String?, presence: true, ignore_serialize: country.nil? && !country_present?)]
    property country : String?

    @[JSON::Field(ignore: true)]
    property? country_present : Bool = false

    @[JSON::Field(key: "fingerprint", type: String?, presence: true, ignore_serialize: fingerprint.nil? && !fingerprint_present?)]
    property fingerprint : String?

    @[JSON::Field(ignore: true)]
    property? fingerprint_present : Bool = false

    @[JSON::Field(key: "last4", type: String?, presence: true, ignore_serialize: last4.nil? && !last4_present?)]
    property last4 : String?

    @[JSON::Field(ignore: true)]
    property? last4_present : Bool = false

    @[JSON::Field(key: "mandate_reference", type: String?, presence: true, ignore_serialize: mandate_reference.nil? && !mandate_reference_present?)]
    property mandate_reference : String?

    @[JSON::Field(ignore: true)]
    property? mandate_reference_present : Bool = false

    @[JSON::Field(key: "mandate_url", type: String?, presence: true, ignore_serialize: mandate_url.nil? && !mandate_url_present?)]
    property mandate_url : String?

    @[JSON::Field(ignore: true)]
    property? mandate_url_present : Bool = false

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
      @mandate_reference : String? = nil,
      @mandate_url : String? = nil
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
    def_equals_and_hash(@bank_code, @bank_code_present, @branch_code, @branch_code_present, @country, @country_present, @fingerprint, @fingerprint_present, @last4, @last4_present, @mandate_reference, @mandate_reference_present, @mandate_url, @mandate_url_present)
  end
end
