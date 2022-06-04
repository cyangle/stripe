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
  # Information about the features available in the portal.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class FeaturesUpdatingParam
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    @[JSON::Field(key: "customer_update", type: CustomerUpdateUpdatingParam?, presence: true, ignore_serialize: customer_update.nil? && !customer_update_present?)]
    property customer_update : CustomerUpdateUpdatingParam?

    @[JSON::Field(ignore: true)]
    property? customer_update_present : Bool = false

    @[JSON::Field(key: "invoice_history", type: InvoiceListParam?, presence: true, ignore_serialize: invoice_history.nil? && !invoice_history_present?)]
    property invoice_history : InvoiceListParam?

    @[JSON::Field(ignore: true)]
    property? invoice_history_present : Bool = false

    @[JSON::Field(key: "payment_method_update", type: PaymentMethodUpdateParam?, presence: true, ignore_serialize: payment_method_update.nil? && !payment_method_update_present?)]
    property payment_method_update : PaymentMethodUpdateParam?

    @[JSON::Field(ignore: true)]
    property? payment_method_update_present : Bool = false

    @[JSON::Field(key: "subscription_cancel", type: SubscriptionCancelUpdatingParam?, presence: true, ignore_serialize: subscription_cancel.nil? && !subscription_cancel_present?)]
    property subscription_cancel : SubscriptionCancelUpdatingParam?

    @[JSON::Field(ignore: true)]
    property? subscription_cancel_present : Bool = false

    @[JSON::Field(key: "subscription_pause", type: SubscriptionPauseParam?, presence: true, ignore_serialize: subscription_pause.nil? && !subscription_pause_present?)]
    property subscription_pause : SubscriptionPauseParam?

    @[JSON::Field(ignore: true)]
    property? subscription_pause_present : Bool = false

    @[JSON::Field(key: "subscription_update", type: SubscriptionUpdateUpdatingParam?, presence: true, ignore_serialize: subscription_update.nil? && !subscription_update_present?)]
    property subscription_update : SubscriptionUpdateUpdatingParam?

    @[JSON::Field(ignore: true)]
    property? subscription_update_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @customer_update : CustomerUpdateUpdatingParam? = nil,
      @invoice_history : InvoiceListParam? = nil,
      @payment_method_update : PaymentMethodUpdateParam? = nil,
      @subscription_cancel : SubscriptionCancelUpdatingParam? = nil,
      @subscription_pause : SubscriptionPauseParam? = nil,
      @subscription_update : SubscriptionUpdateUpdatingParam? = nil
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