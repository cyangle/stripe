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
  class UsageRecordSummary
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String)]
    getter id : String

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool)]
    property livemode : Bool

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String)]
    getter object : String

    ENUM_VALIDATOR_FOR_OBJECT = EnumValidator.new("object", "String", ["usage_record_summary"])

    @[JSON::Field(key: "period", type: Period)]
    property period : Period

    # The ID of the subscription item this summary is describing.
    @[JSON::Field(key: "subscription_item", type: String)]
    getter subscription_item : String

    # The total usage within this usage period.
    @[JSON::Field(key: "total_usage", type: Int64)]
    property total_usage : Int64

    # Optional properties

    # The invoice in which this usage period has been billed for.
    @[JSON::Field(key: "invoice", type: String?, presence: true, ignore_serialize: invoice.nil? && !invoice_present?)]
    getter invoice : String?

    @[JSON::Field(ignore: true)]
    property? invoice_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @id : String,
      @livemode : Bool,
      @object : String,
      @period : Period,
      @subscription_item : String,
      @total_usage : Int64,
      # Optional properties
      @invoice : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if @id.to_s.size > 5000
        invalid_properties.push("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_OBJECT.error_message) unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)

      if @subscription_item.to_s.size > 5000
        invalid_properties.push("invalid value for \"subscription_item\", the character length must be smaller than or equal to 5000.")
      end

      if !@invoice.nil? && @invoice.to_s.size > 5000
        invalid_properties.push("invalid value for \"invoice\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.to_s.size > 5000
      return false unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      return false if @subscription_item.to_s.size > 5000
      return false if !@invoice.nil? && @invoice.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] id Value to be assigned
    def id=(id)
      if id.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      @id = id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object)
      ENUM_VALIDATOR_FOR_OBJECT.valid!(object, false)
      @object = object
    end

    # Custom attribute writer method with validation
    # @param [Object] subscription_item Value to be assigned
    def subscription_item=(subscription_item)
      if subscription_item.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"subscription_item\", the character length must be smaller than or equal to 5000.")
      end

      @subscription_item = subscription_item
    end

    # Custom attribute writer method with validation
    # @param [Object] invoice Value to be assigned
    def invoice=(invoice)
      if !invoice.nil? && invoice.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"invoice\", the character length must be smaller than or equal to 5000.")
      end

      @invoice = invoice
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
    def_equals_and_hash(@id, @livemode, @object, @period, @subscription_item, @total_usage, @invoice)
  end
end
