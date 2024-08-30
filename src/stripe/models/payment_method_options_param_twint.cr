#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./bank_transfer_param"
require "./installments_param"
require "./linked_account_options_param"
require "./mandate_options_param"
require "./network_options_param"
require "./payment_method_options_param"
require "./payment_method_options_param_blik"
require "./payment_method_options_param_interac_present"
require "./payment_method_options_param_promptpay"
require "./payment_method_options_param_zip"
require "./setup_intent_param"
require "./setup_intent_payment_method_options_param"

module Stripe
  # If this is a `twint` PaymentMethod, this sub-hash contains details about the TWINT payment method options.
  class PaymentMethodOptionsParamTwint
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The cryptogram, also known as the \"authentication value\" (AAV, CAVV or AEVV). This value is 20 bytes, base64-encoded into a 28-character string. (Most 3D Secure providers will return the base64-encoded version, which is what you should specify here.)
    @[JSON::Field(key: "cryptogram", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    property cryptogram : String? = nil
    MAX_LENGTH_FOR_CRYPTOGRAM = 5000

    # For 3D Secure 1, the XID. For 3D Secure 2, the Directory Server Transaction ID (dsTransID).
    @[JSON::Field(key: "transaction_id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    property transaction_id : String? = nil
    MAX_LENGTH_FOR_TRANSACTION_ID = 5000

    # The version of 3D Secure that was performed.
    @[JSON::Field(key: "version", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    property version : String? = nil
    ERROR_MESSAGE_FOR_VERSION = "invalid value for \"version\", must be one of [1.0.2, 2.1.0, 2.2.0]."
    VALID_VALUES_FOR_VERSION  = String.static_array("1.0.2", "2.1.0", "2.2.0")

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "acss_debit", type: Stripe::SetupIntentPaymentMethodOptionsParam?, default: nil, required: false, nullable: false, emit_null: false)]
    property acss_debit : Stripe::SetupIntentPaymentMethodOptionsParam? = nil

    @[JSON::Field(key: "affirm", type: Stripe::PaymentMethodOptionsParam?, default: nil, required: false, nullable: false, emit_null: false)]
    property affirm : Stripe::PaymentMethodOptionsParam? = nil

    @[JSON::Field(key: "afterpay_clearpay", type: Stripe::PaymentMethodOptionsParam?, default: nil, required: false, nullable: false, emit_null: false)]
    property afterpay_clearpay : Stripe::PaymentMethodOptionsParam? = nil

    @[JSON::Field(key: "alipay", type: Stripe::PaymentMethodOptionsParam?, default: nil, required: false, nullable: false, emit_null: false)]
    property alipay : Stripe::PaymentMethodOptionsParam? = nil

    @[JSON::Field(key: "amazon_pay", type: Stripe::SetupIntentPaymentMethodOptionsParam?, default: nil, required: false, nullable: false, emit_null: false)]
    property amazon_pay : Stripe::SetupIntentPaymentMethodOptionsParam? = nil

    # The app ID registered with WeChat Pay. Only required when client is ios or android.
    @[JSON::Field(key: "app_id", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    property app_id : String? = nil
    MAX_LENGTH_FOR_APP_ID = 5000

    # The `transStatus` returned from the card Issuer’s ACS in the ARes.
    @[JSON::Field(key: "ares_trans_status", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    property ares_trans_status : String? = nil
    ERROR_MESSAGE_FOR_ARES_TRANS_STATUS = "invalid value for \"ares_trans_status\", must be one of [A, C, I, N, R, U, Y]."
    VALID_VALUES_FOR_ARES_TRANS_STATUS  = String.static_array("A", "C", "I", "N", "R", "U", "Y")

    @[JSON::Field(key: "au_becs_debit", type: Stripe::PaymentMethodOptionsParam?, default: nil, required: false, nullable: false, emit_null: false)]
    property au_becs_debit : Stripe::PaymentMethodOptionsParam? = nil

    @[JSON::Field(key: "bacs_debit", type: Stripe::SetupIntentPaymentMethodOptionsParam?, default: nil, required: false, nullable: false, emit_null: false)]
    property bacs_debit : Stripe::SetupIntentPaymentMethodOptionsParam? = nil

    @[JSON::Field(key: "bancontact", type: Stripe::PaymentMethodOptionsParam?, default: nil, required: false, nullable: false, emit_null: false)]
    property bancontact : Stripe::PaymentMethodOptionsParam? = nil

    @[JSON::Field(key: "bank_transfer", type: Stripe::BankTransferParam?, default: nil, required: false, nullable: false, emit_null: false)]
    property bank_transfer : Stripe::BankTransferParam? = nil

    # The PayPal Billing Agreement ID (BAID). This is an ID generated by PayPal which represents the mandate between the merchant and the customer.
    @[JSON::Field(key: "billing_agreement_id", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    property billing_agreement_id : String? = nil
    MAX_LENGTH_FOR_BILLING_AGREEMENT_ID = 5000

    @[JSON::Field(key: "blik", type: Stripe::PaymentMethodOptionsParamBlik?, default: nil, required: false, nullable: false, emit_null: false)]
    property blik : Stripe::PaymentMethodOptionsParamBlik? = nil

    @[JSON::Field(key: "boleto", type: Stripe::PaymentMethodOptionsParam?, default: nil, required: false, nullable: false, emit_null: false)]
    property boleto : Stripe::PaymentMethodOptionsParam? = nil

    # Controls when the funds will be captured from the customer's account.
    @[JSON::Field(key: "capture_method", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    property capture_method : String? = nil
    ERROR_MESSAGE_FOR_CAPTURE_METHOD = "invalid value for \"capture_method\", must be one of [, manual]."
    VALID_VALUES_FOR_CAPTURE_METHOD  = String.static_array("", "manual")

    @[JSON::Field(key: "card", type: Stripe::SetupIntentParam?, default: nil, required: false, nullable: false, emit_null: false)]
    property card : Stripe::SetupIntentParam? = nil

    @[JSON::Field(key: "card_present", type: Stripe::SetupIntentPaymentMethodOptionsParam?, default: nil, required: false, nullable: false, emit_null: false)]
    property card_present2 : Stripe::SetupIntentPaymentMethodOptionsParam? = nil

    @[JSON::Field(key: "cashapp", type: Stripe::PaymentMethodOptionsParam?, default: nil, required: false, nullable: false, emit_null: false)]
    property cashapp : Stripe::PaymentMethodOptionsParam? = nil

    # The client type that the end customer will pay from
    @[JSON::Field(key: "client", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    property client : String? = nil
    ERROR_MESSAGE_FOR_CLIENT = "invalid value for \"client\", must be one of [android, ios, web]."
    VALID_VALUES_FOR_CLIENT  = String.static_array("android", "ios", "web")

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies). This is only accepted for Checkout Sessions in `setup` mode.
    @[JSON::Field(key: "currency", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    property currency : String? = nil
    ERROR_MESSAGE_FOR_CURRENCY = "invalid value for \"currency\", must be one of [cad, usd]."
    VALID_VALUES_FOR_CURRENCY  = String.static_array("cad", "usd")

    @[JSON::Field(key: "customer_balance", type: Stripe::PaymentMethodOptionsParam?, default: nil, required: false, nullable: false, emit_null: false)]
    property customer_balance : Stripe::PaymentMethodOptionsParam? = nil

    # The Electronic Commerce Indicator (ECI) is returned by your 3D Secure provider and indicates what degree of authentication was performed.
    @[JSON::Field(key: "electronic_commerce_indicator", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    property electronic_commerce_indicator : String? = nil
    ERROR_MESSAGE_FOR_ELECTRONIC_COMMERCE_INDICATOR = "invalid value for \"electronic_commerce_indicator\", must be one of [01, 02, 05, 06, 07]."
    VALID_VALUES_FOR_ELECTRONIC_COMMERCE_INDICATOR  = String.static_array("01", "02", "05", "06", "07")

    @[JSON::Field(key: "eps", type: Stripe::PaymentMethodOptionsParam?, default: nil, required: false, nullable: false, emit_null: false)]
    property eps : Stripe::PaymentMethodOptionsParam? = nil

    # The exemption requested via 3DS and accepted by the issuer at authentication time.
    @[JSON::Field(key: "exemption_indicator", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    property exemption_indicator : String? = nil
    ERROR_MESSAGE_FOR_EXEMPTION_INDICATOR = "invalid value for \"exemption_indicator\", must be one of [low_risk, none]."
    VALID_VALUES_FOR_EXEMPTION_INDICATOR  = String.static_array("low_risk", "none")

    # The number of calendar days before an OXXO voucher expires. For example, if you create an OXXO voucher on Monday and you set expires_after_days to 2, the OXXO invoice will expire on Wednesday at 23:59 America/Mexico_City time.
    @[JSON::Field(key: "expires_after_days", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    property expires_after_days : Int64? = nil

    # The number of seconds (between 10 and 1209600) after which Pix payment will expire. Defaults to 86400 seconds.
    @[JSON::Field(key: "expires_after_seconds", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    property expires_after_seconds : Int64? = nil

    @[JSON::Field(key: "financial_connections", type: Stripe::LinkedAccountOptionsParam?, default: nil, required: false, nullable: false, emit_null: false)]
    property financial_connections : Stripe::LinkedAccountOptionsParam? = nil

    @[JSON::Field(key: "fpx", type: Stripe::PaymentMethodOptionsParam?, default: nil, required: false, nullable: false, emit_null: false)]
    property fpx : Stripe::PaymentMethodOptionsParam? = nil

    # The funding method type to be used when there are not enough funds in the customer balance. Permitted values include: `bank_transfer`.
    @[JSON::Field(key: "funding_type", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    property funding_type : String? = nil
    ERROR_MESSAGE_FOR_FUNDING_TYPE = "invalid value for \"funding_type\", must be one of [bank_transfer]."
    VALID_VALUES_FOR_FUNDING_TYPE  = String.static_array("bank_transfer")

    @[JSON::Field(key: "giropay", type: Stripe::PaymentMethodOptionsParam?, default: nil, required: false, nullable: false, emit_null: false)]
    property giropay : Stripe::PaymentMethodOptionsParam? = nil

    @[JSON::Field(key: "grabpay", type: Stripe::PaymentMethodOptionsParam?, default: nil, required: false, nullable: false, emit_null: false)]
    property grabpay : Stripe::PaymentMethodOptionsParam? = nil

    @[JSON::Field(key: "ideal", type: Stripe::PaymentMethodOptionsParam?, default: nil, required: false, nullable: false, emit_null: false)]
    property ideal : Stripe::PaymentMethodOptionsParam? = nil

    @[JSON::Field(key: "installments", type: Stripe::InstallmentsParam?, default: nil, required: false, nullable: false, emit_null: false)]
    property installments : Stripe::InstallmentsParam? = nil

    @[JSON::Field(key: "interac_present", type: Stripe::PaymentMethodOptionsParamInteracPresent?, default: nil, required: false, nullable: false, emit_null: false)]
    property interac_present : Stripe::PaymentMethodOptionsParamInteracPresent? = nil

    @[JSON::Field(key: "klarna", type: Stripe::PaymentMethodOptionsParam?, default: nil, required: false, nullable: false, emit_null: false)]
    property klarna : Stripe::PaymentMethodOptionsParam? = nil

    @[JSON::Field(key: "konbini", type: Stripe::PaymentMethodOptionsParam?, default: nil, required: false, nullable: false, emit_null: false)]
    property konbini : Stripe::PaymentMethodOptionsParam? = nil

    @[JSON::Field(key: "link", type: Stripe::SetupIntentPaymentMethodOptionsParam?, default: nil, required: false, nullable: false, emit_null: false)]
    property link : Stripe::SetupIntentPaymentMethodOptionsParam? = nil

    @[JSON::Field(key: "mandate_options", type: Stripe::MandateOptionsParam?, default: nil, required: false, nullable: false, emit_null: false)]
    property mandate_options : Stripe::MandateOptionsParam? = nil

    @[JSON::Field(key: "mobilepay", type: Stripe::PaymentMethodOptionsParam?, default: nil, required: false, nullable: false, emit_null: false)]
    property mobilepay : Stripe::PaymentMethodOptionsParam? = nil

    @[JSON::Field(key: "multibanco", type: Stripe::PaymentMethodOptionsParam?, default: nil, required: false, nullable: false, emit_null: false)]
    property multibanco : Stripe::PaymentMethodOptionsParam? = nil

    @[JSON::Field(key: "network_options", type: Stripe::NetworkOptionsParam?, default: nil, required: false, nullable: false, emit_null: false)]
    property network_options : Stripe::NetworkOptionsParam? = nil

    @[JSON::Field(key: "oxxo", type: Stripe::PaymentMethodOptionsParam?, default: nil, required: false, nullable: false, emit_null: false)]
    property oxxo : Stripe::PaymentMethodOptionsParam? = nil

    @[JSON::Field(key: "p24", type: Stripe::PaymentMethodOptionsParam?, default: nil, required: false, nullable: false, emit_null: false)]
    property p24 : Stripe::PaymentMethodOptionsParam? = nil

    @[JSON::Field(key: "paynow", type: Stripe::PaymentMethodOptionsParam?, default: nil, required: false, nullable: false, emit_null: false)]
    property paynow : Stripe::PaymentMethodOptionsParam? = nil

    @[JSON::Field(key: "paypal", type: Stripe::PaymentMethodOptionsParam?, default: nil, required: false, nullable: false, emit_null: false)]
    property paypal : Stripe::PaymentMethodOptionsParam? = nil

    @[JSON::Field(key: "pix", type: Stripe::PaymentMethodOptionsParam?, default: nil, required: false, nullable: false, emit_null: false)]
    property pix : Stripe::PaymentMethodOptionsParam? = nil

    # [Preferred locale](https://stripe.com/docs/payments/paypal/supported-locales) of the PayPal checkout page that the customer is redirected to.
    @[JSON::Field(key: "preferred_locale", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    property preferred_locale : String? = nil
    ERROR_MESSAGE_FOR_PREFERRED_LOCALE = "invalid value for \"preferred_locale\", must be one of [cs-CZ, da-DK, de-AT, de-DE, de-LU, el-GR, en-GB, en-US, es-ES, fi-FI, fr-BE, fr-FR, fr-LU, hu-HU, it-IT, nl-BE, nl-NL, pl-PL, pt-PT, sk-SK, sv-SE]."
    VALID_VALUES_FOR_PREFERRED_LOCALE  = String.static_array("cs-CZ", "da-DK", "de-AT", "de-DE", "de-LU", "el-GR", "en-GB", "en-US", "es-ES", "fi-FI", "fr-BE", "fr-FR", "fr-LU", "hu-HU", "it-IT", "nl-BE", "nl-NL", "pl-PL", "pt-PT", "sk-SK", "sv-SE")

    @[JSON::Field(key: "promptpay", type: Stripe::PaymentMethodOptionsParamPromptpay?, default: nil, required: false, nullable: false, emit_null: false)]
    property promptpay : Stripe::PaymentMethodOptionsParamPromptpay? = nil

    # The order reference that will be displayed to customers in the Swish application. Defaults to the `id` of the Payment Intent.
    @[JSON::Field(key: "reference", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    property reference : String? = nil
    MAX_LENGTH_FOR_REFERENCE = 5000

    # We strongly recommend that you rely on our SCA Engine to automatically prompt your customers for authentication based on risk level and [other requirements](https://stripe.com/docs/strong-customer-authentication). However, if you wish to request 3D Secure based on logic from your own fraud engine, provide this option. If not provided, this value defaults to `automatic`. Read our guide on [manually requesting 3D Secure](https://stripe.com/docs/payments/3d-secure/authentication-flow#manual-three-ds) for more information on how this configuration interacts with Radar and our SCA Engine.
    @[JSON::Field(key: "request_three_d_secure", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    property request_three_d_secure : String? = nil
    ERROR_MESSAGE_FOR_REQUEST_THREE_D_SECURE = "invalid value for \"request_three_d_secure\", must be one of [any, automatic, challenge]."
    VALID_VALUES_FOR_REQUEST_THREE_D_SECURE  = String.static_array("any", "automatic", "challenge")

    # The challenge indicator (`threeDSRequestorChallengeInd`) which was requested in the AReq sent to the card Issuer's ACS. A string containing 2 digits from 01-99.
    @[JSON::Field(key: "requestor_challenge_indicator", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    property requestor_challenge_indicator : String? = nil
    MAX_LENGTH_FOR_REQUESTOR_CHALLENGE_INDICATOR = 2

    @[JSON::Field(key: "revolut_pay", type: Stripe::PaymentMethodOptionsParam?, default: nil, required: false, nullable: false, emit_null: false)]
    property revolut_pay : Stripe::PaymentMethodOptionsParam? = nil

    # The risk correlation ID for an on-session payment using a saved PayPal payment method.
    @[JSON::Field(key: "risk_correlation_id", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    property risk_correlation_id : String? = nil
    MAX_LENGTH_FOR_RISK_CORRELATION_ID = 32

    @[JSON::Field(key: "sepa_debit", type: Stripe::SetupIntentPaymentMethodOptionsParam?, default: nil, required: false, nullable: false, emit_null: false)]
    property sepa_debit : Stripe::SetupIntentPaymentMethodOptionsParam? = nil

    # Indicates that you intend to make future payments with this PaymentIntent's payment method.  If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.  If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.  When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
    @[JSON::Field(key: "setup_future_usage", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    property setup_future_usage : String? = nil
    ERROR_MESSAGE_FOR_SETUP_FUTURE_USAGE = "invalid value for \"setup_future_usage\", must be one of [none]."
    VALID_VALUES_FOR_SETUP_FUTURE_USAGE  = String.static_array("none")

    @[JSON::Field(key: "sofort", type: Stripe::PaymentMethodOptionsParam?, default: nil, required: false, nullable: false, emit_null: false)]
    property sofort : Stripe::PaymentMethodOptionsParam? = nil

    # Provides information about a card payment that customers see on their statements. Concatenated with the Kana prefix (shortened Kana descriptor) or Kana statement descriptor that’s set on the account to form the complete statement descriptor. Maximum 22 characters. On card statements, the *concatenation* of both prefix and suffix (including separators) will appear truncated to 22 characters.
    @[JSON::Field(key: "statement_descriptor_suffix_kana", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    property statement_descriptor_suffix_kana : String? = nil
    MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR_SUFFIX_KANA = 22

    # Provides information about a card payment that customers see on their statements. Concatenated with the Kanji prefix (shortened Kanji descriptor) or Kanji statement descriptor that’s set on the account to form the complete statement descriptor. Maximum 17 characters. On card statements, the *concatenation* of both prefix and suffix (including separators) will appear truncated to 17 characters.
    @[JSON::Field(key: "statement_descriptor_suffix_kanji", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    property statement_descriptor_suffix_kanji : String? = nil
    MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR_SUFFIX_KANJI = 17

    @[JSON::Field(key: "swish", type: Stripe::PaymentMethodOptionsParam?, default: nil, required: false, nullable: false, emit_null: false)]
    property swish : Stripe::PaymentMethodOptionsParam? = nil

    # Confirm that the payer has accepted the P24 terms and conditions.
    @[JSON::Field(key: "tos_shown_and_accepted", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    property tos_shown_and_accepted : Bool? = nil

    @[JSON::Field(key: "twint", type: Stripe::PaymentMethodOptionsParamTwint?, default: nil, required: false, nullable: false, emit_null: false)]
    property twint : Stripe::PaymentMethodOptionsParamTwint? = nil

    @[JSON::Field(key: "us_bank_account", type: Stripe::SetupIntentPaymentMethodOptionsParam?, default: nil, required: false, nullable: false, emit_null: false)]
    property us_bank_account : Stripe::SetupIntentPaymentMethodOptionsParam? = nil

    # Verification method for the intent
    @[JSON::Field(key: "verification_method", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    property verification_method : String? = nil
    ERROR_MESSAGE_FOR_VERIFICATION_METHOD = "invalid value for \"verification_method\", must be one of [automatic, instant]."
    VALID_VALUES_FOR_VERIFICATION_METHOD  = String.static_array("automatic", "instant")

    @[JSON::Field(key: "wechat_pay", type: Stripe::PaymentMethodOptionsParam?, default: nil, required: false, nullable: false, emit_null: false)]
    property wechat_pay : Stripe::PaymentMethodOptionsParam? = nil

    @[JSON::Field(key: "zip", type: Stripe::PaymentMethodOptionsParamZip?, default: nil, required: false, nullable: false, emit_null: false)]
    property zip : Stripe::PaymentMethodOptionsParamZip? = nil

    # List of class defined in anyOf (OpenAPI v3)
    def self.openapi_any_of
      [
        Stripe::PaymentMethodOptionsParam,
        String,
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @cryptogram : String? = nil,
      @transaction_id : String? = nil,
      @version : String? = nil,
      # Optional properties
      @acss_debit : Stripe::SetupIntentPaymentMethodOptionsParam? = nil,
      @affirm : Stripe::PaymentMethodOptionsParam? = nil,
      @afterpay_clearpay : Stripe::PaymentMethodOptionsParam? = nil,
      @alipay : Stripe::PaymentMethodOptionsParam? = nil,
      @amazon_pay : Stripe::SetupIntentPaymentMethodOptionsParam? = nil,
      @app_id : String? = nil,
      @ares_trans_status : String? = nil,
      @au_becs_debit : Stripe::PaymentMethodOptionsParam? = nil,
      @bacs_debit : Stripe::SetupIntentPaymentMethodOptionsParam? = nil,
      @bancontact : Stripe::PaymentMethodOptionsParam? = nil,
      @bank_transfer : Stripe::BankTransferParam? = nil,
      @billing_agreement_id : String? = nil,
      @blik : Stripe::PaymentMethodOptionsParamBlik? = nil,
      @boleto : Stripe::PaymentMethodOptionsParam? = nil,
      @capture_method : String? = nil,
      @card : Stripe::SetupIntentParam? = nil,
      @card_present2 : Stripe::SetupIntentPaymentMethodOptionsParam? = nil,
      @cashapp : Stripe::PaymentMethodOptionsParam? = nil,
      @client : String? = nil,
      @currency : String? = nil,
      @customer_balance : Stripe::PaymentMethodOptionsParam? = nil,
      @electronic_commerce_indicator : String? = nil,
      @eps : Stripe::PaymentMethodOptionsParam? = nil,
      @exemption_indicator : String? = nil,
      @expires_after_days : Int64? = nil,
      @expires_after_seconds : Int64? = nil,
      @financial_connections : Stripe::LinkedAccountOptionsParam? = nil,
      @fpx : Stripe::PaymentMethodOptionsParam? = nil,
      @funding_type : String? = nil,
      @giropay : Stripe::PaymentMethodOptionsParam? = nil,
      @grabpay : Stripe::PaymentMethodOptionsParam? = nil,
      @ideal : Stripe::PaymentMethodOptionsParam? = nil,
      @installments : Stripe::InstallmentsParam? = nil,
      @interac_present : Stripe::PaymentMethodOptionsParamInteracPresent? = nil,
      @klarna : Stripe::PaymentMethodOptionsParam? = nil,
      @konbini : Stripe::PaymentMethodOptionsParam? = nil,
      @link : Stripe::SetupIntentPaymentMethodOptionsParam? = nil,
      @mandate_options : Stripe::MandateOptionsParam? = nil,
      @mobilepay : Stripe::PaymentMethodOptionsParam? = nil,
      @multibanco : Stripe::PaymentMethodOptionsParam? = nil,
      @network_options : Stripe::NetworkOptionsParam? = nil,
      @oxxo : Stripe::PaymentMethodOptionsParam? = nil,
      @p24 : Stripe::PaymentMethodOptionsParam? = nil,
      @paynow : Stripe::PaymentMethodOptionsParam? = nil,
      @paypal : Stripe::PaymentMethodOptionsParam? = nil,
      @pix : Stripe::PaymentMethodOptionsParam? = nil,
      @preferred_locale : String? = nil,
      @promptpay : Stripe::PaymentMethodOptionsParamPromptpay? = nil,
      @reference : String? = nil,
      @request_three_d_secure : String? = nil,
      @requestor_challenge_indicator : String? = nil,
      @revolut_pay : Stripe::PaymentMethodOptionsParam? = nil,
      @risk_correlation_id : String? = nil,
      @sepa_debit : Stripe::SetupIntentPaymentMethodOptionsParam? = nil,
      @setup_future_usage : String? = nil,
      @sofort : Stripe::PaymentMethodOptionsParam? = nil,
      @statement_descriptor_suffix_kana : String? = nil,
      @statement_descriptor_suffix_kanji : String? = nil,
      @swish : Stripe::PaymentMethodOptionsParam? = nil,
      @tos_shown_and_accepted : Bool? = nil,
      @twint : Stripe::PaymentMethodOptionsParamTwint? = nil,
      @us_bank_account : Stripe::SetupIntentPaymentMethodOptionsParam? = nil,
      @verification_method : String? = nil,
      @wechat_pay : Stripe::PaymentMethodOptionsParam? = nil,
      @zip : Stripe::PaymentMethodOptionsParamZip? = nil
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
    def_equals_and_hash(@cryptogram, @transaction_id, @version, @acss_debit, @affirm, @afterpay_clearpay, @alipay, @amazon_pay, @app_id, @ares_trans_status, @au_becs_debit, @bacs_debit, @bancontact, @bank_transfer, @billing_agreement_id, @blik, @boleto, @capture_method, @card, @card_present2, @cashapp, @client, @currency, @customer_balance, @electronic_commerce_indicator, @eps, @exemption_indicator, @expires_after_days, @expires_after_seconds, @financial_connections, @fpx, @funding_type, @giropay, @grabpay, @ideal, @installments, @interac_present, @klarna, @konbini, @link, @mandate_options, @mobilepay, @multibanco, @network_options, @oxxo, @p24, @paynow, @paypal, @pix, @preferred_locale, @promptpay, @reference, @request_three_d_secure, @requestor_challenge_indicator, @revolut_pay, @risk_correlation_id, @sepa_debit, @setup_future_usage, @sofort, @statement_descriptor_suffix_kana, @statement_descriptor_suffix_kanji, @swish, @tos_shown_and_accepted, @twint, @us_bank_account, @verification_method, @wechat_pay, @zip)
  end
end
