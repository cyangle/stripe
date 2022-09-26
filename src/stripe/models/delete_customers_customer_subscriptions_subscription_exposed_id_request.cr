#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-08-01
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module Stripe
  class DeleteCustomersCustomerSubscriptionsSubscriptionExposedIdRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Optional properties

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    # Can be set to `true` if `at_period_end` is not set to `true`. Will generate a final invoice that invoices for any un-invoiced metered usage and new/pending proration invoice items.
    @[JSON::Field(key: "invoice_now", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter invoice_now : Bool? = nil

    # Can be set to `true` if `at_period_end` is not set to `true`. Will generate a proration invoice item that credits remaining unused time until the subscription period end.
    @[JSON::Field(key: "prorate", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter prorate : Bool? = nil

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

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expand Object to be assigned
    def expand=(expand : Array(String)?)
      if expand.nil?
        return @expand = nil
      end
      @expand = expand
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] invoice_now Object to be assigned
    def invoice_now=(invoice_now : Bool?)
      if invoice_now.nil?
        return @invoice_now = nil
      end
      @invoice_now = invoice_now
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] prorate Object to be assigned
    def prorate=(prorate : Bool?)
      if prorate.nil?
        return @prorate = nil
      end
      @prorate = prorate
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
    def_equals_and_hash(@expand, @invoice_now, @prorate)
  end
end
