#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./billing_meter_event_adjustment_cancel"

module Stripe
  # A billing meter event adjustment is a resource that allows you to cancel a meter event. For example, you might create a billing meter event adjustment to cancel a meter event that was created in error or attached to the wrong customer.
  class BillingMeterEventAdjustment
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "cancel", type: Stripe::BillingMeterEventAdjustmentCancel?, default: nil, required: true, nullable: true, emit_null: true)]
    getter cancel : Stripe::BillingMeterEventAdjustmentCancel? = nil

    # The name of the meter event. Corresponds with the `event_name` field on a meter.
    @[JSON::Field(key: "event_name", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter event_name : String? = nil
    MAX_LENGTH_FOR_EVENT_NAME = 100

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter livemode : Bool? = nil

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter object : String? = nil
    ERROR_MESSAGE_FOR_OBJECT = "invalid value for \"object\", must be one of [billing.meter_event_adjustment]."
    VALID_VALUES_FOR_OBJECT  = String.static_array("billing.meter_event_adjustment")

    # The meter event adjustment's status.
    @[JSON::Field(key: "status", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter status : String? = nil
    ERROR_MESSAGE_FOR_STATUS = "invalid value for \"status\", must be one of [complete, pending]."
    VALID_VALUES_FOR_STATUS  = String.static_array("complete", "pending")

    # Specifies whether to cancel a single event or a range of events for a time period. Time period cancellation is not supported yet.
    @[JSON::Field(key: "type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter _type : String? = nil
    ERROR_MESSAGE_FOR__TYPE = "invalid value for \"_type\", must be one of [cancel]."
    VALID_VALUES_FOR__TYPE  = String.static_array("cancel")

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @cancel : Stripe::BillingMeterEventAdjustmentCancel? = nil,
      @event_name : String? = nil,
      @livemode : Bool? = nil,
      @object : String? = nil,
      @status : String? = nil,
      @_type : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_cancel = @cancel).nil?
        invalid_properties.concat(_cancel.list_invalid_properties_for("cancel")) if _cancel.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"event_name\" is required and cannot be null") if @event_name.nil?

      unless (_event_name = @event_name).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("event_name", _event_name.to_s.size, MAX_LENGTH_FOR_EVENT_NAME)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"livemode\" is required and cannot be null") if @livemode.nil?

      invalid_properties.push("\"object\" is required and cannot be null") if @object.nil?

      unless (_object = @object).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_OBJECT) unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end
      invalid_properties.push("\"status\" is required and cannot be null") if @status.nil?

      unless (_status = @status).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_STATUS) unless OpenApi::EnumValidator.valid?(_status, VALID_VALUES_FOR_STATUS)
      end
      invalid_properties.push("\"_type\" is required and cannot be null") if @_type.nil?

      unless (__type = @_type).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR__TYPE) unless OpenApi::EnumValidator.valid?(__type, VALID_VALUES_FOR__TYPE)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_cancel = @cancel).nil?
        return false if _cancel.is_a?(OpenApi::Validatable) && !_cancel.valid?
      end

      return false if @event_name.nil?
      unless (_event_name = @event_name).nil?
        return false if _event_name.to_s.size > MAX_LENGTH_FOR_EVENT_NAME
      end

      return false if @livemode.nil?

      return false if @object.nil?
      unless (_object = @object).nil?
        return false unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end

      return false if @status.nil?
      unless (_status = @status).nil?
        return false unless OpenApi::EnumValidator.valid?(_status, VALID_VALUES_FOR_STATUS)
      end

      return false if @_type.nil?
      unless (__type = @_type).nil?
        return false unless OpenApi::EnumValidator.valid?(__type, VALID_VALUES_FOR__TYPE)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cancel Object to be assigned
    def cancel=(new_value : Stripe::BillingMeterEventAdjustmentCancel?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @cancel = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] event_name Object to be assigned
    def event_name=(new_value : String?)
      raise ArgumentError.new("\"event_name\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("event_name", new_value.to_s.size, MAX_LENGTH_FOR_EVENT_NAME)
      end

      @event_name = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] livemode Object to be assigned
    def livemode=(new_value : Bool?)
      raise ArgumentError.new("\"livemode\" is required and cannot be null") if new_value.nil?

      @livemode = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(new_value : String?)
      raise ArgumentError.new("\"object\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::EnumValidator.validate("object", new_value, VALID_VALUES_FOR_OBJECT)
      end

      @object = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(new_value : String?)
      raise ArgumentError.new("\"status\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::EnumValidator.validate("status", new_value, VALID_VALUES_FOR_STATUS)
      end

      @status = new_value
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

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@cancel, @event_name, @livemode, @object, @status, @_type)
  end
end
