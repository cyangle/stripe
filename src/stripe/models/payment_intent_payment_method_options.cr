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
  class PaymentIntentPaymentMethodOptions
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    @[JSON::Field(key: "acss_debit", type: PaymentIntentPaymentMethodOptionsAcssDebit1?, presence: true, ignore_serialize: acss_debit.nil? && !acss_debit_present?)]
    property acss_debit : PaymentIntentPaymentMethodOptionsAcssDebit1?

    @[JSON::Field(ignore: true)]
    property? acss_debit_present : Bool = false

    @[JSON::Field(key: "affirm", type: PaymentIntentPaymentMethodOptionsAffirm?, presence: true, ignore_serialize: affirm.nil? && !affirm_present?)]
    property affirm : PaymentIntentPaymentMethodOptionsAffirm?

    @[JSON::Field(ignore: true)]
    property? affirm_present : Bool = false

    @[JSON::Field(key: "afterpay_clearpay", type: PaymentIntentPaymentMethodOptionsAfterpayClearpay?, presence: true, ignore_serialize: afterpay_clearpay.nil? && !afterpay_clearpay_present?)]
    property afterpay_clearpay : PaymentIntentPaymentMethodOptionsAfterpayClearpay?

    @[JSON::Field(ignore: true)]
    property? afterpay_clearpay_present : Bool = false

    @[JSON::Field(key: "alipay", type: PaymentIntentPaymentMethodOptionsAlipay?, presence: true, ignore_serialize: alipay.nil? && !alipay_present?)]
    property alipay : PaymentIntentPaymentMethodOptionsAlipay?

    @[JSON::Field(ignore: true)]
    property? alipay_present : Bool = false

    @[JSON::Field(key: "au_becs_debit", type: PaymentIntentPaymentMethodOptionsAuBecsDebit1?, presence: true, ignore_serialize: au_becs_debit.nil? && !au_becs_debit_present?)]
    property au_becs_debit : PaymentIntentPaymentMethodOptionsAuBecsDebit1?

    @[JSON::Field(ignore: true)]
    property? au_becs_debit_present : Bool = false

    @[JSON::Field(key: "bacs_debit", type: PaymentIntentPaymentMethodOptionsBacsDebit?, presence: true, ignore_serialize: bacs_debit.nil? && !bacs_debit_present?)]
    property bacs_debit : PaymentIntentPaymentMethodOptionsBacsDebit?

    @[JSON::Field(ignore: true)]
    property? bacs_debit_present : Bool = false

    @[JSON::Field(key: "bancontact", type: PaymentIntentPaymentMethodOptionsBancontact?, presence: true, ignore_serialize: bancontact.nil? && !bancontact_present?)]
    property bancontact : PaymentIntentPaymentMethodOptionsBancontact?

    @[JSON::Field(ignore: true)]
    property? bancontact_present : Bool = false

    @[JSON::Field(key: "boleto", type: PaymentIntentPaymentMethodOptionsBoleto?, presence: true, ignore_serialize: boleto.nil? && !boleto_present?)]
    property boleto : PaymentIntentPaymentMethodOptionsBoleto?

    @[JSON::Field(ignore: true)]
    property? boleto_present : Bool = false

    @[JSON::Field(key: "card", type: PaymentIntentPaymentMethodOptionsCard1?, presence: true, ignore_serialize: card.nil? && !card_present?)]
    property card : PaymentIntentPaymentMethodOptionsCard1?

    @[JSON::Field(ignore: true)]
    property? card_present : Bool = false

    @[JSON::Field(key: "card_present", type: PaymentIntentPaymentMethodOptionsCardPresent?, presence: true, ignore_serialize: card_present2.nil? && !card_present2_present?)]
    property card_present2 : PaymentIntentPaymentMethodOptionsCardPresent?

    @[JSON::Field(ignore: true)]
    property? card_present2_present : Bool = false

    @[JSON::Field(key: "customer_balance", type: PaymentIntentPaymentMethodOptionsCustomerBalance?, presence: true, ignore_serialize: customer_balance.nil? && !customer_balance_present?)]
    property customer_balance : PaymentIntentPaymentMethodOptionsCustomerBalance?

    @[JSON::Field(ignore: true)]
    property? customer_balance_present : Bool = false

    @[JSON::Field(key: "eps", type: PaymentIntentPaymentMethodOptionsEps1?, presence: true, ignore_serialize: eps.nil? && !eps_present?)]
    property eps : PaymentIntentPaymentMethodOptionsEps1?

    @[JSON::Field(ignore: true)]
    property? eps_present : Bool = false

    @[JSON::Field(key: "fpx", type: PaymentIntentPaymentMethodOptionsFpx?, presence: true, ignore_serialize: fpx.nil? && !fpx_present?)]
    property fpx : PaymentIntentPaymentMethodOptionsFpx?

    @[JSON::Field(ignore: true)]
    property? fpx_present : Bool = false

    @[JSON::Field(key: "giropay", type: PaymentIntentPaymentMethodOptionsGiropay?, presence: true, ignore_serialize: giropay.nil? && !giropay_present?)]
    property giropay : PaymentIntentPaymentMethodOptionsGiropay?

    @[JSON::Field(ignore: true)]
    property? giropay_present : Bool = false

    @[JSON::Field(key: "grabpay", type: PaymentIntentPaymentMethodOptionsGrabpay?, presence: true, ignore_serialize: grabpay.nil? && !grabpay_present?)]
    property grabpay : PaymentIntentPaymentMethodOptionsGrabpay?

    @[JSON::Field(ignore: true)]
    property? grabpay_present : Bool = false

    @[JSON::Field(key: "ideal", type: PaymentIntentPaymentMethodOptionsIdeal?, presence: true, ignore_serialize: ideal.nil? && !ideal_present?)]
    property ideal : PaymentIntentPaymentMethodOptionsIdeal?

    @[JSON::Field(ignore: true)]
    property? ideal_present : Bool = false

    @[JSON::Field(key: "interac_present", type: PaymentIntentPaymentMethodOptionsInteracPresent?, presence: true, ignore_serialize: interac_present.nil? && !interac_present_present?)]
    property interac_present : PaymentIntentPaymentMethodOptionsInteracPresent?

    @[JSON::Field(ignore: true)]
    property? interac_present_present : Bool = false

    @[JSON::Field(key: "klarna", type: PaymentIntentPaymentMethodOptionsKlarna?, presence: true, ignore_serialize: klarna.nil? && !klarna_present?)]
    property klarna : PaymentIntentPaymentMethodOptionsKlarna?

    @[JSON::Field(ignore: true)]
    property? klarna_present : Bool = false

    @[JSON::Field(key: "konbini", type: PaymentIntentPaymentMethodOptionsKonbini?, presence: true, ignore_serialize: konbini.nil? && !konbini_present?)]
    property konbini : PaymentIntentPaymentMethodOptionsKonbini?

    @[JSON::Field(ignore: true)]
    property? konbini_present : Bool = false

    @[JSON::Field(key: "link", type: PaymentIntentPaymentMethodOptionsLink1?, presence: true, ignore_serialize: link.nil? && !link_present?)]
    property link : PaymentIntentPaymentMethodOptionsLink1?

    @[JSON::Field(ignore: true)]
    property? link_present : Bool = false

    @[JSON::Field(key: "oxxo", type: PaymentIntentPaymentMethodOptionsOxxo?, presence: true, ignore_serialize: oxxo.nil? && !oxxo_present?)]
    property oxxo : PaymentIntentPaymentMethodOptionsOxxo?

    @[JSON::Field(ignore: true)]
    property? oxxo_present : Bool = false

    @[JSON::Field(key: "p24", type: PaymentIntentPaymentMethodOptionsP24?, presence: true, ignore_serialize: p24.nil? && !p24_present?)]
    property p24 : PaymentIntentPaymentMethodOptionsP24?

    @[JSON::Field(ignore: true)]
    property? p24_present : Bool = false

    @[JSON::Field(key: "paynow", type: PaymentIntentPaymentMethodOptionsPaynow?, presence: true, ignore_serialize: paynow.nil? && !paynow_present?)]
    property paynow : PaymentIntentPaymentMethodOptionsPaynow?

    @[JSON::Field(ignore: true)]
    property? paynow_present : Bool = false

    @[JSON::Field(key: "sepa_debit", type: PaymentIntentPaymentMethodOptionsSepaDebit1?, presence: true, ignore_serialize: sepa_debit.nil? && !sepa_debit_present?)]
    property sepa_debit : PaymentIntentPaymentMethodOptionsSepaDebit1?

    @[JSON::Field(ignore: true)]
    property? sepa_debit_present : Bool = false

    @[JSON::Field(key: "sofort", type: PaymentIntentPaymentMethodOptionsSofort?, presence: true, ignore_serialize: sofort.nil? && !sofort_present?)]
    property sofort : PaymentIntentPaymentMethodOptionsSofort?

    @[JSON::Field(ignore: true)]
    property? sofort_present : Bool = false

    @[JSON::Field(key: "us_bank_account", type: PaymentIntentPaymentMethodOptionsUsBankAccount1?, presence: true, ignore_serialize: us_bank_account.nil? && !us_bank_account_present?)]
    property us_bank_account : PaymentIntentPaymentMethodOptionsUsBankAccount1?

    @[JSON::Field(ignore: true)]
    property? us_bank_account_present : Bool = false

    @[JSON::Field(key: "wechat_pay", type: PaymentIntentPaymentMethodOptionsWechatPay?, presence: true, ignore_serialize: wechat_pay.nil? && !wechat_pay_present?)]
    property wechat_pay : PaymentIntentPaymentMethodOptionsWechatPay?

    @[JSON::Field(ignore: true)]
    property? wechat_pay_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @acss_debit : PaymentIntentPaymentMethodOptionsAcssDebit1? = nil,
      @affirm : PaymentIntentPaymentMethodOptionsAffirm? = nil,
      @afterpay_clearpay : PaymentIntentPaymentMethodOptionsAfterpayClearpay? = nil,
      @alipay : PaymentIntentPaymentMethodOptionsAlipay? = nil,
      @au_becs_debit : PaymentIntentPaymentMethodOptionsAuBecsDebit1? = nil,
      @bacs_debit : PaymentIntentPaymentMethodOptionsBacsDebit? = nil,
      @bancontact : PaymentIntentPaymentMethodOptionsBancontact? = nil,
      @boleto : PaymentIntentPaymentMethodOptionsBoleto? = nil,
      @card : PaymentIntentPaymentMethodOptionsCard1? = nil,
      @card_present2 : PaymentIntentPaymentMethodOptionsCardPresent? = nil,
      @customer_balance : PaymentIntentPaymentMethodOptionsCustomerBalance? = nil,
      @eps : PaymentIntentPaymentMethodOptionsEps1? = nil,
      @fpx : PaymentIntentPaymentMethodOptionsFpx? = nil,
      @giropay : PaymentIntentPaymentMethodOptionsGiropay? = nil,
      @grabpay : PaymentIntentPaymentMethodOptionsGrabpay? = nil,
      @ideal : PaymentIntentPaymentMethodOptionsIdeal? = nil,
      @interac_present : PaymentIntentPaymentMethodOptionsInteracPresent? = nil,
      @klarna : PaymentIntentPaymentMethodOptionsKlarna? = nil,
      @konbini : PaymentIntentPaymentMethodOptionsKonbini? = nil,
      @link : PaymentIntentPaymentMethodOptionsLink1? = nil,
      @oxxo : PaymentIntentPaymentMethodOptionsOxxo? = nil,
      @p24 : PaymentIntentPaymentMethodOptionsP24? = nil,
      @paynow : PaymentIntentPaymentMethodOptionsPaynow? = nil,
      @sepa_debit : PaymentIntentPaymentMethodOptionsSepaDebit1? = nil,
      @sofort : PaymentIntentPaymentMethodOptionsSofort? = nil,
      @us_bank_account : PaymentIntentPaymentMethodOptionsUsBankAccount1? = nil,
      @wechat_pay : PaymentIntentPaymentMethodOptionsWechatPay? = nil
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
    def_equals_and_hash(@acss_debit, @affirm, @afterpay_clearpay, @alipay, @au_becs_debit, @bacs_debit, @bancontact, @boleto, @card, @card_present2, @customer_balance, @eps, @fpx, @giropay, @grabpay, @ideal, @interac_present, @klarna, @konbini, @link, @oxxo, @p24, @paynow, @sepa_debit, @sofort, @us_bank_account, @wechat_pay)
  end
end
