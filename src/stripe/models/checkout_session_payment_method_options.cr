#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./checkout_acss_debit_payment_method_options"
require "./checkout_affirm_payment_method_options"
require "./checkout_afterpay_clearpay_payment_method_options"
require "./checkout_alipay_payment_method_options"
require "./checkout_amazon_pay_payment_method_options"
require "./checkout_au_becs_debit_payment_method_options"
require "./checkout_bacs_debit_payment_method_options"
require "./checkout_bancontact_payment_method_options"
require "./checkout_boleto_payment_method_options"
require "./checkout_card_payment_method_options"
require "./checkout_cashapp_payment_method_options"
require "./checkout_customer_balance_payment_method_options"
require "./checkout_eps_payment_method_options"
require "./checkout_fpx_payment_method_options"
require "./checkout_giropay_payment_method_options"
require "./checkout_grab_pay_payment_method_options"
require "./checkout_ideal_payment_method_options"
require "./checkout_klarna_payment_method_options"
require "./checkout_konbini_payment_method_options"
require "./checkout_link_payment_method_options"
require "./checkout_mobilepay_payment_method_options"
require "./checkout_multibanco_payment_method_options"
require "./checkout_oxxo_payment_method_options"
require "./checkout_p24_payment_method_options"
require "./checkout_paynow_payment_method_options"
require "./checkout_paypal_payment_method_options"
require "./checkout_pix_payment_method_options"
require "./checkout_revolut_pay_payment_method_options"
require "./checkout_sepa_debit_payment_method_options"
require "./checkout_sofort_payment_method_options"
require "./checkout_swish_payment_method_options"
require "./checkout_us_bank_account_payment_method_options"

