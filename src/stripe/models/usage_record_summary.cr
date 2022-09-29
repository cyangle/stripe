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
  class UsageRecordSummary
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter livemode : Bool? = nil

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter object : String? = nil

    ENUM_VALIDATOR_FOR_OBJECT = OpenApi::EnumValidator.new("object", "String", ["usage_record_summary"])

    @[JSON::Field(key: "period", type: Stripe::Period?, default: nil, required: true, nullable: false, emit_null: false)]
    getter period : Stripe::Period? = nil

    # The ID of the subscription item this summary is describing.
    @[JSON::Field(key: "subscription_item", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter subscription_item : String? = nil

    # The total usage within this usage period.
    @[JSON::Field(key: "total_usage", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter total_usage : Int64? = nil

    # Optional properties

    # The invoice in which this usage period has been billed for.
    @[JSON::Field(key: "invoice", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: invoice.nil? && !invoice_present?)]
    getter invoice : String? = nil

    @[JSON::Field(ignore: true)]
    property? invoice_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @id : String? = nil,
      @livemode : Bool? = nil,
      @object : String? = nil,
      @period : Stripe::Period? = nil,
      @subscription_item : String? = nil,
      @total_usage : Int64? = nil,
      # Optional properties
      @invoice : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      invalid_properties.push("\"id\" is required and cannot be null") if @id.nil?
      if _id = @id
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("id", _id.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"livemode\" is required and cannot be null") if @livemode.nil?

      invalid_properties.push(ENUM_VALIDATOR_FOR_OBJECT.error_message) unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      invalid_properties.push("\"period\" is required and cannot be null") if @period.nil?
      if _period = @period
        invalid_properties.concat(_period.list_invalid_properties_for("period")) if _period.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"subscription_item\" is required and cannot be null") if @subscription_item.nil?
      if _subscription_item = @subscription_item
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("subscription_item", _subscription_item.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"total_usage\" is required and cannot be null") if @total_usage.nil?

      if _invoice = @invoice
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("invoice", _invoice.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @id.nil?
      if _id = @id
        return false if _id.to_s.size > 5000
      end
      return false if @livemode.nil?

      return false unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      return false if @period.nil?
      if _period = @period
        return false if _period.is_a?(OpenApi::Validatable) && !_period.valid?
      end
      return false if @subscription_item.nil?
      if _subscription_item = @subscription_item
        return false if _subscription_item.to_s.size > 5000
      end
      return false if @total_usage.nil?

      if _invoice = @invoice
        return false if _invoice.to_s.size > 5000
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] id Object to be assigned
    def id=(id : String?)
      if id.nil?
        raise ArgumentError.new("\"id\" is required and cannot be null")
      end
      _id = id.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("id", _id.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @id = _id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] livemode Object to be assigned
    def livemode=(livemode : Bool?)
      if livemode.nil?
        raise ArgumentError.new("\"livemode\" is required and cannot be null")
      end
      _livemode = livemode.not_nil!
      @livemode = _livemode
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object : String?)
      if object.nil?
        raise ArgumentError.new("\"object\" is required and cannot be null")
      end
      _object = object.not_nil!
      ENUM_VALIDATOR_FOR_OBJECT.valid!(_object)
      @object = _object
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] period Object to be assigned
    def period=(period : Stripe::Period?)
      if period.nil?
        raise ArgumentError.new("\"period\" is required and cannot be null")
      end
      _period = period.not_nil!
      _period.validate if _period.is_a?(OpenApi::Validatable)
      @period = _period
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] subscription_item Object to be assigned
    def subscription_item=(subscription_item : String?)
      if subscription_item.nil?
        raise ArgumentError.new("\"subscription_item\" is required and cannot be null")
      end
      _subscription_item = subscription_item.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("subscription_item", _subscription_item.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @subscription_item = _subscription_item
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] total_usage Object to be assigned
    def total_usage=(total_usage : Int64?)
      if total_usage.nil?
        raise ArgumentError.new("\"total_usage\" is required and cannot be null")
      end
      _total_usage = total_usage.not_nil!
      @total_usage = _total_usage
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] invoice Object to be assigned
    def invoice=(invoice : String?)
      if invoice.nil?
        return @invoice = nil
      end
      _invoice = invoice.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("invoice", _invoice.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @invoice = _invoice
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@id, @livemode, @object, @period, @subscription_item, @total_usage, @invoice, @invoice_present)
  end
end
