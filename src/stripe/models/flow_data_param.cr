#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./flow_data_after_completion_param"
require "./flow_data_subscription_cancel_param"
require "./flow_data_subscription_update_confirm_param"
require "./flow_data_subscription_update_param"

module Stripe
  class FlowDataParam
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Type of flow that the customer will go through.
    @[JSON::Field(key: "type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter _type : String? = nil
    ERROR_MESSAGE_FOR__TYPE = "invalid value for \"_type\", must be one of [payment_method_update, subscription_cancel, subscription_update, subscription_update_confirm]."
    VALID_VALUES_FOR__TYPE  = String.static_array("payment_method_update", "subscription_cancel", "subscription_update", "subscription_update_confirm")

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "after_completion", type: Stripe::FlowDataAfterCompletionParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter after_completion : Stripe::FlowDataAfterCompletionParam? = nil

    @[JSON::Field(key: "subscription_cancel", type: Stripe::FlowDataSubscriptionCancelParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter subscription_cancel : Stripe::FlowDataSubscriptionCancelParam? = nil

    @[JSON::Field(key: "subscription_update", type: Stripe::FlowDataSubscriptionUpdateParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter subscription_update : Stripe::FlowDataSubscriptionUpdateParam? = nil

    @[JSON::Field(key: "subscription_update_confirm", type: Stripe::FlowDataSubscriptionUpdateConfirmParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter subscription_update_confirm : Stripe::FlowDataSubscriptionUpdateConfirmParam? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @_type : String? = nil,
      # Optional properties
      @after_completion : Stripe::FlowDataAfterCompletionParam? = nil,
      @subscription_cancel : Stripe::FlowDataSubscriptionCancelParam? = nil,
      @subscription_update : Stripe::FlowDataSubscriptionUpdateParam? = nil,
      @subscription_update_confirm : Stripe::FlowDataSubscriptionUpdateConfirmParam? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"_type\" is required and cannot be null") if @_type.nil?

      unless (__type = @_type).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR__TYPE) unless OpenApi::EnumValidator.valid?(__type, VALID_VALUES_FOR__TYPE)
      end
      unless (_after_completion = @after_completion).nil?
        invalid_properties.concat(_after_completion.list_invalid_properties_for("after_completion")) if _after_completion.is_a?(OpenApi::Validatable)
      end
      unless (_subscription_cancel = @subscription_cancel).nil?
        invalid_properties.concat(_subscription_cancel.list_invalid_properties_for("subscription_cancel")) if _subscription_cancel.is_a?(OpenApi::Validatable)
      end
      unless (_subscription_update = @subscription_update).nil?
        invalid_properties.concat(_subscription_update.list_invalid_properties_for("subscription_update")) if _subscription_update.is_a?(OpenApi::Validatable)
      end
      unless (_subscription_update_confirm = @subscription_update_confirm).nil?
        invalid_properties.concat(_subscription_update_confirm.list_invalid_properties_for("subscription_update_confirm")) if _subscription_update_confirm.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @_type.nil?
      unless (__type = @_type).nil?
        return false unless OpenApi::EnumValidator.valid?(__type, VALID_VALUES_FOR__TYPE)
      end

      unless (_after_completion = @after_completion).nil?
        return false if _after_completion.is_a?(OpenApi::Validatable) && !_after_completion.valid?
      end

      unless (_subscription_cancel = @subscription_cancel).nil?
        return false if _subscription_cancel.is_a?(OpenApi::Validatable) && !_subscription_cancel.valid?
      end

      unless (_subscription_update = @subscription_update).nil?
        return false if _subscription_update.is_a?(OpenApi::Validatable) && !_subscription_update.valid?
      end

      unless (_subscription_update_confirm = @subscription_update_confirm).nil?
        return false if _subscription_update_confirm.is_a?(OpenApi::Validatable) && !_subscription_update_confirm.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(new_value : String?)
      raise ArgumentError.new("\"_type\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::EnumValidator.validate("_type", new_value, VALID_VALUES_FOR__TYPE)
      end

      @_type = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] after_completion Object to be assigned
    def after_completion=(new_value : Stripe::FlowDataAfterCompletionParam?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @after_completion = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] subscription_cancel Object to be assigned
    def subscription_cancel=(new_value : Stripe::FlowDataSubscriptionCancelParam?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @subscription_cancel = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] subscription_update Object to be assigned
    def subscription_update=(new_value : Stripe::FlowDataSubscriptionUpdateParam?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @subscription_update = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] subscription_update_confirm Object to be assigned
    def subscription_update_confirm=(new_value : Stripe::FlowDataSubscriptionUpdateConfirmParam?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @subscription_update_confirm = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@_type, @after_completion, @subscription_cancel, @subscription_update, @subscription_update_confirm)
  end
end
