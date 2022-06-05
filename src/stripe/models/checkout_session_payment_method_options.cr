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
  class CheckoutSessionPaymentMethodOptions
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    @[JSON::Field(key: "acss_debit", type: CheckoutAcssDebitPaymentMethodOptions?, presence: true, ignore_serialize: acss_debit.nil? && !acss_debit_present?)]
    property acss_debit : CheckoutAcssDebitPaymentMethodOptions?

    @[JSON::Field(ignore: true)]
    property? acss_debit_present : Bool = false

    #
    @[JSON::Field(key: "afterpay_clearpay", type: JSON::Any, presence: true, ignore_serialize: afterpay_clearpay.nil? && !afterpay_clearpay_present?)]
    property afterpay_clearpay : JSON::Any

    @[JSON::Field(ignore: true)]
    property? afterpay_clearpay_present : Bool = false

    #
    @[JSON::Field(key: "alipay", type: JSON::Any, presence: true, ignore_serialize: alipay.nil? && !alipay_present?)]
    property alipay : JSON::Any

    @[JSON::Field(ignore: true)]
    property? alipay_present : Bool = false

    #
    @[JSON::Field(key: "au_becs_debit", type: JSON::Any, presence: true, ignore_serialize: au_becs_debit.nil? && !au_becs_debit_present?)]
    property au_becs_debit : JSON::Any

    @[JSON::Field(ignore: true)]
    property? au_becs_debit_present : Bool = false

    #
    @[JSON::Field(key: "bacs_debit", type: JSON::Any, presence: true, ignore_serialize: bacs_debit.nil? && !bacs_debit_present?)]
    property bacs_debit : JSON::Any

    @[JSON::Field(ignore: true)]
    property? bacs_debit_present : Bool = false

    @[JSON::Field(key: "boleto", type: CheckoutBoletoPaymentMethodOptions?, presence: true, ignore_serialize: boleto.nil? && !boleto_present?)]
    property boleto : CheckoutBoletoPaymentMethodOptions?

    @[JSON::Field(ignore: true)]
    property? boleto_present : Bool = false

    #
    @[JSON::Field(key: "eps", type: JSON::Any, presence: true, ignore_serialize: eps.nil? && !eps_present?)]
    property eps : JSON::Any

    @[JSON::Field(ignore: true)]
    property? eps_present : Bool = false

    #
    @[JSON::Field(key: "fpx", type: JSON::Any, presence: true, ignore_serialize: fpx.nil? && !fpx_present?)]
    property fpx : JSON::Any

    @[JSON::Field(ignore: true)]
    property? fpx_present : Bool = false

    #
    @[JSON::Field(key: "giropay", type: JSON::Any, presence: true, ignore_serialize: giropay.nil? && !giropay_present?)]
    property giropay : JSON::Any

    @[JSON::Field(ignore: true)]
    property? giropay_present : Bool = false

    #
    @[JSON::Field(key: "grabpay", type: JSON::Any, presence: true, ignore_serialize: grabpay.nil? && !grabpay_present?)]
    property grabpay : JSON::Any

    @[JSON::Field(ignore: true)]
    property? grabpay_present : Bool = false

    #
    @[JSON::Field(key: "klarna", type: JSON::Any, presence: true, ignore_serialize: klarna.nil? && !klarna_present?)]
    property klarna : JSON::Any

    @[JSON::Field(ignore: true)]
    property? klarna_present : Bool = false

    @[JSON::Field(key: "konbini", type: CheckoutKonbiniPaymentMethodOptions?, presence: true, ignore_serialize: konbini.nil? && !konbini_present?)]
    property konbini : CheckoutKonbiniPaymentMethodOptions?

    @[JSON::Field(ignore: true)]
    property? konbini_present : Bool = false

    @[JSON::Field(key: "oxxo", type: CheckoutOxxoPaymentMethodOptions?, presence: true, ignore_serialize: oxxo.nil? && !oxxo_present?)]
    property oxxo : CheckoutOxxoPaymentMethodOptions?

    @[JSON::Field(ignore: true)]
    property? oxxo_present : Bool = false

    #
    @[JSON::Field(key: "paynow", type: JSON::Any, presence: true, ignore_serialize: paynow.nil? && !paynow_present?)]
    property paynow : JSON::Any

    @[JSON::Field(ignore: true)]
    property? paynow_present : Bool = false

    #
    @[JSON::Field(key: "sepa_debit", type: JSON::Any, presence: true, ignore_serialize: sepa_debit.nil? && !sepa_debit_present?)]
    property sepa_debit : JSON::Any

    @[JSON::Field(ignore: true)]
    property? sepa_debit_present : Bool = false

    @[JSON::Field(key: "us_bank_account", type: CheckoutUsBankAccountPaymentMethodOptions?, presence: true, ignore_serialize: us_bank_account.nil? && !us_bank_account_present?)]
    property us_bank_account : CheckoutUsBankAccountPaymentMethodOptions?

    @[JSON::Field(ignore: true)]
    property? us_bank_account_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @acss_debit : CheckoutAcssDebitPaymentMethodOptions? = nil,
      @afterpay_clearpay : JSON::Any = nil,
      @alipay : JSON::Any = nil,
      @au_becs_debit : JSON::Any = nil,
      @bacs_debit : JSON::Any = nil,
      @boleto : CheckoutBoletoPaymentMethodOptions? = nil,
      @eps : JSON::Any = nil,
      @fpx : JSON::Any = nil,
      @giropay : JSON::Any = nil,
      @grabpay : JSON::Any = nil,
      @klarna : JSON::Any = nil,
      @konbini : CheckoutKonbiniPaymentMethodOptions? = nil,
      @oxxo : CheckoutOxxoPaymentMethodOptions? = nil,
      @paynow : JSON::Any = nil,
      @sepa_debit : JSON::Any = nil,
      @us_bank_account : CheckoutUsBankAccountPaymentMethodOptions? = nil
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
    def_equals_and_hash(@acss_debit, @afterpay_clearpay, @alipay, @au_becs_debit, @bacs_debit, @boleto, @eps, @fpx, @giropay, @grabpay, @klarna, @konbini, @oxxo, @paynow, @sepa_debit, @us_bank_account)
  end
end
