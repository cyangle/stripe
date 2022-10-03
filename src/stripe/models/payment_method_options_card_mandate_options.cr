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
  class PaymentMethodOptionsCardMandateOptions
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Amount to be charged for future payments.
    @[JSON::Field(key: "amount", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter amount : Int64? = nil

    # One of `fixed` or `maximum`. If `fixed`, the `amount` param refers to the exact amount to be charged in future payments. If `maximum`, the amount charged can be up to the value passed for the `amount` param.
    @[JSON::Field(key: "amount_type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter amount_type : String? = nil
    ERROR_MESSAGE_FOR_AMOUNT_TYPE = "invalid value for \"amount_type\", must be one of [fixed, maximum]."
    VALID_VALUES_FOR_AMOUNT_TYPE  = StaticArray["fixed", "maximum"]

    # Specifies payment frequency. One of `day`, `week`, `month`, `year`, or `sporadic`.
    @[JSON::Field(key: "interval", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter interval : String? = nil
    ERROR_MESSAGE_FOR_INTERVAL = "invalid value for \"interval\", must be one of [day, month, sporadic, week, year]."
    VALID_VALUES_FOR_INTERVAL  = StaticArray["day", "month", "sporadic", "week", "year"]

    # Unique identifier for the mandate or subscription.
    @[JSON::Field(key: "reference", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter reference : String? = nil
    MAX_LENGTH_FOR_REFERENCE = 80

    # Start date of the mandate or subscription. Start date should not be lesser than yesterday.
    @[JSON::Field(key: "start_date", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter start_date : Int64? = nil

    # End of Required Properties

    # Optional Properties

    # A description of the mandate or subscription that is meant to be displayed to the customer.
    @[JSON::Field(key: "description", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: description.nil? && !description_present?)]
    getter description : String? = nil
    MAX_LENGTH_FOR_DESCRIPTION = 200

    @[JSON::Field(ignore: true)]
    property? description_present : Bool = false

    # End date of the mandate or subscription. If not provided, the mandate will be active until canceled. If provided, end date should be after start date.
    @[JSON::Field(key: "end_date", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: end_date.nil? && !end_date_present?)]
    getter end_date : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? end_date_present : Bool = false

    # The number of intervals between payments. For example, `interval=month` and `interval_count=3` indicates one payment every three months. Maximum of one year interval allowed (1 year, 12 months, or 52 weeks). This parameter is optional when `interval=sporadic`.
    @[JSON::Field(key: "interval_count", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: interval_count.nil? && !interval_count_present?)]
    getter interval_count : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? interval_count_present : Bool = false

    # Specifies the type of mandates supported. Possible values are `india`.
    @[JSON::Field(key: "supported_types", type: Array(String)?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: supported_types.nil? && !supported_types_present?)]
    getter supported_types : Array(String)? = nil
    ERROR_MESSAGE_FOR_SUPPORTED_TYPES = "invalid value for \"supported_types\", must be one of [india]."
    VALID_VALUES_FOR_SUPPORTED_TYPES  = StaticArray["india"]

    @[JSON::Field(ignore: true)]
    property? supported_types_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @amount : Int64? = nil,
      @amount_type : String? = nil,
      @interval : String? = nil,
      @reference : String? = nil,
      @start_date : Int64? = nil,
      # Optional properties
      @description : String? = nil,
      @end_date : Int64? = nil,
      @interval_count : Int64? = nil,
      @supported_types : Array(String)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"amount\" is required and cannot be null") if @amount.nil?

      invalid_properties.push("\"amount_type\" is required and cannot be null") if @amount_type.nil?

      unless (_amount_type = @amount_type).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_AMOUNT_TYPE) unless OpenApi::EnumValidator.valid?(_amount_type, VALID_VALUES_FOR_AMOUNT_TYPE)
      end
      invalid_properties.push("\"interval\" is required and cannot be null") if @interval.nil?

      unless (_interval = @interval).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_INTERVAL) unless OpenApi::EnumValidator.valid?(_interval, VALID_VALUES_FOR_INTERVAL)
      end
      invalid_properties.push("\"reference\" is required and cannot be null") if @reference.nil?

      unless (_reference = @reference).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("reference", _reference.to_s.size, MAX_LENGTH_FOR_REFERENCE)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"start_date\" is required and cannot be null") if @start_date.nil?

      unless (_description = @description).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("description", _description.to_s.size, MAX_LENGTH_FOR_DESCRIPTION)
          invalid_properties.push(max_length_error)
        end
      end

      unless (_supported_types = @supported_types).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_SUPPORTED_TYPES) unless OpenApi::EnumValidator.valid?(_supported_types, VALID_VALUES_FOR_SUPPORTED_TYPES)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @amount.nil?

      return false if @amount_type.nil?
      unless (_amount_type = @amount_type).nil?
        return false unless OpenApi::EnumValidator.valid?(_amount_type, VALID_VALUES_FOR_AMOUNT_TYPE)
      end

      return false if @interval.nil?
      unless (_interval = @interval).nil?
        return false unless OpenApi::EnumValidator.valid?(_interval, VALID_VALUES_FOR_INTERVAL)
      end

      return false if @reference.nil?
      unless (_reference = @reference).nil?
        return false if _reference.to_s.size > MAX_LENGTH_FOR_REFERENCE
      end

      return false if @start_date.nil?

      unless (_description = @description).nil?
        return false if _description.to_s.size > MAX_LENGTH_FOR_DESCRIPTION
      end

      unless (_supported_types = @supported_types).nil?
        return false unless OpenApi::EnumValidator.valid?(_supported_types, VALID_VALUES_FOR_SUPPORTED_TYPES)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount Object to be assigned
    def amount=(amount : Int64?)
      if amount.nil?
        raise ArgumentError.new("\"amount\" is required and cannot be null")
      end
      _amount = amount.not_nil!
      @amount = _amount
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount_type Object to be assigned
    def amount_type=(amount_type : String?)
      if amount_type.nil?
        raise ArgumentError.new("\"amount_type\" is required and cannot be null")
      end
      _amount_type = amount_type.not_nil!
      OpenApi::EnumValidator.validate("amount_type", _amount_type, VALID_VALUES_FOR_AMOUNT_TYPE)
      @amount_type = _amount_type
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
    # @param [Object] reference Object to be assigned
    def reference=(reference : String?)
      if reference.nil?
        raise ArgumentError.new("\"reference\" is required and cannot be null")
      end
      _reference = reference.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("reference", _reference.to_s.size, MAX_LENGTH_FOR_REFERENCE)
      @reference = _reference
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] start_date Object to be assigned
    def start_date=(start_date : Int64?)
      if start_date.nil?
        raise ArgumentError.new("\"start_date\" is required and cannot be null")
      end
      _start_date = start_date.not_nil!
      @start_date = _start_date
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] description Object to be assigned
    def description=(description : String?)
      if description.nil?
        return @description = nil
      end
      _description = description.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("description", _description.to_s.size, MAX_LENGTH_FOR_DESCRIPTION)
      @description = _description
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] end_date Object to be assigned
    def end_date=(end_date : Int64?)
      if end_date.nil?
        return @end_date = nil
      end
      _end_date = end_date.not_nil!
      @end_date = _end_date
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] interval_count Object to be assigned
    def interval_count=(interval_count : Int64?)
      if interval_count.nil?
        return @interval_count = nil
      end
      _interval_count = interval_count.not_nil!
      @interval_count = _interval_count
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] supported_types Object to be assigned
    def supported_types=(supported_types : Array(String)?)
      if supported_types.nil?
        return @supported_types = nil
      end
      _supported_types = supported_types.not_nil!
      OpenApi::EnumValidator.validate("supported_types", _supported_types, VALID_VALUES_FOR_SUPPORTED_TYPES)
      @supported_types = _supported_types
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@amount, @amount_type, @interval, @reference, @start_date, @description, @description_present, @end_date, @end_date_present, @interval_count, @interval_count_present, @supported_types, @supported_types_present)
  end
end
