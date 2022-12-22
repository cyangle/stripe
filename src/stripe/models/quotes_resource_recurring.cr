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
  class QuotesResourceRecurring
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Total before any discounts or taxes are applied.
    @[JSON::Field(key: "amount_subtotal", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter amount_subtotal : Int64? = nil

    # Total after discounts and taxes are applied.
    @[JSON::Field(key: "amount_total", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter amount_total : Int64? = nil

    # The frequency at which a subscription is billed. One of `day`, `week`, `month` or `year`.
    @[JSON::Field(key: "interval", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter interval : String? = nil
    ERROR_MESSAGE_FOR_INTERVAL = "invalid value for \"interval\", must be one of [day, month, week, year]."
    VALID_VALUES_FOR_INTERVAL  = String.static_array("day", "month", "week", "year")

    # The number of intervals (specified in the `interval` attribute) between subscription billings. For example, `interval=month` and `interval_count=3` bills every 3 months.
    @[JSON::Field(key: "interval_count", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter interval_count : Int64? = nil

    @[JSON::Field(key: "total_details", type: Stripe::QuotesResourceTotalDetails?, default: nil, required: true, nullable: false, emit_null: false)]
    getter total_details : Stripe::QuotesResourceTotalDetails? = nil

    # End of Required Properties

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
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"amount_subtotal\" is required and cannot be null") if @amount_subtotal.nil?

      invalid_properties.push("\"amount_total\" is required and cannot be null") if @amount_total.nil?

      invalid_properties.push("\"interval\" is required and cannot be null") if @interval.nil?

      unless (_interval = @interval).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_INTERVAL) unless OpenApi::EnumValidator.valid?(_interval, VALID_VALUES_FOR_INTERVAL)
      end
      invalid_properties.push("\"interval_count\" is required and cannot be null") if @interval_count.nil?

      invalid_properties.push("\"total_details\" is required and cannot be null") if @total_details.nil?

      unless (_total_details = @total_details).nil?
        invalid_properties.concat(_total_details.list_invalid_properties_for("total_details")) if _total_details.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @amount_subtotal.nil?

      return false if @amount_total.nil?

      return false if @interval.nil?
      unless (_interval = @interval).nil?
        return false unless OpenApi::EnumValidator.valid?(_interval, VALID_VALUES_FOR_INTERVAL)
      end

      return false if @interval_count.nil?

      return false if @total_details.nil?
      unless (_total_details = @total_details).nil?
        return false if _total_details.is_a?(OpenApi::Validatable) && !_total_details.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount_subtotal Object to be assigned
    def amount_subtotal=(amount_subtotal : Int64?)
      if amount_subtotal.nil?
        raise ArgumentError.new("\"amount_subtotal\" is required and cannot be null")
      end
      _amount_subtotal = amount_subtotal.not_nil!
      @amount_subtotal = _amount_subtotal
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount_total Object to be assigned
    def amount_total=(amount_total : Int64?)
      if amount_total.nil?
        raise ArgumentError.new("\"amount_total\" is required and cannot be null")
      end
      _amount_total = amount_total.not_nil!
      @amount_total = _amount_total
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
    # @param [Object] interval_count Object to be assigned
    def interval_count=(interval_count : Int64?)
      if interval_count.nil?
        raise ArgumentError.new("\"interval_count\" is required and cannot be null")
      end
      _interval_count = interval_count.not_nil!
      @interval_count = _interval_count
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] total_details Object to be assigned
    def total_details=(total_details : Stripe::QuotesResourceTotalDetails?)
      if total_details.nil?
        raise ArgumentError.new("\"total_details\" is required and cannot be null")
      end
      _total_details = total_details.not_nil!
      _total_details.validate if _total_details.is_a?(OpenApi::Validatable)
      @total_details = _total_details
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@amount_subtotal, @amount_total, @interval, @interval_count, @total_details)
  end
end
