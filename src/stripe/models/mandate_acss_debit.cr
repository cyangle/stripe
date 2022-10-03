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
  class MandateAcssDebit
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Payment schedule for the mandate.
    @[JSON::Field(key: "payment_schedule", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter payment_schedule : String? = nil
    ERROR_MESSAGE_FOR_PAYMENT_SCHEDULE = "invalid value for \"payment_schedule\", must be one of [combined, interval, sporadic]."
    VALID_VALUES_FOR_PAYMENT_SCHEDULE  = StaticArray["combined", "interval", "sporadic"]

    # Transaction type of the mandate.
    @[JSON::Field(key: "transaction_type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter transaction_type : String? = nil
    ERROR_MESSAGE_FOR_TRANSACTION_TYPE = "invalid value for \"transaction_type\", must be one of [business, personal]."
    VALID_VALUES_FOR_TRANSACTION_TYPE  = StaticArray["business", "personal"]

    # End of Required Properties

    # Optional Properties

    # List of Stripe products where this mandate can be selected automatically.
    @[JSON::Field(key: "default_for", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter default_for : Array(String)? = nil
    ERROR_MESSAGE_FOR_DEFAULT_FOR = "invalid value for \"default_for\", must be one of [invoice, subscription]."
    VALID_VALUES_FOR_DEFAULT_FOR  = StaticArray["invoice", "subscription"]

    # Description of the interval. Only required if the 'payment_schedule' parameter is 'interval' or 'combined'.
    @[JSON::Field(key: "interval_description", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: interval_description.nil? && !interval_description_present?)]
    getter interval_description : String? = nil
    MAX_LENGTH_FOR_INTERVAL_DESCRIPTION = 5000

    @[JSON::Field(ignore: true)]
    property? interval_description_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @payment_schedule : String? = nil,
      @transaction_type : String? = nil,
      # Optional properties
      @default_for : Array(String)? = nil,
      @interval_description : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"payment_schedule\" is required and cannot be null") if @payment_schedule.nil?

      unless (_payment_schedule = @payment_schedule).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_PAYMENT_SCHEDULE) unless OpenApi::EnumValidator.valid?(_payment_schedule, VALID_VALUES_FOR_PAYMENT_SCHEDULE)
      end
      invalid_properties.push("\"transaction_type\" is required and cannot be null") if @transaction_type.nil?

      unless (_transaction_type = @transaction_type).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_TRANSACTION_TYPE) unless OpenApi::EnumValidator.valid?(_transaction_type, VALID_VALUES_FOR_TRANSACTION_TYPE)
      end
      unless (_default_for = @default_for).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_DEFAULT_FOR) unless OpenApi::EnumValidator.valid?(_default_for, VALID_VALUES_FOR_DEFAULT_FOR)
      end
      unless (_interval_description = @interval_description).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("interval_description", _interval_description.to_s.size, MAX_LENGTH_FOR_INTERVAL_DESCRIPTION)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @payment_schedule.nil?
      unless (_payment_schedule = @payment_schedule).nil?
        return false unless OpenApi::EnumValidator.valid?(_payment_schedule, VALID_VALUES_FOR_PAYMENT_SCHEDULE)
      end

      return false if @transaction_type.nil?
      unless (_transaction_type = @transaction_type).nil?
        return false unless OpenApi::EnumValidator.valid?(_transaction_type, VALID_VALUES_FOR_TRANSACTION_TYPE)
      end

      unless (_default_for = @default_for).nil?
        return false unless OpenApi::EnumValidator.valid?(_default_for, VALID_VALUES_FOR_DEFAULT_FOR)
      end

      unless (_interval_description = @interval_description).nil?
        return false if _interval_description.to_s.size > MAX_LENGTH_FOR_INTERVAL_DESCRIPTION
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_schedule Object to be assigned
    def payment_schedule=(payment_schedule : String?)
      if payment_schedule.nil?
        raise ArgumentError.new("\"payment_schedule\" is required and cannot be null")
      end
      _payment_schedule = payment_schedule.not_nil!
      OpenApi::EnumValidator.validate("payment_schedule", _payment_schedule, VALID_VALUES_FOR_PAYMENT_SCHEDULE)
      @payment_schedule = _payment_schedule
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transaction_type Object to be assigned
    def transaction_type=(transaction_type : String?)
      if transaction_type.nil?
        raise ArgumentError.new("\"transaction_type\" is required and cannot be null")
      end
      _transaction_type = transaction_type.not_nil!
      OpenApi::EnumValidator.validate("transaction_type", _transaction_type, VALID_VALUES_FOR_TRANSACTION_TYPE)
      @transaction_type = _transaction_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] default_for Object to be assigned
    def default_for=(default_for : Array(String)?)
      if default_for.nil?
        return @default_for = nil
      end
      _default_for = default_for.not_nil!
      OpenApi::EnumValidator.validate("default_for", _default_for, VALID_VALUES_FOR_DEFAULT_FOR)
      @default_for = _default_for
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] interval_description Object to be assigned
    def interval_description=(interval_description : String?)
      if interval_description.nil?
        return @interval_description = nil
      end
      _interval_description = interval_description.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("interval_description", _interval_description.to_s.size, MAX_LENGTH_FOR_INTERVAL_DESCRIPTION)
      @interval_description = _interval_description
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@payment_schedule, @transaction_type, @default_for, @interval_description, @interval_description_present)
  end
end
