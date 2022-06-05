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
  class OrdersV2ResourcePayment
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    @[JSON::Field(key: "payment_intent", type: OrdersV2ResourcePaymentPaymentIntent?, presence: true, ignore_serialize: payment_intent.nil? && !payment_intent_present?)]
    property payment_intent : OrdersV2ResourcePaymentPaymentIntent?

    @[JSON::Field(ignore: true)]
    property? payment_intent_present : Bool = false

    @[JSON::Field(key: "settings", type: OrdersV2ResourcePaymentSettings1?, presence: true, ignore_serialize: settings.nil? && !settings_present?)]
    property settings : OrdersV2ResourcePaymentSettings1?

    @[JSON::Field(ignore: true)]
    property? settings_present : Bool = false

    # The status of the underlying payment associated with this order, if any. Null when the order is `open`.
    @[JSON::Field(key: "status", type: String?, presence: true, ignore_serialize: status.nil? && !status_present?)]
    getter status : String?

    @[JSON::Field(ignore: true)]
    property? status_present : Bool = false

    ENUM_VALIDATOR_FOR_STATUS = EnumValidator.new("status", "String", ["canceled", "complete", "not_required", "processing", "requires_action", "requires_capture", "requires_confirmation", "requires_payment_method"])

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @payment_intent : OrdersV2ResourcePaymentPaymentIntent? = nil,
      @settings : OrdersV2ResourcePaymentSettings1? = nil,
      @status : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_STATUS.error_message) unless ENUM_VALIDATOR_FOR_STATUS.valid?(@status)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR_STATUS.valid?(@status)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      ENUM_VALIDATOR_FOR_STATUS.valid!(status)
      @status = status
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
    def_equals_and_hash(@payment_intent, @settings, @status)
  end
end
