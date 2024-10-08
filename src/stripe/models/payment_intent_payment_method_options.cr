#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./payment_intent_payment_method_options_acss_debit"
require "./payment_intent_payment_method_options_au_becs_debit"
require "./payment_intent_payment_method_options_bacs_debit"
require "./payment_intent_payment_method_options_blik"
require "./payment_intent_payment_method_options_card"
require "./payment_intent_payment_method_options_eps"
require "./payment_intent_payment_method_options_link"
require "./payment_intent_payment_method_options_mobilepay"
require "./payment_intent_payment_method_options_sepa_debit"
require "./payment_intent_payment_method_options_swish"
require "./payment_intent_payment_method_options_us_bank_account"
require "./payment_method_options_affirm"
require "./payment_method_options_afterpay_clearpay"
require "./payment_method_options_alipay"
require "./payment_method_options_amazon_pay"
require "./payment_method_options_bancontact"
require "./payment_method_options_boleto"
require "./payment_method_options_card_present"
require "./payment_method_options_cashapp"
require "./payment_method_options_customer_balance"
require "./payment_method_options_fpx"
require "./payment_method_options_giropay"
require "./payment_method_options_grabpay"
require "./payment_method_options_ideal"
require "./payment_method_options_klarna"
require "./payment_method_options_konbini"
require "./payment_method_options_multibanco"
require "./payment_method_options_oxxo"
require "./payment_method_options_p24"
require "./payment_method_options_paynow"
require "./payment_method_options_paypal"
require "./payment_method_options_pix"
require "./payment_method_options_promptpay"
require "./payment_method_options_revolut_pay"
require "./payment_method_options_sofort"
require "./payment_method_options_twint"
require "./payment_method_options_wechat_pay"
require "./payment_method_options_zip"

