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
  class PaymentMethodOptionsCardMandateOptions
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # Amount to be charged for future payments.
    @[JSON::Field(key: "amount", type: Int64)]
    property amount : Int64

    # One of `fixed` or `maximum`. If `fixed`, the `amount` param refers to the exact amount to be charged in future payments. If `maximum`, the amount charged can be up to the value passed for the `amount` param.
    @[JSON::Field(key: "amount_type", type: String)]
    getter amount_type : String

    ENUM_VALIDATOR_FOR_AMOUNT_TYPE = EnumValidator.new("amount_type", "String", ["fixed", "maximum"])

    # Specifies payment frequency. One of `day`, `week`, `month`, `year`, or `sporadic`.
    @[JSON::Field(key: "interval", type: String)]
    getter interval : String

    ENUM_VALIDATOR_FOR_INTERVAL = EnumValidator.new("interval", "String", ["day", "month", "sporadic", "week", "year"])

    # Unique identifier for the mandate or subscription.
    @[JSON::Field(key: "reference", type: String)]
    getter reference : String

    # Start date of the mandate or subscription. Start date should not be lesser than yesterday.
    @[JSON::Field(key: "start_date", type: Int64)]
    property start_date : Int64

    # Optional properties

    # A description of the mandate or subscription that is meant to be displayed to the customer.
    @[JSON::Field(key: "description", type: String?, presence: true, ignore_serialize: description.nil? && !description_present?)]
    getter description : String?

    @[JSON::Field(ignore: true)]
    property? description_present : Bool = false

    # End date of the mandate or subscription. If not provided, the mandate will be active until canceled. If provided, end date should be after start date.
    @[JSON::Field(key: "end_date", type: Int64?, presence: true, ignore_serialize: end_date.nil? && !end_date_present?)]
    property end_date : Int64?

    @[JSON::Field(ignore: true)]
    property? end_date_present : Bool = false

    # The number of intervals between payments. For example, `interval=month` and `interval_count=3` indicates one payment every three months. Maximum of one year interval allowed (1 year, 12 months, or 52 weeks). This parameter is optional when `interval=sporadic`.
    @[JSON::Field(key: "interval_count", type: Int64?, presence: true, ignore_serialize: interval_count.nil? && !interval_count_present?)]
    property interval_count : Int64?

    @[JSON::Field(ignore: true)]
    property? interval_count_present : Bool = false

    # Specifies the type of mandates supported. Possible values are `india`.
    @[JSON::Field(key: "supported_types", type: Array(String)?, presence: true, ignore_serialize: supported_types.nil? && !supported_types_present?)]
    getter supported_types : Array(String)?

    @[JSON::Field(ignore: true)]
    property? supported_types_present : Bool = false

    ENUM_VALIDATOR_FOR_SUPPORTED_TYPES = EnumValidator.new("supported_types", "String", ["india"])

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *, 
      # Required properties
      @amount : Int64, 
      @amount_type : String, 
      @interval : String, 
      @reference : String, 
      @start_date : Int64, 
      # Optional properties
      @description : String? = nil, 
      @end_date : Int64? = nil, 
      @interval_count : Int64? = nil, 
      @supported_types : Array(String)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_AMOUNT_TYPE.error_message) unless ENUM_VALIDATOR_FOR_AMOUNT_TYPE.valid?(@amount_type, false)

      invalid_properties.push(ENUM_VALIDATOR_FOR_INTERVAL.error_message) unless ENUM_VALIDATOR_FOR_INTERVAL.valid?(@interval, false)

      if @reference.to_s.size > 80
        invalid_properties.push("invalid value for \"reference\", the character length must be smaller than or equal to 80.")
      end

      if !@description.nil? && @description.to_s.size > 200
        invalid_properties.push("invalid value for \"description\", the character length must be smaller than or equal to 200.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_SUPPORTED_TYPES.error_message) unless ENUM_VALIDATOR_FOR_SUPPORTED_TYPES.all_valid?(@supported_types)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR_AMOUNT_TYPE.valid?(@amount_type, false)
      return false unless ENUM_VALIDATOR_FOR_INTERVAL.valid?(@interval, false)
      return false if @reference.to_s.size > 80
      return false if !@description.nil? && @description.to_s.size > 200
      return false unless ENUM_VALIDATOR_FOR_SUPPORTED_TYPES.all_valid?(@supported_types)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount_type Object to be assigned
    def amount_type=(amount_type)
      ENUM_VALIDATOR_FOR_AMOUNT_TYPE.valid!(amount_type, false)
      @amount_type = amount_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] interval Object to be assigned
    def interval=(interval)
      ENUM_VALIDATOR_FOR_INTERVAL.valid!(interval, false)
      @interval = interval
    end

    # Custom attribute writer method with validation
    # @param [Object] reference Value to be assigned
    def reference=(reference)
      if reference.to_s.size > 80
        raise ArgumentError.new("invalid value for \"reference\", the character length must be smaller than or equal to 80.")
      end

      @reference = reference
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description)
      if !description.nil? && description.to_s.size > 200
        raise ArgumentError.new("invalid value for \"description\", the character length must be smaller than or equal to 200.")
      end

      @description = description
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] supported_types Object to be assigned
    def supported_types=(supported_types)
      ENUM_VALIDATOR_FOR_SUPPORTED_TYPES.all_valid!(supported_types)
      @supported_types = supported_types
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
    def_equals_and_hash(@amount, @amount_type, @interval, @reference, @start_date, @description, @end_date, @interval_count, @supported_types)
  end
end
