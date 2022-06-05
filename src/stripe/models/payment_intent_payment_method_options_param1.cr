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
  @[JSON::Serializable::Options(emit_nulls: true)]
  class PaymentIntentPaymentMethodOptionsParam1
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    @[JSON::Field(key: "bank_transfer", type: BankTransferParam1?, presence: true, ignore_serialize: bank_transfer.nil? && !bank_transfer_present?)]
    property bank_transfer : BankTransferParam1?

    @[JSON::Field(ignore: true)]
    property? bank_transfer_present : Bool = false

    @[JSON::Field(key: "funding_type", type: String?, presence: true, ignore_serialize: funding_type.nil? && !funding_type_present?)]
    getter funding_type : String?

    @[JSON::Field(ignore: true)]
    property? funding_type_present : Bool = false

    ENUM_VALIDATOR_FOR_FUNDING_TYPE = EnumValidator.new("funding_type", "String", ["bank_transfer"])

    @[JSON::Field(key: "setup_future_usage", type: String?, presence: true, ignore_serialize: setup_future_usage.nil? && !setup_future_usage_present?)]
    getter setup_future_usage : String?

    @[JSON::Field(ignore: true)]
    property? setup_future_usage_present : Bool = false

    ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE = EnumValidator.new("setup_future_usage", "String", ["none"])

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @bank_transfer : BankTransferParam1? = nil,
      @funding_type : String? = nil,
      @setup_future_usage : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_FUNDING_TYPE.error_message) unless ENUM_VALIDATOR_FOR_FUNDING_TYPE.valid?(@funding_type)

      invalid_properties.push(ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE.error_message) unless ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE.valid?(@setup_future_usage)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR_FUNDING_TYPE.valid?(@funding_type)
      return false unless ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE.valid?(@setup_future_usage)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] funding_type Object to be assigned
    def funding_type=(funding_type)
      ENUM_VALIDATOR_FOR_FUNDING_TYPE.valid!(funding_type)
      @funding_type = funding_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] setup_future_usage Object to be assigned
    def setup_future_usage=(setup_future_usage)
      ENUM_VALIDATOR_FOR_SETUP_FUTURE_USAGE.valid!(setup_future_usage)
      @setup_future_usage = setup_future_usage
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
    def_equals_and_hash(@bank_transfer, @funding_type, @setup_future_usage)
  end
end
