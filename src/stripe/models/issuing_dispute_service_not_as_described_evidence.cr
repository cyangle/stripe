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
  class IssuingDisputeServiceNotAsDescribedEvidence
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    @[JSON::Field(key: "additional_documentation", type: IssuingDisputeCanceledEvidenceAdditionalDocumentation?, presence: true, ignore_serialize: additional_documentation.nil? && !additional_documentation_present?)]
    property additional_documentation : IssuingDisputeCanceledEvidenceAdditionalDocumentation?

    @[JSON::Field(ignore: true)]
    property? additional_documentation_present : Bool = false

    # Date when order was canceled.
    @[JSON::Field(key: "canceled_at", type: Int64?, presence: true, ignore_serialize: canceled_at.nil? && !canceled_at_present?)]
    property canceled_at : Int64?

    @[JSON::Field(ignore: true)]
    property? canceled_at_present : Bool = false

    # Reason for canceling the order.
    @[JSON::Field(key: "cancellation_reason", type: String?, presence: true, ignore_serialize: cancellation_reason.nil? && !cancellation_reason_present?)]
    getter cancellation_reason : String?

    @[JSON::Field(ignore: true)]
    property? cancellation_reason_present : Bool = false

    # Explanation of why the cardholder is disputing this transaction.
    @[JSON::Field(key: "explanation", type: String?, presence: true, ignore_serialize: explanation.nil? && !explanation_present?)]
    getter explanation : String?

    @[JSON::Field(ignore: true)]
    property? explanation_present : Bool = false

    # Date when the product was received.
    @[JSON::Field(key: "received_at", type: Int64?, presence: true, ignore_serialize: received_at.nil? && !received_at_present?)]
    property received_at : Int64?

    @[JSON::Field(ignore: true)]
    property? received_at_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @additional_documentation : IssuingDisputeCanceledEvidenceAdditionalDocumentation? = nil,
      @canceled_at : Int64? = nil,
      @cancellation_reason : String? = nil,
      @explanation : String? = nil,
      @received_at : Int64? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if !@cancellation_reason.nil? && @cancellation_reason.to_s.size > 5000
        invalid_properties.push("invalid value for \"cancellation_reason\", the character length must be smaller than or equal to 5000.")
      end

      if !@explanation.nil? && @explanation.to_s.size > 5000
        invalid_properties.push("invalid value for \"explanation\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@cancellation_reason.nil? && @cancellation_reason.to_s.size > 5000
      return false if !@explanation.nil? && @explanation.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] cancellation_reason Value to be assigned
    def cancellation_reason=(cancellation_reason : String?)
      if !cancellation_reason.nil? && cancellation_reason.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"cancellation_reason\", the character length must be smaller than or equal to 5000.")
      end

      @cancellation_reason = cancellation_reason
    end

    # Custom attribute writer method with validation
    # @param [Object] explanation Value to be assigned
    def explanation=(explanation : String?)
      if !explanation.nil? && explanation.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"explanation\", the character length must be smaller than or equal to 5000.")
      end

      @explanation = explanation
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
    def_equals_and_hash(@additional_documentation, @additional_documentation_present, @canceled_at, @canceled_at_present, @cancellation_reason, @cancellation_reason_present, @explanation, @explanation_present, @received_at, @received_at_present)
  end
end
