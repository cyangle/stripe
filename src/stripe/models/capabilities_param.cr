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
  # Each key of the dictionary represents a capability, and each capability maps to its settings (e.g. whether it has been requested or not). Each capability will be inactive until you have provided its specific requirements and Stripe has verified them. An account may have some of its requested capabilities be active and some be inactive.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class CapabilitiesParam
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    @[JSON::Field(key: "acss_debit_payments", type: CapabilityParam?, presence: true, ignore_serialize: acss_debit_payments.nil? && !acss_debit_payments_present?)]
    property acss_debit_payments : CapabilityParam?

    @[JSON::Field(ignore: true)]
    property? acss_debit_payments_present : Bool = false

    @[JSON::Field(key: "affirm_payments", type: CapabilityParam?, presence: true, ignore_serialize: affirm_payments.nil? && !affirm_payments_present?)]
    property affirm_payments : CapabilityParam?

    @[JSON::Field(ignore: true)]
    property? affirm_payments_present : Bool = false

    @[JSON::Field(key: "afterpay_clearpay_payments", type: CapabilityParam?, presence: true, ignore_serialize: afterpay_clearpay_payments.nil? && !afterpay_clearpay_payments_present?)]
    property afterpay_clearpay_payments : CapabilityParam?

    @[JSON::Field(ignore: true)]
    property? afterpay_clearpay_payments_present : Bool = false

    @[JSON::Field(key: "au_becs_debit_payments", type: CapabilityParam?, presence: true, ignore_serialize: au_becs_debit_payments.nil? && !au_becs_debit_payments_present?)]
    property au_becs_debit_payments : CapabilityParam?

    @[JSON::Field(ignore: true)]
    property? au_becs_debit_payments_present : Bool = false

    @[JSON::Field(key: "bacs_debit_payments", type: CapabilityParam?, presence: true, ignore_serialize: bacs_debit_payments.nil? && !bacs_debit_payments_present?)]
    property bacs_debit_payments : CapabilityParam?

    @[JSON::Field(ignore: true)]
    property? bacs_debit_payments_present : Bool = false

    @[JSON::Field(key: "bancontact_payments", type: CapabilityParam?, presence: true, ignore_serialize: bancontact_payments.nil? && !bancontact_payments_present?)]
    property bancontact_payments : CapabilityParam?

    @[JSON::Field(ignore: true)]
    property? bancontact_payments_present : Bool = false

    @[JSON::Field(key: "bank_transfer_payments", type: CapabilityParam?, presence: true, ignore_serialize: bank_transfer_payments.nil? && !bank_transfer_payments_present?)]
    property bank_transfer_payments : CapabilityParam?

    @[JSON::Field(ignore: true)]
    property? bank_transfer_payments_present : Bool = false

    @[JSON::Field(key: "boleto_payments", type: CapabilityParam?, presence: true, ignore_serialize: boleto_payments.nil? && !boleto_payments_present?)]
    property boleto_payments : CapabilityParam?

    @[JSON::Field(ignore: true)]
    property? boleto_payments_present : Bool = false

    @[JSON::Field(key: "card_issuing", type: CapabilityParam?, presence: true, ignore_serialize: card_issuing.nil? && !card_issuing_present?)]
    property card_issuing : CapabilityParam?

    @[JSON::Field(ignore: true)]
    property? card_issuing_present : Bool = false

    @[JSON::Field(key: "card_payments", type: CapabilityParam?, presence: true, ignore_serialize: card_payments.nil? && !card_payments_present?)]
    property card_payments : CapabilityParam?

    @[JSON::Field(ignore: true)]
    property? card_payments_present : Bool = false

    @[JSON::Field(key: "cartes_bancaires_payments", type: CapabilityParam?, presence: true, ignore_serialize: cartes_bancaires_payments.nil? && !cartes_bancaires_payments_present?)]
    property cartes_bancaires_payments : CapabilityParam?

    @[JSON::Field(ignore: true)]
    property? cartes_bancaires_payments_present : Bool = false

    @[JSON::Field(key: "eps_payments", type: CapabilityParam?, presence: true, ignore_serialize: eps_payments.nil? && !eps_payments_present?)]
    property eps_payments : CapabilityParam?

    @[JSON::Field(ignore: true)]
    property? eps_payments_present : Bool = false

    @[JSON::Field(key: "fpx_payments", type: CapabilityParam?, presence: true, ignore_serialize: fpx_payments.nil? && !fpx_payments_present?)]
    property fpx_payments : CapabilityParam?

    @[JSON::Field(ignore: true)]
    property? fpx_payments_present : Bool = false

    @[JSON::Field(key: "giropay_payments", type: CapabilityParam?, presence: true, ignore_serialize: giropay_payments.nil? && !giropay_payments_present?)]
    property giropay_payments : CapabilityParam?

    @[JSON::Field(ignore: true)]
    property? giropay_payments_present : Bool = false

    @[JSON::Field(key: "grabpay_payments", type: CapabilityParam?, presence: true, ignore_serialize: grabpay_payments.nil? && !grabpay_payments_present?)]
    property grabpay_payments : CapabilityParam?

    @[JSON::Field(ignore: true)]
    property? grabpay_payments_present : Bool = false

    @[JSON::Field(key: "ideal_payments", type: CapabilityParam?, presence: true, ignore_serialize: ideal_payments.nil? && !ideal_payments_present?)]
    property ideal_payments : CapabilityParam?

    @[JSON::Field(ignore: true)]
    property? ideal_payments_present : Bool = false

    @[JSON::Field(key: "jcb_payments", type: CapabilityParam?, presence: true, ignore_serialize: jcb_payments.nil? && !jcb_payments_present?)]
    property jcb_payments : CapabilityParam?

    @[JSON::Field(ignore: true)]
    property? jcb_payments_present : Bool = false

    @[JSON::Field(key: "klarna_payments", type: CapabilityParam?, presence: true, ignore_serialize: klarna_payments.nil? && !klarna_payments_present?)]
    property klarna_payments : CapabilityParam?

    @[JSON::Field(ignore: true)]
    property? klarna_payments_present : Bool = false

    @[JSON::Field(key: "konbini_payments", type: CapabilityParam?, presence: true, ignore_serialize: konbini_payments.nil? && !konbini_payments_present?)]
    property konbini_payments : CapabilityParam?

    @[JSON::Field(ignore: true)]
    property? konbini_payments_present : Bool = false

    @[JSON::Field(key: "legacy_payments", type: CapabilityParam?, presence: true, ignore_serialize: legacy_payments.nil? && !legacy_payments_present?)]
    property legacy_payments : CapabilityParam?

    @[JSON::Field(ignore: true)]
    property? legacy_payments_present : Bool = false

    @[JSON::Field(key: "link_payments", type: CapabilityParam?, presence: true, ignore_serialize: link_payments.nil? && !link_payments_present?)]
    property link_payments : CapabilityParam?

    @[JSON::Field(ignore: true)]
    property? link_payments_present : Bool = false

    @[JSON::Field(key: "oxxo_payments", type: CapabilityParam?, presence: true, ignore_serialize: oxxo_payments.nil? && !oxxo_payments_present?)]
    property oxxo_payments : CapabilityParam?

    @[JSON::Field(ignore: true)]
    property? oxxo_payments_present : Bool = false

    @[JSON::Field(key: "p24_payments", type: CapabilityParam?, presence: true, ignore_serialize: p24_payments.nil? && !p24_payments_present?)]
    property p24_payments : CapabilityParam?

    @[JSON::Field(ignore: true)]
    property? p24_payments_present : Bool = false

    @[JSON::Field(key: "paynow_payments", type: CapabilityParam?, presence: true, ignore_serialize: paynow_payments.nil? && !paynow_payments_present?)]
    property paynow_payments : CapabilityParam?

    @[JSON::Field(ignore: true)]
    property? paynow_payments_present : Bool = false

    @[JSON::Field(key: "sepa_debit_payments", type: CapabilityParam?, presence: true, ignore_serialize: sepa_debit_payments.nil? && !sepa_debit_payments_present?)]
    property sepa_debit_payments : CapabilityParam?

    @[JSON::Field(ignore: true)]
    property? sepa_debit_payments_present : Bool = false

    @[JSON::Field(key: "sofort_payments", type: CapabilityParam?, presence: true, ignore_serialize: sofort_payments.nil? && !sofort_payments_present?)]
    property sofort_payments : CapabilityParam?

    @[JSON::Field(ignore: true)]
    property? sofort_payments_present : Bool = false

    @[JSON::Field(key: "tax_reporting_us_1099_k", type: CapabilityParam?, presence: true, ignore_serialize: tax_reporting_us_1099_k.nil? && !tax_reporting_us_1099_k_present?)]
    property tax_reporting_us_1099_k : CapabilityParam?

    @[JSON::Field(ignore: true)]
    property? tax_reporting_us_1099_k_present : Bool = false

    @[JSON::Field(key: "tax_reporting_us_1099_misc", type: CapabilityParam?, presence: true, ignore_serialize: tax_reporting_us_1099_misc.nil? && !tax_reporting_us_1099_misc_present?)]
    property tax_reporting_us_1099_misc : CapabilityParam?

    @[JSON::Field(ignore: true)]
    property? tax_reporting_us_1099_misc_present : Bool = false

    @[JSON::Field(key: "transfers", type: CapabilityParam?, presence: true, ignore_serialize: transfers.nil? && !transfers_present?)]
    property transfers : CapabilityParam?

    @[JSON::Field(ignore: true)]
    property? transfers_present : Bool = false

    @[JSON::Field(key: "treasury", type: CapabilityParam?, presence: true, ignore_serialize: treasury.nil? && !treasury_present?)]
    property treasury : CapabilityParam?

    @[JSON::Field(ignore: true)]
    property? treasury_present : Bool = false

    @[JSON::Field(key: "us_bank_account_ach_payments", type: CapabilityParam?, presence: true, ignore_serialize: us_bank_account_ach_payments.nil? && !us_bank_account_ach_payments_present?)]
    property us_bank_account_ach_payments : CapabilityParam?

    @[JSON::Field(ignore: true)]
    property? us_bank_account_ach_payments_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @acss_debit_payments : CapabilityParam? = nil,
      @affirm_payments : CapabilityParam? = nil,
      @afterpay_clearpay_payments : CapabilityParam? = nil,
      @au_becs_debit_payments : CapabilityParam? = nil,
      @bacs_debit_payments : CapabilityParam? = nil,
      @bancontact_payments : CapabilityParam? = nil,
      @bank_transfer_payments : CapabilityParam? = nil,
      @boleto_payments : CapabilityParam? = nil,
      @card_issuing : CapabilityParam? = nil,
      @card_payments : CapabilityParam? = nil,
      @cartes_bancaires_payments : CapabilityParam? = nil,
      @eps_payments : CapabilityParam? = nil,
      @fpx_payments : CapabilityParam? = nil,
      @giropay_payments : CapabilityParam? = nil,
      @grabpay_payments : CapabilityParam? = nil,
      @ideal_payments : CapabilityParam? = nil,
      @jcb_payments : CapabilityParam? = nil,
      @klarna_payments : CapabilityParam? = nil,
      @konbini_payments : CapabilityParam? = nil,
      @legacy_payments : CapabilityParam? = nil,
      @link_payments : CapabilityParam? = nil,
      @oxxo_payments : CapabilityParam? = nil,
      @p24_payments : CapabilityParam? = nil,
      @paynow_payments : CapabilityParam? = nil,
      @sepa_debit_payments : CapabilityParam? = nil,
      @sofort_payments : CapabilityParam? = nil,
      @tax_reporting_us_1099_k : CapabilityParam? = nil,
      @tax_reporting_us_1099_misc : CapabilityParam? = nil,
      @transfers : CapabilityParam? = nil,
      @treasury : CapabilityParam? = nil,
      @us_bank_account_ach_payments : CapabilityParam? = nil
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
    def_equals_and_hash(@acss_debit_payments, @acss_debit_payments_present, @affirm_payments, @affirm_payments_present, @afterpay_clearpay_payments, @afterpay_clearpay_payments_present, @au_becs_debit_payments, @au_becs_debit_payments_present, @bacs_debit_payments, @bacs_debit_payments_present, @bancontact_payments, @bancontact_payments_present, @bank_transfer_payments, @bank_transfer_payments_present, @boleto_payments, @boleto_payments_present, @card_issuing, @card_issuing_present, @card_payments, @card_payments_present, @cartes_bancaires_payments, @cartes_bancaires_payments_present, @eps_payments, @eps_payments_present, @fpx_payments, @fpx_payments_present, @giropay_payments, @giropay_payments_present, @grabpay_payments, @grabpay_payments_present, @ideal_payments, @ideal_payments_present, @jcb_payments, @jcb_payments_present, @klarna_payments, @klarna_payments_present, @konbini_payments, @konbini_payments_present, @legacy_payments, @legacy_payments_present, @link_payments, @link_payments_present, @oxxo_payments, @oxxo_payments_present, @p24_payments, @p24_payments_present, @paynow_payments, @paynow_payments_present, @sepa_debit_payments, @sepa_debit_payments_present, @sofort_payments, @sofort_payments_present, @tax_reporting_us_1099_k, @tax_reporting_us_1099_k_present, @tax_reporting_us_1099_misc, @tax_reporting_us_1099_misc_present, @transfers, @transfers_present, @treasury, @treasury_present, @us_bank_account_ach_payments, @us_bank_account_ach_payments_present)
  end
end
