#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-08-01
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module Stripe
  # Payment-method-specific configuration.
  class PaymentMethodOptionsParam
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "acss_debit", type: Stripe::PaymentMethodOptionsParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter acss_debit : Stripe::PaymentMethodOptionsParam? = nil

    @[JSON::Field(key: "affirm", type: Stripe::PaymentMethodOptionsParam1?, default: nil, required: false, nullable: false, emit_null: false)]
    getter affirm : Stripe::PaymentMethodOptionsParam1? = nil

    @[JSON::Field(key: "afterpay_clearpay", type: Stripe::PaymentMethodOptionsParam1?, default: nil, required: false, nullable: false, emit_null: false)]
    getter afterpay_clearpay : Stripe::PaymentMethodOptionsParam1? = nil

    @[JSON::Field(key: "alipay", type: Stripe::PaymentMethodOptionsParam1?, default: nil, required: false, nullable: false, emit_null: false)]
    getter alipay : Stripe::PaymentMethodOptionsParam1? = nil

    @[JSON::Field(key: "au_becs_debit", type: Stripe::PaymentMethodOptionsParam1?, default: nil, required: false, nullable: false, emit_null: false)]
    getter au_becs_debit : Stripe::PaymentMethodOptionsParam1? = nil

    @[JSON::Field(key: "bacs_debit", type: Stripe::PaymentMethodOptionsParam2?, default: nil, required: false, nullable: false, emit_null: false)]
    getter bacs_debit : Stripe::PaymentMethodOptionsParam2? = nil

    @[JSON::Field(key: "bancontact", type: Stripe::PaymentMethodOptionsParam1?, default: nil, required: false, nullable: false, emit_null: false)]
    getter bancontact : Stripe::PaymentMethodOptionsParam1? = nil

    @[JSON::Field(key: "boleto", type: Stripe::PaymentMethodOptionsParam3?, default: nil, required: false, nullable: false, emit_null: false)]
    getter boleto : Stripe::PaymentMethodOptionsParam3? = nil

    @[JSON::Field(key: "card", type: Stripe::PaymentMethodOptionsParam4?, default: nil, required: false, nullable: false, emit_null: false)]
    getter card : Stripe::PaymentMethodOptionsParam4? = nil

    @[JSON::Field(key: "customer_balance", type: Stripe::PaymentMethodOptionsParam5?, default: nil, required: false, nullable: false, emit_null: false)]
    getter customer_balance : Stripe::PaymentMethodOptionsParam5? = nil

    @[JSON::Field(key: "eps", type: Stripe::PaymentMethodOptionsParam1?, default: nil, required: false, nullable: false, emit_null: false)]
    getter eps : Stripe::PaymentMethodOptionsParam1? = nil

    @[JSON::Field(key: "fpx", type: Stripe::PaymentMethodOptionsParam1?, default: nil, required: false, nullable: false, emit_null: false)]
    getter fpx : Stripe::PaymentMethodOptionsParam1? = nil

    @[JSON::Field(key: "giropay", type: Stripe::PaymentMethodOptionsParam1?, default: nil, required: false, nullable: false, emit_null: false)]
    getter giropay : Stripe::PaymentMethodOptionsParam1? = nil

    @[JSON::Field(key: "grabpay", type: Stripe::PaymentMethodOptionsParam1?, default: nil, required: false, nullable: false, emit_null: false)]
    getter grabpay : Stripe::PaymentMethodOptionsParam1? = nil

    @[JSON::Field(key: "ideal", type: Stripe::PaymentMethodOptionsParam1?, default: nil, required: false, nullable: false, emit_null: false)]
    getter ideal : Stripe::PaymentMethodOptionsParam1? = nil

    @[JSON::Field(key: "klarna", type: Stripe::PaymentMethodOptionsParam1?, default: nil, required: false, nullable: false, emit_null: false)]
    getter klarna : Stripe::PaymentMethodOptionsParam1? = nil

    @[JSON::Field(key: "konbini", type: Stripe::PaymentMethodOptionsParam6?, default: nil, required: false, nullable: false, emit_null: false)]
    getter konbini : Stripe::PaymentMethodOptionsParam6? = nil

    @[JSON::Field(key: "oxxo", type: Stripe::PaymentMethodOptionsParam6?, default: nil, required: false, nullable: false, emit_null: false)]
    getter oxxo : Stripe::PaymentMethodOptionsParam6? = nil

    @[JSON::Field(key: "p24", type: Stripe::PaymentMethodOptionsParam7?, default: nil, required: false, nullable: false, emit_null: false)]
    getter p24 : Stripe::PaymentMethodOptionsParam7? = nil

    @[JSON::Field(key: "paynow", type: Stripe::PaymentMethodOptionsParam7?, default: nil, required: false, nullable: false, emit_null: false)]
    getter paynow : Stripe::PaymentMethodOptionsParam7? = nil

    @[JSON::Field(key: "pix", type: Stripe::PaymentMethodOptionsParam8?, default: nil, required: false, nullable: false, emit_null: false)]
    getter pix : Stripe::PaymentMethodOptionsParam8? = nil

    @[JSON::Field(key: "sepa_debit", type: Stripe::PaymentMethodOptionsParam2?, default: nil, required: false, nullable: false, emit_null: false)]
    getter sepa_debit : Stripe::PaymentMethodOptionsParam2? = nil

    @[JSON::Field(key: "sofort", type: Stripe::PaymentMethodOptionsParam1?, default: nil, required: false, nullable: false, emit_null: false)]
    getter sofort : Stripe::PaymentMethodOptionsParam1? = nil

    @[JSON::Field(key: "us_bank_account", type: Stripe::PaymentMethodOptionsParam9?, default: nil, required: false, nullable: false, emit_null: false)]
    getter us_bank_account : Stripe::PaymentMethodOptionsParam9? = nil

    @[JSON::Field(key: "wechat_pay", type: Stripe::PaymentMethodOptionsParam10?, default: nil, required: false, nullable: false, emit_null: false)]
    getter wechat_pay : Stripe::PaymentMethodOptionsParam10? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @acss_debit : Stripe::PaymentMethodOptionsParam? = nil,
      @affirm : Stripe::PaymentMethodOptionsParam1? = nil,
      @afterpay_clearpay : Stripe::PaymentMethodOptionsParam1? = nil,
      @alipay : Stripe::PaymentMethodOptionsParam1? = nil,
      @au_becs_debit : Stripe::PaymentMethodOptionsParam1? = nil,
      @bacs_debit : Stripe::PaymentMethodOptionsParam2? = nil,
      @bancontact : Stripe::PaymentMethodOptionsParam1? = nil,
      @boleto : Stripe::PaymentMethodOptionsParam3? = nil,
      @card : Stripe::PaymentMethodOptionsParam4? = nil,
      @customer_balance : Stripe::PaymentMethodOptionsParam5? = nil,
      @eps : Stripe::PaymentMethodOptionsParam1? = nil,
      @fpx : Stripe::PaymentMethodOptionsParam1? = nil,
      @giropay : Stripe::PaymentMethodOptionsParam1? = nil,
      @grabpay : Stripe::PaymentMethodOptionsParam1? = nil,
      @ideal : Stripe::PaymentMethodOptionsParam1? = nil,
      @klarna : Stripe::PaymentMethodOptionsParam1? = nil,
      @konbini : Stripe::PaymentMethodOptionsParam6? = nil,
      @oxxo : Stripe::PaymentMethodOptionsParam6? = nil,
      @p24 : Stripe::PaymentMethodOptionsParam7? = nil,
      @paynow : Stripe::PaymentMethodOptionsParam7? = nil,
      @pix : Stripe::PaymentMethodOptionsParam8? = nil,
      @sepa_debit : Stripe::PaymentMethodOptionsParam2? = nil,
      @sofort : Stripe::PaymentMethodOptionsParam1? = nil,
      @us_bank_account : Stripe::PaymentMethodOptionsParam9? = nil,
      @wechat_pay : Stripe::PaymentMethodOptionsParam10? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      if _acss_debit = @acss_debit
        invalid_properties.concat(_acss_debit.list_invalid_properties_for("acss_debit")) if _acss_debit.is_a?(OpenApi::Validatable)
      end
      if _affirm = @affirm
        invalid_properties.concat(_affirm.list_invalid_properties_for("affirm")) if _affirm.is_a?(OpenApi::Validatable)
      end
      if _afterpay_clearpay = @afterpay_clearpay
        invalid_properties.concat(_afterpay_clearpay.list_invalid_properties_for("afterpay_clearpay")) if _afterpay_clearpay.is_a?(OpenApi::Validatable)
      end
      if _alipay = @alipay
        invalid_properties.concat(_alipay.list_invalid_properties_for("alipay")) if _alipay.is_a?(OpenApi::Validatable)
      end
      if _au_becs_debit = @au_becs_debit
        invalid_properties.concat(_au_becs_debit.list_invalid_properties_for("au_becs_debit")) if _au_becs_debit.is_a?(OpenApi::Validatable)
      end
      if _bacs_debit = @bacs_debit
        invalid_properties.concat(_bacs_debit.list_invalid_properties_for("bacs_debit")) if _bacs_debit.is_a?(OpenApi::Validatable)
      end
      if _bancontact = @bancontact
        invalid_properties.concat(_bancontact.list_invalid_properties_for("bancontact")) if _bancontact.is_a?(OpenApi::Validatable)
      end
      if _boleto = @boleto
        invalid_properties.concat(_boleto.list_invalid_properties_for("boleto")) if _boleto.is_a?(OpenApi::Validatable)
      end
      if _card = @card
        invalid_properties.concat(_card.list_invalid_properties_for("card")) if _card.is_a?(OpenApi::Validatable)
      end
      if _customer_balance = @customer_balance
        invalid_properties.concat(_customer_balance.list_invalid_properties_for("customer_balance")) if _customer_balance.is_a?(OpenApi::Validatable)
      end
      if _eps = @eps
        invalid_properties.concat(_eps.list_invalid_properties_for("eps")) if _eps.is_a?(OpenApi::Validatable)
      end
      if _fpx = @fpx
        invalid_properties.concat(_fpx.list_invalid_properties_for("fpx")) if _fpx.is_a?(OpenApi::Validatable)
      end
      if _giropay = @giropay
        invalid_properties.concat(_giropay.list_invalid_properties_for("giropay")) if _giropay.is_a?(OpenApi::Validatable)
      end
      if _grabpay = @grabpay
        invalid_properties.concat(_grabpay.list_invalid_properties_for("grabpay")) if _grabpay.is_a?(OpenApi::Validatable)
      end
      if _ideal = @ideal
        invalid_properties.concat(_ideal.list_invalid_properties_for("ideal")) if _ideal.is_a?(OpenApi::Validatable)
      end
      if _klarna = @klarna
        invalid_properties.concat(_klarna.list_invalid_properties_for("klarna")) if _klarna.is_a?(OpenApi::Validatable)
      end
      if _konbini = @konbini
        invalid_properties.concat(_konbini.list_invalid_properties_for("konbini")) if _konbini.is_a?(OpenApi::Validatable)
      end
      if _oxxo = @oxxo
        invalid_properties.concat(_oxxo.list_invalid_properties_for("oxxo")) if _oxxo.is_a?(OpenApi::Validatable)
      end
      if _p24 = @p24
        invalid_properties.concat(_p24.list_invalid_properties_for("p24")) if _p24.is_a?(OpenApi::Validatable)
      end
      if _paynow = @paynow
        invalid_properties.concat(_paynow.list_invalid_properties_for("paynow")) if _paynow.is_a?(OpenApi::Validatable)
      end
      if _pix = @pix
        invalid_properties.concat(_pix.list_invalid_properties_for("pix")) if _pix.is_a?(OpenApi::Validatable)
      end
      if _sepa_debit = @sepa_debit
        invalid_properties.concat(_sepa_debit.list_invalid_properties_for("sepa_debit")) if _sepa_debit.is_a?(OpenApi::Validatable)
      end
      if _sofort = @sofort
        invalid_properties.concat(_sofort.list_invalid_properties_for("sofort")) if _sofort.is_a?(OpenApi::Validatable)
      end
      if _us_bank_account = @us_bank_account
        invalid_properties.concat(_us_bank_account.list_invalid_properties_for("us_bank_account")) if _us_bank_account.is_a?(OpenApi::Validatable)
      end
      if _wechat_pay = @wechat_pay
        invalid_properties.concat(_wechat_pay.list_invalid_properties_for("wechat_pay")) if _wechat_pay.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _acss_debit = @acss_debit
        return false if _acss_debit.is_a?(OpenApi::Validatable) && !_acss_debit.valid?
      end

      if _affirm = @affirm
        return false if _affirm.is_a?(OpenApi::Validatable) && !_affirm.valid?
      end

      if _afterpay_clearpay = @afterpay_clearpay
        return false if _afterpay_clearpay.is_a?(OpenApi::Validatable) && !_afterpay_clearpay.valid?
      end

      if _alipay = @alipay
        return false if _alipay.is_a?(OpenApi::Validatable) && !_alipay.valid?
      end

      if _au_becs_debit = @au_becs_debit
        return false if _au_becs_debit.is_a?(OpenApi::Validatable) && !_au_becs_debit.valid?
      end

      if _bacs_debit = @bacs_debit
        return false if _bacs_debit.is_a?(OpenApi::Validatable) && !_bacs_debit.valid?
      end

      if _bancontact = @bancontact
        return false if _bancontact.is_a?(OpenApi::Validatable) && !_bancontact.valid?
      end

      if _boleto = @boleto
        return false if _boleto.is_a?(OpenApi::Validatable) && !_boleto.valid?
      end

      if _card = @card
        return false if _card.is_a?(OpenApi::Validatable) && !_card.valid?
      end

      if _customer_balance = @customer_balance
        return false if _customer_balance.is_a?(OpenApi::Validatable) && !_customer_balance.valid?
      end

      if _eps = @eps
        return false if _eps.is_a?(OpenApi::Validatable) && !_eps.valid?
      end

      if _fpx = @fpx
        return false if _fpx.is_a?(OpenApi::Validatable) && !_fpx.valid?
      end

      if _giropay = @giropay
        return false if _giropay.is_a?(OpenApi::Validatable) && !_giropay.valid?
      end

      if _grabpay = @grabpay
        return false if _grabpay.is_a?(OpenApi::Validatable) && !_grabpay.valid?
      end

      if _ideal = @ideal
        return false if _ideal.is_a?(OpenApi::Validatable) && !_ideal.valid?
      end

      if _klarna = @klarna
        return false if _klarna.is_a?(OpenApi::Validatable) && !_klarna.valid?
      end

      if _konbini = @konbini
        return false if _konbini.is_a?(OpenApi::Validatable) && !_konbini.valid?
      end

      if _oxxo = @oxxo
        return false if _oxxo.is_a?(OpenApi::Validatable) && !_oxxo.valid?
      end

      if _p24 = @p24
        return false if _p24.is_a?(OpenApi::Validatable) && !_p24.valid?
      end

      if _paynow = @paynow
        return false if _paynow.is_a?(OpenApi::Validatable) && !_paynow.valid?
      end

      if _pix = @pix
        return false if _pix.is_a?(OpenApi::Validatable) && !_pix.valid?
      end

      if _sepa_debit = @sepa_debit
        return false if _sepa_debit.is_a?(OpenApi::Validatable) && !_sepa_debit.valid?
      end

      if _sofort = @sofort
        return false if _sofort.is_a?(OpenApi::Validatable) && !_sofort.valid?
      end

      if _us_bank_account = @us_bank_account
        return false if _us_bank_account.is_a?(OpenApi::Validatable) && !_us_bank_account.valid?
      end

      if _wechat_pay = @wechat_pay
        return false if _wechat_pay.is_a?(OpenApi::Validatable) && !_wechat_pay.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] acss_debit Object to be assigned
    def acss_debit=(acss_debit : Stripe::PaymentMethodOptionsParam?)
      if acss_debit.nil?
        return @acss_debit = nil
      end
      _acss_debit = acss_debit.not_nil!
      _acss_debit.validate if _acss_debit.is_a?(OpenApi::Validatable)
      @acss_debit = _acss_debit
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] affirm Object to be assigned
    def affirm=(affirm : Stripe::PaymentMethodOptionsParam1?)
      if affirm.nil?
        return @affirm = nil
      end
      _affirm = affirm.not_nil!
      _affirm.validate if _affirm.is_a?(OpenApi::Validatable)
      @affirm = _affirm
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] afterpay_clearpay Object to be assigned
    def afterpay_clearpay=(afterpay_clearpay : Stripe::PaymentMethodOptionsParam1?)
      if afterpay_clearpay.nil?
        return @afterpay_clearpay = nil
      end
      _afterpay_clearpay = afterpay_clearpay.not_nil!
      _afterpay_clearpay.validate if _afterpay_clearpay.is_a?(OpenApi::Validatable)
      @afterpay_clearpay = _afterpay_clearpay
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] alipay Object to be assigned
    def alipay=(alipay : Stripe::PaymentMethodOptionsParam1?)
      if alipay.nil?
        return @alipay = nil
      end
      _alipay = alipay.not_nil!
      _alipay.validate if _alipay.is_a?(OpenApi::Validatable)
      @alipay = _alipay
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] au_becs_debit Object to be assigned
    def au_becs_debit=(au_becs_debit : Stripe::PaymentMethodOptionsParam1?)
      if au_becs_debit.nil?
        return @au_becs_debit = nil
      end
      _au_becs_debit = au_becs_debit.not_nil!
      _au_becs_debit.validate if _au_becs_debit.is_a?(OpenApi::Validatable)
      @au_becs_debit = _au_becs_debit
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bacs_debit Object to be assigned
    def bacs_debit=(bacs_debit : Stripe::PaymentMethodOptionsParam2?)
      if bacs_debit.nil?
        return @bacs_debit = nil
      end
      _bacs_debit = bacs_debit.not_nil!
      _bacs_debit.validate if _bacs_debit.is_a?(OpenApi::Validatable)
      @bacs_debit = _bacs_debit
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bancontact Object to be assigned
    def bancontact=(bancontact : Stripe::PaymentMethodOptionsParam1?)
      if bancontact.nil?
        return @bancontact = nil
      end
      _bancontact = bancontact.not_nil!
      _bancontact.validate if _bancontact.is_a?(OpenApi::Validatable)
      @bancontact = _bancontact
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] boleto Object to be assigned
    def boleto=(boleto : Stripe::PaymentMethodOptionsParam3?)
      if boleto.nil?
        return @boleto = nil
      end
      _boleto = boleto.not_nil!
      _boleto.validate if _boleto.is_a?(OpenApi::Validatable)
      @boleto = _boleto
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] card Object to be assigned
    def card=(card : Stripe::PaymentMethodOptionsParam4?)
      if card.nil?
        return @card = nil
      end
      _card = card.not_nil!
      _card.validate if _card.is_a?(OpenApi::Validatable)
      @card = _card
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] customer_balance Object to be assigned
    def customer_balance=(customer_balance : Stripe::PaymentMethodOptionsParam5?)
      if customer_balance.nil?
        return @customer_balance = nil
      end
      _customer_balance = customer_balance.not_nil!
      _customer_balance.validate if _customer_balance.is_a?(OpenApi::Validatable)
      @customer_balance = _customer_balance
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] eps Object to be assigned
    def eps=(eps : Stripe::PaymentMethodOptionsParam1?)
      if eps.nil?
        return @eps = nil
      end
      _eps = eps.not_nil!
      _eps.validate if _eps.is_a?(OpenApi::Validatable)
      @eps = _eps
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] fpx Object to be assigned
    def fpx=(fpx : Stripe::PaymentMethodOptionsParam1?)
      if fpx.nil?
        return @fpx = nil
      end
      _fpx = fpx.not_nil!
      _fpx.validate if _fpx.is_a?(OpenApi::Validatable)
      @fpx = _fpx
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] giropay Object to be assigned
    def giropay=(giropay : Stripe::PaymentMethodOptionsParam1?)
      if giropay.nil?
        return @giropay = nil
      end
      _giropay = giropay.not_nil!
      _giropay.validate if _giropay.is_a?(OpenApi::Validatable)
      @giropay = _giropay
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] grabpay Object to be assigned
    def grabpay=(grabpay : Stripe::PaymentMethodOptionsParam1?)
      if grabpay.nil?
        return @grabpay = nil
      end
      _grabpay = grabpay.not_nil!
      _grabpay.validate if _grabpay.is_a?(OpenApi::Validatable)
      @grabpay = _grabpay
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] ideal Object to be assigned
    def ideal=(ideal : Stripe::PaymentMethodOptionsParam1?)
      if ideal.nil?
        return @ideal = nil
      end
      _ideal = ideal.not_nil!
      _ideal.validate if _ideal.is_a?(OpenApi::Validatable)
      @ideal = _ideal
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] klarna Object to be assigned
    def klarna=(klarna : Stripe::PaymentMethodOptionsParam1?)
      if klarna.nil?
        return @klarna = nil
      end
      _klarna = klarna.not_nil!
      _klarna.validate if _klarna.is_a?(OpenApi::Validatable)
      @klarna = _klarna
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] konbini Object to be assigned
    def konbini=(konbini : Stripe::PaymentMethodOptionsParam6?)
      if konbini.nil?
        return @konbini = nil
      end
      _konbini = konbini.not_nil!
      _konbini.validate if _konbini.is_a?(OpenApi::Validatable)
      @konbini = _konbini
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] oxxo Object to be assigned
    def oxxo=(oxxo : Stripe::PaymentMethodOptionsParam6?)
      if oxxo.nil?
        return @oxxo = nil
      end
      _oxxo = oxxo.not_nil!
      _oxxo.validate if _oxxo.is_a?(OpenApi::Validatable)
      @oxxo = _oxxo
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] p24 Object to be assigned
    def p24=(p24 : Stripe::PaymentMethodOptionsParam7?)
      if p24.nil?
        return @p24 = nil
      end
      _p24 = p24.not_nil!
      _p24.validate if _p24.is_a?(OpenApi::Validatable)
      @p24 = _p24
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] paynow Object to be assigned
    def paynow=(paynow : Stripe::PaymentMethodOptionsParam7?)
      if paynow.nil?
        return @paynow = nil
      end
      _paynow = paynow.not_nil!
      _paynow.validate if _paynow.is_a?(OpenApi::Validatable)
      @paynow = _paynow
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] pix Object to be assigned
    def pix=(pix : Stripe::PaymentMethodOptionsParam8?)
      if pix.nil?
        return @pix = nil
      end
      _pix = pix.not_nil!
      _pix.validate if _pix.is_a?(OpenApi::Validatable)
      @pix = _pix
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sepa_debit Object to be assigned
    def sepa_debit=(sepa_debit : Stripe::PaymentMethodOptionsParam2?)
      if sepa_debit.nil?
        return @sepa_debit = nil
      end
      _sepa_debit = sepa_debit.not_nil!
      _sepa_debit.validate if _sepa_debit.is_a?(OpenApi::Validatable)
      @sepa_debit = _sepa_debit
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sofort Object to be assigned
    def sofort=(sofort : Stripe::PaymentMethodOptionsParam1?)
      if sofort.nil?
        return @sofort = nil
      end
      _sofort = sofort.not_nil!
      _sofort.validate if _sofort.is_a?(OpenApi::Validatable)
      @sofort = _sofort
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] us_bank_account Object to be assigned
    def us_bank_account=(us_bank_account : Stripe::PaymentMethodOptionsParam9?)
      if us_bank_account.nil?
        return @us_bank_account = nil
      end
      _us_bank_account = us_bank_account.not_nil!
      _us_bank_account.validate if _us_bank_account.is_a?(OpenApi::Validatable)
      @us_bank_account = _us_bank_account
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] wechat_pay Object to be assigned
    def wechat_pay=(wechat_pay : Stripe::PaymentMethodOptionsParam10?)
      if wechat_pay.nil?
        return @wechat_pay = nil
      end
      _wechat_pay = wechat_pay.not_nil!
      _wechat_pay.validate if _wechat_pay.is_a?(OpenApi::Validatable)
      @wechat_pay = _wechat_pay
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@acss_debit, @affirm, @afterpay_clearpay, @alipay, @au_becs_debit, @bacs_debit, @bancontact, @boleto, @card, @customer_balance, @eps, @fpx, @giropay, @grabpay, @ideal, @klarna, @konbini, @oxxo, @p24, @paynow, @pix, @sepa_debit, @sofort, @us_bank_account, @wechat_pay)
  end
end
