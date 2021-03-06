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
  # Payment-method-specific configuration for this PaymentIntent.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class PaymentMethodOptionsParam11
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    @[JSON::Field(key: "acss_debit", type: UpdateParams1AcssDebit?, presence: true, ignore_serialize: acss_debit.nil? && !acss_debit_present?)]
    property acss_debit : UpdateParams1AcssDebit?

    @[JSON::Field(ignore: true)]
    property? acss_debit_present : Bool = false

    @[JSON::Field(key: "affirm", type: PaymentMethodOptionsParam11Affirm?, presence: true, ignore_serialize: affirm.nil? && !affirm_present?)]
    property affirm : PaymentMethodOptionsParam11Affirm?

    @[JSON::Field(ignore: true)]
    property? affirm_present : Bool = false

    @[JSON::Field(key: "afterpay_clearpay", type: PaymentMethodOptionsParam11AfterpayClearpay?, presence: true, ignore_serialize: afterpay_clearpay.nil? && !afterpay_clearpay_present?)]
    property afterpay_clearpay : PaymentMethodOptionsParam11AfterpayClearpay?

    @[JSON::Field(ignore: true)]
    property? afterpay_clearpay_present : Bool = false

    @[JSON::Field(key: "alipay", type: UpdateParams1Alipay?, presence: true, ignore_serialize: alipay.nil? && !alipay_present?)]
    property alipay : UpdateParams1Alipay?

    @[JSON::Field(ignore: true)]
    property? alipay_present : Bool = false

    @[JSON::Field(key: "au_becs_debit", type: PaymentMethodOptionsParam11AuBecsDebit?, presence: true, ignore_serialize: au_becs_debit.nil? && !au_becs_debit_present?)]
    property au_becs_debit : PaymentMethodOptionsParam11AuBecsDebit?

    @[JSON::Field(ignore: true)]
    property? au_becs_debit_present : Bool = false

    @[JSON::Field(key: "bacs_debit", type: PaymentMethodOptionsParam11BacsDebit?, presence: true, ignore_serialize: bacs_debit.nil? && !bacs_debit_present?)]
    property bacs_debit : PaymentMethodOptionsParam11BacsDebit?

    @[JSON::Field(ignore: true)]
    property? bacs_debit_present : Bool = false

    @[JSON::Field(key: "bancontact", type: UpdateParams1Bancontact?, presence: true, ignore_serialize: bancontact.nil? && !bancontact_present?)]
    property bancontact : UpdateParams1Bancontact?

    @[JSON::Field(ignore: true)]
    property? bancontact_present : Bool = false

    @[JSON::Field(key: "boleto", type: PaymentMethodOptionsParam11Boleto?, presence: true, ignore_serialize: boleto.nil? && !boleto_present?)]
    property boleto : PaymentMethodOptionsParam11Boleto?

    @[JSON::Field(ignore: true)]
    property? boleto_present : Bool = false

    @[JSON::Field(key: "card", type: PaymentMethodOptionsParam11Card?, presence: true, ignore_serialize: card.nil? && !card_present?)]
    property card : PaymentMethodOptionsParam11Card?

    @[JSON::Field(ignore: true)]
    property? card_present : Bool = false

    @[JSON::Field(key: "card_present", type: PaymentMethodOptionsParam11CardPresent?, presence: true, ignore_serialize: card_present2.nil? && !card_present2_present?)]
    property card_present2 : PaymentMethodOptionsParam11CardPresent?

    @[JSON::Field(ignore: true)]
    property? card_present2_present : Bool = false

    @[JSON::Field(key: "customer_balance", type: UpdateParams1CustomerBalance?, presence: true, ignore_serialize: customer_balance.nil? && !customer_balance_present?)]
    property customer_balance : UpdateParams1CustomerBalance?

    @[JSON::Field(ignore: true)]
    property? customer_balance_present : Bool = false

    @[JSON::Field(key: "eps", type: PaymentMethodOptionsParam11Eps?, presence: true, ignore_serialize: eps.nil? && !eps_present?)]
    property eps : PaymentMethodOptionsParam11Eps?

    @[JSON::Field(ignore: true)]
    property? eps_present : Bool = false

    @[JSON::Field(key: "fpx", type: PaymentMethodOptionsParam11Fpx?, presence: true, ignore_serialize: fpx.nil? && !fpx_present?)]
    property fpx : PaymentMethodOptionsParam11Fpx?

    @[JSON::Field(ignore: true)]
    property? fpx_present : Bool = false

    @[JSON::Field(key: "giropay", type: PaymentMethodOptionsParam11Fpx?, presence: true, ignore_serialize: giropay.nil? && !giropay_present?)]
    property giropay : PaymentMethodOptionsParam11Fpx?

    @[JSON::Field(ignore: true)]
    property? giropay_present : Bool = false

    @[JSON::Field(key: "grabpay", type: PaymentMethodOptionsParam11Fpx?, presence: true, ignore_serialize: grabpay.nil? && !grabpay_present?)]
    property grabpay : PaymentMethodOptionsParam11Fpx?

    @[JSON::Field(ignore: true)]
    property? grabpay_present : Bool = false

    @[JSON::Field(key: "ideal", type: UpdateParams1Alipay?, presence: true, ignore_serialize: ideal.nil? && !ideal_present?)]
    property ideal : UpdateParams1Alipay?

    @[JSON::Field(ignore: true)]
    property? ideal_present : Bool = false

    @[JSON::Field(key: "interac_present", type: PaymentMethodOptionsParam11InteracPresent?, presence: true, ignore_serialize: interac_present.nil? && !interac_present_present?)]
    property interac_present : PaymentMethodOptionsParam11InteracPresent?

    @[JSON::Field(ignore: true)]
    property? interac_present_present : Bool = false

    @[JSON::Field(key: "klarna", type: UpdateParams1Klarna?, presence: true, ignore_serialize: klarna.nil? && !klarna_present?)]
    property klarna : UpdateParams1Klarna?

    @[JSON::Field(ignore: true)]
    property? klarna_present : Bool = false

    @[JSON::Field(key: "konbini", type: PaymentMethodOptionsParam11Konbini?, presence: true, ignore_serialize: konbini.nil? && !konbini_present?)]
    property konbini : PaymentMethodOptionsParam11Konbini?

    @[JSON::Field(ignore: true)]
    property? konbini_present : Bool = false

    @[JSON::Field(key: "link", type: UpdateParams1Link?, presence: true, ignore_serialize: link.nil? && !link_present?)]
    property link : UpdateParams1Link?

    @[JSON::Field(ignore: true)]
    property? link_present : Bool = false

    @[JSON::Field(key: "oxxo", type: UpdateParams1Oxxo?, presence: true, ignore_serialize: oxxo.nil? && !oxxo_present?)]
    property oxxo : UpdateParams1Oxxo?

    @[JSON::Field(ignore: true)]
    property? oxxo_present : Bool = false

    @[JSON::Field(key: "p24", type: UpdateParams1P24?, presence: true, ignore_serialize: p24.nil? && !p24_present?)]
    property p24 : UpdateParams1P24?

    @[JSON::Field(ignore: true)]
    property? p24_present : Bool = false

    @[JSON::Field(key: "paynow", type: PaymentMethodOptionsParam11Fpx?, presence: true, ignore_serialize: paynow.nil? && !paynow_present?)]
    property paynow : PaymentMethodOptionsParam11Fpx?

    @[JSON::Field(ignore: true)]
    property? paynow_present : Bool = false

    @[JSON::Field(key: "sepa_debit", type: UpdateParams1SepaDebit?, presence: true, ignore_serialize: sepa_debit.nil? && !sepa_debit_present?)]
    property sepa_debit : UpdateParams1SepaDebit?

    @[JSON::Field(ignore: true)]
    property? sepa_debit_present : Bool = false

    @[JSON::Field(key: "sofort", type: UpdateParams1Sofort?, presence: true, ignore_serialize: sofort.nil? && !sofort_present?)]
    property sofort : UpdateParams1Sofort?

    @[JSON::Field(ignore: true)]
    property? sofort_present : Bool = false

    @[JSON::Field(key: "us_bank_account", type: PaymentMethodOptionsParam11UsBankAccount?, presence: true, ignore_serialize: us_bank_account.nil? && !us_bank_account_present?)]
    property us_bank_account : PaymentMethodOptionsParam11UsBankAccount?

    @[JSON::Field(ignore: true)]
    property? us_bank_account_present : Bool = false

    @[JSON::Field(key: "wechat_pay", type: UpdateParams1WechatPay?, presence: true, ignore_serialize: wechat_pay.nil? && !wechat_pay_present?)]
    property wechat_pay : UpdateParams1WechatPay?

    @[JSON::Field(ignore: true)]
    property? wechat_pay_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @acss_debit : UpdateParams1AcssDebit? = nil,
      @affirm : PaymentMethodOptionsParam11Affirm? = nil,
      @afterpay_clearpay : PaymentMethodOptionsParam11AfterpayClearpay? = nil,
      @alipay : UpdateParams1Alipay? = nil,
      @au_becs_debit : PaymentMethodOptionsParam11AuBecsDebit? = nil,
      @bacs_debit : PaymentMethodOptionsParam11BacsDebit? = nil,
      @bancontact : UpdateParams1Bancontact? = nil,
      @boleto : PaymentMethodOptionsParam11Boleto? = nil,
      @card : PaymentMethodOptionsParam11Card? = nil,
      @card_present2 : PaymentMethodOptionsParam11CardPresent? = nil,
      @customer_balance : UpdateParams1CustomerBalance? = nil,
      @eps : PaymentMethodOptionsParam11Eps? = nil,
      @fpx : PaymentMethodOptionsParam11Fpx? = nil,
      @giropay : PaymentMethodOptionsParam11Fpx? = nil,
      @grabpay : PaymentMethodOptionsParam11Fpx? = nil,
      @ideal : UpdateParams1Alipay? = nil,
      @interac_present : PaymentMethodOptionsParam11InteracPresent? = nil,
      @klarna : UpdateParams1Klarna? = nil,
      @konbini : PaymentMethodOptionsParam11Konbini? = nil,
      @link : UpdateParams1Link? = nil,
      @oxxo : UpdateParams1Oxxo? = nil,
      @p24 : UpdateParams1P24? = nil,
      @paynow : PaymentMethodOptionsParam11Fpx? = nil,
      @sepa_debit : UpdateParams1SepaDebit? = nil,
      @sofort : UpdateParams1Sofort? = nil,
      @us_bank_account : PaymentMethodOptionsParam11UsBankAccount? = nil,
      @wechat_pay : UpdateParams1WechatPay? = nil
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
    def_equals_and_hash(@acss_debit, @acss_debit_present, @affirm, @affirm_present, @afterpay_clearpay, @afterpay_clearpay_present, @alipay, @alipay_present, @au_becs_debit, @au_becs_debit_present, @bacs_debit, @bacs_debit_present, @bancontact, @bancontact_present, @boleto, @boleto_present, @card, @card_present2, @card_present2, @card_present2_present, @customer_balance, @customer_balance_present, @eps, @eps_present, @fpx, @fpx_present, @giropay, @giropay_present, @grabpay, @grabpay_present, @ideal, @ideal_present, @interac_present, @interac_present_present, @klarna, @klarna_present, @konbini, @konbini_present, @link, @link_present, @oxxo, @oxxo_present, @p24, @p24_present, @paynow, @paynow_present, @sepa_debit, @sepa_debit_present, @sofort, @sofort_present, @us_bank_account, @us_bank_account_present, @wechat_pay, @wechat_pay_present)
  end
end
