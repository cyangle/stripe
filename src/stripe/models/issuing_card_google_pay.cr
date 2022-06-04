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
  # 
  @[JSON::Serializable::Options(emit_nulls: true)]
  class IssuingCardGooglePay
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # Google Pay Eligibility
    @[JSON::Field(key: "eligible", type: Bool)]
    property eligible : Bool

    # Optional properties

    # Reason the card is ineligible for Google Pay
    @[JSON::Field(key: "ineligible_reason", type: String?, presence: true, ignore_serialize: ineligible_reason.nil? && !ineligible_reason_present?)]
    getter ineligible_reason : String?

    @[JSON::Field(ignore: true)]
    property? ineligible_reason_present : Bool = false

    ENUM_VALIDATOR_FOR_INELIGIBLE_REASON = EnumValidator.new("ineligible_reason", "String", ["missing_agreement", "missing_cardholder_contact", "unsupported_region"])

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *, 
      # Required properties
      @eligible : Bool, 
      # Optional properties
      @ineligible_reason : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_INELIGIBLE_REASON.error_message) unless ENUM_VALIDATOR_FOR_INELIGIBLE_REASON.valid?(@ineligible_reason)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR_INELIGIBLE_REASON.valid?(@ineligible_reason)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] ineligible_reason Object to be assigned
    def ineligible_reason=(ineligible_reason)
      ENUM_VALIDATOR_FOR_INELIGIBLE_REASON.valid!(ineligible_reason)
      @ineligible_reason = ineligible_reason
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
    def_equals_and_hash(@eligible, @ineligible_reason)
  end
end
