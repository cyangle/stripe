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
  # Options for customizing how the account functions within Stripe.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class SettingsSpecsUpdate
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    @[JSON::Field(key: "branding", type: BrandingSettingsSpecs?, presence: true, ignore_serialize: branding.nil? && !branding_present?)]
    property branding : BrandingSettingsSpecs?

    @[JSON::Field(ignore: true)]
    property? branding_present : Bool = false

    @[JSON::Field(key: "card_issuing", type: CardIssuingSettingsSpecs?, presence: true, ignore_serialize: card_issuing.nil? && !card_issuing_present?)]
    property card_issuing : CardIssuingSettingsSpecs?

    @[JSON::Field(ignore: true)]
    property? card_issuing_present : Bool = false

    @[JSON::Field(key: "card_payments", type: CardPaymentsSettingsSpecs?, presence: true, ignore_serialize: card_payments.nil? && !card_payments_present?)]
    property card_payments : CardPaymentsSettingsSpecs?

    @[JSON::Field(ignore: true)]
    property? card_payments_present : Bool = false

    @[JSON::Field(key: "payments", type: PaymentsSettingsSpecs?, presence: true, ignore_serialize: payments.nil? && !payments_present?)]
    property payments : PaymentsSettingsSpecs?

    @[JSON::Field(ignore: true)]
    property? payments_present : Bool = false

    @[JSON::Field(key: "payouts", type: PayoutSettingsSpecs?, presence: true, ignore_serialize: payouts.nil? && !payouts_present?)]
    property payouts : PayoutSettingsSpecs?

    @[JSON::Field(ignore: true)]
    property? payouts_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @branding : BrandingSettingsSpecs? = nil,
      @card_issuing : CardIssuingSettingsSpecs? = nil,
      @card_payments : CardPaymentsSettingsSpecs? = nil,
      @payments : PaymentsSettingsSpecs? = nil,
      @payouts : PayoutSettingsSpecs? = nil
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
    def_equals_and_hash(@branding, @card_issuing, @card_payments, @payments, @payouts)
  end
end
