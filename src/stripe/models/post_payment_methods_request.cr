#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-11-15
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module Stripe
  class PostPaymentMethodsRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "acss_debit", type: Stripe::PostPaymentMethodsRequestAcssDebit?, default: nil, required: false, nullable: false, emit_null: false)]
    getter acss_debit : Stripe::PostPaymentMethodsRequestAcssDebit? = nil

    # If this is an `affirm` PaymentMethod, this hash contains details about the Affirm payment method.
    @[JSON::Field(key: "affirm", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter affirm : JSON::Any? = nil

    # If this is an `AfterpayClearpay` PaymentMethod, this hash contains details about the AfterpayClearpay payment method.
    @[JSON::Field(key: "afterpay_clearpay", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter afterpay_clearpay : JSON::Any? = nil

    # If this is an `Alipay` PaymentMethod, this hash contains details about the Alipay payment method.
    @[JSON::Field(key: "alipay", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter alipay : JSON::Any? = nil

    @[JSON::Field(key: "au_becs_debit", type: Stripe::PostPaymentMethodsRequestAuBecsDebit?, default: nil, required: false, nullable: false, emit_null: false)]
    getter au_becs_debit : Stripe::PostPaymentMethodsRequestAuBecsDebit? = nil

    @[JSON::Field(key: "bacs_debit", type: Stripe::PostPaymentMethodsRequestBacsDebit?, default: nil, required: false, nullable: false, emit_null: false)]
    getter bacs_debit : Stripe::PostPaymentMethodsRequestBacsDebit? = nil

    # If this is a `bancontact` PaymentMethod, this hash contains details about the Bancontact payment method.
    @[JSON::Field(key: "bancontact", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter bancontact : JSON::Any? = nil

    @[JSON::Field(key: "billing_details", type: Stripe::BillingDetailsInnerParams?, default: nil, required: false, nullable: false, emit_null: false)]
    getter billing_details : Stripe::BillingDetailsInnerParams? = nil

    # If this is a `blik` PaymentMethod, this hash contains details about the BLIK payment method.
    @[JSON::Field(key: "blik", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter blik : JSON::Any? = nil

    @[JSON::Field(key: "boleto", type: Stripe::PostPaymentMethodsRequestBoleto?, default: nil, required: false, nullable: false, emit_null: false)]
    getter boleto : Stripe::PostPaymentMethodsRequestBoleto? = nil

    @[JSON::Field(key: "card", type: Stripe::PostPaymentMethodsRequestCard?, default: nil, required: false, nullable: false, emit_null: false)]
    getter card : Stripe::PostPaymentMethodsRequestCard? = nil

    # The `Customer` to whom the original PaymentMethod is attached.
    @[JSON::Field(key: "customer", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter customer : String? = nil
    MAX_LENGTH_FOR_CUSTOMER = 5000

    # If this is a `customer_balance` PaymentMethod, this hash contains details about the CustomerBalance payment method.
    @[JSON::Field(key: "customer_balance", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter customer_balance : JSON::Any? = nil

    @[JSON::Field(key: "eps", type: Stripe::PostPaymentMethodsRequestEps?, default: nil, required: false, nullable: false, emit_null: false)]
    getter eps : Stripe::PostPaymentMethodsRequestEps? = nil

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    @[JSON::Field(key: "fpx", type: Stripe::PostPaymentMethodsRequestFpx?, default: nil, required: false, nullable: false, emit_null: false)]
    getter fpx : Stripe::PostPaymentMethodsRequestFpx? = nil

    # If this is a `giropay` PaymentMethod, this hash contains details about the Giropay payment method.
    @[JSON::Field(key: "giropay", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter giropay : JSON::Any? = nil

    # If this is a `grabpay` PaymentMethod, this hash contains details about the GrabPay payment method.
    @[JSON::Field(key: "grabpay", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter grabpay : JSON::Any? = nil

    @[JSON::Field(key: "ideal", type: Stripe::PostPaymentMethodsRequestIdeal?, default: nil, required: false, nullable: false, emit_null: false)]
    getter ideal : Stripe::PostPaymentMethodsRequestIdeal? = nil

    # If this is an `interac_present` PaymentMethod, this hash contains details about the Interac Present payment method.
    @[JSON::Field(key: "interac_present", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter interac_present : JSON::Any? = nil

    @[JSON::Field(key: "klarna", type: Stripe::PostPaymentMethodsRequestKlarna?, default: nil, required: false, nullable: false, emit_null: false)]
    getter klarna : Stripe::PostPaymentMethodsRequestKlarna? = nil

    # If this is a `konbini` PaymentMethod, this hash contains details about the Konbini payment method.
    @[JSON::Field(key: "konbini", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter konbini : JSON::Any? = nil

    # If this is an `Link` PaymentMethod, this hash contains details about the Link payment method.
    @[JSON::Field(key: "link", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter link : JSON::Any? = nil

    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Hash(String, String)? = nil

    # If this is an `oxxo` PaymentMethod, this hash contains details about the OXXO payment method.
    @[JSON::Field(key: "oxxo", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter oxxo : JSON::Any? = nil

    @[JSON::Field(key: "p24", type: Stripe::PostPaymentMethodsRequestP24?, default: nil, required: false, nullable: false, emit_null: false)]
    getter p24 : Stripe::PostPaymentMethodsRequestP24? = nil

    # The PaymentMethod to share.
    @[JSON::Field(key: "payment_method", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter payment_method : String? = nil
    MAX_LENGTH_FOR_PAYMENT_METHOD = 5000

    # If this is a `paynow` PaymentMethod, this hash contains details about the PayNow payment method.
    @[JSON::Field(key: "paynow", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter paynow : JSON::Any? = nil

    # If this is a `pix` PaymentMethod, this hash contains details about the Pix payment method.
    @[JSON::Field(key: "pix", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter pix : JSON::Any? = nil

    # If this is a `promptpay` PaymentMethod, this hash contains details about the PromptPay payment method.
    @[JSON::Field(key: "promptpay", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter promptpay : JSON::Any? = nil

    @[JSON::Field(key: "radar_options", type: Stripe::RadarOptions?, default: nil, required: false, nullable: false, emit_null: false)]
    getter radar_options : Stripe::RadarOptions? = nil

    @[JSON::Field(key: "sepa_debit", type: Stripe::PostPaymentMethodsRequestSepaDebit?, default: nil, required: false, nullable: false, emit_null: false)]
    getter sepa_debit : Stripe::PostPaymentMethodsRequestSepaDebit? = nil

    @[JSON::Field(key: "sofort", type: Stripe::PostPaymentMethodsRequestSofort?, default: nil, required: false, nullable: false, emit_null: false)]
    getter sofort : Stripe::PostPaymentMethodsRequestSofort? = nil

    # The type of the PaymentMethod. An additional hash is included on the PaymentMethod with a name matching this value. It contains additional information specific to the PaymentMethod type.
    @[JSON::Field(key: "type", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter _type : String? = nil
    ERROR_MESSAGE_FOR__TYPE = "invalid value for \"_type\", must be one of [acss_debit, affirm, afterpay_clearpay, alipay, au_becs_debit, bacs_debit, bancontact, blik, boleto, card, customer_balance, eps, fpx, giropay, grabpay, ideal, klarna, konbini, link, oxxo, p24, paynow, pix, promptpay, sepa_debit, sofort, us_bank_account, wechat_pay]."
    VALID_VALUES_FOR__TYPE  = String.static_array("acss_debit", "affirm", "afterpay_clearpay", "alipay", "au_becs_debit", "bacs_debit", "bancontact", "blik", "boleto", "card", "customer_balance", "eps", "fpx", "giropay", "grabpay", "ideal", "klarna", "konbini", "link", "oxxo", "p24", "paynow", "pix", "promptpay", "sepa_debit", "sofort", "us_bank_account", "wechat_pay")

    @[JSON::Field(key: "us_bank_account", type: Stripe::PostPaymentMethodsRequestUsBankAccount?, default: nil, required: false, nullable: false, emit_null: false)]
    getter us_bank_account : Stripe::PostPaymentMethodsRequestUsBankAccount? = nil

    # If this is an `wechat_pay` PaymentMethod, this hash contains details about the wechat_pay payment method.
    @[JSON::Field(key: "wechat_pay", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter wechat_pay : JSON::Any? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @acss_debit : Stripe::PostPaymentMethodsRequestAcssDebit? = nil,
      @affirm : JSON::Any? = nil,
      @afterpay_clearpay : JSON::Any? = nil,
      @alipay : JSON::Any? = nil,
      @au_becs_debit : Stripe::PostPaymentMethodsRequestAuBecsDebit? = nil,
      @bacs_debit : Stripe::PostPaymentMethodsRequestBacsDebit? = nil,
      @bancontact : JSON::Any? = nil,
      @billing_details : Stripe::BillingDetailsInnerParams? = nil,
      @blik : JSON::Any? = nil,
      @boleto : Stripe::PostPaymentMethodsRequestBoleto? = nil,
      @card : Stripe::PostPaymentMethodsRequestCard? = nil,
      @customer : String? = nil,
      @customer_balance : JSON::Any? = nil,
      @eps : Stripe::PostPaymentMethodsRequestEps? = nil,
      @expand : Array(String)? = nil,
      @fpx : Stripe::PostPaymentMethodsRequestFpx? = nil,
      @giropay : JSON::Any? = nil,
      @grabpay : JSON::Any? = nil,
      @ideal : Stripe::PostPaymentMethodsRequestIdeal? = nil,
      @interac_present : JSON::Any? = nil,
      @klarna : Stripe::PostPaymentMethodsRequestKlarna? = nil,
      @konbini : JSON::Any? = nil,
      @link : JSON::Any? = nil,
      @metadata : Hash(String, String)? = nil,
      @oxxo : JSON::Any? = nil,
      @p24 : Stripe::PostPaymentMethodsRequestP24? = nil,
      @payment_method : String? = nil,
      @paynow : JSON::Any? = nil,
      @pix : JSON::Any? = nil,
      @promptpay : JSON::Any? = nil,
      @radar_options : Stripe::RadarOptions? = nil,
      @sepa_debit : Stripe::PostPaymentMethodsRequestSepaDebit? = nil,
      @sofort : Stripe::PostPaymentMethodsRequestSofort? = nil,
      @_type : String? = nil,
      @us_bank_account : Stripe::PostPaymentMethodsRequestUsBankAccount? = nil,
      @wechat_pay : JSON::Any? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_acss_debit = @acss_debit).nil?
        invalid_properties.concat(_acss_debit.list_invalid_properties_for("acss_debit")) if _acss_debit.is_a?(OpenApi::Validatable)
      end

      unless (_au_becs_debit = @au_becs_debit).nil?
        invalid_properties.concat(_au_becs_debit.list_invalid_properties_for("au_becs_debit")) if _au_becs_debit.is_a?(OpenApi::Validatable)
      end
      unless (_bacs_debit = @bacs_debit).nil?
        invalid_properties.concat(_bacs_debit.list_invalid_properties_for("bacs_debit")) if _bacs_debit.is_a?(OpenApi::Validatable)
      end

      unless (_billing_details = @billing_details).nil?
        invalid_properties.concat(_billing_details.list_invalid_properties_for("billing_details")) if _billing_details.is_a?(OpenApi::Validatable)
      end

      unless (_boleto = @boleto).nil?
        invalid_properties.concat(_boleto.list_invalid_properties_for("boleto")) if _boleto.is_a?(OpenApi::Validatable)
      end
      unless (_customer = @customer).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("customer", _customer.to_s.size, MAX_LENGTH_FOR_CUSTOMER)
          invalid_properties.push(max_length_error)
        end
      end

      unless (_eps = @eps).nil?
        invalid_properties.concat(_eps.list_invalid_properties_for("eps")) if _eps.is_a?(OpenApi::Validatable)
      end

      unless (_fpx = @fpx).nil?
        invalid_properties.concat(_fpx.list_invalid_properties_for("fpx")) if _fpx.is_a?(OpenApi::Validatable)
      end

      unless (_ideal = @ideal).nil?
        invalid_properties.concat(_ideal.list_invalid_properties_for("ideal")) if _ideal.is_a?(OpenApi::Validatable)
      end

      unless (_klarna = @klarna).nil?
        invalid_properties.concat(_klarna.list_invalid_properties_for("klarna")) if _klarna.is_a?(OpenApi::Validatable)
      end

      unless (_p24 = @p24).nil?
        invalid_properties.concat(_p24.list_invalid_properties_for("p24")) if _p24.is_a?(OpenApi::Validatable)
      end
      unless (_payment_method = @payment_method).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("payment_method", _payment_method.to_s.size, MAX_LENGTH_FOR_PAYMENT_METHOD)
          invalid_properties.push(max_length_error)
        end
      end

      unless (_radar_options = @radar_options).nil?
        invalid_properties.concat(_radar_options.list_invalid_properties_for("radar_options")) if _radar_options.is_a?(OpenApi::Validatable)
      end
      unless (_sepa_debit = @sepa_debit).nil?
        invalid_properties.concat(_sepa_debit.list_invalid_properties_for("sepa_debit")) if _sepa_debit.is_a?(OpenApi::Validatable)
      end
      unless (_sofort = @sofort).nil?
        invalid_properties.concat(_sofort.list_invalid_properties_for("sofort")) if _sofort.is_a?(OpenApi::Validatable)
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

      unless (_au_becs_debit = @au_becs_debit).nil?
        return false if _au_becs_debit.is_a?(OpenApi::Validatable) && !_au_becs_debit.valid?
      end

      unless (_bacs_debit = @bacs_debit).nil?
        return false if _bacs_debit.is_a?(OpenApi::Validatable) && !_bacs_debit.valid?
      end

      unless (_billing_details = @billing_details).nil?
        return false if _billing_details.is_a?(OpenApi::Validatable) && !_billing_details.valid?
      end

      unless (_boleto = @boleto).nil?
        return false if _boleto.is_a?(OpenApi::Validatable) && !_boleto.valid?
      end

      unless (_customer = @customer).nil?
        return false if _customer.to_s.size > MAX_LENGTH_FOR_CUSTOMER
      end

      unless (_eps = @eps).nil?
        return false if _eps.is_a?(OpenApi::Validatable) && !_eps.valid?
      end

      unless (_fpx = @fpx).nil?
        return false if _fpx.is_a?(OpenApi::Validatable) && !_fpx.valid?
      end

      unless (_ideal = @ideal).nil?
        return false if _ideal.is_a?(OpenApi::Validatable) && !_ideal.valid?
      end

      unless (_klarna = @klarna).nil?
        return false if _klarna.is_a?(OpenApi::Validatable) && !_klarna.valid?
      end

      unless (_p24 = @p24).nil?
        return false if _p24.is_a?(OpenApi::Validatable) && !_p24.valid?
      end

      unless (_payment_method = @payment_method).nil?
        return false if _payment_method.to_s.size > MAX_LENGTH_FOR_PAYMENT_METHOD
      end

      unless (_radar_options = @radar_options).nil?
        return false if _radar_options.is_a?(OpenApi::Validatable) && !_radar_options.valid?
      end

      unless (_sepa_debit = @sepa_debit).nil?
        return false if _sepa_debit.is_a?(OpenApi::Validatable) && !_sepa_debit.valid?
      end

      unless (_sofort = @sofort).nil?
        return false if _sofort.is_a?(OpenApi::Validatable) && !_sofort.valid?
      end

      unless (_us_bank_account = @us_bank_account).nil?
        return false if _us_bank_account.is_a?(OpenApi::Validatable) && !_us_bank_account.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] acss_debit Object to be assigned
    def acss_debit=(new_value : Stripe::PostPaymentMethodsRequestAcssDebit?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @acss_debit = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] affirm Object to be assigned
    def affirm=(new_value : JSON::Any?)
      @affirm = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] afterpay_clearpay Object to be assigned
    def afterpay_clearpay=(new_value : JSON::Any?)
      @afterpay_clearpay = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] alipay Object to be assigned
    def alipay=(new_value : JSON::Any?)
      @alipay = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] au_becs_debit Object to be assigned
    def au_becs_debit=(new_value : Stripe::PostPaymentMethodsRequestAuBecsDebit?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @au_becs_debit = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bacs_debit Object to be assigned
    def bacs_debit=(new_value : Stripe::PostPaymentMethodsRequestBacsDebit?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @bacs_debit = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bancontact Object to be assigned
    def bancontact=(new_value : JSON::Any?)
      @bancontact = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] billing_details Object to be assigned
    def billing_details=(new_value : Stripe::BillingDetailsInnerParams?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @billing_details = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] blik Object to be assigned
    def blik=(new_value : JSON::Any?)
      @blik = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] boleto Object to be assigned
    def boleto=(new_value : Stripe::PostPaymentMethodsRequestBoleto?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @boleto = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] card Object to be assigned
    def card=(new_value : Stripe::PostPaymentMethodsRequestCard?)
      @card = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] customer Object to be assigned
    def customer=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("customer", new_value.to_s.size, MAX_LENGTH_FOR_CUSTOMER)
      end

      @customer = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] customer_balance Object to be assigned
    def customer_balance=(new_value : JSON::Any?)
      @customer_balance = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] eps Object to be assigned
    def eps=(new_value : Stripe::PostPaymentMethodsRequestEps?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @eps = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expand Object to be assigned
    def expand=(new_value : Array(String)?)
      @expand = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] fpx Object to be assigned
    def fpx=(new_value : Stripe::PostPaymentMethodsRequestFpx?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @fpx = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] giropay Object to be assigned
    def giropay=(new_value : JSON::Any?)
      @giropay = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] grabpay Object to be assigned
    def grabpay=(new_value : JSON::Any?)
      @grabpay = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] ideal Object to be assigned
    def ideal=(new_value : Stripe::PostPaymentMethodsRequestIdeal?)
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
    def klarna=(new_value : Stripe::PostPaymentMethodsRequestKlarna?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @klarna = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] konbini Object to be assigned
    def konbini=(new_value : JSON::Any?)
      @konbini = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] link Object to be assigned
    def link=(new_value : JSON::Any?)
      @link = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(new_value : Hash(String, String)?)
      @metadata = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] oxxo Object to be assigned
    def oxxo=(new_value : JSON::Any?)
      @oxxo = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] p24 Object to be assigned
    def p24=(new_value : Stripe::PostPaymentMethodsRequestP24?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @p24 = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_method Object to be assigned
    def payment_method=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("payment_method", new_value.to_s.size, MAX_LENGTH_FOR_PAYMENT_METHOD)
      end

      @payment_method = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] paynow Object to be assigned
    def paynow=(new_value : JSON::Any?)
      @paynow = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] pix Object to be assigned
    def pix=(new_value : JSON::Any?)
      @pix = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] promptpay Object to be assigned
    def promptpay=(new_value : JSON::Any?)
      @promptpay = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] radar_options Object to be assigned
    def radar_options=(new_value : Stripe::RadarOptions?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @radar_options = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sepa_debit Object to be assigned
    def sepa_debit=(new_value : Stripe::PostPaymentMethodsRequestSepaDebit?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @sepa_debit = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sofort Object to be assigned
    def sofort=(new_value : Stripe::PostPaymentMethodsRequestSofort?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @sofort = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(new_value : String?)
      @_type = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] us_bank_account Object to be assigned
    def us_bank_account=(new_value : Stripe::PostPaymentMethodsRequestUsBankAccount?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @us_bank_account = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] wechat_pay Object to be assigned
    def wechat_pay=(new_value : JSON::Any?)
      @wechat_pay = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@acss_debit, @affirm, @afterpay_clearpay, @alipay, @au_becs_debit, @bacs_debit, @bancontact, @billing_details, @blik, @boleto, @card, @customer, @customer_balance, @eps, @expand, @fpx, @giropay, @grabpay, @ideal, @interac_present, @klarna, @konbini, @link, @metadata, @oxxo, @p24, @payment_method, @paynow, @pix, @promptpay, @radar_options, @sepa_debit, @sofort, @_type, @us_bank_account, @wechat_pay)
  end
end
