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
  class DisputeEvidenceDetails
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # Whether evidence has been staged for this dispute.
    @[JSON::Field(key: "has_evidence", type: Bool)]
    property has_evidence : Bool

    # Whether the last evidence submission was submitted past the due date. Defaults to `false` if no evidence submissions have occurred. If `true`, then delivery of the latest evidence is *not* guaranteed.
    @[JSON::Field(key: "past_due", type: Bool)]
    property past_due : Bool

    # The number of times evidence has been submitted. Typically, you may only submit evidence once.
    @[JSON::Field(key: "submission_count", type: Int64)]
    property submission_count : Int64

    # Optional properties

    # Date by which evidence must be submitted in order to successfully challenge dispute. Will be null if the customer's bank or credit card company doesn't allow a response for this particular dispute.
    @[JSON::Field(key: "due_by", type: Int64?, presence: true, ignore_serialize: due_by.nil? && !due_by_present?)]
    property due_by : Int64?

    @[JSON::Field(ignore: true)]
    property? due_by_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *, 
      # Required properties
      @has_evidence : Bool, 
      @past_due : Bool, 
      @submission_count : Int64, 
      # Optional properties
      @due_by : Int64? = nil
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
    def_equals_and_hash(@has_evidence, @past_due, @submission_count, @due_by)
  end
end
