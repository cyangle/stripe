#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./billing_details"
require "./confirmation_tokens_resource_payment_method_preview_customer"
require "./payment_method"
require "./payment_method_acss_debit"
require "./payment_method_au_becs_debit"
require "./payment_method_bacs_debit"
require "./payment_method_boleto"
require "./payment_method_card"
require "./payment_method_card_present"
require "./payment_method_cashapp"
require "./payment_method_eps"
require "./payment_method_fpx"
require "./payment_method_ideal"
require "./payment_method_interac_present"
require "./payment_method_klarna"
require "./payment_method_link"
require "./payment_method_p24"
require "./payment_method_paypal"
require "./payment_method_sepa_debit"
require "./payment_method_sofort"
require "./payment_method_us_bank_account"
require "./radar_radar_options"

module Stripe
  # ID of the payment method associated with this mandate.
  class MandatePaymentMethod
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "billing_details", type: Stripe::BillingDetails?, default: nil, required: true, nullable: false, emit_null: false)]
    property billing_details : Stripe::BillingDetails? = nil

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    property created : Int64? = nil

    @[JSON::Field(key: "customer", type: Stripe::ConfirmationTokensResourcePaymentMethodPreviewCustomer?, default: nil, required: true, nullable: true, emit_null: true)]
    property customer : Stripe::ConfirmationTokensResourcePaymentMethodPreviewCustomer? = nil

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    property id : String? = nil
    MAX_LENGTH_FOR_ID = 5000

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    property livemode : Bool? = nil

    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: true, nullable: true, emit_null: true)]
    property metadata : Hash(String, String)? = nil

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    property object : String? = nil
    ERROR_MESSAGE_FOR_OBJECT = "invalid value for \"object\", must be one of [payment_method]."
    VALID_VALUES_FOR_OBJECT  = String.static_array("payment_method")

    # The type of the PaymentMethod. An additional hash is included on the PaymentMethod with a name matching this value. It contains additional information specific to the PaymentMethod type.
    @[JSON::Field(key: "type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    property _type : String? = nil
    ERROR_MESSAGE_FOR__TYPE = "invalid value for \"_type\", must be one of [acss_debit, affirm, afterpay_clearpay, alipay, amazon_pay, au_becs_debit, bacs_debit, bancontact, blik, boleto, card, card_present, cashapp, customer_balance, eps, fpx, giropay, grabpay, ideal, interac_present, klarna, konbini, link, mobilepay, multibanco, oxxo, p24, paynow, paypal, pix, promptpay, revolut_pay, sepa_debit, sofort, swish, twint, us_bank_account, wechat_pay, zip]."
    VALID_VALUES_FOR__TYPE  = String.static_array("acss_debit", "affirm", "afterpay_clearpay", "alipay", "amazon_pay", "au_becs_debit", "bacs_debit", "bancontact", "blik", "boleto", "card", "card_present", "cashapp", "customer_balance", "eps", "fpx", "giropay", "grabpay", "ideal", "interac_present", "klarna", "konbini", "link", "mobilepay", "multibanco", "oxxo", "p24", "paynow", "paypal", "pix", "promptpay", "revolut_pay", "sepa_debit", "sofort", "swish", "twint", "us_bank_account", "wechat_pay", "zip")

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "acss_debit", type: Stripe::PaymentMethodAcssDebit?, default: nil, required: false, nullable: false, emit_null: false)]
    property acss_debit : Stripe::PaymentMethodAcssDebit? = nil

    #
    @[JSON::Field(key: "affirm", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    property affirm : JSON::Any? = nil

    #
    @[JSON::Field(key: "afterpay_clearpay", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    property afterpay_clearpay : JSON::Any? = nil

    #
    @[JSON::Field(key: "alipay", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    property alipay : JSON::Any? = nil

    # This field indicates whether this payment method can be shown again to its customer in a checkout flow. Stripe products such as Checkout and Elements use this field to determine whether a payment method can be shown as a saved payment method in a checkout flow. The field defaults to “unspecified”.
    @[JSON::Field(key: "allow_redisplay", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    property allow_redisplay : String? = nil
    ERROR_MESSAGE_FOR_ALLOW_REDISPLAY = "invalid value for \"allow_redisplay\", must be one of [always, limited, unspecified]."
    VALID_VALUES_FOR_ALLOW_REDISPLAY  = String.static_array("always", "limited", "unspecified")

    #
    @[JSON::Field(key: "amazon_pay", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    property amazon_pay : JSON::Any? = nil

    @[JSON::Field(key: "au_becs_debit", type: Stripe::PaymentMethodAuBecsDebit?, default: nil, required: false, nullable: false, emit_null: false)]
    property au_becs_debit : Stripe::PaymentMethodAuBecsDebit? = nil

    @[JSON::Field(key: "bacs_debit", type: Stripe::PaymentMethodBacsDebit?, default: nil, required: false, nullable: false, emit_null: false)]
    property bacs_debit : Stripe::PaymentMethodBacsDebit? = nil

    #
    @[JSON::Field(key: "bancontact", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    property bancontact : JSON::Any? = nil

    #
    @[JSON::Field(key: "blik", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    property blik : JSON::Any? = nil

    @[JSON::Field(key: "boleto", type: Stripe::PaymentMethodBoleto?, default: nil, required: false, nullable: false, emit_null: false)]
    property boleto : Stripe::PaymentMethodBoleto? = nil

    @[JSON::Field(key: "card", type: Stripe::PaymentMethodCard?, default: nil, required: false, nullable: false, emit_null: false)]
    property card : Stripe::PaymentMethodCard? = nil

    @[JSON::Field(key: "card_present", type: Stripe::PaymentMethodCardPresent?, default: nil, required: false, nullable: false, emit_null: false)]
    property card_present2 : Stripe::PaymentMethodCardPresent? = nil

    @[JSON::Field(key: "cashapp", type: Stripe::PaymentMethodCashapp?, default: nil, required: false, nullable: false, emit_null: false)]
    property cashapp : Stripe::PaymentMethodCashapp? = nil

    #
    @[JSON::Field(key: "customer_balance", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    property customer_balance : JSON::Any? = nil

    @[JSON::Field(key: "eps", type: Stripe::PaymentMethodEps?, default: nil, required: false, nullable: false, emit_null: false)]
    property eps : Stripe::PaymentMethodEps? = nil

    @[JSON::Field(key: "fpx", type: Stripe::PaymentMethodFpx?, default: nil, required: false, nullable: false, emit_null: false)]
    property fpx : Stripe::PaymentMethodFpx? = nil

    #
    @[JSON::Field(key: "giropay", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    property giropay : JSON::Any? = nil

    #
    @[JSON::Field(key: "grabpay", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    property grabpay : JSON::Any? = nil

    @[JSON::Field(key: "ideal", type: Stripe::PaymentMethodIdeal?, default: nil, required: false, nullable: false, emit_null: false)]
    property ideal : Stripe::PaymentMethodIdeal? = nil

    @[JSON::Field(key: "interac_present", type: Stripe::PaymentMethodInteracPresent?, default: nil, required: false, nullable: false, emit_null: false)]
    property interac_present : Stripe::PaymentMethodInteracPresent? = nil

    @[JSON::Field(key: "klarna", type: Stripe::PaymentMethodKlarna?, default: nil, required: false, nullable: false, emit_null: false)]
    property klarna : Stripe::PaymentMethodKlarna? = nil

    #
    @[JSON::Field(key: "konbini", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    property konbini : JSON::Any? = nil

    @[JSON::Field(key: "link", type: Stripe::PaymentMethodLink?, default: nil, required: false, nullable: false, emit_null: false)]
    property link : Stripe::PaymentMethodLink? = nil

    #
    @[JSON::Field(key: "mobilepay", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    property mobilepay : JSON::Any? = nil

    #
    @[JSON::Field(key: "multibanco", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    property multibanco : JSON::Any? = nil

    #
    @[JSON::Field(key: "oxxo", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    property oxxo : JSON::Any? = nil

    @[JSON::Field(key: "p24", type: Stripe::PaymentMethodP24?, default: nil, required: false, nullable: false, emit_null: false)]
    property p24 : Stripe::PaymentMethodP24? = nil

    #
    @[JSON::Field(key: "paynow", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    property paynow : JSON::Any? = nil

    @[JSON::Field(key: "paypal", type: Stripe::PaymentMethodPaypal?, default: nil, required: false, nullable: false, emit_null: false)]
    property paypal : Stripe::PaymentMethodPaypal? = nil

    #
    @[JSON::Field(key: "pix", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    property pix : JSON::Any? = nil

    #
    @[JSON::Field(key: "promptpay", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    property promptpay : JSON::Any? = nil

    @[JSON::Field(key: "radar_options", type: Stripe::RadarRadarOptions?, default: nil, required: false, nullable: false, emit_null: false)]
    property radar_options : Stripe::RadarRadarOptions? = nil

    #
    @[JSON::Field(key: "revolut_pay", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    property revolut_pay : JSON::Any? = nil

    @[JSON::Field(key: "sepa_debit", type: Stripe::PaymentMethodSepaDebit?, default: nil, required: false, nullable: false, emit_null: false)]
    property sepa_debit : Stripe::PaymentMethodSepaDebit? = nil

    @[JSON::Field(key: "sofort", type: Stripe::PaymentMethodSofort?, default: nil, required: false, nullable: false, emit_null: false)]
    property sofort : Stripe::PaymentMethodSofort? = nil

    #
    @[JSON::Field(key: "swish", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    property swish : JSON::Any? = nil

    #
    @[JSON::Field(key: "twint", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    property twint : JSON::Any? = nil

    @[JSON::Field(key: "us_bank_account", type: Stripe::PaymentMethodUsBankAccount?, default: nil, required: false, nullable: false, emit_null: false)]
    property us_bank_account : Stripe::PaymentMethodUsBankAccount? = nil

    #
    @[JSON::Field(key: "wechat_pay", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    property wechat_pay : JSON::Any? = nil

    #
    @[JSON::Field(key: "zip", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    property zip : JSON::Any? = nil

    # List of class defined in anyOf (OpenAPI v3)
    def self.openapi_any_of
      [
        Stripe::PaymentMethod,
        String,
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @billing_details : Stripe::BillingDetails? = nil,
      @created : Int64? = nil,
      @customer : Stripe::ConfirmationTokensResourcePaymentMethodPreviewCustomer? = nil,
      @id : String? = nil,
      @livemode : Bool? = nil,
      @metadata : Hash(String, String)? = nil,
      @object : String? = nil,
      @_type : String? = nil,
      # Optional properties
      @acss_debit : Stripe::PaymentMethodAcssDebit? = nil,
      @affirm : JSON::Any? = nil,
      @afterpay_clearpay : JSON::Any? = nil,
      @alipay : JSON::Any? = nil,
      @allow_redisplay : String? = nil,
      @amazon_pay : JSON::Any? = nil,
      @au_becs_debit : Stripe::PaymentMethodAuBecsDebit? = nil,
      @bacs_debit : Stripe::PaymentMethodBacsDebit? = nil,
      @bancontact : JSON::Any? = nil,
      @blik : JSON::Any? = nil,
      @boleto : Stripe::PaymentMethodBoleto? = nil,
      @card : Stripe::PaymentMethodCard? = nil,
      @card_present2 : Stripe::PaymentMethodCardPresent? = nil,
      @cashapp : Stripe::PaymentMethodCashapp? = nil,
      @customer_balance : JSON::Any? = nil,
      @eps : Stripe::PaymentMethodEps? = nil,
      @fpx : Stripe::PaymentMethodFpx? = nil,
      @giropay : JSON::Any? = nil,
      @grabpay : JSON::Any? = nil,
      @ideal : Stripe::PaymentMethodIdeal? = nil,
      @interac_present : Stripe::PaymentMethodInteracPresent? = nil,
      @klarna : Stripe::PaymentMethodKlarna? = nil,
      @konbini : JSON::Any? = nil,
      @link : Stripe::PaymentMethodLink? = nil,
      @mobilepay : JSON::Any? = nil,
      @multibanco : JSON::Any? = nil,
      @oxxo : JSON::Any? = nil,
      @p24 : Stripe::PaymentMethodP24? = nil,
      @paynow : JSON::Any? = nil,
      @paypal : Stripe::PaymentMethodPaypal? = nil,
      @pix : JSON::Any? = nil,
      @promptpay : JSON::Any? = nil,
      @radar_options : Stripe::RadarRadarOptions? = nil,
      @revolut_pay : JSON::Any? = nil,
      @sepa_debit : Stripe::PaymentMethodSepaDebit? = nil,
      @sofort : Stripe::PaymentMethodSofort? = nil,
      @swish : JSON::Any? = nil,
      @twint : JSON::Any? = nil,
      @us_bank_account : Stripe::PaymentMethodUsBankAccount? = nil,
      @wechat_pay : JSON::Any? = nil,
      @zip : JSON::Any? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      _any_of_found = false
      json_string : String = self.to_json
      _any_of_found = self.class.openapi_any_of.any? do |_class|
        _any_of = begin
          _class.from_json(json_string)
        rescue
          nil
        end

        !_any_of.nil? && _any_of.not_nil!.valid?
      end
      return false if !_any_of_found

      true
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@billing_details, @created, @customer, @id, @livemode, @metadata, @object, @_type, @acss_debit, @affirm, @afterpay_clearpay, @alipay, @allow_redisplay, @amazon_pay, @au_becs_debit, @bacs_debit, @bancontact, @blik, @boleto, @card, @card_present2, @cashapp, @customer_balance, @eps, @fpx, @giropay, @grabpay, @ideal, @interac_present, @klarna, @konbini, @link, @mobilepay, @multibanco, @oxxo, @p24, @paynow, @paypal, @pix, @promptpay, @radar_options, @revolut_pay, @sepa_debit, @sofort, @swish, @twint, @us_bank_account, @wechat_pay, @zip)
  end
end
