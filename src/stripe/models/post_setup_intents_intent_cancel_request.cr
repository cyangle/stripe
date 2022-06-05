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
  class PostSetupIntentsIntentCancelRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    # Reason for canceling this SetupIntent. Possible values are `abandoned`, `requested_by_customer`, or `duplicate`
    @[JSON::Field(key: "cancellation_reason", type: String?, presence: true, ignore_serialize: cancellation_reason.nil? && !cancellation_reason_present?)]
    getter cancellation_reason : String?

    @[JSON::Field(ignore: true)]
    property? cancellation_reason_present : Bool = false

    ENUM_VALIDATOR_FOR_CANCELLATION_REASON = EnumValidator.new("cancellation_reason", "String", ["abandoned", "duplicate", "requested_by_customer"])

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, presence: true, ignore_serialize: expand.nil? && !expand_present?)]
    property expand : Array(String)?

    @[JSON::Field(ignore: true)]
    property? expand_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @cancellation_reason : String? = nil,
      @expand : Array(String)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_CANCELLATION_REASON.error_message) unless ENUM_VALIDATOR_FOR_CANCELLATION_REASON.valid?(@cancellation_reason)

      if !@cancellation_reason.nil? && @cancellation_reason.to_s.size > 5000
        invalid_properties.push("invalid value for \"cancellation_reason\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR_CANCELLATION_REASON.valid?(@cancellation_reason)
      return false if !@cancellation_reason.nil? && @cancellation_reason.to_s.size > 5000

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cancellation_reason Object to be assigned
    def cancellation_reason=(cancellation_reason)
      ENUM_VALIDATOR_FOR_CANCELLATION_REASON.valid!(cancellation_reason)
      @cancellation_reason = cancellation_reason
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
    def_equals_and_hash(@cancellation_reason, @expand)
  end
end
