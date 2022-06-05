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
  # Documents that may be submitted to satisfy various informational requests.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class PersonDocumentsSpecs
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    @[JSON::Field(key: "company_authorization", type: DocumentsParam?, presence: true, ignore_serialize: company_authorization.nil? && !company_authorization_present?)]
    property company_authorization : DocumentsParam?

    @[JSON::Field(ignore: true)]
    property? company_authorization_present : Bool = false

    @[JSON::Field(key: "passport", type: DocumentsParam?, presence: true, ignore_serialize: passport.nil? && !passport_present?)]
    property passport : DocumentsParam?

    @[JSON::Field(ignore: true)]
    property? passport_present : Bool = false

    @[JSON::Field(key: "visa", type: DocumentsParam?, presence: true, ignore_serialize: visa.nil? && !visa_present?)]
    property visa : DocumentsParam?

    @[JSON::Field(ignore: true)]
    property? visa_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @company_authorization : DocumentsParam? = nil,
      @passport : DocumentsParam? = nil,
      @visa : DocumentsParam? = nil
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
    def_equals_and_hash(@company_authorization, @passport, @visa)
  end
end
