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
  class MandatePaymentMethodDetails
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # The type of the payment method associated with this mandate. An additional hash is included on `payment_method_details` with a name matching this value. It contains mandate information specific to the payment method.
    @[JSON::Field(key: "type", type: String)]
    getter _type : String

    # Optional properties

    @[JSON::Field(key: "acss_debit", type: MandateAcssDebit?, presence: true, ignore_serialize: acss_debit.nil? && !acss_debit_present?)]
    property acss_debit : MandateAcssDebit?

    @[JSON::Field(ignore: true)]
    property? acss_debit_present : Bool = false

    @[JSON::Field(key: "au_becs_debit", type: MandateAuBecsDebit?, presence: true, ignore_serialize: au_becs_debit.nil? && !au_becs_debit_present?)]
    property au_becs_debit : MandateAuBecsDebit?

    @[JSON::Field(ignore: true)]
    property? au_becs_debit_present : Bool = false

    @[JSON::Field(key: "bacs_debit", type: MandateBacsDebit?, presence: true, ignore_serialize: bacs_debit.nil? && !bacs_debit_present?)]
    property bacs_debit : MandateBacsDebit?

    @[JSON::Field(ignore: true)]
    property? bacs_debit_present : Bool = false

    #
    @[JSON::Field(key: "card", type: JSON::Any?, presence: true, ignore_serialize: card.nil? && !card_present?)]
    property card : JSON::Any?

    @[JSON::Field(ignore: true)]
    property? card_present : Bool = false

    #
    @[JSON::Field(key: "link", type: JSON::Any?, presence: true, ignore_serialize: link.nil? && !link_present?)]
    property link : JSON::Any?

    @[JSON::Field(ignore: true)]
    property? link_present : Bool = false

    @[JSON::Field(key: "sepa_debit", type: MandateSepaDebit?, presence: true, ignore_serialize: sepa_debit.nil? && !sepa_debit_present?)]
    property sepa_debit : MandateSepaDebit?

    @[JSON::Field(ignore: true)]
    property? sepa_debit_present : Bool = false

    #
    @[JSON::Field(key: "us_bank_account", type: JSON::Any?, presence: true, ignore_serialize: us_bank_account.nil? && !us_bank_account_present?)]
    property us_bank_account : JSON::Any?

    @[JSON::Field(ignore: true)]
    property? us_bank_account_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @_type : String,
      # Optional properties
      @acss_debit : MandateAcssDebit? = nil,
      @au_becs_debit : MandateAuBecsDebit? = nil,
      @bacs_debit : MandateBacsDebit? = nil,
      @card : JSON::Any? = nil,
      @link : JSON::Any? = nil,
      @sepa_debit : MandateSepaDebit? = nil,
      @us_bank_account : JSON::Any? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if @_type.to_s.size > 5000
        invalid_properties.push("invalid value for \"_type\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @_type.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] _type Value to be assigned
    def _type=(_type : String)
      if _type.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"_type\", the character length must be smaller than or equal to 5000.")
      end

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
    def_equals_and_hash(@_type, @acss_debit, @acss_debit_present, @au_becs_debit, @au_becs_debit_present, @bacs_debit, @bacs_debit_present, @card, @card_present2, @link, @link_present, @sepa_debit, @sepa_debit_present, @us_bank_account, @us_bank_account_present)
  end
end
