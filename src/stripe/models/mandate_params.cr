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
  # Information about a mandate possibility attached to a source object (generally for bank debits) as well as its acceptance status.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class MandateParams
    include JSON::Serializable
    include JSON::Serializable::Unmapped


    # Optional properties

    @[JSON::Field(key: "acceptance", type: MandateAcceptanceParams?, presence: true, ignore_serialize: acceptance.nil? && !acceptance_present?)]
    property acceptance : MandateAcceptanceParams?

    @[JSON::Field(ignore: true)]
    property? acceptance_present : Bool = false

    @[JSON::Field(key: "amount", type: UpdateParams1ApplicationFeeAmount?, presence: true, ignore_serialize: amount.nil? && !amount_present?)]
    property amount : UpdateParams1ApplicationFeeAmount?

    @[JSON::Field(ignore: true)]
    property? amount_present : Bool = false

    @[JSON::Field(key: "currency", type: String?, presence: true, ignore_serialize: currency.nil? && !currency_present?)]
    property currency : String?

    @[JSON::Field(ignore: true)]
    property? currency_present : Bool = false

    @[JSON::Field(key: "interval", type: String?, presence: true, ignore_serialize: interval.nil? && !interval_present?)]
    getter interval : String?

    @[JSON::Field(ignore: true)]
    property? interval_present : Bool = false

    ENUM_VALIDATOR_FOR_INTERVAL = EnumValidator.new("interval", "String", ["one_time", "scheduled", "variable"])

    @[JSON::Field(key: "notification_method", type: String?, presence: true, ignore_serialize: notification_method.nil? && !notification_method_present?)]
    getter notification_method : String?

    @[JSON::Field(ignore: true)]
    property? notification_method_present : Bool = false

    ENUM_VALIDATOR_FOR_NOTIFICATION_METHOD = EnumValidator.new("notification_method", "String", ["deprecated_none", "email", "manual", "none", "stripe_email"])

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *, 
      # Optional properties
      @acceptance : MandateAcceptanceParams? = nil, 
      @amount : UpdateParams1ApplicationFeeAmount? = nil, 
      @currency : String? = nil, 
      @interval : String? = nil, 
      @notification_method : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_INTERVAL.error_message) unless ENUM_VALIDATOR_FOR_INTERVAL.valid?(@interval)

      if !@interval.nil? && @interval.to_s.size > 5000
        invalid_properties.push("invalid value for \"interval\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_NOTIFICATION_METHOD.error_message) unless ENUM_VALIDATOR_FOR_NOTIFICATION_METHOD.valid?(@notification_method)

      if !@notification_method.nil? && @notification_method.to_s.size > 5000
        invalid_properties.push("invalid value for \"notification_method\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR_INTERVAL.valid?(@interval)
      return false if !@interval.nil? && @interval.to_s.size > 5000
      return false unless ENUM_VALIDATOR_FOR_NOTIFICATION_METHOD.valid?(@notification_method)
      return false if !@notification_method.nil? && @notification_method.to_s.size > 5000

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] interval Object to be assigned
    def interval=(interval)
      ENUM_VALIDATOR_FOR_INTERVAL.valid!(interval)
      @interval = interval
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] notification_method Object to be assigned
    def notification_method=(notification_method)
      ENUM_VALIDATOR_FOR_NOTIFICATION_METHOD.valid!(notification_method)
      @notification_method = notification_method
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
    def_equals_and_hash(@acceptance, @amount, @currency, @interval, @notification_method)
  end
end
