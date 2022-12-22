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
  class FlowDataParam
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter _type : String? = nil
    ERROR_MESSAGE_FOR__TYPE = "invalid value for \"_type\", must be one of [payment_method_update, subscription_cancel]."
    VALID_VALUES_FOR__TYPE  = String.static_array("payment_method_update", "subscription_cancel")

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "after_completion", type: Stripe::FlowDataAfterCompletionParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter after_completion : Stripe::FlowDataAfterCompletionParam? = nil

    @[JSON::Field(key: "subscription_cancel", type: Stripe::FlowDataSubscriptionCancelParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter subscription_cancel : Stripe::FlowDataSubscriptionCancelParam? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @_type : String? = nil,
      # Optional properties
      @after_completion : Stripe::FlowDataAfterCompletionParam? = nil,
      @subscription_cancel : Stripe::FlowDataSubscriptionCancelParam? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_after_completion = @after_completion).nil?
        invalid_properties.concat(_after_completion.list_invalid_properties_for("after_completion")) if _after_completion.is_a?(OpenApi::Validatable)
      end
      unless (_subscription_cancel = @subscription_cancel).nil?
        invalid_properties.concat(_subscription_cancel.list_invalid_properties_for("subscription_cancel")) if _subscription_cancel.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_after_completion = @after_completion).nil?
        return false if _after_completion.is_a?(OpenApi::Validatable) && !_after_completion.valid?
      end

      unless (_subscription_cancel = @subscription_cancel).nil?
        return false if _subscription_cancel.is_a?(OpenApi::Validatable) && !_subscription_cancel.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(_type : String?)
      @_type = _type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] after_completion Object to be assigned
    def after_completion=(after_completion : Stripe::FlowDataAfterCompletionParam?)
      if after_completion.nil?
        return @after_completion = nil
      end
      _after_completion = after_completion.not_nil!
      _after_completion.validate if _after_completion.is_a?(OpenApi::Validatable)
      @after_completion = _after_completion
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] subscription_cancel Object to be assigned
    def subscription_cancel=(subscription_cancel : Stripe::FlowDataSubscriptionCancelParam?)
      if subscription_cancel.nil?
        return @subscription_cancel = nil
      end
      _subscription_cancel = subscription_cancel.not_nil!
      _subscription_cancel.validate if _subscription_cancel.is_a?(OpenApi::Validatable)
      @subscription_cancel = _subscription_cancel
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@_type, @after_completion, @subscription_cancel)
  end
end