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
  class PostPaymentMethodsRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "acss_debit", type: Stripe::PaymentMethodParam2?, default: nil, required: false, nullable: false, emit_null: false)]
    getter acss_debit : Stripe::PaymentMethodParam2? = nil

    # If this is an `affirm` PaymentMethod, this hash contains details about the Affirm payment method.
    @[JSON::Field(key: "affirm", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter affirm : JSON::Any? = nil

    # If this is an `AfterpayClearpay` PaymentMethod, this hash contains details about the AfterpayClearpay payment method.
    @[JSON::Field(key: "afterpay_clearpay", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter afterpay_clearpay : JSON::Any? = nil

    # If this is an `Alipay` PaymentMethod, this hash contains details about the Alipay payment method.
    @[JSON::Field(key: "alipay", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter alipay : JSON::Any? = nil

    @[JSON::Field(key: "au_becs_debit", type: Stripe::Param10?, default: nil, required: false, nullable: false, emit_null: false)]
    getter au_becs_debit : Stripe::Param10? = nil

    @[JSON::Field(key: "bacs_debit", type: Stripe::Param11?, default: nil, required: false, nullable: false, emit_null: false)]
    getter bacs_debit : Stripe::Param11? = nil

    # If this is a `bancontact` PaymentMethod, this hash contains details about the Bancontact payment method.
    @[JSON::Field(key: "bancontact", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter bancontact : JSON::Any? = nil

    @[JSON::Field(key: "billing_details", type: Stripe::BillingDetailsInnerParams1?, default: nil, required: false, nullable: false, emit_null: false)]
    getter billing_details : Stripe::BillingDetailsInnerParams1? = nil

    # If this is a `blik` PaymentMethod, this hash contains details about the BLIK payment method.
    @[JSON::Field(key: "blik", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter blik : JSON::Any? = nil

    @[JSON::Field(key: "boleto", type: Stripe::Param12?, default: nil, required: false, nullable: false, emit_null: false)]
    getter boleto : Stripe::Param12? = nil

    @[JSON::Field(key: "card", type: Stripe::PostPaymentMethodsRequestCard?, default: nil, required: false, nullable: false, emit_null: false)]
    getter card : Stripe::PostPaymentMethodsRequestCard? = nil

    # The `Customer` to whom the original PaymentMethod is attached.
    @[JSON::Field(key: "customer", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter customer : String? = nil

    # If this is a `customer_balance` PaymentMethod, this hash contains details about the CustomerBalance payment method.
    @[JSON::Field(key: "customer_balance", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter customer_balance : JSON::Any? = nil

    @[JSON::Field(key: "eps", type: Stripe::Param13?, default: nil, required: false, nullable: false, emit_null: false)]
    getter eps : Stripe::Param13? = nil

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    @[JSON::Field(key: "fpx", type: Stripe::Param14?, default: nil, required: false, nullable: false, emit_null: false)]
    getter fpx : Stripe::Param14? = nil

    # If this is a `giropay` PaymentMethod, this hash contains details about the Giropay payment method.
    @[JSON::Field(key: "giropay", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter giropay : JSON::Any? = nil

    # If this is a `grabpay` PaymentMethod, this hash contains details about the GrabPay payment method.
    @[JSON::Field(key: "grabpay", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter grabpay : JSON::Any? = nil

    @[JSON::Field(key: "ideal", type: Stripe::Param15?, default: nil, required: false, nullable: false, emit_null: false)]
    getter ideal : Stripe::Param15? = nil

    # If this is an `interac_present` PaymentMethod, this hash contains details about the Interac Present payment method.
    @[JSON::Field(key: "interac_present", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter interac_present : JSON::Any? = nil

    @[JSON::Field(key: "klarna", type: Stripe::Param16?, default: nil, required: false, nullable: false, emit_null: false)]
    getter klarna : Stripe::Param16? = nil

    # If this is a `konbini` PaymentMethod, this hash contains details about the Konbini payment method.
    @[JSON::Field(key: "konbini", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter konbini : JSON::Any? = nil

    # If this is an `Link` PaymentMethod, this hash contains details about the Link payment method.
    @[JSON::Field(key: "link", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter link : JSON::Any? = nil

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Hash(String, String)? = nil

    # If this is an `oxxo` PaymentMethod, this hash contains details about the OXXO payment method.
    @[JSON::Field(key: "oxxo", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter oxxo : JSON::Any? = nil

    @[JSON::Field(key: "p24", type: Stripe::Param17?, default: nil, required: false, nullable: false, emit_null: false)]
    getter p24 : Stripe::Param17? = nil

    # The PaymentMethod to share.
    @[JSON::Field(key: "payment_method", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter payment_method : String? = nil

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

    @[JSON::Field(key: "sepa_debit", type: Stripe::Param18?, default: nil, required: false, nullable: false, emit_null: false)]
    getter sepa_debit : Stripe::Param18? = nil

    @[JSON::Field(key: "sofort", type: Stripe::Param19?, default: nil, required: false, nullable: false, emit_null: false)]
    getter sofort : Stripe::Param19? = nil

    # The type of the PaymentMethod. An additional hash is included on the PaymentMethod with a name matching this value. It contains additional information specific to the PaymentMethod type.
    @[JSON::Field(key: "type", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter _type : String? = nil

    ENUM_VALIDATOR_FOR__TYPE = EnumValidator.new("_type", "String", ["acss_debit", "affirm", "afterpay_clearpay", "alipay", "au_becs_debit", "bacs_debit", "bancontact", "blik", "boleto", "card", "customer_balance", "eps", "fpx", "giropay", "grabpay", "ideal", "klarna", "konbini", "link", "oxxo", "p24", "paynow", "pix", "promptpay", "sepa_debit", "sofort", "us_bank_account", "wechat_pay"])

    @[JSON::Field(key: "us_bank_account", type: Stripe::PaymentMethodParam3?, default: nil, required: false, nullable: false, emit_null: false)]
    getter us_bank_account : Stripe::PaymentMethodParam3? = nil

    # If this is an `wechat_pay` PaymentMethod, this hash contains details about the wechat_pay payment method.
    @[JSON::Field(key: "wechat_pay", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter wechat_pay : JSON::Any? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @acss_debit : Stripe::PaymentMethodParam2? = nil,
      @affirm : JSON::Any? = nil,
      @afterpay_clearpay : JSON::Any? = nil,
      @alipay : JSON::Any? = nil,
      @au_becs_debit : Stripe::Param10? = nil,
      @bacs_debit : Stripe::Param11? = nil,
      @bancontact : JSON::Any? = nil,
      @billing_details : Stripe::BillingDetailsInnerParams1? = nil,
      @blik : JSON::Any? = nil,
      @boleto : Stripe::Param12? = nil,
      @card : Stripe::PostPaymentMethodsRequestCard? = nil,
      @customer : String? = nil,
      @customer_balance : JSON::Any? = nil,
      @eps : Stripe::Param13? = nil,
      @expand : Array(String)? = nil,
      @fpx : Stripe::Param14? = nil,
      @giropay : JSON::Any? = nil,
      @grabpay : JSON::Any? = nil,
      @ideal : Stripe::Param15? = nil,
      @interac_present : JSON::Any? = nil,
      @klarna : Stripe::Param16? = nil,
      @konbini : JSON::Any? = nil,
      @link : JSON::Any? = nil,
      @metadata : Hash(String, String)? = nil,
      @oxxo : JSON::Any? = nil,
      @p24 : Stripe::Param17? = nil,
      @payment_method : String? = nil,
      @paynow : JSON::Any? = nil,
      @pix : JSON::Any? = nil,
      @promptpay : JSON::Any? = nil,
      @radar_options : Stripe::RadarOptions? = nil,
      @sepa_debit : Stripe::Param18? = nil,
      @sofort : Stripe::Param19? = nil,
      @_type : String? = nil,
      @us_bank_account : Stripe::PaymentMethodParam3? = nil,
      @wechat_pay : JSON::Any? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      # This is a model acss_debit : Stripe::PaymentMethodParam2?
      # This is a model au_becs_debit : Stripe::Param10?
      # This is a model bacs_debit : Stripe::Param11?
      # This is a model billing_details : Stripe::BillingDetailsInnerParams1?
      # This is a model boleto : Stripe::Param12?
      # This is a model card : Stripe::PostPaymentMethodsRequestCard?
      if _customer = @customer
        if _customer.to_s.size > 5000
          invalid_properties.push("invalid value for \"customer\", the character length must be smaller than or equal to 5000.")
        end
      end
      # This is a model eps : Stripe::Param13?
      # This is a model fpx : Stripe::Param14?
      # This is a model ideal : Stripe::Param15?
      # This is a model klarna : Stripe::Param16?
      # This is a model p24 : Stripe::Param17?
      if _payment_method = @payment_method
        if _payment_method.to_s.size > 5000
          invalid_properties.push("invalid value for \"payment_method\", the character length must be smaller than or equal to 5000.")
        end
      end
      # This is a model radar_options : Stripe::RadarOptions?
      # This is a model sepa_debit : Stripe::Param18?
      # This is a model sofort : Stripe::Param19?

      invalid_properties.push(ENUM_VALIDATOR_FOR__TYPE.error_message) unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type)
      # This is a model us_bank_account : Stripe::PaymentMethodParam3?

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      if _customer = @customer
        return false if _customer.to_s.size > 5000
      end
      if _payment_method = @payment_method
        return false if _payment_method.to_s.size > 5000
      end
      return false unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] acss_debit Object to be assigned
    def acss_debit=(acss_debit : Stripe::PaymentMethodParam2?)
      if acss_debit.nil?
        return @acss_debit = nil
      end
      @acss_debit = acss_debit
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] affirm Object to be assigned
    def affirm=(affirm : JSON::Any?)
      if affirm.nil?
        return @affirm = nil
      end
      @affirm = affirm
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] afterpay_clearpay Object to be assigned
    def afterpay_clearpay=(afterpay_clearpay : JSON::Any?)
      if afterpay_clearpay.nil?
        return @afterpay_clearpay = nil
      end
      @afterpay_clearpay = afterpay_clearpay
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] alipay Object to be assigned
    def alipay=(alipay : JSON::Any?)
      if alipay.nil?
        return @alipay = nil
      end
      @alipay = alipay
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] au_becs_debit Object to be assigned
    def au_becs_debit=(au_becs_debit : Stripe::Param10?)
      if au_becs_debit.nil?
        return @au_becs_debit = nil
      end
      @au_becs_debit = au_becs_debit
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bacs_debit Object to be assigned
    def bacs_debit=(bacs_debit : Stripe::Param11?)
      if bacs_debit.nil?
        return @bacs_debit = nil
      end
      @bacs_debit = bacs_debit
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bancontact Object to be assigned
    def bancontact=(bancontact : JSON::Any?)
      if bancontact.nil?
        return @bancontact = nil
      end
      @bancontact = bancontact
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] billing_details Object to be assigned
    def billing_details=(billing_details : Stripe::BillingDetailsInnerParams1?)
      if billing_details.nil?
        return @billing_details = nil
      end
      @billing_details = billing_details
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] blik Object to be assigned
    def blik=(blik : JSON::Any?)
      if blik.nil?
        return @blik = nil
      end
      @blik = blik
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] boleto Object to be assigned
    def boleto=(boleto : Stripe::Param12?)
      if boleto.nil?
        return @boleto = nil
      end
      @boleto = boleto
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] card Object to be assigned
    def card=(card : Stripe::PostPaymentMethodsRequestCard?)
      if card.nil?
        return @card = nil
      end
      @card = card
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] customer Object to be assigned
    def customer=(customer : String?)
      if customer.nil?
        return @customer = nil
      end
      _customer = customer.not_nil!
      if _customer.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"customer\", the character length must be smaller than or equal to 5000.")
      end

      @customer = customer
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] customer_balance Object to be assigned
    def customer_balance=(customer_balance : JSON::Any?)
      if customer_balance.nil?
        return @customer_balance = nil
      end
      @customer_balance = customer_balance
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] eps Object to be assigned
    def eps=(eps : Stripe::Param13?)
      if eps.nil?
        return @eps = nil
      end
      @eps = eps
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expand Object to be assigned
    def expand=(expand : Array(String)?)
      if expand.nil?
        return @expand = nil
      end
      @expand = expand
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] fpx Object to be assigned
    def fpx=(fpx : Stripe::Param14?)
      if fpx.nil?
        return @fpx = nil
      end
      @fpx = fpx
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] giropay Object to be assigned
    def giropay=(giropay : JSON::Any?)
      if giropay.nil?
        return @giropay = nil
      end
      @giropay = giropay
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] grabpay Object to be assigned
    def grabpay=(grabpay : JSON::Any?)
      if grabpay.nil?
        return @grabpay = nil
      end
      @grabpay = grabpay
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] ideal Object to be assigned
    def ideal=(ideal : Stripe::Param15?)
      if ideal.nil?
        return @ideal = nil
      end
      @ideal = ideal
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] interac_present Object to be assigned
    def interac_present=(interac_present : JSON::Any?)
      if interac_present.nil?
        return @interac_present = nil
      end
      @interac_present = interac_present
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] klarna Object to be assigned
    def klarna=(klarna : Stripe::Param16?)
      if klarna.nil?
        return @klarna = nil
      end
      @klarna = klarna
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] konbini Object to be assigned
    def konbini=(konbini : JSON::Any?)
      if konbini.nil?
        return @konbini = nil
      end
      @konbini = konbini
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] link Object to be assigned
    def link=(link : JSON::Any?)
      if link.nil?
        return @link = nil
      end
      @link = link
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(metadata : Hash(String, String)?)
      if metadata.nil?
        return @metadata = nil
      end
      @metadata = metadata
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] oxxo Object to be assigned
    def oxxo=(oxxo : JSON::Any?)
      if oxxo.nil?
        return @oxxo = nil
      end
      @oxxo = oxxo
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] p24 Object to be assigned
    def p24=(p24 : Stripe::Param17?)
      if p24.nil?
        return @p24 = nil
      end
      @p24 = p24
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_method Object to be assigned
    def payment_method=(payment_method : String?)
      if payment_method.nil?
        return @payment_method = nil
      end
      _payment_method = payment_method.not_nil!
      if _payment_method.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"payment_method\", the character length must be smaller than or equal to 5000.")
      end

      @payment_method = payment_method
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] paynow Object to be assigned
    def paynow=(paynow : JSON::Any?)
      if paynow.nil?
        return @paynow = nil
      end
      @paynow = paynow
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] pix Object to be assigned
    def pix=(pix : JSON::Any?)
      if pix.nil?
        return @pix = nil
      end
      @pix = pix
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] promptpay Object to be assigned
    def promptpay=(promptpay : JSON::Any?)
      if promptpay.nil?
        return @promptpay = nil
      end
      @promptpay = promptpay
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] radar_options Object to be assigned
    def radar_options=(radar_options : Stripe::RadarOptions?)
      if radar_options.nil?
        return @radar_options = nil
      end
      @radar_options = radar_options
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sepa_debit Object to be assigned
    def sepa_debit=(sepa_debit : Stripe::Param18?)
      if sepa_debit.nil?
        return @sepa_debit = nil
      end
      @sepa_debit = sepa_debit
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sofort Object to be assigned
    def sofort=(sofort : Stripe::Param19?)
      if sofort.nil?
        return @sofort = nil
      end
      @sofort = sofort
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(_type : String?)
      if _type.nil?
        return @_type = nil
      end
      __type = _type.not_nil!
      ENUM_VALIDATOR_FOR__TYPE.valid!(__type)
      @_type = _type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] us_bank_account Object to be assigned
    def us_bank_account=(us_bank_account : Stripe::PaymentMethodParam3?)
      if us_bank_account.nil?
        return @us_bank_account = nil
      end
      @us_bank_account = us_bank_account
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] wechat_pay Object to be assigned
    def wechat_pay=(wechat_pay : JSON::Any?)
      if wechat_pay.nil?
        return @wechat_pay = nil
      end
      @wechat_pay = wechat_pay
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
    def_equals_and_hash(@acss_debit, @affirm, @afterpay_clearpay, @alipay, @au_becs_debit, @bacs_debit, @bancontact, @billing_details, @blik, @boleto, @card, @customer, @customer_balance, @eps, @expand, @fpx, @giropay, @grabpay, @ideal, @interac_present, @klarna, @konbini, @link, @metadata, @oxxo, @p24, @payment_method, @paynow, @pix, @promptpay, @radar_options, @sepa_debit, @sofort, @_type, @us_bank_account, @wechat_pay)
  end
end
