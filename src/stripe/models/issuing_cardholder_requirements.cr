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
  class IssuingCardholderRequirements
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    # If `disabled_reason` is present, all cards will decline authorizations with `cardholder_verification_required` reason.
    @[JSON::Field(key: "disabled_reason", type: String?, presence: true, ignore_serialize: disabled_reason.nil? && !disabled_reason_present?)]
    getter disabled_reason : String?

    @[JSON::Field(ignore: true)]
    property? disabled_reason_present : Bool = false

    ENUM_VALIDATOR_FOR_DISABLED_REASON = EnumValidator.new("disabled_reason", "String", ["listed", "rejected.listed", "under_review"])

    # Array of fields that need to be collected in order to verify and re-enable the cardholder.
    @[JSON::Field(key: "past_due", type: Array(String)?, presence: true, ignore_serialize: past_due.nil? && !past_due_present?)]
    getter past_due : Array(String)?

    @[JSON::Field(ignore: true)]
    property? past_due_present : Bool = false

    ENUM_VALIDATOR_FOR_PAST_DUE = EnumValidator.new("past_due", "String", ["company.tax_id", "individual.dob.day", "individual.dob.month", "individual.dob.year", "individual.first_name", "individual.last_name", "individual.verification.document"])

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @disabled_reason : String? = nil,
      @past_due : Array(String)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_DISABLED_REASON.error_message) unless ENUM_VALIDATOR_FOR_DISABLED_REASON.valid?(@disabled_reason)

      invalid_properties.push(ENUM_VALIDATOR_FOR_PAST_DUE.error_message) unless ENUM_VALIDATOR_FOR_PAST_DUE.all_valid?(@past_due)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR_DISABLED_REASON.valid?(@disabled_reason)
      return false unless ENUM_VALIDATOR_FOR_PAST_DUE.all_valid?(@past_due)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] disabled_reason Object to be assigned
    def disabled_reason=(disabled_reason : String?)
      ENUM_VALIDATOR_FOR_DISABLED_REASON.valid!(disabled_reason)
      @disabled_reason = disabled_reason
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] past_due Object to be assigned
    def past_due=(past_due : Array(String)?)
      ENUM_VALIDATOR_FOR_PAST_DUE.all_valid!(past_due)
      @past_due = past_due
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
    def_equals_and_hash(@disabled_reason, @disabled_reason_present, @past_due, @past_due_present)
  end
end