module Stripe
  #
  class PaymentIntentPaymentMethodOptions
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "acss_debit", type: Stripe::PaymentIntentPaymentMethodOptionsAcssDebit?, default: nil, required: false, nullable: false, emit_null: false)]
    getter acss_debit : Stripe::PaymentIntentPaymentMethodOptionsAcssDebit? = nil

    @[JSON::Field(key: "affirm", type: Stripe::PaymentMethodOptionsAffirm?, default: nil, required: false, nullable: false, emit_null: false)]
    getter affirm : Stripe::PaymentMethodOptionsAffirm? = nil

    @[JSON::Field(key: "afterpay_clearpay", type: Stripe::PaymentMethodOptionsAfterpayClearpay?, default: nil, required: false, nullable: false, emit_null: false)]
    getter afterpay_clearpay : Stripe::PaymentMethodOptionsAfterpayClearpay? = nil

    @[JSON::Field(key: "alipay", type: Stripe::PaymentMethodOptionsAlipay?, default: nil, required: false, nullable: false, emit_null: false)]
    getter alipay : Stripe::PaymentMethodOptionsAlipay? = nil

    @[JSON::Field(key: "amazon_pay", type: Stripe::PaymentMethodOptionsAmazonPay?, default: nil, required: false, nullable: false, emit_null: false)]
    getter amazon_pay : Stripe::PaymentMethodOptionsAmazonPay? = nil

    @[JSON::Field(key: "au_becs_debit", type: Stripe::PaymentIntentPaymentMethodOptionsAuBecsDebit?, default: nil, required: false, nullable: false, emit_null: false)]
    getter au_becs_debit : Stripe::PaymentIntentPaymentMethodOptionsAuBecsDebit? = nil

    @[JSON::Field(key: "bacs_debit", type: Stripe::PaymentIntentPaymentMethodOptionsBacsDebit?, default: nil, required: false, nullable: false, emit_null: false)]
    getter bacs_debit : Stripe::PaymentIntentPaymentMethodOptionsBacsDebit? = nil

    @[JSON::Field(key: "bancontact", type: Stripe::PaymentMethodOptionsBancontact?, default: nil, required: false, nullable: false, emit_null: false)]
    getter bancontact : Stripe::PaymentMethodOptionsBancontact? = nil

    @[JSON::Field(key: "blik", type: Stripe::PaymentIntentPaymentMethodOptionsBlik?, default: nil, required: false, nullable: false, emit_null: false)]
    getter blik : Stripe::PaymentIntentPaymentMethodOptionsBlik? = nil

    @[JSON::Field(key: "boleto", type: Stripe::PaymentMethodOptionsBoleto?, default: nil, required: false, nullable: false, emit_null: false)]
    getter boleto : Stripe::PaymentMethodOptionsBoleto? = nil

    @[JSON::Field(key: "card", type: Stripe::PaymentIntentPaymentMethodOptionsCard?, default: nil, required: false, nullable: false, emit_null: false)]
    getter card : Stripe::PaymentIntentPaymentMethodOptionsCard? = nil

    @[JSON::Field(key: "card_present", type: Stripe::PaymentMethodOptionsCardPresent?, default: nil, required: false, nullable: false, emit_null: false)]
    getter card_present : Stripe::PaymentMethodOptionsCardPresent? = nil

    @[JSON::Field(key: "cashapp", type: Stripe::PaymentMethodOptionsCashapp?, default: nil, required: false, nullable: false, emit_null: false)]
    getter cashapp : Stripe::PaymentMethodOptionsCashapp? = nil

    @[JSON::Field(key: "customer_balance", type: Stripe::PaymentMethodOptionsCustomerBalance?, default: nil, required: false, nullable: false, emit_null: false)]
    getter customer_balance : Stripe::PaymentMethodOptionsCustomerBalance? = nil

    @[JSON::Field(key: "eps", type: Stripe::PaymentIntentPaymentMethodOptionsEps?, default: nil, required: false, nullable: false, emit_null: false)]
    getter eps : Stripe::PaymentIntentPaymentMethodOptionsEps? = nil

    @[JSON::Field(key: "fpx", type: Stripe::PaymentMethodOptionsFpx?, default: nil, required: false, nullable: false, emit_null: false)]
    getter fpx : Stripe::PaymentMethodOptionsFpx? = nil

    @[JSON::Field(key: "giropay", type: Stripe::PaymentMethodOptionsGiropay?, default: nil, required: false, nullable: false, emit_null: false)]
    getter giropay : Stripe::PaymentMethodOptionsGiropay? = nil

    @[JSON::Field(key: "grabpay", type: Stripe::PaymentMethodOptionsGrabpay?, default: nil, required: false, nullable: false, emit_null: false)]
    getter grabpay : Stripe::PaymentMethodOptionsGrabpay? = nil

    @[JSON::Field(key: "ideal", type: Stripe::PaymentMethodOptionsIdeal?, default: nil, required: false, nullable: false, emit_null: false)]
    getter ideal : Stripe::PaymentMethodOptionsIdeal? = nil

    #
    @[JSON::Field(key: "interac_present", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter interac_present : JSON::Any? = nil

    @[JSON::Field(key: "klarna", type: Stripe::PaymentMethodOptionsKlarna?, default: nil, required: false, nullable: false, emit_null: false)]
    getter klarna : Stripe::PaymentMethodOptionsKlarna? = nil

    @[JSON::Field(key: "konbini", type: Stripe::PaymentMethodOptionsKonbini?, default: nil, required: false, nullable: false, emit_null: false)]
    getter konbini : Stripe::PaymentMethodOptionsKonbini? = nil

    @[JSON::Field(key: "link", type: Stripe::PaymentIntentPaymentMethodOptionsLink?, default: nil, required: false, nullable: false, emit_null: false)]
    getter link : Stripe::PaymentIntentPaymentMethodOptionsLink? = nil

    @[JSON::Field(key: "mobilepay", type: Stripe::PaymentIntentPaymentMethodOptionsMobilepay?, default: nil, required: false, nullable: false, emit_null: false)]
    getter mobilepay : Stripe::PaymentIntentPaymentMethodOptionsMobilepay? = nil

    @[JSON::Field(key: "multibanco", type: Stripe::PaymentMethodOptionsMultibanco?, default: nil, required: false, nullable: false, emit_null: false)]
    getter multibanco : Stripe::PaymentMethodOptionsMultibanco? = nil

    @[JSON::Field(key: "oxxo", type: Stripe::PaymentMethodOptionsOxxo?, default: nil, required: false, nullable: false, emit_null: false)]
    getter oxxo : Stripe::PaymentMethodOptionsOxxo? = nil

    @[JSON::Field(key: "p24", type: Stripe::PaymentMethodOptionsP24?, default: nil, required: false, nullable: false, emit_null: false)]
    getter p24 : Stripe::PaymentMethodOptionsP24? = nil

    @[JSON::Field(key: "paynow", type: Stripe::PaymentMethodOptionsPaynow?, default: nil, required: false, nullable: false, emit_null: false)]
    getter paynow : Stripe::PaymentMethodOptionsPaynow? = nil

    @[JSON::Field(key: "paypal", type: Stripe::PaymentMethodOptionsPaypal?, default: nil, required: false, nullable: false, emit_null: false)]
    getter paypal : Stripe::PaymentMethodOptionsPaypal? = nil

    @[JSON::Field(key: "pix", type: Stripe::PaymentMethodOptionsPix?, default: nil, required: false, nullable: false, emit_null: false)]
    getter pix : Stripe::PaymentMethodOptionsPix? = nil

    @[JSON::Field(key: "promptpay", type: Stripe::PaymentMethodOptionsPromptpay?, default: nil, required: false, nullable: false, emit_null: false)]
    getter promptpay : Stripe::PaymentMethodOptionsPromptpay? = nil

    @[JSON::Field(key: "revolut_pay", type: Stripe::PaymentMethodOptionsRevolutPay?, default: nil, required: false, nullable: false, emit_null: false)]
    getter revolut_pay : Stripe::PaymentMethodOptionsRevolutPay? = nil

    @[JSON::Field(key: "sepa_debit", type: Stripe::PaymentIntentPaymentMethodOptionsSepaDebit?, default: nil, required: false, nullable: false, emit_null: false)]
    getter sepa_debit : Stripe::PaymentIntentPaymentMethodOptionsSepaDebit? = nil

    @[JSON::Field(key: "sofort", type: Stripe::PaymentMethodOptionsSofort?, default: nil, required: false, nullable: false, emit_null: false)]
    getter sofort : Stripe::PaymentMethodOptionsSofort? = nil

    @[JSON::Field(key: "swish", type: Stripe::PaymentIntentPaymentMethodOptionsSwish?, default: nil, required: false, nullable: false, emit_null: false)]
    getter swish : Stripe::PaymentIntentPaymentMethodOptionsSwish? = nil

    @[JSON::Field(key: "twint", type: Stripe::PaymentMethodOptionsTwint?, default: nil, required: false, nullable: false, emit_null: false)]
    getter twint : Stripe::PaymentMethodOptionsTwint? = nil

    @[JSON::Field(key: "us_bank_account", type: Stripe::PaymentIntentPaymentMethodOptionsUsBankAccount?, default: nil, required: false, nullable: false, emit_null: false)]
    getter us_bank_account : Stripe::PaymentIntentPaymentMethodOptionsUsBankAccount? = nil

    @[JSON::Field(key: "wechat_pay", type: Stripe::PaymentMethodOptionsWechatPay?, default: nil, required: false, nullable: false, emit_null: false)]
    getter wechat_pay : Stripe::PaymentMethodOptionsWechatPay? = nil

    @[JSON::Field(key: "zip", type: Stripe::PaymentMethodOptionsZip?, default: nil, required: false, nullable: false, emit_null: false)]
    getter zip : Stripe::PaymentMethodOptionsZip? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @acss_debit : Stripe::PaymentIntentPaymentMethodOptionsAcssDebit? = nil,
      @affirm : Stripe::PaymentMethodOptionsAffirm? = nil,
      @afterpay_clearpay : Stripe::PaymentMethodOptionsAfterpayClearpay? = nil,
      @alipay : Stripe::PaymentMethodOptionsAlipay? = nil,
      @amazon_pay : Stripe::PaymentMethodOptionsAmazonPay? = nil,
      @au_becs_debit : Stripe::PaymentIntentPaymentMethodOptionsAuBecsDebit? = nil,
      @bacs_debit : Stripe::PaymentIntentPaymentMethodOptionsBacsDebit? = nil,
      @bancontact : Stripe::PaymentMethodOptionsBancontact? = nil,
      @blik : Stripe::PaymentIntentPaymentMethodOptionsBlik? = nil,
      @boleto : Stripe::PaymentMethodOptionsBoleto? = nil,
      @card : Stripe::PaymentIntentPaymentMethodOptionsCard? = nil,
      @card_present2 : Stripe::PaymentMethodOptionsCardPresent? = nil,
      @cashapp : Stripe::PaymentMethodOptionsCashapp? = nil,
      @customer_balance : Stripe::PaymentMethodOptionsCustomerBalance? = nil,
      @eps : Stripe::PaymentIntentPaymentMethodOptionsEps? = nil,
      @fpx : Stripe::PaymentMethodOptionsFpx? = nil,
      @giropay : Stripe::PaymentMethodOptionsGiropay? = nil,
      @grabpay : Stripe::PaymentMethodOptionsGrabpay? = nil,
      @ideal : Stripe::PaymentMethodOptionsIdeal? = nil,
      @interac_present : JSON::Any? = nil,
      @klarna : Stripe::PaymentMethodOptionsKlarna? = nil,
      @konbini : Stripe::PaymentMethodOptionsKonbini? = nil,
      @link : Stripe::PaymentIntentPaymentMethodOptionsLink? = nil,
      @mobilepay : Stripe::PaymentIntentPaymentMethodOptionsMobilepay? = nil,
      @multibanco : Stripe::PaymentMethodOptionsMultibanco? = nil,
      @oxxo : Stripe::PaymentMethodOptionsOxxo? = nil,
      @p24 : Stripe::PaymentMethodOptionsP24? = nil,
      @paynow : Stripe::PaymentMethodOptionsPaynow? = nil,
      @paypal : Stripe::PaymentMethodOptionsPaypal? = nil,
      @pix : Stripe::PaymentMethodOptionsPix? = nil,
      @promptpay : Stripe::PaymentMethodOptionsPromptpay? = nil,
      @revolut_pay : Stripe::PaymentMethodOptionsRevolutPay? = nil,
      @sepa_debit : Stripe::PaymentIntentPaymentMethodOptionsSepaDebit? = nil,
      @sofort : Stripe::PaymentMethodOptionsSofort? = nil,
      @swish : Stripe::PaymentIntentPaymentMethodOptionsSwish? = nil,
      @twint : Stripe::PaymentMethodOptionsTwint? = nil,
      @us_bank_account : Stripe::PaymentIntentPaymentMethodOptionsUsBankAccount? = nil,
      @wechat_pay : Stripe::PaymentMethodOptionsWechatPay? = nil,
      @zip : Stripe::PaymentMethodOptionsZip? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_acss_debit = @acss_debit).nil?
        invalid_properties.concat(_acss_debit.list_invalid_properties_for("acss_debit")) if _acss_debit.is_a?(OpenApi::Validatable)
      end
      unless (_affirm = @affirm).nil?
        invalid_properties.concat(_affirm.list_invalid_properties_for("affirm")) if _affirm.is_a?(OpenApi::Validatable)
      end
      unless (_afterpay_clearpay = @afterpay_clearpay).nil?
        invalid_properties.concat(_afterpay_clearpay.list_invalid_properties_for("afterpay_clearpay")) if _afterpay_clearpay.is_a?(OpenApi::Validatable)
      end
      unless (_alipay = @alipay).nil?
        invalid_properties.concat(_alipay.list_invalid_properties_for("alipay")) if _alipay.is_a?(OpenApi::Validatable)
      end
      unless (_amazon_pay = @amazon_pay).nil?
        invalid_properties.concat(_amazon_pay.list_invalid_properties_for("amazon_pay")) if _amazon_pay.is_a?(OpenApi::Validatable)
      end
      unless (_au_becs_debit = @au_becs_debit).nil?
        invalid_properties.concat(_au_becs_debit.list_invalid_properties_for("au_becs_debit")) if _au_becs_debit.is_a?(OpenApi::Validatable)
      end
      unless (_bacs_debit = @bacs_debit).nil?
        invalid_properties.concat(_bacs_debit.list_invalid_properties_for("bacs_debit")) if _bacs_debit.is_a?(OpenApi::Validatable)
      end
      unless (_bancontact = @bancontact).nil?
        invalid_properties.concat(_bancontact.list_invalid_properties_for("bancontact")) if _bancontact.is_a?(OpenApi::Validatable)
      end
      unless (_blik = @blik).nil?
        invalid_properties.concat(_blik.list_invalid_properties_for("blik")) if _blik.is_a?(OpenApi::Validatable)
      end
      unless (_boleto = @boleto).nil?
        invalid_properties.concat(_boleto.list_invalid_properties_for("boleto")) if _boleto.is_a?(OpenApi::Validatable)
      end
      unless (_card = @card).nil?
        invalid_properties.concat(_card.list_invalid_properties_for("card")) if _card.is_a?(OpenApi::Validatable)
      end
      unless (_card_present = @card_present).nil?
        invalid_properties.concat(_card_present.list_invalid_properties_for("card_present")) if _card_present.is_a?(OpenApi::Validatable)
      end
      unless (_cashapp = @cashapp).nil?
        invalid_properties.concat(_cashapp.list_invalid_properties_for("cashapp")) if _cashapp.is_a?(OpenApi::Validatable)
      end
      unless (_customer_balance = @customer_balance).nil?
        invalid_properties.concat(_customer_balance.list_invalid_properties_for("customer_balance")) if _customer_balance.is_a?(OpenApi::Validatable)
      end
      unless (_eps = @eps).nil?
        invalid_properties.concat(_eps.list_invalid_properties_for("eps")) if _eps.is_a?(OpenApi::Validatable)
      end
      unless (_fpx = @fpx).nil?
        invalid_properties.concat(_fpx.list_invalid_properties_for("fpx")) if _fpx.is_a?(OpenApi::Validatable)
      end
      unless (_giropay = @giropay).nil?
        invalid_properties.concat(_giropay.list_invalid_properties_for("giropay")) if _giropay.is_a?(OpenApi::Validatable)
      end
      unless (_grabpay = @grabpay).nil?
        invalid_properties.concat(_grabpay.list_invalid_properties_for("grabpay")) if _grabpay.is_a?(OpenApi::Validatable)
      end
      unless (_ideal = @ideal).nil?
        invalid_properties.concat(_ideal.list_invalid_properties_for("ideal")) if _ideal.is_a?(OpenApi::Validatable)
      end

      unless (_klarna = @klarna).nil?
        invalid_properties.concat(_klarna.list_invalid_properties_for("klarna")) if _klarna.is_a?(OpenApi::Validatable)
      end
      unless (_konbini = @konbini).nil?
        invalid_properties.concat(_konbini.list_invalid_properties_for("konbini")) if _konbini.is_a?(OpenApi::Validatable)
      end
      unless (_link = @link).nil?
        invalid_properties.concat(_link.list_invalid_properties_for("link")) if _link.is_a?(OpenApi::Validatable)
      end
      unless (_mobilepay = @mobilepay).nil?
        invalid_properties.concat(_mobilepay.list_invalid_properties_for("mobilepay")) if _mobilepay.is_a?(OpenApi::Validatable)
      end
      unless (_multibanco = @multibanco).nil?
        invalid_properties.concat(_multibanco.list_invalid_properties_for("multibanco")) if _multibanco.is_a?(OpenApi::Validatable)
      end
      unless (_oxxo = @oxxo).nil?
        invalid_properties.concat(_oxxo.list_invalid_properties_for("oxxo")) if _oxxo.is_a?(OpenApi::Validatable)
      end
      unless (_p24 = @p24).nil?
        invalid_properties.concat(_p24.list_invalid_properties_for("p24")) if _p24.is_a?(OpenApi::Validatable)
      end
      unless (_paynow = @paynow).nil?
        invalid_properties.concat(_paynow.list_invalid_properties_for("paynow")) if _paynow.is_a?(OpenApi::Validatable)
      end
      unless (_paypal = @paypal).nil?
        invalid_properties.concat(_paypal.list_invalid_properties_for("paypal")) if _paypal.is_a?(OpenApi::Validatable)
      end
      unless (_pix = @pix).nil?
        invalid_properties.concat(_pix.list_invalid_properties_for("pix")) if _pix.is_a?(OpenApi::Validatable)
      end
      unless (_promptpay = @promptpay).nil?
        invalid_properties.concat(_promptpay.list_invalid_properties_for("promptpay")) if _promptpay.is_a?(OpenApi::Validatable)
      end
      unless (_revolut_pay = @revolut_pay).nil?
        invalid_properties.concat(_revolut_pay.list_invalid_properties_for("revolut_pay")) if _revolut_pay.is_a?(OpenApi::Validatable)
      end
      unless (_sepa_debit = @sepa_debit).nil?
        invalid_properties.concat(_sepa_debit.list_invalid_properties_for("sepa_debit")) if _sepa_debit.is_a?(OpenApi::Validatable)
      end
      unless (_sofort = @sofort).nil?
        invalid_properties.concat(_sofort.list_invalid_properties_for("sofort")) if _sofort.is_a?(OpenApi::Validatable)
      end
      unless (_swish = @swish).nil?
        invalid_properties.concat(_swish.list_invalid_properties_for("swish")) if _swish.is_a?(OpenApi::Validatable)
      end
      unless (_twint = @twint).nil?
        invalid_properties.concat(_twint.list_invalid_properties_for("twint")) if _twint.is_a?(OpenApi::Validatable)
      end
      unless (_us_bank_account = @us_bank_account).nil?
        invalid_properties.concat(_us_bank_account.list_invalid_properties_for("us_bank_account")) if _us_bank_account.is_a?(OpenApi::Validatable)
      end
      unless (_wechat_pay = @wechat_pay).nil?
        invalid_properties.concat(_wechat_pay.list_invalid_properties_for("wechat_pay")) if _wechat_pay.is_a?(OpenApi::Validatable)
      end
      unless (_zip = @zip).nil?
        invalid_properties.concat(_zip.list_invalid_properties_for("zip")) if _zip.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_acss_debit = @acss_debit).nil?
        return false if _acss_debit.is_a?(OpenApi::Validatable) && !_acss_debit.valid?
      end

      unless (_affirm = @affirm).nil?
        return false if _affirm.is_a?(OpenApi::Validatable) && !_affirm.valid?
      end

      unless (_afterpay_clearpay = @afterpay_clearpay).nil?
        return false if _afterpay_clearpay.is_a?(OpenApi::Validatable) && !_afterpay_clearpay.valid?
      end

      unless (_alipay = @alipay).nil?
        return false if _alipay.is_a?(OpenApi::Validatable) && !_alipay.valid?
      end

      unless (_amazon_pay = @amazon_pay).nil?
        return false if _amazon_pay.is_a?(OpenApi::Validatable) && !_amazon_pay.valid?
      end

      unless (_au_becs_debit = @au_becs_debit).nil?
        return false if _au_becs_debit.is_a?(OpenApi::Validatable) && !_au_becs_debit.valid?
      end

      unless (_bacs_debit = @bacs_debit).nil?
        return false if _bacs_debit.is_a?(OpenApi::Validatable) && !_bacs_debit.valid?
      end

      unless (_bancontact = @bancontact).nil?
        return false if _bancontact.is_a?(OpenApi::Validatable) && !_bancontact.valid?
      end

      unless (_blik = @blik).nil?
        return false if _blik.is_a?(OpenApi::Validatable) && !_blik.valid?
      end

      unless (_boleto = @boleto).nil?
        return false if _boleto.is_a?(OpenApi::Validatable) && !_boleto.valid?
      end

      unless (_card = @card).nil?
        return false if _card.is_a?(OpenApi::Validatable) && !_card.valid?
      end

      unless (_card_present = @card_present).nil?
        return false if _card_present.is_a?(OpenApi::Validatable) && !_card_present.valid?
      end

      unless (_cashapp = @cashapp).nil?
        return false if _cashapp.is_a?(OpenApi::Validatable) && !_cashapp.valid?
      end

      unless (_customer_balance = @customer_balance).nil?
        return false if _customer_balance.is_a?(OpenApi::Validatable) && !_customer_balance.valid?
      end

      unless (_eps = @eps).nil?
        return false if _eps.is_a?(OpenApi::Validatable) && !_eps.valid?
      end

      unless (_fpx = @fpx).nil?
        return false if _fpx.is_a?(OpenApi::Validatable) && !_fpx.valid?
      end

      unless (_giropay = @giropay).nil?
        return false if _giropay.is_a?(OpenApi::Validatable) && !_giropay.valid?
      end

      unless (_grabpay = @grabpay).nil?
        return false if _grabpay.is_a?(OpenApi::Validatable) && !_grabpay.valid?
      end

      unless (_ideal = @ideal).nil?
        return false if _ideal.is_a?(OpenApi::Validatable) && !_ideal.valid?
      end

      unless (_klarna = @klarna).nil?
        return false if _klarna.is_a?(OpenApi::Validatable) && !_klarna.valid?
      end

      unless (_konbini = @konbini).nil?
        return false if _konbini.is_a?(OpenApi::Validatable) && !_konbini.valid?
      end

      unless (_link = @link).nil?
        return false if _link.is_a?(OpenApi::Validatable) && !_link.valid?
      end

      unless (_mobilepay = @mobilepay).nil?
        return false if _mobilepay.is_a?(OpenApi::Validatable) && !_mobilepay.valid?
      end

      unless (_multibanco = @multibanco).nil?
        return false if _multibanco.is_a?(OpenApi::Validatable) && !_multibanco.valid?
      end

      unless (_oxxo = @oxxo).nil?
        return false if _oxxo.is_a?(OpenApi::Validatable) && !_oxxo.valid?
      end

      unless (_p24 = @p24).nil?
        return false if _p24.is_a?(OpenApi::Validatable) && !_p24.valid?
      end

      unless (_paynow = @paynow).nil?
        return false if _paynow.is_a?(OpenApi::Validatable) && !_paynow.valid?
      end

      unless (_paypal = @paypal).nil?
        return false if _paypal.is_a?(OpenApi::Validatable) && !_paypal.valid?
      end

      unless (_pix = @pix).nil?
        return false if _pix.is_a?(OpenApi::Validatable) && !_pix.valid?
      end

      unless (_promptpay = @promptpay).nil?
        return false if _promptpay.is_a?(OpenApi::Validatable) && !_promptpay.valid?
      end

      unless (_revolut_pay = @revolut_pay).nil?
        return false if _revolut_pay.is_a?(OpenApi::Validatable) && !_revolut_pay.valid?
      end

      unless (_sepa_debit = @sepa_debit).nil?
        return false if _sepa_debit.is_a?(OpenApi::Validatable) && !_sepa_debit.valid?
      end

      unless (_sofort = @sofort).nil?
        return false if _sofort.is_a?(OpenApi::Validatable) && !_sofort.valid?
      end

      unless (_swish = @swish).nil?
        return false if _swish.is_a?(OpenApi::Validatable) && !_swish.valid?
      end

      unless (_twint = @twint).nil?
        return false if _twint.is_a?(OpenApi::Validatable) && !_twint.valid?
      end

      unless (_us_bank_account = @us_bank_account).nil?
        return false if _us_bank_account.is_a?(OpenApi::Validatable) && !_us_bank_account.valid?
      end

      unless (_wechat_pay = @wechat_pay).nil?
        return false if _wechat_pay.is_a?(OpenApi::Validatable) && !_wechat_pay.valid?
      end

      unless (_zip = @zip).nil?
        return false if _zip.is_a?(OpenApi::Validatable) && !_zip.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] acss_debit Object to be assigned
    def acss_debit=(new_value : Stripe::PaymentIntentPaymentMethodOptionsAcssDebit?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @acss_debit = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] affirm Object to be assigned
    def affirm=(new_value : Stripe::PaymentMethodOptionsAffirm?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @affirm = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] afterpay_clearpay Object to be assigned
    def afterpay_clearpay=(new_value : Stripe::PaymentMethodOptionsAfterpayClearpay?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @afterpay_clearpay = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] alipay Object to be assigned
    def alipay=(new_value : Stripe::PaymentMethodOptionsAlipay?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @alipay = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amazon_pay Object to be assigned
    def amazon_pay=(new_value : Stripe::PaymentMethodOptionsAmazonPay?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @amazon_pay = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] au_becs_debit Object to be assigned
    def au_becs_debit=(new_value : Stripe::PaymentIntentPaymentMethodOptionsAuBecsDebit?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @au_becs_debit = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bacs_debit Object to be assigned
    def bacs_debit=(new_value : Stripe::PaymentIntentPaymentMethodOptionsBacsDebit?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @bacs_debit = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bancontact Object to be assigned
    def bancontact=(new_value : Stripe::PaymentMethodOptionsBancontact?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @bancontact = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] blik Object to be assigned
    def blik=(new_value : Stripe::PaymentIntentPaymentMethodOptionsBlik?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @blik = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] boleto Object to be assigned
    def boleto=(new_value : Stripe::PaymentMethodOptionsBoleto?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @boleto = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] card Object to be assigned
    def card=(new_value : Stripe::PaymentIntentPaymentMethodOptionsCard?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @card = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] card_present Object to be assigned
    def card_present=(new_value : Stripe::PaymentMethodOptionsCardPresent?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @card_present2 = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cashapp Object to be assigned
    def cashapp=(new_value : Stripe::PaymentMethodOptionsCashapp?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @cashapp = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] customer_balance Object to be assigned
    def customer_balance=(new_value : Stripe::PaymentMethodOptionsCustomerBalance?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @customer_balance = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] eps Object to be assigned
    def eps=(new_value : Stripe::PaymentIntentPaymentMethodOptionsEps?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @eps = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] fpx Object to be assigned
    def fpx=(new_value : Stripe::PaymentMethodOptionsFpx?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @fpx = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] giropay Object to be assigned
    def giropay=(new_value : Stripe::PaymentMethodOptionsGiropay?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @giropay = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] grabpay Object to be assigned
    def grabpay=(new_value : Stripe::PaymentMethodOptionsGrabpay?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @grabpay = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] ideal Object to be assigned
    def ideal=(new_value : Stripe::PaymentMethodOptionsIdeal?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @ideal = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] interac_present Object to be assigned
    def interac_present=(new_value : JSON::Any?)
      @interac_present = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] klarna Object to be assigned
    def klarna=(new_value : Stripe::PaymentMethodOptionsKlarna?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @klarna = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] konbini Object to be assigned
    def konbini=(new_value : Stripe::PaymentMethodOptionsKonbini?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @konbini = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] link Object to be assigned
    def link=(new_value : Stripe::PaymentIntentPaymentMethodOptionsLink?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @link = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] mobilepay Object to be assigned
    def mobilepay=(new_value : Stripe::PaymentIntentPaymentMethodOptionsMobilepay?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @mobilepay = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] multibanco Object to be assigned
    def multibanco=(new_value : Stripe::PaymentMethodOptionsMultibanco?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @multibanco = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] oxxo Object to be assigned
    def oxxo=(new_value : Stripe::PaymentMethodOptionsOxxo?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @oxxo = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] p24 Object to be assigned
    def p24=(new_value : Stripe::PaymentMethodOptionsP24?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @p24 = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] paynow Object to be assigned
    def paynow=(new_value : Stripe::PaymentMethodOptionsPaynow?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @paynow = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] paypal Object to be assigned
    def paypal=(new_value : Stripe::PaymentMethodOptionsPaypal?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @paypal = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] pix Object to be assigned
    def pix=(new_value : Stripe::PaymentMethodOptionsPix?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @pix = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] promptpay Object to be assigned
    def promptpay=(new_value : Stripe::PaymentMethodOptionsPromptpay?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @promptpay = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] revolut_pay Object to be assigned
    def revolut_pay=(new_value : Stripe::PaymentMethodOptionsRevolutPay?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @revolut_pay = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sepa_debit Object to be assigned
    def sepa_debit=(new_value : Stripe::PaymentIntentPaymentMethodOptionsSepaDebit?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @sepa_debit = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sofort Object to be assigned
    def sofort=(new_value : Stripe::PaymentMethodOptionsSofort?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @sofort = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] swish Object to be assigned
    def swish=(new_value : Stripe::PaymentIntentPaymentMethodOptionsSwish?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @swish = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] twint Object to be assigned
    def twint=(new_value : Stripe::PaymentMethodOptionsTwint?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @twint = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] us_bank_account Object to be assigned
    def us_bank_account=(new_value : Stripe::PaymentIntentPaymentMethodOptionsUsBankAccount?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @us_bank_account = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] wechat_pay Object to be assigned
    def wechat_pay=(new_value : Stripe::PaymentMethodOptionsWechatPay?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @wechat_pay = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] zip Object to be assigned
    def zip=(new_value : Stripe::PaymentMethodOptionsZip?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @zip = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@acss_debit, @affirm, @afterpay_clearpay, @alipay, @amazon_pay, @au_becs_debit, @bacs_debit, @bancontact, @blik, @boleto, @card, @card_present2, @cashapp, @customer_balance, @eps, @fpx, @giropay, @grabpay, @ideal, @interac_present, @klarna, @konbini, @link, @mobilepay, @multibanco, @oxxo, @p24, @paynow, @paypal, @pix, @promptpay, @revolut_pay, @sepa_debit, @sofort, @swish, @twint, @us_bank_account, @wechat_pay, @zip)
  end
end
