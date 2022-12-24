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
  #
  class ShippingRateDeliveryEstimateBound
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # A unit of time.
    @[JSON::Field(key: "unit", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter unit : String? = nil
    ERROR_MESSAGE_FOR_UNIT = "invalid value for \"unit\", must be one of [business_day, day, hour, month, week]."
    VALID_VALUES_FOR_UNIT  = String.static_array("business_day", "day", "hour", "month", "week")

    # Must be greater than 0.
    @[JSON::Field(key: "value", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter value : Int64? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @unit : String? = nil,
      @value : Int64? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"unit\" is required and cannot be null") if @unit.nil?

      unless (_unit = @unit).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_UNIT) unless OpenApi::EnumValidator.valid?(_unit, VALID_VALUES_FOR_UNIT)
      end
      invalid_properties.push("\"value\" is required and cannot be null") if @value.nil?

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @unit.nil?
      unless (_unit = @unit).nil?
        return false unless OpenApi::EnumValidator.valid?(_unit, VALID_VALUES_FOR_UNIT)
      end

      return false if @value.nil?

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] unit Object to be assigned
    def unit=(new_value : String?)
      raise ArgumentError.new("\"unit\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::EnumValidator.validate("unit", new_value, VALID_VALUES_FOR_UNIT)
      end

      @unit = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] value Object to be assigned
    def value=(new_value : Int64?)
      raise ArgumentError.new("\"value\" is required and cannot be null") if new_value.nil?

      @value = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@unit, @value)
  end
end
