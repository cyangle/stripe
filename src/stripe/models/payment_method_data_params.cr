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
  # If provided, this hash will be used to create a PaymentMethod. The new PaymentMethod will appear in the [payment_method](https://stripe.com/docs/api/payment_intents/object#payment_intent_object-payment_method) property on the PaymentIntent.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class PaymentMethodDataParams
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    @[JSON::Field(key: "type", type: String)]
    getter _type : String

    ENUM_VALIDATOR_FOR__TYPE = EnumValidator.new("_type", "String", ["acss_debit", "affirm", "afterpay_clearpay", "alipay", "au_becs_debit", "bacs_debit", "bancontact", "boleto", "customer_balance", "eps", "fpx", "giropay", "grabpay", "ideal", "klarna", "konbini", "link", "oxxo", "p24", "paynow", "sepa_debit", "sofort", "us_bank_account", "wechat_pay"])

    # Optional properties

    @[JSON::Field(key: "acss_debit", type: PaymentMethodParam?, presence: true, ignore_serialize: acss_debit.nil? && !acss_debit_present?)]
    property acss_debit : PaymentMethodParam?

    @[JSON::Field(ignore: true)]
    property? acss_debit_present : Bool = false

    @[JSON::Field(key: "affirm", type: JSON::Any?, presence: true, ignore_serialize: affirm.nil? && !affirm_present?)]
    property affirm : JSON::Any?

    @[JSON::Field(ignore: true)]
    property? affirm_present : Bool = false

    @[JSON::Field(key: "afterpay_clearpay", type: JSON::Any?, presence: true, ignore_serialize: afterpay_clearpay.nil? && !afterpay_clearpay_present?)]
    property afterpay_clearpay : JSON::Any?

    @[JSON::Field(ignore: true)]
    property? afterpay_clearpay_present : Bool = false

    @[JSON::Field(key: "alipay", type: JSON::Any?, presence: true, ignore_serialize: alipay.nil? && !alipay_present?)]
    property alipay : JSON::Any?

    @[JSON::Field(ignore: true)]
    property? alipay_present : Bool = false

    @[JSON::Field(key: "au_becs_debit", type: Param?, presence: true, ignore_serialize: au_becs_debit.nil? && !au_becs_debit_present?)]
    property au_becs_debit : Param?

    @[JSON::Field(ignore: true)]
    property? au_becs_debit_present : Bool = false

    @[JSON::Field(key: "bacs_debit", type: Param1?, presence: true, ignore_serialize: bacs_debit.nil? && !bacs_debit_present?)]
    property bacs_debit : Param1?

    @[JSON::Field(ignore: true)]
    property? bacs_debit_present : Bool = false

    @[JSON::Field(key: "bancontact", type: JSON::Any?, presence: true, ignore_serialize: bancontact.nil? && !bancontact_present?)]
    property bancontact : JSON::Any?

    @[JSON::Field(ignore: true)]
    property? bancontact_present : Bool = false

    @[JSON::Field(key: "billing_details", type: BillingDetailsInnerParams?, presence: true, ignore_serialize: billing_details.nil? && !billing_details_present?)]
    property billing_details : BillingDetailsInnerParams?

    @[JSON::Field(ignore: true)]
    property? billing_details_present : Bool = false

    @[JSON::Field(key: "boleto", type: Param2?, presence: true, ignore_serialize: boleto.nil? && !boleto_present?)]
    property boleto : Param2?

    @[JSON::Field(ignore: true)]
    property? boleto_present : Bool = false

    @[JSON::Field(key: "customer_balance", type: JSON::Any?, presence: true, ignore_serialize: customer_balance.nil? && !customer_balance_present?)]
    property customer_balance : JSON::Any?

    @[JSON::Field(ignore: true)]
    property? customer_balance_present : Bool = false

    @[JSON::Field(key: "eps", type: Param3?, presence: true, ignore_serialize: eps.nil? && !eps_present?)]
    property eps : Param3?

    @[JSON::Field(ignore: true)]
    property? eps_present : Bool = false

    @[JSON::Field(key: "fpx", type: Param4?, presence: true, ignore_serialize: fpx.nil? && !fpx_present?)]
    property fpx : Param4?

    @[JSON::Field(ignore: true)]
    property? fpx_present : Bool = false

    @[JSON::Field(key: "giropay", type: JSON::Any?, presence: true, ignore_serialize: giropay.nil? && !giropay_present?)]
    property giropay : JSON::Any?

    @[JSON::Field(ignore: true)]
    property? giropay_present : Bool = false

    @[JSON::Field(key: "grabpay", type: JSON::Any?, presence: true, ignore_serialize: grabpay.nil? && !grabpay_present?)]
    property grabpay : JSON::Any?

    @[JSON::Field(ignore: true)]
    property? grabpay_present : Bool = false

    @[JSON::Field(key: "ideal", type: Param5?, presence: true, ignore_serialize: ideal.nil? && !ideal_present?)]
    property ideal : Param5?

    @[JSON::Field(ignore: true)]
    property? ideal_present : Bool = false

    @[JSON::Field(key: "interac_present", type: JSON::Any?, presence: true, ignore_serialize: interac_present.nil? && !interac_present_present?)]
    property interac_present : JSON::Any?

    @[JSON::Field(ignore: true)]
    property? interac_present_present : Bool = false

    @[JSON::Field(key: "klarna", type: Param6?, presence: true, ignore_serialize: klarna.nil? && !klarna_present?)]
    property klarna : Param6?

    @[JSON::Field(ignore: true)]
    property? klarna_present : Bool = false

    @[JSON::Field(key: "konbini", type: JSON::Any?, presence: true, ignore_serialize: konbini.nil? && !konbini_present?)]
    property konbini : JSON::Any?

    @[JSON::Field(ignore: true)]
    property? konbini_present : Bool = false

    @[JSON::Field(key: "link", type: JSON::Any?, presence: true, ignore_serialize: link.nil? && !link_present?)]
    property link : JSON::Any?

    @[JSON::Field(ignore: true)]
    property? link_present : Bool = false

    @[JSON::Field(key: "metadata", type: Hash(String, String)?, presence: true, ignore_serialize: metadata.nil? && !metadata_present?)]
    property metadata : Hash(String, String)?

    @[JSON::Field(ignore: true)]
    property? metadata_present : Bool = false

    @[JSON::Field(key: "oxxo", type: JSON::Any?, presence: true, ignore_serialize: oxxo.nil? && !oxxo_present?)]
    property oxxo : JSON::Any?

    @[JSON::Field(ignore: true)]
    property? oxxo_present : Bool = false

    @[JSON::Field(key: "p24", type: Param7?, presence: true, ignore_serialize: p24.nil? && !p24_present?)]
    property p24 : Param7?

    @[JSON::Field(ignore: true)]
    property? p24_present : Bool = false

    @[JSON::Field(key: "paynow", type: JSON::Any?, presence: true, ignore_serialize: paynow.nil? && !paynow_present?)]
    property paynow : JSON::Any?

    @[JSON::Field(ignore: true)]
    property? paynow_present : Bool = false

    @[JSON::Field(key: "radar_options", type: RadarOptions1?, presence: true, ignore_serialize: radar_options.nil? && !radar_options_present?)]
    property radar_options : RadarOptions1?

    @[JSON::Field(ignore: true)]
    property? radar_options_present : Bool = false

    @[JSON::Field(key: "sepa_debit", type: Param8?, presence: true, ignore_serialize: sepa_debit.nil? && !sepa_debit_present?)]
    property sepa_debit : Param8?

    @[JSON::Field(ignore: true)]
    property? sepa_debit_present : Bool = false

    @[JSON::Field(key: "sofort", type: Param9?, presence: true, ignore_serialize: sofort.nil? && !sofort_present?)]
    property sofort : Param9?

    @[JSON::Field(ignore: true)]
    property? sofort_present : Bool = false

    @[JSON::Field(key: "us_bank_account", type: PaymentMethodParam1?, presence: true, ignore_serialize: us_bank_account.nil? && !us_bank_account_present?)]
    property us_bank_account : PaymentMethodParam1?

    @[JSON::Field(ignore: true)]
    property? us_bank_account_present : Bool = false

    @[JSON::Field(key: "wechat_pay", type: JSON::Any?, presence: true, ignore_serialize: wechat_pay.nil? && !wechat_pay_present?)]
    property wechat_pay : JSON::Any?

    @[JSON::Field(ignore: true)]
    property? wechat_pay_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @_type : String,
      # Optional properties
      @acss_debit : PaymentMethodParam? = nil,
      @affirm : JSON::Any? = nil,
      @afterpay_clearpay : JSON::Any? = nil,
      @alipay : JSON::Any? = nil,
      @au_becs_debit : Param? = nil,
      @bacs_debit : Param1? = nil,
      @bancontact : JSON::Any? = nil,
      @billing_details : BillingDetailsInnerParams? = nil,
      @boleto : Param2? = nil,
      @customer_balance : JSON::Any? = nil,
      @eps : Param3? = nil,
      @fpx : Param4? = nil,
      @giropay : JSON::Any? = nil,
      @grabpay : JSON::Any? = nil,
      @ideal : Param5? = nil,
      @interac_present : JSON::Any? = nil,
      @klarna : Param6? = nil,
      @konbini : JSON::Any? = nil,
      @link : JSON::Any? = nil,
      @metadata : Hash(String, String)? = nil,
      @oxxo : JSON::Any? = nil,
      @p24 : Param7? = nil,
      @paynow : JSON::Any? = nil,
      @radar_options : RadarOptions1? = nil,
      @sepa_debit : Param8? = nil,
      @sofort : Param9? = nil,
      @us_bank_account : PaymentMethodParam1? = nil,
      @wechat_pay : JSON::Any? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR__TYPE.error_message) unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type, false)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type, false)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(_type : String)
      ENUM_VALIDATOR_FOR__TYPE.valid!(_type, false)
      @_type = _type
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
    def_equals_and_hash(@_type, @acss_debit, @acss_debit_present, @affirm, @affirm_present, @afterpay_clearpay, @afterpay_clearpay_present, @alipay, @alipay_present, @au_becs_debit, @au_becs_debit_present, @bacs_debit, @bacs_debit_present, @bancontact, @bancontact_present, @billing_details, @billing_details_present, @boleto, @boleto_present, @customer_balance, @customer_balance_present, @eps, @eps_present, @fpx, @fpx_present, @giropay, @giropay_present, @grabpay, @grabpay_present, @ideal, @ideal_present, @interac_present, @interac_present_present, @klarna, @klarna_present, @konbini, @konbini_present, @link, @link_present, @metadata, @metadata_present, @oxxo, @oxxo_present, @p24, @p24_present, @paynow, @paynow_present, @radar_options, @radar_options_present, @sepa_debit, @sepa_debit_present, @sofort, @sofort_present, @us_bank_account, @us_bank_account_present, @wechat_pay, @wechat_pay_present)
  end
end
