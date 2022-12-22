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
  class PaymentIntentPaymentMethodOptionsMandateOptionsAcssDebit
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # A URL for custom mandate text
    @[JSON::Field(key: "custom_mandate_url", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter custom_mandate_url : String? = nil
    MAX_LENGTH_FOR_CUSTOM_MANDATE_URL = 5000

    # Description of the interval. Only required if the 'payment_schedule' parameter is 'interval' or 'combined'.
    @[JSON::Field(key: "interval_description", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: interval_description.nil? && !interval_description_present?)]
    getter interval_description : String? = nil
    MAX_LENGTH_FOR_INTERVAL_DESCRIPTION = 5000

    @[JSON::Field(ignore: true)]
    property? interval_description_present : Bool = false

    # Payment schedule for the mandate.
    @[JSON::Field(key: "payment_schedule", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: payment_schedule.nil? && !payment_schedule_present?)]
    getter payment_schedule : String? = nil
    ERROR_MESSAGE_FOR_PAYMENT_SCHEDULE = "invalid value for \"payment_schedule\", must be one of [combined, interval, sporadic]."
    VALID_VALUES_FOR_PAYMENT_SCHEDULE  = String.static_array("combined", "interval", "sporadic")

    @[JSON::Field(ignore: true)]
    property? payment_schedule_present : Bool = false

    # Transaction type of the mandate.
    @[JSON::Field(key: "transaction_type", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: transaction_type.nil? && !transaction_type_present?)]
    getter transaction_type : String? = nil
    ERROR_MESSAGE_FOR_TRANSACTION_TYPE = "invalid value for \"transaction_type\", must be one of [business, personal]."
    VALID_VALUES_FOR_TRANSACTION_TYPE  = String.static_array("business", "personal")

    @[JSON::Field(ignore: true)]
    property? transaction_type_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @custom_mandate_url : String? = nil,
      @interval_description : String? = nil,
      @payment_schedule : String? = nil,
      @transaction_type : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_custom_mandate_url = @custom_mandate_url).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("custom_mandate_url", _custom_mandate_url.to_s.size, MAX_LENGTH_FOR_CUSTOM_MANDATE_URL)
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
      unless (_transaction_type = @transaction_type).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_TRANSACTION_TYPE) unless OpenApi::EnumValidator.valid?(_transaction_type, VALID_VALUES_FOR_TRANSACTION_TYPE)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_custom_mandate_url = @custom_mandate_url).nil?
        return false if _custom_mandate_url.to_s.size > MAX_LENGTH_FOR_CUSTOM_MANDATE_URL
      end

      unless (_interval_description = @interval_description).nil?
        return false if _interval_description.to_s.size > MAX_LENGTH_FOR_INTERVAL_DESCRIPTION
      end

      unless (_payment_schedule = @payment_schedule).nil?
        return false unless OpenApi::EnumValidator.valid?(_payment_schedule, VALID_VALUES_FOR_PAYMENT_SCHEDULE)
      end

      unless (_transaction_type = @transaction_type).nil?
        return false unless OpenApi::EnumValidator.valid?(_transaction_type, VALID_VALUES_FOR_TRANSACTION_TYPE)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] custom_mandate_url Object to be assigned
    def custom_mandate_url=(custom_mandate_url : String?)
      if custom_mandate_url.nil?
        return @custom_mandate_url = nil
      end
      _custom_mandate_url = custom_mandate_url.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("custom_mandate_url", _custom_mandate_url.to_s.size, MAX_LENGTH_FOR_CUSTOM_MANDATE_URL)
      @custom_mandate_url = _custom_mandate_url
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

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_schedule Object to be assigned
    def payment_schedule=(payment_schedule : String?)
      if payment_schedule.nil?
        return @payment_schedule = nil
      end
      _payment_schedule = payment_schedule.not_nil!
      OpenApi::EnumValidator.validate("payment_schedule", _payment_schedule, VALID_VALUES_FOR_PAYMENT_SCHEDULE)
      @payment_schedule = _payment_schedule
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transaction_type Object to be assigned
    def transaction_type=(transaction_type : String?)
      if transaction_type.nil?
        return @transaction_type = nil
      end
      _transaction_type = transaction_type.not_nil!
      OpenApi::EnumValidator.validate("transaction_type", _transaction_type, VALID_VALUES_FOR_TRANSACTION_TYPE)
      @transaction_type = _transaction_type
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@custom_mandate_url, @interval_description, @interval_description_present, @payment_schedule, @payment_schedule_present, @transaction_type, @transaction_type_present)
  end
end
