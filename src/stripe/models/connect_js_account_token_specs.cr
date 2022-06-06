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
  # Information for the account this token will represent.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class ConnectJsAccountTokenSpecs
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    @[JSON::Field(key: "business_type", type: String?, presence: true, ignore_serialize: business_type.nil? && !business_type_present?)]
    getter business_type : String?

    @[JSON::Field(ignore: true)]
    property? business_type_present : Bool = false

    ENUM_VALIDATOR_FOR_BUSINESS_TYPE = EnumValidator.new("business_type", "String", ["company", "government_entity", "individual", "non_profit"])

    @[JSON::Field(key: "company", type: ConnectJsAccountTokenCompanySpecs?, presence: true, ignore_serialize: company.nil? && !company_present?)]
    property company : ConnectJsAccountTokenCompanySpecs?

    @[JSON::Field(ignore: true)]
    property? company_present : Bool = false

    @[JSON::Field(key: "individual", type: IndividualSpecs1?, presence: true, ignore_serialize: individual.nil? && !individual_present?)]
    property individual : IndividualSpecs1?

    @[JSON::Field(ignore: true)]
    property? individual_present : Bool = false

    @[JSON::Field(key: "tos_shown_and_accepted", type: Bool?, presence: true, ignore_serialize: tos_shown_and_accepted.nil? && !tos_shown_and_accepted_present?)]
    property tos_shown_and_accepted : Bool?

    @[JSON::Field(ignore: true)]
    property? tos_shown_and_accepted_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @business_type : String? = nil,
      @company : ConnectJsAccountTokenCompanySpecs? = nil,
      @individual : IndividualSpecs1? = nil,
      @tos_shown_and_accepted : Bool? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_BUSINESS_TYPE.error_message) unless ENUM_VALIDATOR_FOR_BUSINESS_TYPE.valid?(@business_type)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR_BUSINESS_TYPE.valid?(@business_type)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] business_type Object to be assigned
    def business_type=(business_type : String?)
      ENUM_VALIDATOR_FOR_BUSINESS_TYPE.valid!(business_type)
      @business_type = business_type
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
    def_equals_and_hash(@business_type, @business_type_present, @company, @company_present, @individual, @individual_present, @tos_shown_and_accepted, @tos_shown_and_accepted_present)
  end
end
