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
  class CheckoutAcssDebitMandateOptions
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    # A URL for custom mandate text
    @[JSON::Field(key: "custom_mandate_url", type: String?, presence: true, ignore_serialize: custom_mandate_url.nil? && !custom_mandate_url_present?)]
    getter custom_mandate_url : String?

    @[JSON::Field(ignore: true)]
    property? custom_mandate_url_present : Bool = false

    # List of Stripe products where this mandate can be selected automatically. Returned when the Session is in `setup` mode.
    @[JSON::Field(key: "default_for", type: Array(String)?, presence: true, ignore_serialize: default_for.nil? && !default_for_present?)]
    getter default_for : Array(String)?

    @[JSON::Field(ignore: true)]
    property? default_for_present : Bool = false

    ENUM_VALIDATOR_FOR_DEFAULT_FOR = EnumValidator.new("default_for", "String", ["invoice", "subscription"])

    # Description of the interval. Only required if the 'payment_schedule' parameter is 'interval' or 'combined'.
    @[JSON::Field(key: "interval_description", type: String?, presence: true, ignore_serialize: interval_description.nil? && !interval_description_present?)]
    getter interval_description : String?

    @[JSON::Field(ignore: true)]
    property? interval_description_present : Bool = false

    # Payment schedule for the mandate.
    @[JSON::Field(key: "payment_schedule", type: String?, presence: true, ignore_serialize: payment_schedule.nil? && !payment_schedule_present?)]
    getter payment_schedule : String?

    @[JSON::Field(ignore: true)]
    property? payment_schedule_present : Bool = false

    ENUM_VALIDATOR_FOR_PAYMENT_SCHEDULE = EnumValidator.new("payment_schedule", "String", ["combined", "interval", "sporadic"])

    # Transaction type of the mandate.
    @[JSON::Field(key: "transaction_type", type: String?, presence: true, ignore_serialize: transaction_type.nil? && !transaction_type_present?)]
    getter transaction_type : String?

    @[JSON::Field(ignore: true)]
    property? transaction_type_present : Bool = false

    ENUM_VALIDATOR_FOR_TRANSACTION_TYPE = EnumValidator.new("transaction_type", "String", ["business", "personal"])

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @custom_mandate_url : String? = nil,
      @default_for : Array(String)? = nil,
      @interval_description : String? = nil,
      @payment_schedule : String? = nil,
      @transaction_type : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if !@custom_mandate_url.nil? && @custom_mandate_url.to_s.size > 5000
        invalid_properties.push("invalid value for \"custom_mandate_url\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_DEFAULT_FOR.error_message) unless ENUM_VALIDATOR_FOR_DEFAULT_FOR.all_valid?(@default_for)

      if !@interval_description.nil? && @interval_description.to_s.size > 5000
        invalid_properties.push("invalid value for \"interval_description\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_PAYMENT_SCHEDULE.error_message) unless ENUM_VALIDATOR_FOR_PAYMENT_SCHEDULE.valid?(@payment_schedule)

      invalid_properties.push(ENUM_VALIDATOR_FOR_TRANSACTION_TYPE.error_message) unless ENUM_VALIDATOR_FOR_TRANSACTION_TYPE.valid?(@transaction_type)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@custom_mandate_url.nil? && @custom_mandate_url.to_s.size > 5000
      return false unless ENUM_VALIDATOR_FOR_DEFAULT_FOR.all_valid?(@default_for)
      return false if !@interval_description.nil? && @interval_description.to_s.size > 5000
      return false unless ENUM_VALIDATOR_FOR_PAYMENT_SCHEDULE.valid?(@payment_schedule)
      return false unless ENUM_VALIDATOR_FOR_TRANSACTION_TYPE.valid?(@transaction_type)

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] custom_mandate_url Value to be assigned
    def custom_mandate_url=(custom_mandate_url)
      if !custom_mandate_url.nil? && custom_mandate_url.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"custom_mandate_url\", the character length must be smaller than or equal to 5000.")
      end

      @custom_mandate_url = custom_mandate_url
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] default_for Object to be assigned
    def default_for=(default_for)
      ENUM_VALIDATOR_FOR_DEFAULT_FOR.all_valid!(default_for)
      @default_for = default_for
    end

    # Custom attribute writer method with validation
    # @param [Object] interval_description Value to be assigned
    def interval_description=(interval_description)
      if !interval_description.nil? && interval_description.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"interval_description\", the character length must be smaller than or equal to 5000.")
      end

      @interval_description = interval_description
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_schedule Object to be assigned
    def payment_schedule=(payment_schedule)
      ENUM_VALIDATOR_FOR_PAYMENT_SCHEDULE.valid!(payment_schedule)
      @payment_schedule = payment_schedule
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transaction_type Object to be assigned
    def transaction_type=(transaction_type)
      ENUM_VALIDATOR_FOR_TRANSACTION_TYPE.valid!(transaction_type)
      @transaction_type = transaction_type
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
    def_equals_and_hash(@custom_mandate_url, @default_for, @interval_description, @payment_schedule, @transaction_type)
  end
end
