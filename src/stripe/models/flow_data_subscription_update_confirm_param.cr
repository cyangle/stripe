#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./subscription_update_confirm_discount_params"
require "./subscription_update_confirm_item_params"

module Stripe
  class FlowDataSubscriptionUpdateConfirmParam
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The [subscription item](https://stripe.com/docs/api/subscription_items) to be updated through this flow. Currently, only up to one may be specified and subscriptions with multiple items are not updatable.
    @[JSON::Field(key: "items", type: Array(Stripe::SubscriptionUpdateConfirmItemParams)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter items : Array(Stripe::SubscriptionUpdateConfirmItemParams)? = nil

    # The ID of the subscription to be updated.
    @[JSON::Field(key: "subscription", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter subscription : String? = nil
    MAX_LENGTH_FOR_SUBSCRIPTION = 5000

    # End of Required Properties

    # Optional Properties

    # The coupon or promotion code to apply to this subscription update. Currently, only up to one may be specified.
    @[JSON::Field(key: "discounts", type: Array(Stripe::SubscriptionUpdateConfirmDiscountParams)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter discounts : Array(Stripe::SubscriptionUpdateConfirmDiscountParams)? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @items : Array(Stripe::SubscriptionUpdateConfirmItemParams)? = nil,
      @subscription : String? = nil,
      # Optional properties
      @discounts : Array(Stripe::SubscriptionUpdateConfirmDiscountParams)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"items\" is required and cannot be null") if @items.nil?

      unless (_items = @items).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "items", container: _items)) if _items.is_a?(Array)
      end
      invalid_properties.push("\"subscription\" is required and cannot be null") if @subscription.nil?

      unless (_subscription = @subscription).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("subscription", _subscription.to_s.size, MAX_LENGTH_FOR_SUBSCRIPTION)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_discounts = @discounts).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "discounts", container: _discounts)) if _discounts.is_a?(Array)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @items.nil?
      unless (_items = @items).nil?
        return false if _items.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _items)
      end

      return false if @subscription.nil?
      unless (_subscription = @subscription).nil?
        return false if _subscription.to_s.size > MAX_LENGTH_FOR_SUBSCRIPTION
      end

      unless (_discounts = @discounts).nil?
        return false if _discounts.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _discounts)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] items Object to be assigned
    def items=(new_value : Array(Stripe::SubscriptionUpdateConfirmItemParams)?)
      raise ArgumentError.new("\"items\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::ContainerValidator.validate(container: new_value) if new_value.is_a?(Array)
      end

      @items = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] subscription Object to be assigned
    def subscription=(new_value : String?)
      raise ArgumentError.new("\"subscription\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("subscription", new_value.to_s.size, MAX_LENGTH_FOR_SUBSCRIPTION)
      end

      @subscription = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] discounts Object to be assigned
    def discounts=(new_value : Array(Stripe::SubscriptionUpdateConfirmDiscountParams)?)
      unless new_value.nil?
        OpenApi::ContainerValidator.validate(container: new_value) if new_value.is_a?(Array)
      end

      @discounts = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@items, @subscription, @discounts)
  end
end
