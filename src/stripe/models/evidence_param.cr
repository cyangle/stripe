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
  # Evidence provided for the dispute.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class EvidenceParam
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    @[JSON::Field(key: "canceled", type: EvidenceParamCanceled?, presence: true, ignore_serialize: canceled.nil? && !canceled_present?)]
    property canceled : EvidenceParamCanceled?

    @[JSON::Field(ignore: true)]
    property? canceled_present : Bool = false

    @[JSON::Field(key: "duplicate", type: EvidenceParamDuplicate?, presence: true, ignore_serialize: duplicate.nil? && !duplicate_present?)]
    property duplicate : EvidenceParamDuplicate?

    @[JSON::Field(ignore: true)]
    property? duplicate_present : Bool = false

    @[JSON::Field(key: "fraudulent", type: EvidenceParamFraudulent?, presence: true, ignore_serialize: fraudulent.nil? && !fraudulent_present?)]
    property fraudulent : EvidenceParamFraudulent?

    @[JSON::Field(ignore: true)]
    property? fraudulent_present : Bool = false

    @[JSON::Field(key: "merchandise_not_as_described", type: EvidenceParamMerchandiseNotAsDescribed?, presence: true, ignore_serialize: merchandise_not_as_described.nil? && !merchandise_not_as_described_present?)]
    property merchandise_not_as_described : EvidenceParamMerchandiseNotAsDescribed?

    @[JSON::Field(ignore: true)]
    property? merchandise_not_as_described_present : Bool = false

    @[JSON::Field(key: "not_received", type: EvidenceParamNotReceived?, presence: true, ignore_serialize: not_received.nil? && !not_received_present?)]
    property not_received : EvidenceParamNotReceived?

    @[JSON::Field(ignore: true)]
    property? not_received_present : Bool = false

    @[JSON::Field(key: "other", type: EvidenceParamOther?, presence: true, ignore_serialize: other.nil? && !other_present?)]
    property other : EvidenceParamOther?

    @[JSON::Field(ignore: true)]
    property? other_present : Bool = false

    @[JSON::Field(key: "reason", type: String?, presence: true, ignore_serialize: reason.nil? && !reason_present?)]
    getter reason : String?

    @[JSON::Field(ignore: true)]
    property? reason_present : Bool = false

    ENUM_VALIDATOR_FOR_REASON = EnumValidator.new("reason", "String", ["canceled", "duplicate", "fraudulent", "merchandise_not_as_described", "not_received", "other", "service_not_as_described"])

    @[JSON::Field(key: "service_not_as_described", type: EvidenceParamServiceNotAsDescribed?, presence: true, ignore_serialize: service_not_as_described.nil? && !service_not_as_described_present?)]
    property service_not_as_described : EvidenceParamServiceNotAsDescribed?

    @[JSON::Field(ignore: true)]
    property? service_not_as_described_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @canceled : EvidenceParamCanceled? = nil,
      @duplicate : EvidenceParamDuplicate? = nil,
      @fraudulent : EvidenceParamFraudulent? = nil,
      @merchandise_not_as_described : EvidenceParamMerchandiseNotAsDescribed? = nil,
      @not_received : EvidenceParamNotReceived? = nil,
      @other : EvidenceParamOther? = nil,
      @reason : String? = nil,
      @service_not_as_described : EvidenceParamServiceNotAsDescribed? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_REASON.error_message) unless ENUM_VALIDATOR_FOR_REASON.valid?(@reason)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR_REASON.valid?(@reason)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] reason Object to be assigned
    def reason=(reason : String?)
      ENUM_VALIDATOR_FOR_REASON.valid!(reason)
      @reason = reason
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
    def_equals_and_hash(@canceled, @canceled_present, @duplicate, @duplicate_present, @fraudulent, @fraudulent_present, @merchandise_not_as_described, @merchandise_not_as_described_present, @not_received, @not_received_present, @other, @other_present, @reason, @reason_present, @service_not_as_described, @service_not_as_described_present)
  end
end
