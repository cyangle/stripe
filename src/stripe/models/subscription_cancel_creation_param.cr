#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./subscription_cancellation_reason_creation_param"

module Stripe
  class SubscriptionCancelCreationParam
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Whether the feature is enabled.
    @[JSON::Field(key: "enabled", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter enabled : Bool? = nil

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "cancellation_reason", type: Stripe::SubscriptionCancellationReasonCreationParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter cancellation_reason : Stripe::SubscriptionCancellationReasonCreationParam? = nil

    # Whether to cancel subscriptions immediately or at the end of the billing period.
    @[JSON::Field(key: "mode", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter mode : String? = nil
    ERROR_MESSAGE_FOR_MODE = "invalid value for \"mode\", must be one of [at_period_end, immediately]."
    VALID_VALUES_FOR_MODE  = String.static_array("at_period_end", "immediately")

    # Whether to create prorations when canceling subscriptions. Possible values are `none` and `create_prorations`, which is only compatible with `mode=immediately`. No prorations are generated when canceling a subscription at the end of its natural billing period.
    @[JSON::Field(key: "proration_behavior", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter proration_behavior : String? = nil
    ERROR_MESSAGE_FOR_PRORATION_BEHAVIOR = "invalid value for \"proration_behavior\", must be one of [always_invoice, create_prorations, none]."
    VALID_VALUES_FOR_PRORATION_BEHAVIOR  = String.static_array("always_invoice", "create_prorations", "none")

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @enabled : Bool? = nil,
      # Optional properties
      @cancellation_reason : Stripe::SubscriptionCancellationReasonCreationParam? = nil,
      @mode : String? = nil,
      @proration_behavior : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"enabled\" is required and cannot be null") if @enabled.nil?

      unless (_cancellation_reason = @cancellation_reason).nil?
        invalid_properties.concat(_cancellation_reason.list_invalid_properties_for("cancellation_reason")) if _cancellation_reason.is_a?(OpenApi::Validatable)
      end
      unless (_mode = @mode).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_MODE) unless OpenApi::EnumValidator.valid?(_mode, VALID_VALUES_FOR_MODE)
      end
      unless (_proration_behavior = @proration_behavior).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_PRORATION_BEHAVIOR) unless OpenApi::EnumValidator.valid?(_proration_behavior, VALID_VALUES_FOR_PRORATION_BEHAVIOR)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @enabled.nil?

      unless (_cancellation_reason = @cancellation_reason).nil?
        return false if _cancellation_reason.is_a?(OpenApi::Validatable) && !_cancellation_reason.valid?
      end

      unless (_mode = @mode).nil?
        return false unless OpenApi::EnumValidator.valid?(_mode, VALID_VALUES_FOR_MODE)
      end

      unless (_proration_behavior = @proration_behavior).nil?
        return false unless OpenApi::EnumValidator.valid?(_proration_behavior, VALID_VALUES_FOR_PRORATION_BEHAVIOR)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] enabled Object to be assigned
    def enabled=(new_value : Bool?)
      raise ArgumentError.new("\"enabled\" is required and cannot be null") if new_value.nil?

      @enabled = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cancellation_reason Object to be assigned
    def cancellation_reason=(new_value : Stripe::SubscriptionCancellationReasonCreationParam?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @cancellation_reason = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] mode Object to be assigned
    def mode=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("mode", new_value, VALID_VALUES_FOR_MODE)
      end

      @mode = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] proration_behavior Object to be assigned
    def proration_behavior=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("proration_behavior", new_value, VALID_VALUES_FOR_PRORATION_BEHAVIOR)
      end

      @proration_behavior = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@enabled, @cancellation_reason, @mode, @proration_behavior)
  end
end
