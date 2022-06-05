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
  class PaymentMethodOptions1
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    @[JSON::Field(key: "acss_debit", type: PaymentMethodOptionsAcssDebit?, presence: true, ignore_serialize: acss_debit.nil? && !acss_debit_present?)]
    property acss_debit : PaymentMethodOptionsAcssDebit?

    @[JSON::Field(ignore: true)]
    property? acss_debit_present : Bool = false

    @[JSON::Field(key: "bancontact", type: PaymentMethodOptionsBancontact1?, presence: true, ignore_serialize: bancontact.nil? && !bancontact_present?)]
    property bancontact : PaymentMethodOptionsBancontact1?

    @[JSON::Field(ignore: true)]
    property? bancontact_present : Bool = false

    @[JSON::Field(key: "card", type: PaymentMethodOptions1Card?, presence: true, ignore_serialize: card.nil? && !card_present?)]
    property card : PaymentMethodOptions1Card?

    @[JSON::Field(ignore: true)]
    property? card_present : Bool = false

    @[JSON::Field(key: "customer_balance", type: PaymentMethodOptionsCustomerBalance1?, presence: true, ignore_serialize: customer_balance.nil? && !customer_balance_present?)]
    property customer_balance : PaymentMethodOptionsCustomerBalance1?

    @[JSON::Field(ignore: true)]
    property? customer_balance_present : Bool = false

    @[JSON::Field(key: "konbini", type: PaymentMethodOptionsKonbini1?, presence: true, ignore_serialize: konbini.nil? && !konbini_present?)]
    property konbini : PaymentMethodOptionsKonbini1?

    @[JSON::Field(ignore: true)]
    property? konbini_present : Bool = false

    @[JSON::Field(key: "us_bank_account", type: PaymentMethodOptionsUsBankAccount?, presence: true, ignore_serialize: us_bank_account.nil? && !us_bank_account_present?)]
    property us_bank_account : PaymentMethodOptionsUsBankAccount?

    @[JSON::Field(ignore: true)]
    property? us_bank_account_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @acss_debit : PaymentMethodOptionsAcssDebit? = nil,
      @bancontact : PaymentMethodOptionsBancontact1? = nil,
      @card : PaymentMethodOptions1Card? = nil,
      @customer_balance : PaymentMethodOptionsCustomerBalance1? = nil,
      @konbini : PaymentMethodOptionsKonbini1? = nil,
      @us_bank_account : PaymentMethodOptionsUsBankAccount? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
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
    def_equals_and_hash(@acss_debit, @bancontact, @card, @customer_balance, @konbini, @us_bank_account)
  end
end
