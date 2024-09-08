#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./mandate_options_param_custom_mandate_url"

module Stripe
  class MandateOptionsParam
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
    VALID_VALUES_FOR_AMOUNT_TYPE  = String.static_array("fixed", "maximum")

    # Specifies payment frequency. One of `day`, `week`, `month`, `year`, or `sporadic`.
    @[JSON::Field(key: "interval", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter interval : String? = nil
    ERROR_MESSAGE_FOR_INTERVAL = "invalid value for \"interval\", must be one of [day, month, sporadic, week, year]."
    VALID_VALUES_FOR_INTERVAL  = String.static_array("day", "month", "sporadic", "week", "year")

    # Unique identifier for the mandate or subscription.
    @[JSON::Field(key: "reference", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter reference : String? = nil
    MAX_LENGTH_FOR_REFERENCE = 80

    # Start date of the mandate or subscription. Start date should not be lesser than yesterday.
    @[JSON::Field(key: "start_date", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter start_date : Int64? = nil

    # End of Required Properties

    # Optional Properties

    # The method used to collect offline mandate customer acceptance.
    @[JSON::Field(key: "collection_method", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter collection_method : String? = nil
    ERROR_MESSAGE_FOR_COLLECTION_METHOD = "invalid value for \"collection_method\", must be one of [, paper]."
    VALID_VALUES_FOR_COLLECTION_METHOD  = String.static_array("", "paper")

    @[JSON::Field(key: "custom_mandate_url", type: Stripe::MandateOptionsParamCustomMandateUrl?, default: nil, required: false, nullable: false, emit_null: false)]
    getter custom_mandate_url : Stripe::MandateOptionsParamCustomMandateUrl? = nil

    # List of Stripe products where this mandate can be selected automatically. Only usable in `setup` mode.
    @[JSON::Field(key: "default_for", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter default_for : Array(String)? = nil
    ERROR_MESSAGE_FOR_DEFAULT_FOR = "invalid value for \"default_for\", must be one of [invoice, subscription]."
    VALID_VALUES_FOR_DEFAULT_FOR  = String.static_array("invoice", "subscription")

    # A description of the mandate or subscription that is meant to be displayed to the customer.
    @[JSON::Field(key: "description", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter description : String? = nil
    MAX_LENGTH_FOR_DESCRIPTION = 200

    # End date of the mandate or subscription. If not provided, the mandate will be active until canceled. If provided, end date should be after start date.
    @[JSON::Field(key: "end_date", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter end_date : Int64? = nil

    # The number of intervals between payments. For example, `interval=month` and `interval_count=3` indicates one payment every three months. Maximum of one year interval allowed (1 year, 12 months, or 52 weeks). This parameter is optional when `interval=sporadic`.
    @[JSON::Field(key: "interval_count", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter interval_count : Int64? = nil

    # Description of the mandate interval. Only required if 'payment_schedule' parameter is 'interval' or 'combined'.
    @[JSON::Field(key: "interval_description", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter interval_description : String? = nil
    MAX_LENGTH_FOR_INTERVAL_DESCRIPTION = 500

    # Payment schedule for the mandate.
    @[JSON::Field(key: "payment_schedule", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter payment_schedule : String? = nil
    ERROR_MESSAGE_FOR_PAYMENT_SCHEDULE = "invalid value for \"payment_schedule\", must be one of [combined, interval, sporadic]."
    VALID_VALUES_FOR_PAYMENT_SCHEDULE  = String.static_array("combined", "interval", "sporadic")

    # Specifies the type of mandates supported. Possible values are `india`.
    @[JSON::Field(key: "supported_types", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter supported_types : Array(String)? = nil
    ERROR_MESSAGE_FOR_SUPPORTED_TYPES = "invalid value for \"supported_types\", must be one of [india]."
    VALID_VALUES_FOR_SUPPORTED_TYPES  = String.static_array("india")

    # Transaction type of the mandate.
    @[JSON::Field(key: "transaction_type", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter transaction_type : String? = nil
    ERROR_MESSAGE_FOR_TRANSACTION_TYPE = "invalid value for \"transaction_type\", must be one of [business, personal]."
    VALID_VALUES_FOR_TRANSACTION_TYPE  = String.static_array("business", "personal")

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
      @collection_method : String? = nil,
      @custom_mandate_url : Stripe::MandateOptionsParamCustomMandateUrl? = nil,
      @default_for : Array(String)? = nil,
      @description : String? = nil,
      @end_date : Int64? = nil,
      @interval_count : Int64? = nil,
      @interval_description : String? = nil,
      @payment_schedule : String? = nil,
      @supported_types : Array(String)? = nil,
      @transaction_type : String? = nil
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

      unless (_collection_method = @collection_method).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_COLLECTION_METHOD) unless OpenApi::EnumValidator.valid?(_collection_method, VALID_VALUES_FOR_COLLECTION_METHOD)
      end
      unless (_custom_mandate_url = @custom_mandate_url).nil?
        invalid_properties.concat(_custom_mandate_url.list_invalid_properties_for("custom_mandate_url")) if _custom_mandate_url.is_a?(OpenApi::Validatable)
      end
      unless (_default_for = @default_for).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_DEFAULT_FOR) unless OpenApi::EnumValidator.valid?(_default_for, VALID_VALUES_FOR_DEFAULT_FOR)
      end
      unless (_description = @description).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("description", _description.to_s.size, MAX_LENGTH_FOR_DESCRIPTION)
          invalid_properties.push(max_length_error)
        end
      end

      unless (_interval_description = @interval_description).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("interval_description", _interval_description.to_s.size, MAX_LENGTH_FOR_INTERVAL_DESCRIPTION)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_payment_schedule = @payment_schedule).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_PAYMENT_SCHEDULE) unless OpenApi::EnumValidator.valid?(_payment_schedule, VALID_VALUES_FOR_PAYMENT_SCHEDULE)
      end
      unless (_supported_types = @supported_types).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_SUPPORTED_TYPES) unless OpenApi::EnumValidator.valid?(_supported_types, VALID_VALUES_FOR_SUPPORTED_TYPES)
      end
      unless (_transaction_type = @transaction_type).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_TRANSACTION_TYPE) unless OpenApi::EnumValidator.valid?(_transaction_type, VALID_VALUES_FOR_TRANSACTION_TYPE)
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

      unless (_collection_method = @collection_method).nil?
        return false unless OpenApi::EnumValidator.valid?(_collection_method, VALID_VALUES_FOR_COLLECTION_METHOD)
      end

      unless (_custom_mandate_url = @custom_mandate_url).nil?
        return false if _custom_mandate_url.is_a?(OpenApi::Validatable) && !_custom_mandate_url.valid?
      end

      unless (_default_for = @default_for).nil?
        return false unless OpenApi::EnumValidator.valid?(_default_for, VALID_VALUES_FOR_DEFAULT_FOR)
      end

      unless (_description = @description).nil?
        return false if _description.to_s.size > MAX_LENGTH_FOR_DESCRIPTION
      end

      unless (_interval_description = @interval_description).nil?
        return false if _interval_description.to_s.size > MAX_LENGTH_FOR_INTERVAL_DESCRIPTION
      end

      unless (_payment_schedule = @payment_schedule).nil?
        return false unless OpenApi::EnumValidator.valid?(_payment_schedule, VALID_VALUES_FOR_PAYMENT_SCHEDULE)
      end

      unless (_supported_types = @supported_types).nil?
        return false unless OpenApi::EnumValidator.valid?(_supported_types, VALID_VALUES_FOR_SUPPORTED_TYPES)
      end

      unless (_transaction_type = @transaction_type).nil?
        return false unless OpenApi::EnumValidator.valid?(_transaction_type, VALID_VALUES_FOR_TRANSACTION_TYPE)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount Object to be assigned
    def amount=(new_value : Int64?)
      raise ArgumentError.new("\"amount\" is required and cannot be null") if new_value.nil?

      @amount = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount_type Object to be assigned
    def amount_type=(new_value : String?)
      raise ArgumentError.new("\"amount_type\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::EnumValidator.validate("amount_type", new_value, VALID_VALUES_FOR_AMOUNT_TYPE)
      end

      @amount_type = new_value
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
    # @param [Object] reference Object to be assigned
    def reference=(new_value : String?)
      raise ArgumentError.new("\"reference\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("reference", new_value.to_s.size, MAX_LENGTH_FOR_REFERENCE)
      end

      @reference = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] start_date Object to be assigned
    def start_date=(new_value : Int64?)
      raise ArgumentError.new("\"start_date\" is required and cannot be null") if new_value.nil?

      @start_date = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] collection_method Object to be assigned
    def collection_method=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("collection_method", new_value, VALID_VALUES_FOR_COLLECTION_METHOD)
      end

      @collection_method = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] custom_mandate_url Object to be assigned
    def custom_mandate_url=(new_value : Stripe::MandateOptionsParamCustomMandateUrl?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @custom_mandate_url = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] default_for Object to be assigned
    def default_for=(new_value : Array(String)?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("default_for", new_value, VALID_VALUES_FOR_DEFAULT_FOR)
      end

      @default_for = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] description Object to be assigned
    def description=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("description", new_value.to_s.size, MAX_LENGTH_FOR_DESCRIPTION)
      end

      @description = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] end_date Object to be assigned
    def end_date=(new_value : Int64?)
      @end_date = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] interval_count Object to be assigned
    def interval_count=(new_value : Int64?)
      @interval_count = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] interval_description Object to be assigned
    def interval_description=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("interval_description", new_value.to_s.size, MAX_LENGTH_FOR_INTERVAL_DESCRIPTION)
      end

      @interval_description = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_schedule Object to be assigned
    def payment_schedule=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("payment_schedule", new_value, VALID_VALUES_FOR_PAYMENT_SCHEDULE)
      end

      @payment_schedule = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] supported_types Object to be assigned
    def supported_types=(new_value : Array(String)?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("supported_types", new_value, VALID_VALUES_FOR_SUPPORTED_TYPES)
      end

      @supported_types = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transaction_type Object to be assigned
    def transaction_type=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("transaction_type", new_value, VALID_VALUES_FOR_TRANSACTION_TYPE)
      end

      @transaction_type = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@amount, @amount_type, @interval, @reference, @start_date, @collection_method, @custom_mandate_url, @default_for, @description, @end_date, @interval_count, @interval_description, @payment_schedule, @supported_types, @transaction_type)
  end
end
