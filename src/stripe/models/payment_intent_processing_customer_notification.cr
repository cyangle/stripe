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
  class PaymentIntentProcessingCustomerNotification
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    # Whether customer approval has been requested for this payment. For payments greater than INR 5000 or mandate amount, the customer must provide explicit approval of the payment with their bank.
    @[JSON::Field(key: "approval_requested", type: Bool?, presence: true, ignore_serialize: approval_requested.nil? && !approval_requested_present?)]
    property approval_requested : Bool?

    @[JSON::Field(ignore: true)]
    property? approval_requested_present : Bool = false

    # If customer approval is required, they need to provide approval before this time.
    @[JSON::Field(key: "completes_at", type: Int64?, presence: true, ignore_serialize: completes_at.nil? && !completes_at_present?)]
    property completes_at : Int64?

    @[JSON::Field(ignore: true)]
    property? completes_at_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @approval_requested : Bool? = nil,
      @completes_at : Int64? = nil
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
    def_equals_and_hash(@approval_requested, @completes_at)
  end
end
