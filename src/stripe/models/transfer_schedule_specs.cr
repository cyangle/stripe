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
  class TransferScheduleSpecs
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "delay_days", type: Stripe::TransferScheduleSpecsDelayDays?, default: nil, required: false, nullable: false, emit_null: false)]
    getter delay_days : Stripe::TransferScheduleSpecsDelayDays? = nil

    @[JSON::Field(key: "interval", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter interval : String? = nil
    MAX_LENGTH_FOR_INTERVAL    = 5000
    ERROR_MESSAGE_FOR_INTERVAL = "invalid value for \"interval\", must be one of [daily, manual, monthly, weekly]."
    VALID_VALUES_FOR_INTERVAL  = StaticArray["daily", "manual", "monthly", "weekly"]

    @[JSON::Field(key: "monthly_anchor", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter monthly_anchor : Int64? = nil

    @[JSON::Field(key: "weekly_anchor", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter weekly_anchor : String? = nil
    MAX_LENGTH_FOR_WEEKLY_ANCHOR    = 5000
    ERROR_MESSAGE_FOR_WEEKLY_ANCHOR = "invalid value for \"weekly_anchor\", must be one of [friday, monday, saturday, sunday, thursday, tuesday, wednesday]."
    VALID_VALUES_FOR_WEEKLY_ANCHOR  = StaticArray["friday", "monday", "saturday", "sunday", "thursday", "tuesday", "wednesday"]

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @delay_days : Stripe::TransferScheduleSpecsDelayDays? = nil,
      @interval : String? = nil,
      @monthly_anchor : Int64? = nil,
      @weekly_anchor : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      if _delay_days = @delay_days
        invalid_properties.concat(_delay_days.list_invalid_properties_for("delay_days")) if _delay_days.is_a?(OpenApi::Validatable)
      end
      if _interval = @interval
        invalid_properties.push(ERROR_MESSAGE_FOR_INTERVAL) unless OpenApi::EnumValidator.valid?(_interval, VALID_VALUES_FOR_INTERVAL)
      end

      if _weekly_anchor = @weekly_anchor
        invalid_properties.push(ERROR_MESSAGE_FOR_WEEKLY_ANCHOR) unless OpenApi::EnumValidator.valid?(_weekly_anchor, VALID_VALUES_FOR_WEEKLY_ANCHOR)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _delay_days = @delay_days
        return false if _delay_days.is_a?(OpenApi::Validatable) && !_delay_days.valid?
      end

      if _interval = @interval
        return false unless OpenApi::EnumValidator.valid?(_interval, VALID_VALUES_FOR_INTERVAL)
      end

      if _weekly_anchor = @weekly_anchor
        return false unless OpenApi::EnumValidator.valid?(_weekly_anchor, VALID_VALUES_FOR_WEEKLY_ANCHOR)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] delay_days Object to be assigned
    def delay_days=(delay_days : Stripe::TransferScheduleSpecsDelayDays?)
      if delay_days.nil?
        return @delay_days = nil
      end
      _delay_days = delay_days.not_nil!
      _delay_days.validate if _delay_days.is_a?(OpenApi::Validatable)
      @delay_days = _delay_days
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] interval Object to be assigned
    def interval=(interval : String?)
      if interval.nil?
        return @interval = nil
      end
      _interval = interval.not_nil!
      OpenApi::EnumValidator.validate("interval", _interval, VALID_VALUES_FOR_INTERVAL)
      @interval = _interval
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] monthly_anchor Object to be assigned
    def monthly_anchor=(monthly_anchor : Int64?)
      if monthly_anchor.nil?
        return @monthly_anchor = nil
      end
      _monthly_anchor = monthly_anchor.not_nil!
      @monthly_anchor = _monthly_anchor
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] weekly_anchor Object to be assigned
    def weekly_anchor=(weekly_anchor : String?)
      if weekly_anchor.nil?
        return @weekly_anchor = nil
      end
      _weekly_anchor = weekly_anchor.not_nil!
      OpenApi::EnumValidator.validate("weekly_anchor", _weekly_anchor, VALID_VALUES_FOR_WEEKLY_ANCHOR)
      @weekly_anchor = _weekly_anchor
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@delay_days, @interval, @monthly_anchor, @weekly_anchor)
  end
end
