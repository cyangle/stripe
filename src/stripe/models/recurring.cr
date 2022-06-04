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
  # 
  @[JSON::Serializable::Options(emit_nulls: true)]
  class Recurring
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # The frequency at which a subscription is billed. One of `day`, `week`, `month` or `year`.
    @[JSON::Field(key: "interval", type: String)]
    getter interval : String

    ENUM_VALIDATOR_FOR_INTERVAL = EnumValidator.new("interval", "String", ["day", "month", "week", "year"])

    # The number of intervals (specified in the `interval` attribute) between subscription billings. For example, `interval=month` and `interval_count=3` bills every 3 months.
    @[JSON::Field(key: "interval_count", type: Int64)]
    property interval_count : Int64

    # Configures how the quantity per period should be determined. Can be either `metered` or `licensed`. `licensed` automatically bills the `quantity` set when adding it to a subscription. `metered` aggregates the total usage based on usage records. Defaults to `licensed`.
    @[JSON::Field(key: "usage_type", type: String)]
    getter usage_type : String

    ENUM_VALIDATOR_FOR_USAGE_TYPE = EnumValidator.new("usage_type", "String", ["licensed", "metered"])

    # Optional properties

    # Specifies a usage aggregation strategy for prices of `usage_type=metered`. Allowed values are `sum` for summing up all usage during a period, `last_during_period` for using the last usage record reported within a period, `last_ever` for using the last usage record ever (across period bounds) or `max` which uses the usage record with the maximum reported usage during a period. Defaults to `sum`.
    @[JSON::Field(key: "aggregate_usage", type: String?, presence: true, ignore_serialize: aggregate_usage.nil? && !aggregate_usage_present?)]
    getter aggregate_usage : String?

    @[JSON::Field(ignore: true)]
    property? aggregate_usage_present : Bool = false

    ENUM_VALIDATOR_FOR_AGGREGATE_USAGE = EnumValidator.new("aggregate_usage", "String", ["last_during_period", "last_ever", "max", "sum"])

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *, 
      # Required properties
      @interval : String, 
      @interval_count : Int64, 
      @usage_type : String, 
      # Optional properties
      @aggregate_usage : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_INTERVAL.error_message) unless ENUM_VALIDATOR_FOR_INTERVAL.valid?(@interval, false)

      invalid_properties.push(ENUM_VALIDATOR_FOR_USAGE_TYPE.error_message) unless ENUM_VALIDATOR_FOR_USAGE_TYPE.valid?(@usage_type, false)

      invalid_properties.push(ENUM_VALIDATOR_FOR_AGGREGATE_USAGE.error_message) unless ENUM_VALIDATOR_FOR_AGGREGATE_USAGE.valid?(@aggregate_usage)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR_INTERVAL.valid?(@interval, false)
      return false unless ENUM_VALIDATOR_FOR_USAGE_TYPE.valid?(@usage_type, false)
      return false unless ENUM_VALIDATOR_FOR_AGGREGATE_USAGE.valid?(@aggregate_usage)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] interval Object to be assigned
    def interval=(interval)
      ENUM_VALIDATOR_FOR_INTERVAL.valid!(interval, false)
      @interval = interval
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] usage_type Object to be assigned
    def usage_type=(usage_type)
      ENUM_VALIDATOR_FOR_USAGE_TYPE.valid!(usage_type, false)
      @usage_type = usage_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] aggregate_usage Object to be assigned
    def aggregate_usage=(aggregate_usage)
      ENUM_VALIDATOR_FOR_AGGREGATE_USAGE.valid!(aggregate_usage)
      @aggregate_usage = aggregate_usage
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
    def_equals_and_hash(@interval, @interval_count, @usage_type, @aggregate_usage)
  end
end
