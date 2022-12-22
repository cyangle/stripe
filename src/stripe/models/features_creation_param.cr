#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-11-15
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module Stripe
  class FeaturesCreationParam
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "customer_update", type: Stripe::CustomerUpdateCreationParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter customer_update : Stripe::CustomerUpdateCreationParam? = nil

    @[JSON::Field(key: "invoice_history", type: Stripe::InvoiceListParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter invoice_history : Stripe::InvoiceListParam? = nil

    @[JSON::Field(key: "payment_method_update", type: Stripe::PaymentMethodUpdateParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter payment_method_update : Stripe::PaymentMethodUpdateParam? = nil

    @[JSON::Field(key: "subscription_cancel", type: Stripe::SubscriptionCancelCreationParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter subscription_cancel : Stripe::SubscriptionCancelCreationParam? = nil

    @[JSON::Field(key: "subscription_pause", type: Stripe::SubscriptionPauseParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter subscription_pause : Stripe::SubscriptionPauseParam? = nil

    @[JSON::Field(key: "subscription_update", type: Stripe::SubscriptionUpdateCreationParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter subscription_update : Stripe::SubscriptionUpdateCreationParam? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @customer_update : Stripe::CustomerUpdateCreationParam? = nil,
      @invoice_history : Stripe::InvoiceListParam? = nil,
      @payment_method_update : Stripe::PaymentMethodUpdateParam? = nil,
      @subscription_cancel : Stripe::SubscriptionCancelCreationParam? = nil,
      @subscription_pause : Stripe::SubscriptionPauseParam? = nil,
      @subscription_update : Stripe::SubscriptionUpdateCreationParam? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_customer_update = @customer_update).nil?
        invalid_properties.concat(_customer_update.list_invalid_properties_for("customer_update")) if _customer_update.is_a?(OpenApi::Validatable)
      end
      unless (_invoice_history = @invoice_history).nil?
        invalid_properties.concat(_invoice_history.list_invalid_properties_for("invoice_history")) if _invoice_history.is_a?(OpenApi::Validatable)
      end
      unless (_payment_method_update = @payment_method_update).nil?
        invalid_properties.concat(_payment_method_update.list_invalid_properties_for("payment_method_update")) if _payment_method_update.is_a?(OpenApi::Validatable)
      end
      unless (_subscription_cancel = @subscription_cancel).nil?
        invalid_properties.concat(_subscription_cancel.list_invalid_properties_for("subscription_cancel")) if _subscription_cancel.is_a?(OpenApi::Validatable)
      end
      unless (_subscription_pause = @subscription_pause).nil?
        invalid_properties.concat(_subscription_pause.list_invalid_properties_for("subscription_pause")) if _subscription_pause.is_a?(OpenApi::Validatable)
      end
      unless (_subscription_update = @subscription_update).nil?
        invalid_properties.concat(_subscription_update.list_invalid_properties_for("subscription_update")) if _subscription_update.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_customer_update = @customer_update).nil?
        return false if _customer_update.is_a?(OpenApi::Validatable) && !_customer_update.valid?
      end

      unless (_invoice_history = @invoice_history).nil?
        return false if _invoice_history.is_a?(OpenApi::Validatable) && !_invoice_history.valid?
      end

      unless (_payment_method_update = @payment_method_update).nil?
        return false if _payment_method_update.is_a?(OpenApi::Validatable) && !_payment_method_update.valid?
      end

      unless (_subscription_cancel = @subscription_cancel).nil?
        return false if _subscription_cancel.is_a?(OpenApi::Validatable) && !_subscription_cancel.valid?
      end

      unless (_subscription_pause = @subscription_pause).nil?
        return false if _subscription_pause.is_a?(OpenApi::Validatable) && !_subscription_pause.valid?
      end

      unless (_subscription_update = @subscription_update).nil?
        return false if _subscription_update.is_a?(OpenApi::Validatable) && !_subscription_update.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] customer_update Object to be assigned
    def customer_update=(customer_update : Stripe::CustomerUpdateCreationParam?)
      if customer_update.nil?
        return @customer_update = nil
      end
      _customer_update = customer_update.not_nil!
      _customer_update.validate if _customer_update.is_a?(OpenApi::Validatable)
      @customer_update = _customer_update
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] invoice_history Object to be assigned
    def invoice_history=(invoice_history : Stripe::InvoiceListParam?)
      if invoice_history.nil?
        return @invoice_history = nil
      end
      _invoice_history = invoice_history.not_nil!
      _invoice_history.validate if _invoice_history.is_a?(OpenApi::Validatable)
      @invoice_history = _invoice_history
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_method_update Object to be assigned
    def payment_method_update=(payment_method_update : Stripe::PaymentMethodUpdateParam?)
      if payment_method_update.nil?
        return @payment_method_update = nil
      end
      _payment_method_update = payment_method_update.not_nil!
      _payment_method_update.validate if _payment_method_update.is_a?(OpenApi::Validatable)
      @payment_method_update = _payment_method_update
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] subscription_cancel Object to be assigned
    def subscription_cancel=(subscription_cancel : Stripe::SubscriptionCancelCreationParam?)
      if subscription_cancel.nil?
        return @subscription_cancel = nil
      end
      _subscription_cancel = subscription_cancel.not_nil!
      _subscription_cancel.validate if _subscription_cancel.is_a?(OpenApi::Validatable)
      @subscription_cancel = _subscription_cancel
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] subscription_pause Object to be assigned
    def subscription_pause=(subscription_pause : Stripe::SubscriptionPauseParam?)
      if subscription_pause.nil?
        return @subscription_pause = nil
      end
      _subscription_pause = subscription_pause.not_nil!
      _subscription_pause.validate if _subscription_pause.is_a?(OpenApi::Validatable)
      @subscription_pause = _subscription_pause
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] subscription_update Object to be assigned
    def subscription_update=(subscription_update : Stripe::SubscriptionUpdateCreationParam?)
      if subscription_update.nil?
        return @subscription_update = nil
      end
      _subscription_update = subscription_update.not_nil!
      _subscription_update.validate if _subscription_update.is_a?(OpenApi::Validatable)
      @subscription_update = _subscription_update
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@customer_update, @invoice_history, @payment_method_update, @subscription_cancel, @subscription_pause, @subscription_update)
  end
end
