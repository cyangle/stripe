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
  #
  class PortalFeatures
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Required properties

    @[JSON::Field(key: "customer_update", type: Stripe::PortalCustomerUpdate?, default: nil, required: true, nullable: false, emit_null: false)]
    getter customer_update : Stripe::PortalCustomerUpdate? = nil

    @[JSON::Field(key: "invoice_history", type: Stripe::PortalInvoiceList?, default: nil, required: true, nullable: false, emit_null: false)]
    getter invoice_history : Stripe::PortalInvoiceList? = nil

    @[JSON::Field(key: "payment_method_update", type: Stripe::PortalPaymentMethodUpdate?, default: nil, required: true, nullable: false, emit_null: false)]
    getter payment_method_update : Stripe::PortalPaymentMethodUpdate? = nil

    @[JSON::Field(key: "subscription_cancel", type: Stripe::PortalSubscriptionCancel?, default: nil, required: true, nullable: false, emit_null: false)]
    getter subscription_cancel : Stripe::PortalSubscriptionCancel? = nil

    @[JSON::Field(key: "subscription_pause", type: Stripe::PortalSubscriptionPause?, default: nil, required: true, nullable: false, emit_null: false)]
    getter subscription_pause : Stripe::PortalSubscriptionPause? = nil

    @[JSON::Field(key: "subscription_update", type: Stripe::PortalSubscriptionUpdate?, default: nil, required: true, nullable: false, emit_null: false)]
    getter subscription_update : Stripe::PortalSubscriptionUpdate? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @customer_update : Stripe::PortalCustomerUpdate? = nil,
      @invoice_history : Stripe::PortalInvoiceList? = nil,
      @payment_method_update : Stripe::PortalPaymentMethodUpdate? = nil,
      @subscription_cancel : Stripe::PortalSubscriptionCancel? = nil,
      @subscription_pause : Stripe::PortalSubscriptionPause? = nil,
      @subscription_update : Stripe::PortalSubscriptionUpdate? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      invalid_properties.push("\"customer_update\" is required and cannot be null") if @customer_update.nil?
      # This is a model customer_update : Stripe::PortalCustomerUpdate?
      invalid_properties.push("\"invoice_history\" is required and cannot be null") if @invoice_history.nil?
      # This is a model invoice_history : Stripe::PortalInvoiceList?
      invalid_properties.push("\"payment_method_update\" is required and cannot be null") if @payment_method_update.nil?
      # This is a model payment_method_update : Stripe::PortalPaymentMethodUpdate?
      invalid_properties.push("\"subscription_cancel\" is required and cannot be null") if @subscription_cancel.nil?
      # This is a model subscription_cancel : Stripe::PortalSubscriptionCancel?
      invalid_properties.push("\"subscription_pause\" is required and cannot be null") if @subscription_pause.nil?
      # This is a model subscription_pause : Stripe::PortalSubscriptionPause?
      invalid_properties.push("\"subscription_update\" is required and cannot be null") if @subscription_update.nil?
      # This is a model subscription_update : Stripe::PortalSubscriptionUpdate?

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @customer_update.nil?
      return false if @invoice_history.nil?
      return false if @payment_method_update.nil?
      return false if @subscription_cancel.nil?
      return false if @subscription_pause.nil?
      return false if @subscription_update.nil?

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] customer_update Object to be assigned
    def customer_update=(customer_update : Stripe::PortalCustomerUpdate?)
      if customer_update.nil?
        raise ArgumentError.new("\"customer_update\" is required and cannot be null")
      end
      @customer_update = customer_update
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] invoice_history Object to be assigned
    def invoice_history=(invoice_history : Stripe::PortalInvoiceList?)
      if invoice_history.nil?
        raise ArgumentError.new("\"invoice_history\" is required and cannot be null")
      end
      @invoice_history = invoice_history
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_method_update Object to be assigned
    def payment_method_update=(payment_method_update : Stripe::PortalPaymentMethodUpdate?)
      if payment_method_update.nil?
        raise ArgumentError.new("\"payment_method_update\" is required and cannot be null")
      end
      @payment_method_update = payment_method_update
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] subscription_cancel Object to be assigned
    def subscription_cancel=(subscription_cancel : Stripe::PortalSubscriptionCancel?)
      if subscription_cancel.nil?
        raise ArgumentError.new("\"subscription_cancel\" is required and cannot be null")
      end
      @subscription_cancel = subscription_cancel
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] subscription_pause Object to be assigned
    def subscription_pause=(subscription_pause : Stripe::PortalSubscriptionPause?)
      if subscription_pause.nil?
        raise ArgumentError.new("\"subscription_pause\" is required and cannot be null")
      end
      @subscription_pause = subscription_pause
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] subscription_update Object to be assigned
    def subscription_update=(subscription_update : Stripe::PortalSubscriptionUpdate?)
      if subscription_update.nil?
        raise ArgumentError.new("\"subscription_update\" is required and cannot be null")
      end
      @subscription_update = subscription_update
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
