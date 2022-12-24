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
  class SubscriptionPendingInvoiceItemInterval
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Specifies invoicing frequency. Either `day`, `week`, `month` or `year`.
    @[JSON::Field(key: "interval", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter interval : String? = nil
    ERROR_MESSAGE_FOR_INTERVAL = "invalid value for \"interval\", must be one of [day, month, week, year]."
    VALID_VALUES_FOR_INTERVAL  = String.static_array("day", "month", "week", "year")

    # The number of intervals between invoices. For example, `interval=month` and `interval_count=3` bills every 3 months. Maximum of one year interval allowed (1 year, 12 months, or 52 weeks).
    @[JSON::Field(key: "interval_count", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter interval_count : Int64? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @interval : String? = nil,
      @interval_count : Int64? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"interval\" is required and cannot be null") if @interval.nil?

      unless (_interval = @interval).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_INTERVAL) unless OpenApi::EnumValidator.valid?(_interval, VALID_VALUES_FOR_INTERVAL)
      end
      invalid_properties.push("\"interval_count\" is required and cannot be null") if @interval_count.nil?

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @interval.nil?
      unless (_interval = @interval).nil?
        return false unless OpenApi::EnumValidator.valid?(_interval, VALID_VALUES_FOR_INTERVAL)
      end

      return false if @interval_count.nil?

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] interval Object to be assigned
    def interval=(new_value : String?)
      raise ArgumentError.new("\"interval\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::EnumValidator.validate("interval", new_value, VALID_VALUES_FOR_INTERVAL)
      end

      @interval = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] interval_count Object to be assigned
    def interval_count=(new_value : Int64?)
      raise ArgumentError.new("\"interval_count\" is required and cannot be null") if new_value.nil?

      @interval_count = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@interval, @interval_count)
  end
end