module Stripe
  #
  class CheckoutSessionPaymentMethodOptions
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "acss_debit", type: Stripe::CheckoutAcssDebitPaymentMethodOptions?, default: nil, required: false, nullable: false, emit_null: false)]
    getter acss_debit : Stripe::CheckoutAcssDebitPaymentMethodOptions? = nil

    @[JSON::Field(key: "affirm", type: Stripe::CheckoutAffirmPaymentMethodOptions?, default: nil, required: false, nullable: false, emit_null: false)]
    getter affirm : Stripe::CheckoutAffirmPaymentMethodOptions? = nil

    @[JSON::Field(key: "afterpay_clearpay", type: Stripe::CheckoutAfterpayClearpayPaymentMethodOptions?, default: nil, required: false, nullable: false, emit_null: false)]
    getter afterpay_clearpay : Stripe::CheckoutAfterpayClearpayPaymentMethodOptions? = nil

    @[JSON::Field(key: "alipay", type: Stripe::CheckoutAlipayPaymentMethodOptions?, default: nil, required: false, nullable: false, emit_null: false)]
    getter alipay : Stripe::CheckoutAlipayPaymentMethodOptions? = nil

    @[JSON::Field(key: "amazon_pay", type: Stripe::CheckoutAmazonPayPaymentMethodOptions?, default: nil, required: false, nullable: false, emit_null: false)]
    getter amazon_pay : Stripe::CheckoutAmazonPayPaymentMethodOptions? = nil

    @[JSON::Field(key: "au_becs_debit", type: Stripe::CheckoutAuBecsDebitPaymentMethodOptions?, default: nil, required: false, nullable: false, emit_null: false)]
    getter au_becs_debit : Stripe::CheckoutAuBecsDebitPaymentMethodOptions? = nil

    @[JSON::Field(key: "bacs_debit", type: Stripe::CheckoutBacsDebitPaymentMethodOptions?, default: nil, required: false, nullable: false, emit_null: false)]
    getter bacs_debit : Stripe::CheckoutBacsDebitPaymentMethodOptions? = nil

    @[JSON::Field(key: "bancontact", type: Stripe::CheckoutBancontactPaymentMethodOptions?, default: nil, required: false, nullable: false, emit_null: false)]
    getter bancontact : Stripe::CheckoutBancontactPaymentMethodOptions? = nil

    @[JSON::Field(key: "boleto", type: Stripe::CheckoutBoletoPaymentMethodOptions?, default: nil, required: false, nullable: false, emit_null: false)]
    getter boleto : Stripe::CheckoutBoletoPaymentMethodOptions? = nil

    @[JSON::Field(key: "card", type: Stripe::CheckoutCardPaymentMethodOptions?, default: nil, required: false, nullable: false, emit_null: false)]
    getter card : Stripe::CheckoutCardPaymentMethodOptions? = nil

    @[JSON::Field(key: "cashapp", type: Stripe::CheckoutCashappPaymentMethodOptions?, default: nil, required: false, nullable: false, emit_null: false)]
    getter cashapp : Stripe::CheckoutCashappPaymentMethodOptions? = nil

    @[JSON::Field(key: "customer_balance", type: Stripe::CheckoutCustomerBalancePaymentMethodOptions?, default: nil, required: false, nullable: false, emit_null: false)]
    getter customer_balance : Stripe::CheckoutCustomerBalancePaymentMethodOptions? = nil

    @[JSON::Field(key: "eps", type: Stripe::CheckoutEpsPaymentMethodOptions?, default: nil, required: false, nullable: false, emit_null: false)]
    getter eps : Stripe::CheckoutEpsPaymentMethodOptions? = nil

    @[JSON::Field(key: "fpx", type: Stripe::CheckoutFpxPaymentMethodOptions?, default: nil, required: false, nullable: false, emit_null: false)]
    getter fpx : Stripe::CheckoutFpxPaymentMethodOptions? = nil

    @[JSON::Field(key: "giropay", type: Stripe::CheckoutGiropayPaymentMethodOptions?, default: nil, required: false, nullable: false, emit_null: false)]
    getter giropay : Stripe::CheckoutGiropayPaymentMethodOptions? = nil

    @[JSON::Field(key: "grabpay", type: Stripe::CheckoutGrabPayPaymentMethodOptions?, default: nil, required: false, nullable: false, emit_null: false)]
    getter grabpay : Stripe::CheckoutGrabPayPaymentMethodOptions? = nil

    @[JSON::Field(key: "ideal", type: Stripe::CheckoutIdealPaymentMethodOptions?, default: nil, required: false, nullable: false, emit_null: false)]
    getter ideal : Stripe::CheckoutIdealPaymentMethodOptions? = nil

    @[JSON::Field(key: "klarna", type: Stripe::CheckoutKlarnaPaymentMethodOptions?, default: nil, required: false, nullable: false, emit_null: false)]
    getter klarna : Stripe::CheckoutKlarnaPaymentMethodOptions? = nil

    @[JSON::Field(key: "konbini", type: Stripe::CheckoutKonbiniPaymentMethodOptions?, default: nil, required: false, nullable: false, emit_null: false)]
    getter konbini : Stripe::CheckoutKonbiniPaymentMethodOptions? = nil

    @[JSON::Field(key: "link", type: Stripe::CheckoutLinkPaymentMethodOptions?, default: nil, required: false, nullable: false, emit_null: false)]
    getter link : Stripe::CheckoutLinkPaymentMethodOptions? = nil

    @[JSON::Field(key: "mobilepay", type: Stripe::CheckoutMobilepayPaymentMethodOptions?, default: nil, required: false, nullable: false, emit_null: false)]
    getter mobilepay : Stripe::CheckoutMobilepayPaymentMethodOptions? = nil

    @[JSON::Field(key: "multibanco", type: Stripe::CheckoutMultibancoPaymentMethodOptions?, default: nil, required: false, nullable: false, emit_null: false)]
    getter multibanco : Stripe::CheckoutMultibancoPaymentMethodOptions? = nil

    @[JSON::Field(key: "oxxo", type: Stripe::CheckoutOxxoPaymentMethodOptions?, default: nil, required: false, nullable: false, emit_null: false)]
    getter oxxo : Stripe::CheckoutOxxoPaymentMethodOptions? = nil

    @[JSON::Field(key: "p24", type: Stripe::CheckoutP24PaymentMethodOptions?, default: nil, required: false, nullable: false, emit_null: false)]
    getter p24 : Stripe::CheckoutP24PaymentMethodOptions? = nil

    @[JSON::Field(key: "paynow", type: Stripe::CheckoutPaynowPaymentMethodOptions?, default: nil, required: false, nullable: false, emit_null: false)]
    getter paynow : Stripe::CheckoutPaynowPaymentMethodOptions? = nil

    @[JSON::Field(key: "paypal", type: Stripe::CheckoutPaypalPaymentMethodOptions?, default: nil, required: false, nullable: false, emit_null: false)]
    getter paypal : Stripe::CheckoutPaypalPaymentMethodOptions? = nil

    @[JSON::Field(key: "pix", type: Stripe::CheckoutPixPaymentMethodOptions?, default: nil, required: false, nullable: false, emit_null: false)]
    getter pix : Stripe::CheckoutPixPaymentMethodOptions? = nil

    @[JSON::Field(key: "revolut_pay", type: Stripe::CheckoutRevolutPayPaymentMethodOptions?, default: nil, required: false, nullable: false, emit_null: false)]
    getter revolut_pay : Stripe::CheckoutRevolutPayPaymentMethodOptions? = nil

    @[JSON::Field(key: "sepa_debit", type: Stripe::CheckoutSepaDebitPaymentMethodOptions?, default: nil, required: false, nullable: false, emit_null: false)]
    getter sepa_debit : Stripe::CheckoutSepaDebitPaymentMethodOptions? = nil

    @[JSON::Field(key: "sofort", type: Stripe::CheckoutSofortPaymentMethodOptions?, default: nil, required: false, nullable: false, emit_null: false)]
    getter sofort : Stripe::CheckoutSofortPaymentMethodOptions? = nil

    @[JSON::Field(key: "swish", type: Stripe::CheckoutSwishPaymentMethodOptions?, default: nil, required: false, nullable: false, emit_null: false)]
    getter swish : Stripe::CheckoutSwishPaymentMethodOptions? = nil

    @[JSON::Field(key: "us_bank_account", type: Stripe::CheckoutUsBankAccountPaymentMethodOptions?, default: nil, required: false, nullable: false, emit_null: false)]
    getter us_bank_account : Stripe::CheckoutUsBankAccountPaymentMethodOptions? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @acss_debit : Stripe::CheckoutAcssDebitPaymentMethodOptions? = nil,
      @affirm : Stripe::CheckoutAffirmPaymentMethodOptions? = nil,
      @afterpay_clearpay : Stripe::CheckoutAfterpayClearpayPaymentMethodOptions? = nil,
      @alipay : Stripe::CheckoutAlipayPaymentMethodOptions? = nil,
      @amazon_pay : Stripe::CheckoutAmazonPayPaymentMethodOptions? = nil,
      @au_becs_debit : Stripe::CheckoutAuBecsDebitPaymentMethodOptions? = nil,
      @bacs_debit : Stripe::CheckoutBacsDebitPaymentMethodOptions? = nil,
      @bancontact : Stripe::CheckoutBancontactPaymentMethodOptions? = nil,
      @boleto : Stripe::CheckoutBoletoPaymentMethodOptions? = nil,
      @card : Stripe::CheckoutCardPaymentMethodOptions? = nil,
      @cashapp : Stripe::CheckoutCashappPaymentMethodOptions? = nil,
      @customer_balance : Stripe::CheckoutCustomerBalancePaymentMethodOptions? = nil,
      @eps : Stripe::CheckoutEpsPaymentMethodOptions? = nil,
      @fpx : Stripe::CheckoutFpxPaymentMethodOptions? = nil,
      @giropay : Stripe::CheckoutGiropayPaymentMethodOptions? = nil,
      @grabpay : Stripe::CheckoutGrabPayPaymentMethodOptions? = nil,
      @ideal : Stripe::CheckoutIdealPaymentMethodOptions? = nil,
      @klarna : Stripe::CheckoutKlarnaPaymentMethodOptions? = nil,
      @konbini : Stripe::CheckoutKonbiniPaymentMethodOptions? = nil,
      @link : Stripe::CheckoutLinkPaymentMethodOptions? = nil,
      @mobilepay : Stripe::CheckoutMobilepayPaymentMethodOptions? = nil,
      @multibanco : Stripe::CheckoutMultibancoPaymentMethodOptions? = nil,
      @oxxo : Stripe::CheckoutOxxoPaymentMethodOptions? = nil,
      @p24 : Stripe::CheckoutP24PaymentMethodOptions? = nil,
      @paynow : Stripe::CheckoutPaynowPaymentMethodOptions? = nil,
      @paypal : Stripe::CheckoutPaypalPaymentMethodOptions? = nil,
      @pix : Stripe::CheckoutPixPaymentMethodOptions? = nil,
      @revolut_pay : Stripe::CheckoutRevolutPayPaymentMethodOptions? = nil,
      @sepa_debit : Stripe::CheckoutSepaDebitPaymentMethodOptions? = nil,
      @sofort : Stripe::CheckoutSofortPaymentMethodOptions? = nil,
      @swish : Stripe::CheckoutSwishPaymentMethodOptions? = nil,
      @us_bank_account : Stripe::CheckoutUsBankAccountPaymentMethodOptions? = nil
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
      unless (_boleto = @boleto).nil?
        invalid_properties.concat(_boleto.list_invalid_properties_for("boleto")) if _boleto.is_a?(OpenApi::Validatable)
      end
      unless (_card = @card).nil?
        invalid_properties.concat(_card.list_invalid_properties_for("card")) if _card.is_a?(OpenApi::Validatable)
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
      unless (_us_bank_account = @us_bank_account).nil?
        invalid_properties.concat(_us_bank_account.list_invalid_properties_for("us_bank_account")) if _us_bank_account.is_a?(OpenApi::Validatable)
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

      unless (_boleto = @boleto).nil?
        return false if _boleto.is_a?(OpenApi::Validatable) && !_boleto.valid?
      end

      unless (_card = @card).nil?
        return false if _card.is_a?(OpenApi::Validatable) && !_card.valid?
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

      unless (_us_bank_account = @us_bank_account).nil?
        return false if _us_bank_account.is_a?(OpenApi::Validatable) && !_us_bank_account.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] acss_debit Object to be assigned
    def acss_debit=(new_value : Stripe::CheckoutAcssDebitPaymentMethodOptions?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @acss_debit = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] affirm Object to be assigned
    def affirm=(new_value : Stripe::CheckoutAffirmPaymentMethodOptions?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @affirm = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] afterpay_clearpay Object to be assigned
    def afterpay_clearpay=(new_value : Stripe::CheckoutAfterpayClearpayPaymentMethodOptions?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @afterpay_clearpay = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] alipay Object to be assigned
    def alipay=(new_value : Stripe::CheckoutAlipayPaymentMethodOptions?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @alipay = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amazon_pay Object to be assigned
    def amazon_pay=(new_value : Stripe::CheckoutAmazonPayPaymentMethodOptions?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @amazon_pay = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] au_becs_debit Object to be assigned
    def au_becs_debit=(new_value : Stripe::CheckoutAuBecsDebitPaymentMethodOptions?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @au_becs_debit = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bacs_debit Object to be assigned
    def bacs_debit=(new_value : Stripe::CheckoutBacsDebitPaymentMethodOptions?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @bacs_debit = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bancontact Object to be assigned
    def bancontact=(new_value : Stripe::CheckoutBancontactPaymentMethodOptions?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @bancontact = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] boleto Object to be assigned
    def boleto=(new_value : Stripe::CheckoutBoletoPaymentMethodOptions?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @boleto = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] card Object to be assigned
    def card=(new_value : Stripe::CheckoutCardPaymentMethodOptions?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @card = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cashapp Object to be assigned
    def cashapp=(new_value : Stripe::CheckoutCashappPaymentMethodOptions?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @cashapp = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] customer_balance Object to be assigned
    def customer_balance=(new_value : Stripe::CheckoutCustomerBalancePaymentMethodOptions?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @customer_balance = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] eps Object to be assigned
    def eps=(new_value : Stripe::CheckoutEpsPaymentMethodOptions?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @eps = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] fpx Object to be assigned
    def fpx=(new_value : Stripe::CheckoutFpxPaymentMethodOptions?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @fpx = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] giropay Object to be assigned
    def giropay=(new_value : Stripe::CheckoutGiropayPaymentMethodOptions?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @giropay = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] grabpay Object to be assigned
    def grabpay=(new_value : Stripe::CheckoutGrabPayPaymentMethodOptions?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @grabpay = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] ideal Object to be assigned
    def ideal=(new_value : Stripe::CheckoutIdealPaymentMethodOptions?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @ideal = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] klarna Object to be assigned
    def klarna=(new_value : Stripe::CheckoutKlarnaPaymentMethodOptions?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @klarna = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] konbini Object to be assigned
    def konbini=(new_value : Stripe::CheckoutKonbiniPaymentMethodOptions?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @konbini = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] link Object to be assigned
    def link=(new_value : Stripe::CheckoutLinkPaymentMethodOptions?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @link = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] mobilepay Object to be assigned
    def mobilepay=(new_value : Stripe::CheckoutMobilepayPaymentMethodOptions?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @mobilepay = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] multibanco Object to be assigned
    def multibanco=(new_value : Stripe::CheckoutMultibancoPaymentMethodOptions?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @multibanco = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] oxxo Object to be assigned
    def oxxo=(new_value : Stripe::CheckoutOxxoPaymentMethodOptions?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @oxxo = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] p24 Object to be assigned
    def p24=(new_value : Stripe::CheckoutP24PaymentMethodOptions?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @p24 = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] paynow Object to be assigned
    def paynow=(new_value : Stripe::CheckoutPaynowPaymentMethodOptions?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @paynow = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] paypal Object to be assigned
    def paypal=(new_value : Stripe::CheckoutPaypalPaymentMethodOptions?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @paypal = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] pix Object to be assigned
    def pix=(new_value : Stripe::CheckoutPixPaymentMethodOptions?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @pix = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] revolut_pay Object to be assigned
    def revolut_pay=(new_value : Stripe::CheckoutRevolutPayPaymentMethodOptions?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @revolut_pay = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sepa_debit Object to be assigned
    def sepa_debit=(new_value : Stripe::CheckoutSepaDebitPaymentMethodOptions?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @sepa_debit = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sofort Object to be assigned
    def sofort=(new_value : Stripe::CheckoutSofortPaymentMethodOptions?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @sofort = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] swish Object to be assigned
    def swish=(new_value : Stripe::CheckoutSwishPaymentMethodOptions?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @swish = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] us_bank_account Object to be assigned
    def us_bank_account=(new_value : Stripe::CheckoutUsBankAccountPaymentMethodOptions?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @us_bank_account = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@acss_debit, @affirm, @afterpay_clearpay, @alipay, @amazon_pay, @au_becs_debit, @bacs_debit, @bancontact, @boleto, @card, @cashapp, @customer_balance, @eps, @fpx, @giropay, @grabpay, @ideal, @klarna, @konbini, @link, @mobilepay, @multibanco, @oxxo, @p24, @paynow, @paypal, @pix, @revolut_pay, @sepa_debit, @sofort, @swish, @us_bank_account)
  end
end
