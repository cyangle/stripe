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
  class SourceTypeMultibanco
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    @[JSON::Field(key: "entity", type: String?, presence: true, ignore_serialize: entity.nil? && !entity_present?)]
    property entity : String?

    @[JSON::Field(ignore: true)]
    property? entity_present : Bool = false

    @[JSON::Field(key: "reference", type: String?, presence: true, ignore_serialize: reference.nil? && !reference_present?)]
    property reference : String?

    @[JSON::Field(ignore: true)]
    property? reference_present : Bool = false

    @[JSON::Field(key: "refund_account_holder_address_city", type: String?, presence: true, ignore_serialize: refund_account_holder_address_city.nil? && !refund_account_holder_address_city_present?)]
    property refund_account_holder_address_city : String?

    @[JSON::Field(ignore: true)]
    property? refund_account_holder_address_city_present : Bool = false

    @[JSON::Field(key: "refund_account_holder_address_country", type: String?, presence: true, ignore_serialize: refund_account_holder_address_country.nil? && !refund_account_holder_address_country_present?)]
    property refund_account_holder_address_country : String?

    @[JSON::Field(ignore: true)]
    property? refund_account_holder_address_country_present : Bool = false

    @[JSON::Field(key: "refund_account_holder_address_line1", type: String?, presence: true, ignore_serialize: refund_account_holder_address_line1.nil? && !refund_account_holder_address_line1_present?)]
    property refund_account_holder_address_line1 : String?

    @[JSON::Field(ignore: true)]
    property? refund_account_holder_address_line1_present : Bool = false

    @[JSON::Field(key: "refund_account_holder_address_line2", type: String?, presence: true, ignore_serialize: refund_account_holder_address_line2.nil? && !refund_account_holder_address_line2_present?)]
    property refund_account_holder_address_line2 : String?

    @[JSON::Field(ignore: true)]
    property? refund_account_holder_address_line2_present : Bool = false

    @[JSON::Field(key: "refund_account_holder_address_postal_code", type: String?, presence: true, ignore_serialize: refund_account_holder_address_postal_code.nil? && !refund_account_holder_address_postal_code_present?)]
    property refund_account_holder_address_postal_code : String?

    @[JSON::Field(ignore: true)]
    property? refund_account_holder_address_postal_code_present : Bool = false

    @[JSON::Field(key: "refund_account_holder_address_state", type: String?, presence: true, ignore_serialize: refund_account_holder_address_state.nil? && !refund_account_holder_address_state_present?)]
    property refund_account_holder_address_state : String?

    @[JSON::Field(ignore: true)]
    property? refund_account_holder_address_state_present : Bool = false

    @[JSON::Field(key: "refund_account_holder_name", type: String?, presence: true, ignore_serialize: refund_account_holder_name.nil? && !refund_account_holder_name_present?)]
    property refund_account_holder_name : String?

    @[JSON::Field(ignore: true)]
    property? refund_account_holder_name_present : Bool = false

    @[JSON::Field(key: "refund_iban", type: String?, presence: true, ignore_serialize: refund_iban.nil? && !refund_iban_present?)]
    property refund_iban : String?

    @[JSON::Field(ignore: true)]
    property? refund_iban_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @entity : String? = nil,
      @reference : String? = nil,
      @refund_account_holder_address_city : String? = nil,
      @refund_account_holder_address_country : String? = nil,
      @refund_account_holder_address_line1 : String? = nil,
      @refund_account_holder_address_line2 : String? = nil,
      @refund_account_holder_address_postal_code : String? = nil,
      @refund_account_holder_address_state : String? = nil,
      @refund_account_holder_name : String? = nil,
      @refund_iban : String? = nil
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
    def_equals_and_hash(@entity, @entity_present, @reference, @reference_present, @refund_account_holder_address_city, @refund_account_holder_address_city_present, @refund_account_holder_address_country, @refund_account_holder_address_country_present, @refund_account_holder_address_line1, @refund_account_holder_address_line1_present, @refund_account_holder_address_line2, @refund_account_holder_address_line2_present, @refund_account_holder_address_postal_code, @refund_account_holder_address_postal_code_present, @refund_account_holder_address_state, @refund_account_holder_address_state_present, @refund_account_holder_name, @refund_account_holder_name_present, @refund_iban, @refund_iban_present)
  end
end
