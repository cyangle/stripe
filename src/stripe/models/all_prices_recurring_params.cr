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
  class AllPricesRecurringParams
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "interval", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter interval : String? = nil

    ENUM_VALIDATOR_FOR_INTERVAL = EnumValidator.new("interval", "String", ["day", "month", "week", "year"])

    @[JSON::Field(key: "usage_type", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter usage_type : String? = nil

    ENUM_VALIDATOR_FOR_USAGE_TYPE = EnumValidator.new("usage_type", "String", ["licensed", "metered"])

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @interval : String? = nil,
      @usage_type : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_INTERVAL.error_message) unless ENUM_VALIDATOR_FOR_INTERVAL.valid?(@interval)

      invalid_properties.push(ENUM_VALIDATOR_FOR_USAGE_TYPE.error_message) unless ENUM_VALIDATOR_FOR_USAGE_TYPE.valid?(@usage_type)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR_INTERVAL.valid?(@interval)
      return false unless ENUM_VALIDATOR_FOR_USAGE_TYPE.valid?(@usage_type)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] interval Object to be assigned
    def interval=(interval : String?)
      if interval.nil?
        return @interval = nil
      end
      _interval = interval.not_nil!
      ENUM_VALIDATOR_FOR_INTERVAL.valid!(_interval)
      @interval = interval
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] usage_type Object to be assigned
    def usage_type=(usage_type : String?)
      if usage_type.nil?
        return @usage_type = nil
      end
      _usage_type = usage_type.not_nil!
      ENUM_VALIDATOR_FOR_USAGE_TYPE.valid!(_usage_type)
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
    def_equals_and_hash(@interval, @usage_type)
  end
end
