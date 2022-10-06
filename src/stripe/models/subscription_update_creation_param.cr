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
  class SubscriptionUpdateCreationParam
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "default_allowed_updates", type: Stripe::SubscriptionUpdateCreationParamDefaultAllowedUpdates?, default: nil, required: true, nullable: false, emit_null: false)]
    getter default_allowed_updates : Stripe::SubscriptionUpdateCreationParamDefaultAllowedUpdates? = nil

    @[JSON::Field(key: "enabled", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter enabled : Bool? = nil

    @[JSON::Field(key: "products", type: Stripe::SubscriptionUpdateCreationParamProducts?, default: nil, required: true, nullable: false, emit_null: false)]
    getter products : Stripe::SubscriptionUpdateCreationParamProducts? = nil

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "proration_behavior", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter proration_behavior : String? = nil
    ERROR_MESSAGE_FOR_PRORATION_BEHAVIOR = "invalid value for \"proration_behavior\", must be one of [always_invoice, create_prorations, none]."
    VALID_VALUES_FOR_PRORATION_BEHAVIOR  = String.static_array("always_invoice", "create_prorations", "none")

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @default_allowed_updates : Stripe::SubscriptionUpdateCreationParamDefaultAllowedUpdates? = nil,
      @enabled : Bool? = nil,
      @products : Stripe::SubscriptionUpdateCreationParamProducts? = nil,
      # Optional properties
      @proration_behavior : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"default_allowed_updates\" is required and cannot be null") if @default_allowed_updates.nil?

      unless (_default_allowed_updates = @default_allowed_updates).nil?
        invalid_properties.concat(_default_allowed_updates.list_invalid_properties_for("default_allowed_updates")) if _default_allowed_updates.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"enabled\" is required and cannot be null") if @enabled.nil?

      invalid_properties.push("\"products\" is required and cannot be null") if @products.nil?

      unless (_products = @products).nil?
        invalid_properties.concat(_products.list_invalid_properties_for("products")) if _products.is_a?(OpenApi::Validatable)
      end
      unless (_proration_behavior = @proration_behavior).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_PRORATION_BEHAVIOR) unless OpenApi::EnumValidator.valid?(_proration_behavior, VALID_VALUES_FOR_PRORATION_BEHAVIOR)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @default_allowed_updates.nil?
      unless (_default_allowed_updates = @default_allowed_updates).nil?
        return false if _default_allowed_updates.is_a?(OpenApi::Validatable) && !_default_allowed_updates.valid?
      end

      return false if @enabled.nil?

      return false if @products.nil?
      unless (_products = @products).nil?
        return false if _products.is_a?(OpenApi::Validatable) && !_products.valid?
      end

      unless (_proration_behavior = @proration_behavior).nil?
        return false unless OpenApi::EnumValidator.valid?(_proration_behavior, VALID_VALUES_FOR_PRORATION_BEHAVIOR)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] default_allowed_updates Object to be assigned
    def default_allowed_updates=(default_allowed_updates : Stripe::SubscriptionUpdateCreationParamDefaultAllowedUpdates?)
      if default_allowed_updates.nil?
        raise ArgumentError.new("\"default_allowed_updates\" is required and cannot be null")
      end
      _default_allowed_updates = default_allowed_updates.not_nil!
      _default_allowed_updates.validate if _default_allowed_updates.is_a?(OpenApi::Validatable)
      @default_allowed_updates = _default_allowed_updates
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] enabled Object to be assigned
    def enabled=(enabled : Bool?)
      if enabled.nil?
        raise ArgumentError.new("\"enabled\" is required and cannot be null")
      end
      _enabled = enabled.not_nil!
      @enabled = _enabled
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] products Object to be assigned
    def products=(products : Stripe::SubscriptionUpdateCreationParamProducts?)
      if products.nil?
        raise ArgumentError.new("\"products\" is required and cannot be null")
      end
      _products = products.not_nil!
      _products.validate if _products.is_a?(OpenApi::Validatable)
      @products = _products
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] proration_behavior Object to be assigned
    def proration_behavior=(proration_behavior : String?)
      if proration_behavior.nil?
        return @proration_behavior = nil
      end
      _proration_behavior = proration_behavior.not_nil!
      OpenApi::EnumValidator.validate("proration_behavior", _proration_behavior, VALID_VALUES_FOR_PRORATION_BEHAVIOR)
      @proration_behavior = _proration_behavior
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@default_allowed_updates, @enabled, @products, @proration_behavior)
  end
end
