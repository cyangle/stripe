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
  class DeleteCustomersCustomerSubscriptionsSubscriptionExposedIdRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, presence: true, ignore_serialize: expand.nil? && !expand_present?)]
    property expand : Array(String)?

    @[JSON::Field(ignore: true)]
    property? expand_present : Bool = false

    # Can be set to `true` if `at_period_end` is not set to `true`. Will generate a final invoice that invoices for any un-invoiced metered usage and new/pending proration invoice items.
    @[JSON::Field(key: "invoice_now", type: Bool?, presence: true, ignore_serialize: invoice_now.nil? && !invoice_now_present?)]
    property invoice_now : Bool?

    @[JSON::Field(ignore: true)]
    property? invoice_now_present : Bool = false

    # Can be set to `true` if `at_period_end` is not set to `true`. Will generate a proration invoice item that credits remaining unused time until the subscription period end.
    @[JSON::Field(key: "prorate", type: Bool?, presence: true, ignore_serialize: prorate.nil? && !prorate_present?)]
    property prorate : Bool?

    @[JSON::Field(ignore: true)]
    property? prorate_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @expand : Array(String)? = nil,
      @invoice_now : Bool? = nil,
      @prorate : Bool? = nil
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
    def_equals_and_hash(@expand, @expand_present, @invoice_now, @invoice_now_present, @prorate, @prorate_present)
  end
end
