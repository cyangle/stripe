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
  # When included, this hash creates a PaymentMethod that is set as the [`payment_method`](https://stripe.com/docs/api/setup_intents/object#setup_intent_object-payment_method) value in the SetupIntent.
  class PaymentMethodDataParams1
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    @[JSON::Field(key: "type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter _type : String? = nil
    ERROR_MESSAGE_FOR__TYPE = "invalid value for \"_type\", must be one of [acss_debit, affirm, afterpay_clearpay, alipay, au_becs_debit, bacs_debit, bancontact, blik, boleto, customer_balance, eps, fpx, giropay, grabpay, ideal, klarna, konbini, link, oxxo, p24, paynow, pix, promptpay, sepa_debit, sofort, us_bank_account, wechat_pay]."
    VALID_VALUES_FOR__TYPE  = StaticArray["acss_debit", "affirm", "afterpay_clearpay", "alipay", "au_becs_debit", "bacs_debit", "bancontact", "blik", "boleto", "customer_balance", "eps", "fpx", "giropay", "grabpay", "ideal", "klarna", "konbini", "link", "oxxo", "p24", "paynow", "pix", "promptpay", "sepa_debit", "sofort", "us_bank_account", "wechat_pay"]

    # Optional properties

    @[JSON::Field(key: "acss_debit", type: Stripe::PaymentMethodParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter acss_debit : Stripe::PaymentMethodParam? = nil

    @[JSON::Field(key: "affirm", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter affirm : JSON::Any? = nil

    @[JSON::Field(key: "afterpay_clearpay", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter afterpay_clearpay : JSON::Any? = nil

    @[JSON::Field(key: "alipay", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter alipay : JSON::Any? = nil

    @[JSON::Field(key: "au_becs_debit", type: Stripe::Param?, default: nil, required: false, nullable: false, emit_null: false)]
    getter au_becs_debit : Stripe::Param? = nil

    @[JSON::Field(key: "bacs_debit", type: Stripe::Param1?, default: nil, required: false, nullable: false, emit_null: false)]
    getter bacs_debit : Stripe::Param1? = nil

    @[JSON::Field(key: "bancontact", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter bancontact : JSON::Any? = nil

    @[JSON::Field(key: "billing_details", type: Stripe::BillingDetailsInnerParams?, default: nil, required: false, nullable: false, emit_null: false)]
    getter billing_details : Stripe::BillingDetailsInnerParams? = nil

    @[JSON::Field(key: "blik", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter blik : JSON::Any? = nil

    @[JSON::Field(key: "boleto", type: Stripe::Param2?, default: nil, required: false, nullable: false, emit_null: false)]
    getter boleto : Stripe::Param2? = nil

    @[JSON::Field(key: "customer_balance", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter customer_balance : JSON::Any? = nil

    @[JSON::Field(key: "eps", type: Stripe::Param3?, default: nil, required: false, nullable: false, emit_null: false)]
    getter eps : Stripe::Param3? = nil

    @[JSON::Field(key: "fpx", type: Stripe::Param4?, default: nil, required: false, nullable: false, emit_null: false)]
    getter fpx : Stripe::Param4? = nil

    @[JSON::Field(key: "giropay", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter giropay : JSON::Any? = nil

    @[JSON::Field(key: "grabpay", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter grabpay : JSON::Any? = nil

    @[JSON::Field(key: "ideal", type: Stripe::Param5?, default: nil, required: false, nullable: false, emit_null: false)]
    getter ideal : Stripe::Param5? = nil

    @[JSON::Field(key: "interac_present", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter interac_present : JSON::Any? = nil

    @[JSON::Field(key: "klarna", type: Stripe::Param6?, default: nil, required: false, nullable: false, emit_null: false)]
    getter klarna : Stripe::Param6? = nil

    @[JSON::Field(key: "konbini", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter konbini : JSON::Any? = nil

    @[JSON::Field(key: "link", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter link : JSON::Any? = nil

    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Hash(String, String)? = nil

    @[JSON::Field(key: "oxxo", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter oxxo : JSON::Any? = nil

    @[JSON::Field(key: "p24", type: Stripe::Param7?, default: nil, required: false, nullable: false, emit_null: false)]
    getter p24 : Stripe::Param7? = nil

    @[JSON::Field(key: "paynow", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter paynow : JSON::Any? = nil

    @[JSON::Field(key: "pix", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter pix : JSON::Any? = nil

    @[JSON::Field(key: "promptpay", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter promptpay : JSON::Any? = nil

    @[JSON::Field(key: "radar_options", type: Stripe::RadarOptions1?, default: nil, required: false, nullable: false, emit_null: false)]
    getter radar_options : Stripe::RadarOptions1? = nil

    @[JSON::Field(key: "sepa_debit", type: Stripe::Param8?, default: nil, required: false, nullable: false, emit_null: false)]
    getter sepa_debit : Stripe::Param8? = nil

    @[JSON::Field(key: "sofort", type: Stripe::Param9?, default: nil, required: false, nullable: false, emit_null: false)]
    getter sofort : Stripe::Param9? = nil

    @[JSON::Field(key: "us_bank_account", type: Stripe::PaymentMethodParam1?, default: nil, required: false, nullable: false, emit_null: false)]
    getter us_bank_account : Stripe::PaymentMethodParam1? = nil

    @[JSON::Field(key: "wechat_pay", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter wechat_pay : JSON::Any? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @_type : String? = nil,
      # Optional properties
      @acss_debit : Stripe::PaymentMethodParam? = nil,
      @affirm : JSON::Any? = nil,
      @afterpay_clearpay : JSON::Any? = nil,
      @alipay : JSON::Any? = nil,
      @au_becs_debit : Stripe::Param? = nil,
      @bacs_debit : Stripe::Param1? = nil,
      @bancontact : JSON::Any? = nil,
      @billing_details : Stripe::BillingDetailsInnerParams? = nil,
      @blik : JSON::Any? = nil,
      @boleto : Stripe::Param2? = nil,
      @customer_balance : JSON::Any? = nil,
      @eps : Stripe::Param3? = nil,
      @fpx : Stripe::Param4? = nil,
      @giropay : JSON::Any? = nil,
      @grabpay : JSON::Any? = nil,
      @ideal : Stripe::Param5? = nil,
      @interac_present : JSON::Any? = nil,
      @klarna : Stripe::Param6? = nil,
      @konbini : JSON::Any? = nil,
      @link : JSON::Any? = nil,
      @metadata : Hash(String, String)? = nil,
      @oxxo : JSON::Any? = nil,
      @p24 : Stripe::Param7? = nil,
      @paynow : JSON::Any? = nil,
      @pix : JSON::Any? = nil,
      @promptpay : JSON::Any? = nil,
      @radar_options : Stripe::RadarOptions1? = nil,
      @sepa_debit : Stripe::Param8? = nil,
      @sofort : Stripe::Param9? = nil,
      @us_bank_account : Stripe::PaymentMethodParam1? = nil,
      @wechat_pay : JSON::Any? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"_type\" is required and cannot be null") if @_type.nil?

      if __type = @_type
        invalid_properties.push(ERROR_MESSAGE_FOR__TYPE) unless OpenApi::EnumValidator.valid?(__type, VALID_VALUES_FOR__TYPE)
      end
      if _acss_debit = @acss_debit
        invalid_properties.concat(_acss_debit.list_invalid_properties_for("acss_debit")) if _acss_debit.is_a?(OpenApi::Validatable)
      end

      if _au_becs_debit = @au_becs_debit
        invalid_properties.concat(_au_becs_debit.list_invalid_properties_for("au_becs_debit")) if _au_becs_debit.is_a?(OpenApi::Validatable)
      end
      if _bacs_debit = @bacs_debit
        invalid_properties.concat(_bacs_debit.list_invalid_properties_for("bacs_debit")) if _bacs_debit.is_a?(OpenApi::Validatable)
      end

      if _billing_details = @billing_details
        invalid_properties.concat(_billing_details.list_invalid_properties_for("billing_details")) if _billing_details.is_a?(OpenApi::Validatable)
      end

      if _boleto = @boleto
        invalid_properties.concat(_boleto.list_invalid_properties_for("boleto")) if _boleto.is_a?(OpenApi::Validatable)
      end

      if _eps = @eps
        invalid_properties.concat(_eps.list_invalid_properties_for("eps")) if _eps.is_a?(OpenApi::Validatable)
      end
      if _fpx = @fpx
        invalid_properties.concat(_fpx.list_invalid_properties_for("fpx")) if _fpx.is_a?(OpenApi::Validatable)
      end

      if _ideal = @ideal
        invalid_properties.concat(_ideal.list_invalid_properties_for("ideal")) if _ideal.is_a?(OpenApi::Validatable)
      end

      if _klarna = @klarna
        invalid_properties.concat(_klarna.list_invalid_properties_for("klarna")) if _klarna.is_a?(OpenApi::Validatable)
      end

      if _p24 = @p24
        invalid_properties.concat(_p24.list_invalid_properties_for("p24")) if _p24.is_a?(OpenApi::Validatable)
      end

      if _radar_options = @radar_options
        invalid_properties.concat(_radar_options.list_invalid_properties_for("radar_options")) if _radar_options.is_a?(OpenApi::Validatable)
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

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @_type.nil?
      if __type = @_type
        return false unless OpenApi::EnumValidator.valid?(__type, VALID_VALUES_FOR__TYPE)
      end

      if _acss_debit = @acss_debit
        return false if _acss_debit.is_a?(OpenApi::Validatable) && !_acss_debit.valid?
      end

      if _au_becs_debit = @au_becs_debit
        return false if _au_becs_debit.is_a?(OpenApi::Validatable) && !_au_becs_debit.valid?
      end

      if _bacs_debit = @bacs_debit
        return false if _bacs_debit.is_a?(OpenApi::Validatable) && !_bacs_debit.valid?
      end

      if _billing_details = @billing_details
        return false if _billing_details.is_a?(OpenApi::Validatable) && !_billing_details.valid?
      end

      if _boleto = @boleto
        return false if _boleto.is_a?(OpenApi::Validatable) && !_boleto.valid?
      end

      if _eps = @eps
        return false if _eps.is_a?(OpenApi::Validatable) && !_eps.valid?
      end

      if _fpx = @fpx
        return false if _fpx.is_a?(OpenApi::Validatable) && !_fpx.valid?
      end

      if _ideal = @ideal
        return false if _ideal.is_a?(OpenApi::Validatable) && !_ideal.valid?
      end

      if _klarna = @klarna
        return false if _klarna.is_a?(OpenApi::Validatable) && !_klarna.valid?
      end

      if _p24 = @p24
        return false if _p24.is_a?(OpenApi::Validatable) && !_p24.valid?
      end

      if _radar_options = @radar_options
        return false if _radar_options.is_a?(OpenApi::Validatable) && !_radar_options.valid?
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

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(_type : String?)
      if _type.nil?
        raise ArgumentError.new("\"_type\" is required and cannot be null")
      end
      __type = _type.not_nil!
      OpenApi::EnumValidator.validate("_type", __type, VALID_VALUES_FOR__TYPE)
      @_type = __type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] acss_debit Object to be assigned
    def acss_debit=(acss_debit : Stripe::PaymentMethodParam?)
      if acss_debit.nil?
        return @acss_debit = nil
      end
      _acss_debit = acss_debit.not_nil!
      _acss_debit.validate if _acss_debit.is_a?(OpenApi::Validatable)
      @acss_debit = _acss_debit
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] affirm Object to be assigned
    def affirm=(affirm : JSON::Any?)
      if affirm.nil?
        return @affirm = nil
      end
      _affirm = affirm.not_nil!
      @affirm = _affirm
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] afterpay_clearpay Object to be assigned
    def afterpay_clearpay=(afterpay_clearpay : JSON::Any?)
      if afterpay_clearpay.nil?
        return @afterpay_clearpay = nil
      end
      _afterpay_clearpay = afterpay_clearpay.not_nil!
      @afterpay_clearpay = _afterpay_clearpay
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] alipay Object to be assigned
    def alipay=(alipay : JSON::Any?)
      if alipay.nil?
        return @alipay = nil
      end
      _alipay = alipay.not_nil!
      @alipay = _alipay
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] au_becs_debit Object to be assigned
    def au_becs_debit=(au_becs_debit : Stripe::Param?)
      if au_becs_debit.nil?
        return @au_becs_debit = nil
      end
      _au_becs_debit = au_becs_debit.not_nil!
      _au_becs_debit.validate if _au_becs_debit.is_a?(OpenApi::Validatable)
      @au_becs_debit = _au_becs_debit
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bacs_debit Object to be assigned
    def bacs_debit=(bacs_debit : Stripe::Param1?)
      if bacs_debit.nil?
        return @bacs_debit = nil
      end
      _bacs_debit = bacs_debit.not_nil!
      _bacs_debit.validate if _bacs_debit.is_a?(OpenApi::Validatable)
      @bacs_debit = _bacs_debit
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bancontact Object to be assigned
    def bancontact=(bancontact : JSON::Any?)
      if bancontact.nil?
        return @bancontact = nil
      end
      _bancontact = bancontact.not_nil!
      @bancontact = _bancontact
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] billing_details Object to be assigned
    def billing_details=(billing_details : Stripe::BillingDetailsInnerParams?)
      if billing_details.nil?
        return @billing_details = nil
      end
      _billing_details = billing_details.not_nil!
      _billing_details.validate if _billing_details.is_a?(OpenApi::Validatable)
      @billing_details = _billing_details
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] blik Object to be assigned
    def blik=(blik : JSON::Any?)
      if blik.nil?
        return @blik = nil
      end
      _blik = blik.not_nil!
      @blik = _blik
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] boleto Object to be assigned
    def boleto=(boleto : Stripe::Param2?)
      if boleto.nil?
        return @boleto = nil
      end
      _boleto = boleto.not_nil!
      _boleto.validate if _boleto.is_a?(OpenApi::Validatable)
      @boleto = _boleto
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] customer_balance Object to be assigned
    def customer_balance=(customer_balance : JSON::Any?)
      if customer_balance.nil?
        return @customer_balance = nil
      end
      _customer_balance = customer_balance.not_nil!
      @customer_balance = _customer_balance
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] eps Object to be assigned
    def eps=(eps : Stripe::Param3?)
      if eps.nil?
        return @eps = nil
      end
      _eps = eps.not_nil!
      _eps.validate if _eps.is_a?(OpenApi::Validatable)
      @eps = _eps
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] fpx Object to be assigned
    def fpx=(fpx : Stripe::Param4?)
      if fpx.nil?
        return @fpx = nil
      end
      _fpx = fpx.not_nil!
      _fpx.validate if _fpx.is_a?(OpenApi::Validatable)
      @fpx = _fpx
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] giropay Object to be assigned
    def giropay=(giropay : JSON::Any?)
      if giropay.nil?
        return @giropay = nil
      end
      _giropay = giropay.not_nil!
      @giropay = _giropay
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] grabpay Object to be assigned
    def grabpay=(grabpay : JSON::Any?)
      if grabpay.nil?
        return @grabpay = nil
      end
      _grabpay = grabpay.not_nil!
      @grabpay = _grabpay
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] ideal Object to be assigned
    def ideal=(ideal : Stripe::Param5?)
      if ideal.nil?
        return @ideal = nil
      end
      _ideal = ideal.not_nil!
      _ideal.validate if _ideal.is_a?(OpenApi::Validatable)
      @ideal = _ideal
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] interac_present Object to be assigned
    def interac_present=(interac_present : JSON::Any?)
      if interac_present.nil?
        return @interac_present = nil
      end
      _interac_present = interac_present.not_nil!
      @interac_present = _interac_present
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] klarna Object to be assigned
    def klarna=(klarna : Stripe::Param6?)
      if klarna.nil?
        return @klarna = nil
      end
      _klarna = klarna.not_nil!
      _klarna.validate if _klarna.is_a?(OpenApi::Validatable)
      @klarna = _klarna
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] konbini Object to be assigned
    def konbini=(konbini : JSON::Any?)
      if konbini.nil?
        return @konbini = nil
      end
      _konbini = konbini.not_nil!
      @konbini = _konbini
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] link Object to be assigned
    def link=(link : JSON::Any?)
      if link.nil?
        return @link = nil
      end
      _link = link.not_nil!
      @link = _link
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(metadata : Hash(String, String)?)
      if metadata.nil?
        return @metadata = nil
      end
      _metadata = metadata.not_nil!
      @metadata = _metadata
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] oxxo Object to be assigned
    def oxxo=(oxxo : JSON::Any?)
      if oxxo.nil?
        return @oxxo = nil
      end
      _oxxo = oxxo.not_nil!
      @oxxo = _oxxo
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] p24 Object to be assigned
    def p24=(p24 : Stripe::Param7?)
      if p24.nil?
        return @p24 = nil
      end
      _p24 = p24.not_nil!
      _p24.validate if _p24.is_a?(OpenApi::Validatable)
      @p24 = _p24
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] paynow Object to be assigned
    def paynow=(paynow : JSON::Any?)
      if paynow.nil?
        return @paynow = nil
      end
      _paynow = paynow.not_nil!
      @paynow = _paynow
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] pix Object to be assigned
    def pix=(pix : JSON::Any?)
      if pix.nil?
        return @pix = nil
      end
      _pix = pix.not_nil!
      @pix = _pix
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] promptpay Object to be assigned
    def promptpay=(promptpay : JSON::Any?)
      if promptpay.nil?
        return @promptpay = nil
      end
      _promptpay = promptpay.not_nil!
      @promptpay = _promptpay
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] radar_options Object to be assigned
    def radar_options=(radar_options : Stripe::RadarOptions1?)
      if radar_options.nil?
        return @radar_options = nil
      end
      _radar_options = radar_options.not_nil!
      _radar_options.validate if _radar_options.is_a?(OpenApi::Validatable)
      @radar_options = _radar_options
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sepa_debit Object to be assigned
    def sepa_debit=(sepa_debit : Stripe::Param8?)
      if sepa_debit.nil?
        return @sepa_debit = nil
      end
      _sepa_debit = sepa_debit.not_nil!
      _sepa_debit.validate if _sepa_debit.is_a?(OpenApi::Validatable)
      @sepa_debit = _sepa_debit
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sofort Object to be assigned
    def sofort=(sofort : Stripe::Param9?)
      if sofort.nil?
        return @sofort = nil
      end
      _sofort = sofort.not_nil!
      _sofort.validate if _sofort.is_a?(OpenApi::Validatable)
      @sofort = _sofort
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] us_bank_account Object to be assigned
    def us_bank_account=(us_bank_account : Stripe::PaymentMethodParam1?)
      if us_bank_account.nil?
        return @us_bank_account = nil
      end
      _us_bank_account = us_bank_account.not_nil!
      _us_bank_account.validate if _us_bank_account.is_a?(OpenApi::Validatable)
      @us_bank_account = _us_bank_account
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] wechat_pay Object to be assigned
    def wechat_pay=(wechat_pay : JSON::Any?)
      if wechat_pay.nil?
        return @wechat_pay = nil
      end
      _wechat_pay = wechat_pay.not_nil!
      @wechat_pay = _wechat_pay
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@_type, @acss_debit, @affirm, @afterpay_clearpay, @alipay, @au_becs_debit, @bacs_debit, @bancontact, @billing_details, @blik, @boleto, @customer_balance, @eps, @fpx, @giropay, @grabpay, @ideal, @interac_present, @klarna, @konbini, @link, @metadata, @oxxo, @p24, @paynow, @pix, @promptpay, @radar_options, @sepa_debit, @sofort, @us_bank_account, @wechat_pay)
  end
end
