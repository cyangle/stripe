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
  class OutboundPaymentsPaymentMethodDetails
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    @[JSON::Field(key: "billing_details", type: UfaResourceBillingDetails)]
    property billing_details : UfaResourceBillingDetails

    # The type of the payment method used in the OutboundPayment.
    @[JSON::Field(key: "type", type: String)]
    getter _type : String

    ENUM_VALIDATOR_FOR__TYPE = EnumValidator.new("_type", "String", ["financial_account", "us_bank_account"])

    # Optional properties

    @[JSON::Field(key: "financial_account", type: OutboundPaymentsPaymentMethodDetailsFinancialAccount?, presence: true, ignore_serialize: financial_account.nil? && !financial_account_present?)]
    property financial_account : OutboundPaymentsPaymentMethodDetailsFinancialAccount?

    @[JSON::Field(ignore: true)]
    property? financial_account_present : Bool = false

    @[JSON::Field(key: "us_bank_account", type: OutboundPaymentsPaymentMethodDetailsUsBankAccount?, presence: true, ignore_serialize: us_bank_account.nil? && !us_bank_account_present?)]
    property us_bank_account : OutboundPaymentsPaymentMethodDetailsUsBankAccount?

    @[JSON::Field(ignore: true)]
    property? us_bank_account_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @billing_details : UfaResourceBillingDetails,
      @_type : String,
      # Optional properties
      @financial_account : OutboundPaymentsPaymentMethodDetailsFinancialAccount? = nil,
      @us_bank_account : OutboundPaymentsPaymentMethodDetailsUsBankAccount? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR__TYPE.error_message) unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type, false)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type, false)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(_type)
      ENUM_VALIDATOR_FOR__TYPE.valid!(_type, false)
      @_type = _type
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
    def_equals_and_hash(@billing_details, @_type, @financial_account, @us_bank_account)
  end
end
