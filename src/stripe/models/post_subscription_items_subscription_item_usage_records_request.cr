#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./post_subscription_items_subscription_item_usage_records_request_timestamp"

module Stripe
  class PostSubscriptionItemsSubscriptionItemUsageRecordsRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The usage quantity for the specified timestamp.
    @[JSON::Field(key: "quantity", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter quantity : Int64? = nil

    # End of Required Properties

    # Optional Properties

    # Valid values are `increment` (default) or `set`. When using `increment` the specified `quantity` will be added to the usage at the specified timestamp. The `set` action will overwrite the usage quantity at that timestamp. If the subscription has [billing thresholds](https://stripe.com/docs/api/subscriptions/object#subscription_object-billing_thresholds), `increment` is the only allowed value.
    @[JSON::Field(key: "action", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter action : String? = nil
    ERROR_MESSAGE_FOR_ACTION = "invalid value for \"action\", must be one of [increment, set]."
    VALID_VALUES_FOR_ACTION  = String.static_array("increment", "set")

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    @[JSON::Field(key: "timestamp", type: Stripe::PostSubscriptionItemsSubscriptionItemUsageRecordsRequestTimestamp?, default: nil, required: false, nullable: false, emit_null: false)]
    getter timestamp : Stripe::PostSubscriptionItemsSubscriptionItemUsageRecordsRequestTimestamp? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @quantity : Int64? = nil,
      # Optional properties
      @action : String? = nil,
      @expand : Array(String)? = nil,
      @timestamp : Stripe::PostSubscriptionItemsSubscriptionItemUsageRecordsRequestTimestamp? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"quantity\" is required and cannot be null") if @quantity.nil?

      unless (_action = @action).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_ACTION) unless OpenApi::EnumValidator.valid?(_action, VALID_VALUES_FOR_ACTION)
      end

      unless (_timestamp = @timestamp).nil?
        invalid_properties.concat(_timestamp.list_invalid_properties_for("timestamp")) if _timestamp.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @quantity.nil?

      unless (_action = @action).nil?
        return false unless OpenApi::EnumValidator.valid?(_action, VALID_VALUES_FOR_ACTION)
      end

      unless (_timestamp = @timestamp).nil?
        return false if _timestamp.is_a?(OpenApi::Validatable) && !_timestamp.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] quantity Object to be assigned
    def quantity=(new_value : Int64?)
      raise ArgumentError.new("\"quantity\" is required and cannot be null") if new_value.nil?

      @quantity = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] action Object to be assigned
    def action=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("action", new_value, VALID_VALUES_FOR_ACTION)
      end

      @action = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expand Object to be assigned
    def expand=(new_value : Array(String)?)
      @expand = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] timestamp Object to be assigned
    def timestamp=(new_value : Stripe::PostSubscriptionItemsSubscriptionItemUsageRecordsRequestTimestamp?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @timestamp = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@quantity, @action, @expand, @timestamp)
  end
end
