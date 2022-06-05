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
  class SetupIntentPaymentMethodOptions
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    @[JSON::Field(key: "acss_debit", type: SetupIntentPaymentMethodOptionsAcssDebit1?, presence: true, ignore_serialize: acss_debit.nil? && !acss_debit_present?)]
    property acss_debit : SetupIntentPaymentMethodOptionsAcssDebit1?

    @[JSON::Field(ignore: true)]
    property? acss_debit_present : Bool = false

    @[JSON::Field(key: "card", type: SetupIntentPaymentMethodOptionsCard?, presence: true, ignore_serialize: card.nil? && !card_present?)]
    property card : SetupIntentPaymentMethodOptionsCard?

    @[JSON::Field(ignore: true)]
    property? card_present : Bool = false

    @[JSON::Field(key: "link", type: SetupIntentPaymentMethodOptionsLink1?, presence: true, ignore_serialize: link.nil? && !link_present?)]
    property link : SetupIntentPaymentMethodOptionsLink1?

    @[JSON::Field(ignore: true)]
    property? link_present : Bool = false

    @[JSON::Field(key: "sepa_debit", type: SetupIntentPaymentMethodOptionsSepaDebit1?, presence: true, ignore_serialize: sepa_debit.nil? && !sepa_debit_present?)]
    property sepa_debit : SetupIntentPaymentMethodOptionsSepaDebit1?

    @[JSON::Field(ignore: true)]
    property? sepa_debit_present : Bool = false

    @[JSON::Field(key: "us_bank_account", type: SetupIntentPaymentMethodOptionsUsBankAccount1?, presence: true, ignore_serialize: us_bank_account.nil? && !us_bank_account_present?)]
    property us_bank_account : SetupIntentPaymentMethodOptionsUsBankAccount1?

    @[JSON::Field(ignore: true)]
    property? us_bank_account_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @acss_debit : SetupIntentPaymentMethodOptionsAcssDebit1? = nil,
      @card : SetupIntentPaymentMethodOptionsCard? = nil,
      @link : SetupIntentPaymentMethodOptionsLink1? = nil,
      @sepa_debit : SetupIntentPaymentMethodOptionsSepaDebit1? = nil,
      @us_bank_account : SetupIntentPaymentMethodOptionsUsBankAccount1? = nil
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
    def_equals_and_hash(@acss_debit, @card, @link, @sepa_debit, @us_bank_account)
  end
end
