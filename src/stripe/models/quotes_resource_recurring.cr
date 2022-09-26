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
  class QuotesResourceRecurring
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Required properties

    # Total before any discounts or taxes are applied.
    @[JSON::Field(key: "amount_subtotal", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter amount_subtotal : Int64? = nil

    # Total after discounts and taxes are applied.
    @[JSON::Field(key: "amount_total", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter amount_total : Int64? = nil

    # The frequency at which a subscription is billed. One of `day`, `week`, `month` or `year`.
    @[JSON::Field(key: "interval", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter interval : String? = nil

    ENUM_VALIDATOR_FOR_INTERVAL = EnumValidator.new("interval", "String", ["day", "month", "week", "year"])

    # The number of intervals (specified in the `interval` attribute) between subscription billings. For example, `interval=month` and `interval_count=3` bills every 3 months.
    @[JSON::Field(key: "interval_count", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter interval_count : Int64? = nil

    @[JSON::Field(key: "total_details", type: Stripe::QuotesResourceTotalDetails?, default: nil, required: true, nullable: false, emit_null: false)]
    getter total_details : Stripe::QuotesResourceTotalDetails? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @amount_subtotal : Int64? = nil,
      @amount_total : Int64? = nil,
      @interval : String? = nil,
      @interval_count : Int64? = nil,
      @total_details : Stripe::QuotesResourceTotalDetails? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      invalid_properties.push("\"amount_subtotal\" is required and cannot be null") if @amount_subtotal.nil?
      invalid_properties.push("\"amount_total\" is required and cannot be null") if @amount_total.nil?

      invalid_properties.push(ENUM_VALIDATOR_FOR_INTERVAL.error_message) unless ENUM_VALIDATOR_FOR_INTERVAL.valid?(@interval, false)
      invalid_properties.push("\"interval_count\" is required and cannot be null") if @interval_count.nil?
      invalid_properties.push("\"total_details\" is required and cannot be null") if @total_details.nil?
      # This is a model total_details : Stripe::QuotesResourceTotalDetails?

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @amount_subtotal.nil?
      return false if @amount_total.nil?
      return false unless ENUM_VALIDATOR_FOR_INTERVAL.valid?(@interval, false)
      return false if @interval_count.nil?
      return false if @total_details.nil?

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount_subtotal Object to be assigned
    def amount_subtotal=(amount_subtotal : Int64?)
      if amount_subtotal.nil?
        raise ArgumentError.new("\"amount_subtotal\" is required and cannot be null")
      end
      @amount_subtotal = amount_subtotal
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount_total Object to be assigned
    def amount_total=(amount_total : Int64?)
      if amount_total.nil?
        raise ArgumentError.new("\"amount_total\" is required and cannot be null")
      end
      @amount_total = amount_total
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] interval Object to be assigned
    def interval=(interval : String?)
      if interval.nil?
        raise ArgumentError.new("\"interval\" is required and cannot be null")
      end
      _interval = interval.not_nil!
      ENUM_VALIDATOR_FOR_INTERVAL.valid!(_interval)
      @interval = interval
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] interval_count Object to be assigned
    def interval_count=(interval_count : Int64?)
      if interval_count.nil?
        raise ArgumentError.new("\"interval_count\" is required and cannot be null")
      end
      @interval_count = interval_count
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] total_details Object to be assigned
    def total_details=(total_details : Stripe::QuotesResourceTotalDetails?)
      if total_details.nil?
        raise ArgumentError.new("\"total_details\" is required and cannot be null")
      end
      @total_details = total_details
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
    def_equals_and_hash(@amount_subtotal, @amount_total, @interval, @interval_count, @total_details)
  end
end
