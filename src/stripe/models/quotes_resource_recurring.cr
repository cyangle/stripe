#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./quotes_resource_total_details"

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
    def amount_subtotal=(new_value : Int64?)
      raise ArgumentError.new("\"amount_subtotal\" is required and cannot be null") if new_value.nil?

      @amount_subtotal = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount_total Object to be assigned
    def amount_total=(new_value : Int64?)
      raise ArgumentError.new("\"amount_total\" is required and cannot be null") if new_value.nil?

      @amount_total = new_value
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

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] total_details Object to be assigned
    def total_details=(new_value : Stripe::QuotesResourceTotalDetails?)
      raise ArgumentError.new("\"total_details\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @total_details = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@amount_subtotal, @amount_total, @interval, @interval_count, @total_details)
  end
end
