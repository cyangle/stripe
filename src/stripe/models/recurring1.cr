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
  # The recurring components of a price such as `interval` and `usage_type`.
  class Recurring1
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    @[JSON::Field(key: "interval", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter interval : String? = nil
    ERROR_MESSAGE_FOR_INTERVAL = "invalid value for \"interval\", must be one of [day, month, week, year]."
    VALID_VALUES_FOR_INTERVAL  = StaticArray["day", "month", "week", "year"]

    # Optional properties

    @[JSON::Field(key: "aggregate_usage", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter aggregate_usage : String? = nil
    ERROR_MESSAGE_FOR_AGGREGATE_USAGE = "invalid value for \"aggregate_usage\", must be one of [last_during_period, last_ever, max, sum]."
    VALID_VALUES_FOR_AGGREGATE_USAGE  = StaticArray["last_during_period", "last_ever", "max", "sum"]

    @[JSON::Field(key: "interval_count", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter interval_count : Int64? = nil

    @[JSON::Field(key: "usage_type", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter usage_type : String? = nil
    ERROR_MESSAGE_FOR_USAGE_TYPE = "invalid value for \"usage_type\", must be one of [licensed, metered]."
    VALID_VALUES_FOR_USAGE_TYPE  = StaticArray["licensed", "metered"]

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @interval : String? = nil,
      # Optional properties
      @aggregate_usage : String? = nil,
      @interval_count : Int64? = nil,
      @usage_type : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"interval\" is required and cannot be null") if @interval.nil?

      if _interval = @interval
        invalid_properties.push(ERROR_MESSAGE_FOR_INTERVAL) unless OpenApi::EnumValidator.valid?(_interval, VALID_VALUES_FOR_INTERVAL)
      end
      if _aggregate_usage = @aggregate_usage
        invalid_properties.push(ERROR_MESSAGE_FOR_AGGREGATE_USAGE) unless OpenApi::EnumValidator.valid?(_aggregate_usage, VALID_VALUES_FOR_AGGREGATE_USAGE)
      end

      if _usage_type = @usage_type
        invalid_properties.push(ERROR_MESSAGE_FOR_USAGE_TYPE) unless OpenApi::EnumValidator.valid?(_usage_type, VALID_VALUES_FOR_USAGE_TYPE)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @interval.nil?
      if _interval = @interval
        return false unless OpenApi::EnumValidator.valid?(_interval, VALID_VALUES_FOR_INTERVAL)
      end

      if _aggregate_usage = @aggregate_usage
        return false unless OpenApi::EnumValidator.valid?(_aggregate_usage, VALID_VALUES_FOR_AGGREGATE_USAGE)
      end

      if _usage_type = @usage_type
        return false unless OpenApi::EnumValidator.valid?(_usage_type, VALID_VALUES_FOR_USAGE_TYPE)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] interval Object to be assigned
    def interval=(interval : String?)
      if interval.nil?
        raise ArgumentError.new("\"interval\" is required and cannot be null")
      end
      _interval = interval.not_nil!
      OpenApi::EnumValidator.validate("interval", _interval, VALID_VALUES_FOR_INTERVAL)
      @interval = _interval
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] aggregate_usage Object to be assigned
    def aggregate_usage=(aggregate_usage : String?)
      if aggregate_usage.nil?
        return @aggregate_usage = nil
      end
      _aggregate_usage = aggregate_usage.not_nil!
      OpenApi::EnumValidator.validate("aggregate_usage", _aggregate_usage, VALID_VALUES_FOR_AGGREGATE_USAGE)
      @aggregate_usage = _aggregate_usage
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] interval_count Object to be assigned
    def interval_count=(interval_count : Int64?)
      if interval_count.nil?
        return @interval_count = nil
      end
      _interval_count = interval_count.not_nil!
      @interval_count = _interval_count
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] usage_type Object to be assigned
    def usage_type=(usage_type : String?)
      if usage_type.nil?
        return @usage_type = nil
      end
      _usage_type = usage_type.not_nil!
      OpenApi::EnumValidator.validate("usage_type", _usage_type, VALID_VALUES_FOR_USAGE_TYPE)
      @usage_type = _usage_type
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@interval, @aggregate_usage, @interval_count, @usage_type)
  end
end
