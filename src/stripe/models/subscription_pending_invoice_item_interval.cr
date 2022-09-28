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
  #
  class SubscriptionPendingInvoiceItemInterval
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    # Specifies invoicing frequency. Either `day`, `week`, `month` or `year`.
    @[JSON::Field(key: "interval", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter interval : String? = nil

    ENUM_VALIDATOR_FOR_INTERVAL = EnumValidator.new("interval", "String", ["day", "month", "week", "year"])

    # The number of intervals between invoices. For example, `interval=month` and `interval_count=3` bills every 3 months. Maximum of one year interval allowed (1 year, 12 months, or 52 weeks).
    @[JSON::Field(key: "interval_count", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter interval_count : Int64? = nil

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

      invalid_properties.push(ENUM_VALIDATOR_FOR_INTERVAL.error_message) unless ENUM_VALIDATOR_FOR_INTERVAL.valid?(@interval, false)
      invalid_properties.push("\"interval_count\" is required and cannot be null") if @interval_count.nil?

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false unless ENUM_VALIDATOR_FOR_INTERVAL.valid?(@interval, false)
      return false if @interval_count.nil?

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] interval Object to be assigned
    def interval=(interval : String?)
      if interval.nil?
        raise ArgumentError.new("\"interval\" is required and cannot be null")
      end
      _interval = interval.not_nil!
      ENUM_VALIDATOR_FOR_INTERVAL.valid!(_interval)
      @interval = _interval
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] interval_count Object to be assigned
    def interval_count=(interval_count : Int64?)
      if interval_count.nil?
        raise ArgumentError.new("\"interval_count\" is required and cannot be null")
      end
      _interval_count = interval_count.not_nil!
      @interval_count = _interval_count
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@interval, @interval_count)
  end
end
