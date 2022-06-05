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
  class SourceTypeThreeDSecure
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    @[JSON::Field(key: "address_line1_check", type: String?, presence: true, ignore_serialize: address_line1_check.nil? && !address_line1_check_present?)]
    property address_line1_check : String?

    @[JSON::Field(ignore: true)]
    property? address_line1_check_present : Bool = false

    @[JSON::Field(key: "address_zip_check", type: String?, presence: true, ignore_serialize: address_zip_check.nil? && !address_zip_check_present?)]
    property address_zip_check : String?

    @[JSON::Field(ignore: true)]
    property? address_zip_check_present : Bool = false

    @[JSON::Field(key: "authenticated", type: Bool?, presence: true, ignore_serialize: authenticated.nil? && !authenticated_present?)]
    property authenticated : Bool?

    @[JSON::Field(ignore: true)]
    property? authenticated_present : Bool = false

    @[JSON::Field(key: "brand", type: String?, presence: true, ignore_serialize: brand.nil? && !brand_present?)]
    property brand : String?

    @[JSON::Field(ignore: true)]
    property? brand_present : Bool = false

    @[JSON::Field(key: "card", type: String?, presence: true, ignore_serialize: card.nil? && !card_present?)]
    property card : String?

    @[JSON::Field(ignore: true)]
    property? card_present : Bool = false

    @[JSON::Field(key: "country", type: String?, presence: true, ignore_serialize: country.nil? && !country_present?)]
    property country : String?

    @[JSON::Field(ignore: true)]
    property? country_present : Bool = false

    @[JSON::Field(key: "customer", type: String?, presence: true, ignore_serialize: customer.nil? && !customer_present?)]
    property customer : String?

    @[JSON::Field(ignore: true)]
    property? customer_present : Bool = false

    @[JSON::Field(key: "cvc_check", type: String?, presence: true, ignore_serialize: cvc_check.nil? && !cvc_check_present?)]
    property cvc_check : String?

    @[JSON::Field(ignore: true)]
    property? cvc_check_present : Bool = false

    @[JSON::Field(key: "dynamic_last4", type: String?, presence: true, ignore_serialize: dynamic_last4.nil? && !dynamic_last4_present?)]
    property dynamic_last4 : String?

    @[JSON::Field(ignore: true)]
    property? dynamic_last4_present : Bool = false

    @[JSON::Field(key: "exp_month", type: Int64?, presence: true, ignore_serialize: exp_month.nil? && !exp_month_present?)]
    property exp_month : Int64?

    @[JSON::Field(ignore: true)]
    property? exp_month_present : Bool = false

    @[JSON::Field(key: "exp_year", type: Int64?, presence: true, ignore_serialize: exp_year.nil? && !exp_year_present?)]
    property exp_year : Int64?

    @[JSON::Field(ignore: true)]
    property? exp_year_present : Bool = false

    @[JSON::Field(key: "fingerprint", type: String?, presence: true, ignore_serialize: fingerprint.nil? && !fingerprint_present?)]
    property fingerprint : String?

    @[JSON::Field(ignore: true)]
    property? fingerprint_present : Bool = false

    @[JSON::Field(key: "funding", type: String?, presence: true, ignore_serialize: funding.nil? && !funding_present?)]
    property funding : String?

    @[JSON::Field(ignore: true)]
    property? funding_present : Bool = false

    @[JSON::Field(key: "last4", type: String?, presence: true, ignore_serialize: last4.nil? && !last4_present?)]
    property last4 : String?

    @[JSON::Field(ignore: true)]
    property? last4_present : Bool = false

    @[JSON::Field(key: "name", type: String?, presence: true, ignore_serialize: name.nil? && !name_present?)]
    property name : String?

    @[JSON::Field(ignore: true)]
    property? name_present : Bool = false

    @[JSON::Field(key: "three_d_secure", type: String?, presence: true, ignore_serialize: three_d_secure.nil? && !three_d_secure_present?)]
    property three_d_secure : String?

    @[JSON::Field(ignore: true)]
    property? three_d_secure_present : Bool = false

    @[JSON::Field(key: "tokenization_method", type: String?, presence: true, ignore_serialize: tokenization_method.nil? && !tokenization_method_present?)]
    property tokenization_method : String?

    @[JSON::Field(ignore: true)]
    property? tokenization_method_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @address_line1_check : String? = nil,
      @address_zip_check : String? = nil,
      @authenticated : Bool? = nil,
      @brand : String? = nil,
      @card : String? = nil,
      @country : String? = nil,
      @customer : String? = nil,
      @cvc_check : String? = nil,
      @dynamic_last4 : String? = nil,
      @exp_month : Int64? = nil,
      @exp_year : Int64? = nil,
      @fingerprint : String? = nil,
      @funding : String? = nil,
      @last4 : String? = nil,
      @name : String? = nil,
      @three_d_secure : String? = nil,
      @tokenization_method : String? = nil
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
    def_equals_and_hash(@address_line1_check, @address_zip_check, @authenticated, @brand, @card, @country, @customer, @cvc_check, @dynamic_last4, @exp_month, @exp_year, @fingerprint, @funding, @last4, @name, @three_d_secure, @tokenization_method)
  end
end
