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
  class PortalFeatures
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    @[JSON::Field(key: "customer_update", type: PortalCustomerUpdate)]
    property customer_update : PortalCustomerUpdate

    @[JSON::Field(key: "invoice_history", type: PortalInvoiceList)]
    property invoice_history : PortalInvoiceList

    @[JSON::Field(key: "payment_method_update", type: PortalPaymentMethodUpdate)]
    property payment_method_update : PortalPaymentMethodUpdate

    @[JSON::Field(key: "subscription_cancel", type: PortalSubscriptionCancel)]
    property subscription_cancel : PortalSubscriptionCancel

    @[JSON::Field(key: "subscription_pause", type: PortalSubscriptionPause)]
    property subscription_pause : PortalSubscriptionPause

    @[JSON::Field(key: "subscription_update", type: PortalSubscriptionUpdate)]
    property subscription_update : PortalSubscriptionUpdate

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @customer_update : PortalCustomerUpdate,
      @invoice_history : PortalInvoiceList,
      @payment_method_update : PortalPaymentMethodUpdate,
      @subscription_cancel : PortalSubscriptionCancel,
      @subscription_pause : PortalSubscriptionPause,
      @subscription_update : PortalSubscriptionUpdate
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
    def_equals_and_hash(@customer_update, @invoice_history, @payment_method_update, @subscription_cancel, @subscription_pause, @subscription_update)
  end
end
