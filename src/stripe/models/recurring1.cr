#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-08-27
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module Stripe
  # The recurring components of a price such as `interval` and `usage_type`.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class Recurring1
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    @[JSON::Field(key: "interval", type: String)]
    getter interval : String

    ENUM_VALIDATOR_FOR_INTERVAL = EnumValidator.new("interval", "String", ["day", "month", "week", "year"])

    # Optional properties

    @[JSON::Field(key: "aggregate_usage", type: String?, presence: true, ignore_serialize: aggregate_usage.nil? && !aggregate_usage_present?)]
    getter aggregate_usage : String?

    @[JSON::Field(ignore: true)]
    property? aggregate_usage_present : Bool = false

    ENUM_VALIDATOR_FOR_AGGREGATE_USAGE = EnumValidator.new("aggregate_usage", "String", ["last_during_period", "last_ever", "max", "sum"])

    @[JSON::Field(key: "interval_count", type: Int64?, presence: true, ignore_serialize: interval_count.nil? && !interval_count_present?)]
    property interval_count : Int64?

    @[JSON::Field(ignore: true)]
    property? interval_count_present : Bool = false

    @[JSON::Field(key: "usage_type", type: String?, presence: true, ignore_serialize: usage_type.nil? && !usage_type_present?)]
    getter usage_type : String?

    @[JSON::Field(ignore: true)]
    property? usage_type_present : Bool = false

    ENUM_VALIDATOR_FOR_USAGE_TYPE = EnumValidator.new("usage_type", "String", ["licensed", "metered"])

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @interval : String,
      # Optional properties
      @aggregate_usage : String? = nil,
      @interval_count : Int64? = nil,
      @usage_type : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_INTERVAL.error_message) unless ENUM_VALIDATOR_FOR_INTERVAL.valid?(@interval, false)

      invalid_properties.push(ENUM_VALIDATOR_FOR_AGGREGATE_USAGE.error_message) unless ENUM_VALIDATOR_FOR_AGGREGATE_USAGE.valid?(@aggregate_usage)

      invalid_properties.push(ENUM_VALIDATOR_FOR_USAGE_TYPE.error_message) unless ENUM_VALIDATOR_FOR_USAGE_TYPE.valid?(@usage_type)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR_INTERVAL.valid?(@interval, false)
      return false unless ENUM_VALIDATOR_FOR_AGGREGATE_USAGE.valid?(@aggregate_usage)
      return false unless ENUM_VALIDATOR_FOR_USAGE_TYPE.valid?(@usage_type)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] interval Object to be assigned
    def interval=(interval : String)
      ENUM_VALIDATOR_FOR_INTERVAL.valid!(interval, false)
      @interval = interval
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] aggregate_usage Object to be assigned
    def aggregate_usage=(aggregate_usage : String?)
      ENUM_VALIDATOR_FOR_AGGREGATE_USAGE.valid!(aggregate_usage)
      @aggregate_usage = aggregate_usage
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] usage_type Object to be assigned
    def usage_type=(usage_type : String?)
      ENUM_VALIDATOR_FOR_USAGE_TYPE.valid!(usage_type)
      @usage_type = usage_type
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
    def_equals_and_hash(@interval, @aggregate_usage, @aggregate_usage_present, @interval_count, @interval_count_present, @usage_type, @usage_type_present)
  end
end
