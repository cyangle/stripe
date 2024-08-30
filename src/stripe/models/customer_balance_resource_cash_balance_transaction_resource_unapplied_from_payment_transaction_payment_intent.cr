#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./api_errors"
require "./payment_flows_amount_details"
require "./payment_flows_automatic_payment_methods_payment_intent"
require "./payment_intent"
require "./payment_intent_application"
require "./payment_intent_customer"
require "./payment_intent_invoice"
require "./payment_intent_latest_charge"
require "./payment_intent_next_action"
require "./payment_intent_on_behalf_of"
require "./payment_intent_payment_method"
require "./payment_intent_payment_method_options"
require "./payment_intent_processing"
require "./payment_intent_review"
require "./payment_intent_source"
require "./payment_method_config_biz_payment_method_configuration_details"
require "./shipping"
require "./transfer_data"

module Stripe
  # The [Payment Intent](https://stripe.com/docs/api/payment_intents/object) that funds were unapplied from.
  class CustomerBalanceResourceCashBalanceTransactionResourceUnappliedFromPaymentTransactionPaymentIntent
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Amount intended to be collected by this PaymentIntent. A positive integer representing how much to charge in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) (e.g., 100 cents to charge $1.00 or 100 to charge ¥100, a zero-decimal currency). The minimum amount is $0.50 US or [equivalent in charge currency](https://stripe.com/docs/currencies#minimum-and-maximum-charge-amounts). The amount value supports up to eight digits (e.g., a value of 99999999 for a USD charge of $999,999.99).
    @[JSON::Field(key: "amount", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    property amount : Int64? = nil

    # Amount that can be captured from this PaymentIntent.
    @[JSON::Field(key: "amount_capturable", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    property amount_capturable : Int64? = nil

    # Amount that this PaymentIntent collects.
    @[JSON::Field(key: "amount_received", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    property amount_received : Int64? = nil

    @[JSON::Field(key: "application", type: Stripe::PaymentIntentApplication?, default: nil, required: true, nullable: true, emit_null: true)]
    property application : Stripe::PaymentIntentApplication? = nil

    # The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account. The amount of the application fee collected will be capped at the total payment amount. For more information, see the PaymentIntents [use case for connected accounts](https://stripe.com/docs/payments/connected-accounts).
    @[JSON::Field(key: "application_fee_amount", type: Int64?, default: nil, required: true, nullable: true, emit_null: true)]
    property application_fee_amount : Int64? = nil

    @[JSON::Field(key: "automatic_payment_methods", type: Stripe::PaymentFlowsAutomaticPaymentMethodsPaymentIntent?, default: nil, required: true, nullable: false, emit_null: false)]
    property automatic_payment_methods : Stripe::PaymentFlowsAutomaticPaymentMethodsPaymentIntent? = nil

    # Populated when `status` is `canceled`, this is the time at which the PaymentIntent was canceled. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "canceled_at", type: Int64?, default: nil, required: true, nullable: true, emit_null: true)]
    property canceled_at : Int64? = nil

    # Reason for cancellation of this PaymentIntent, either user-provided (`duplicate`, `fraudulent`, `requested_by_customer`, or `abandoned`) or generated by Stripe internally (`failed_invoice`, `void_invoice`, or `automatic`).
    @[JSON::Field(key: "cancellation_reason", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    property cancellation_reason : String? = nil
    ERROR_MESSAGE_FOR_CANCELLATION_REASON = "invalid value for \"cancellation_reason\", must be one of [abandoned, automatic, duplicate, failed_invoice, fraudulent, requested_by_customer, void_invoice]."
    VALID_VALUES_FOR_CANCELLATION_REASON  = String.static_array("abandoned", "automatic", "duplicate", "failed_invoice", "fraudulent", "requested_by_customer", "void_invoice")

    # Controls when the funds will be captured from the customer's account.
    @[JSON::Field(key: "capture_method", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    property capture_method : String? = nil
    ERROR_MESSAGE_FOR_CAPTURE_METHOD = "invalid value for \"capture_method\", must be one of [automatic, automatic_async, manual]."
    VALID_VALUES_FOR_CAPTURE_METHOD  = String.static_array("automatic", "automatic_async", "manual")

    # The client secret of this PaymentIntent. Used for client-side retrieval using a publishable key.   The client secret can be used to complete a payment from your frontend. It should not be stored, logged, or exposed to anyone other than the customer. Make sure that you have TLS enabled on any page that includes the client secret.  Refer to our docs to [accept a payment](https://stripe.com/docs/payments/accept-a-payment?ui=elements) and learn about how `client_secret` should be handled.
    @[JSON::Field(key: "client_secret", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    property client_secret : String? = nil
    MAX_LENGTH_FOR_CLIENT_SECRET = 5000

    # Describes whether we can confirm this PaymentIntent automatically, or if it requires customer action to confirm the payment.
    @[JSON::Field(key: "confirmation_method", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    property confirmation_method : String? = nil
    ERROR_MESSAGE_FOR_CONFIRMATION_METHOD = "invalid value for \"confirmation_method\", must be one of [automatic, manual]."
    VALID_VALUES_FOR_CONFIRMATION_METHOD  = String.static_array("automatic", "manual")

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    property created : Int64? = nil

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[JSON::Field(key: "currency", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    property currency : String? = nil

    @[JSON::Field(key: "customer", type: Stripe::PaymentIntentCustomer?, default: nil, required: true, nullable: true, emit_null: true)]
    property customer : Stripe::PaymentIntentCustomer? = nil

    # An arbitrary string attached to the object. Often useful for displaying to users.
    @[JSON::Field(key: "description", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    property description : String? = nil
    MAX_LENGTH_FOR_DESCRIPTION = 5000

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    property id : String? = nil
    MAX_LENGTH_FOR_ID = 5000

    @[JSON::Field(key: "invoice", type: Stripe::PaymentIntentInvoice?, default: nil, required: true, nullable: true, emit_null: true)]
    property invoice : Stripe::PaymentIntentInvoice? = nil

    @[JSON::Field(key: "last_payment_error", type: Stripe::ApiErrors?, default: nil, required: true, nullable: false, emit_null: false)]
    property last_payment_error : Stripe::ApiErrors? = nil

    @[JSON::Field(key: "latest_charge", type: Stripe::PaymentIntentLatestCharge?, default: nil, required: true, nullable: true, emit_null: true)]
    property latest_charge : Stripe::PaymentIntentLatestCharge? = nil

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    property livemode : Bool? = nil

    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: true, nullable: false, emit_null: false)]
    property metadata : Hash(String, String)? = nil

    @[JSON::Field(key: "next_action", type: Stripe::PaymentIntentNextAction?, default: nil, required: true, nullable: false, emit_null: false)]
    property next_action : Stripe::PaymentIntentNextAction? = nil

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    property object : String? = nil
    ERROR_MESSAGE_FOR_OBJECT = "invalid value for \"object\", must be one of [payment_intent]."
    VALID_VALUES_FOR_OBJECT  = String.static_array("payment_intent")

    @[JSON::Field(key: "on_behalf_of", type: Stripe::PaymentIntentOnBehalfOf?, default: nil, required: true, nullable: true, emit_null: true)]
    property on_behalf_of : Stripe::PaymentIntentOnBehalfOf? = nil

    @[JSON::Field(key: "payment_method", type: Stripe::PaymentIntentPaymentMethod?, default: nil, required: true, nullable: true, emit_null: true)]
    property payment_method : Stripe::PaymentIntentPaymentMethod? = nil

    @[JSON::Field(key: "payment_method_configuration_details", type: Stripe::PaymentMethodConfigBizPaymentMethodConfigurationDetails?, default: nil, required: true, nullable: false, emit_null: false)]
    property payment_method_configuration_details : Stripe::PaymentMethodConfigBizPaymentMethodConfigurationDetails? = nil

    @[JSON::Field(key: "payment_method_options", type: Stripe::PaymentIntentPaymentMethodOptions?, default: nil, required: true, nullable: false, emit_null: false)]
    property payment_method_options : Stripe::PaymentIntentPaymentMethodOptions? = nil

    # The list of payment method types (e.g. card) that this PaymentIntent is allowed to use.
    @[JSON::Field(key: "payment_method_types", type: Array(String)?, default: nil, required: true, nullable: false, emit_null: false)]
    property payment_method_types : Array(String)? = nil

    @[JSON::Field(key: "processing", type: Stripe::PaymentIntentProcessing?, default: nil, required: true, nullable: false, emit_null: false)]
    property processing : Stripe::PaymentIntentProcessing? = nil

    # Email address that the receipt for the resulting payment will be sent to. If `receipt_email` is specified for a payment in live mode, a receipt will be sent regardless of your [email settings](https://dashboard.stripe.com/account/emails).
    @[JSON::Field(key: "receipt_email", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    property receipt_email : String? = nil
    MAX_LENGTH_FOR_RECEIPT_EMAIL = 5000

    @[JSON::Field(key: "review", type: Stripe::PaymentIntentReview?, default: nil, required: true, nullable: true, emit_null: true)]
    property review : Stripe::PaymentIntentReview? = nil

    # Indicates that you intend to make future payments with this PaymentIntent's payment method.  If you provide a Customer with the PaymentIntent, you can use this parameter to [attach the payment method](/payments/save-during-payment) to the Customer after the PaymentIntent is confirmed and the customer completes any required actions. If you don't provide a Customer, you can still [attach](/api/payment_methods/attach) the payment method to a Customer after the transaction completes.  If the payment method is `card_present` and isn't a digital wallet, Stripe creates and attaches a [generated_card](/api/charges/object#charge_object-payment_method_details-card_present-generated_card) payment method representing the card to the Customer instead.  When processing card payments, Stripe uses `setup_future_usage` to help you comply with regional legislation and network rules, such as [SCA](/strong-customer-authentication).
    @[JSON::Field(key: "setup_future_usage", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    property setup_future_usage : String? = nil
    ERROR_MESSAGE_FOR_SETUP_FUTURE_USAGE = "invalid value for \"setup_future_usage\", must be one of [off_session, on_session]."
    VALID_VALUES_FOR_SETUP_FUTURE_USAGE  = String.static_array("off_session", "on_session")

    @[JSON::Field(key: "shipping", type: Stripe::Shipping?, default: nil, required: true, nullable: false, emit_null: false)]
    property shipping : Stripe::Shipping? = nil

    @[JSON::Field(key: "source", type: Stripe::PaymentIntentSource?, default: nil, required: true, nullable: true, emit_null: true)]
    property source : Stripe::PaymentIntentSource? = nil

    # Text that appears on the customer's statement as the statement descriptor for a non-card charge. This value overrides the account's default statement descriptor. For information about requirements, including the 22-character limit, see [the Statement Descriptor docs](https://docs.stripe.com/get-started/account/statement-descriptors).  Setting this value for a card charge returns an error. For card charges, set the [statement_descriptor_suffix](https://docs.stripe.com/get-started/account/statement-descriptors#dynamic) instead.
    @[JSON::Field(key: "statement_descriptor", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    property statement_descriptor : String? = nil
    MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR = 5000

    # Provides information about a card charge. Concatenated to the account's [statement descriptor prefix](https://docs.stripe.com/get-started/account/statement-descriptors#static) to form the complete statement descriptor that appears on the customer's statement.
    @[JSON::Field(key: "statement_descriptor_suffix", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    property statement_descriptor_suffix : String? = nil
    MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR_SUFFIX = 5000

    # Status of this PaymentIntent, one of `requires_payment_method`, `requires_confirmation`, `requires_action`, `processing`, `requires_capture`, `canceled`, or `succeeded`. Read more about each PaymentIntent [status](https://stripe.com/docs/payments/intents#intent-statuses).
    @[JSON::Field(key: "status", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    property status : String? = nil
    ERROR_MESSAGE_FOR_STATUS = "invalid value for \"status\", must be one of [canceled, processing, requires_action, requires_capture, requires_confirmation, requires_payment_method, succeeded]."
    VALID_VALUES_FOR_STATUS  = String.static_array("canceled", "processing", "requires_action", "requires_capture", "requires_confirmation", "requires_payment_method", "succeeded")

    @[JSON::Field(key: "transfer_data", type: Stripe::TransferData?, default: nil, required: true, nullable: false, emit_null: false)]
    property transfer_data : Stripe::TransferData? = nil

    # A string that identifies the resulting payment as part of a group. Learn more about the [use case for connected accounts](https://stripe.com/docs/connect/separate-charges-and-transfers).
    @[JSON::Field(key: "transfer_group", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    property transfer_group : String? = nil
    MAX_LENGTH_FOR_TRANSFER_GROUP = 5000

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "amount_details", type: Stripe::PaymentFlowsAmountDetails?, default: nil, required: false, nullable: false, emit_null: false)]
    property amount_details : Stripe::PaymentFlowsAmountDetails? = nil

    # List of class defined in anyOf (OpenAPI v3)
    def self.openapi_any_of
      [
        Stripe::PaymentIntent,
        String,
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @amount : Int64? = nil,
      @amount_capturable : Int64? = nil,
      @amount_received : Int64? = nil,
      @application : Stripe::PaymentIntentApplication? = nil,
      @application_fee_amount : Int64? = nil,
      @automatic_payment_methods : Stripe::PaymentFlowsAutomaticPaymentMethodsPaymentIntent? = nil,
      @canceled_at : Int64? = nil,
      @cancellation_reason : String? = nil,
      @capture_method : String? = nil,
      @client_secret : String? = nil,
      @confirmation_method : String? = nil,
      @created : Int64? = nil,
      @currency : String? = nil,
      @customer : Stripe::PaymentIntentCustomer? = nil,
      @description : String? = nil,
      @id : String? = nil,
      @invoice : Stripe::PaymentIntentInvoice? = nil,
      @last_payment_error : Stripe::ApiErrors? = nil,
      @latest_charge : Stripe::PaymentIntentLatestCharge? = nil,
      @livemode : Bool? = nil,
      @metadata : Hash(String, String)? = nil,
      @next_action : Stripe::PaymentIntentNextAction? = nil,
      @object : String? = nil,
      @on_behalf_of : Stripe::PaymentIntentOnBehalfOf? = nil,
      @payment_method : Stripe::PaymentIntentPaymentMethod? = nil,
      @payment_method_configuration_details : Stripe::PaymentMethodConfigBizPaymentMethodConfigurationDetails? = nil,
      @payment_method_options : Stripe::PaymentIntentPaymentMethodOptions? = nil,
      @payment_method_types : Array(String)? = nil,
      @processing : Stripe::PaymentIntentProcessing? = nil,
      @receipt_email : String? = nil,
      @review : Stripe::PaymentIntentReview? = nil,
      @setup_future_usage : String? = nil,
      @shipping : Stripe::Shipping? = nil,
      @source : Stripe::PaymentIntentSource? = nil,
      @statement_descriptor : String? = nil,
      @statement_descriptor_suffix : String? = nil,
      @status : String? = nil,
      @transfer_data : Stripe::TransferData? = nil,
      @transfer_group : String? = nil,
      # Optional properties
      @amount_details : Stripe::PaymentFlowsAmountDetails? = nil
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
    def_equals_and_hash(@amount, @amount_capturable, @amount_received, @application, @application_fee_amount, @automatic_payment_methods, @canceled_at, @cancellation_reason, @capture_method, @client_secret, @confirmation_method, @created, @currency, @customer, @description, @id, @invoice, @last_payment_error, @latest_charge, @livemode, @metadata, @next_action, @object, @on_behalf_of, @payment_method, @payment_method_configuration_details, @payment_method_options, @payment_method_types, @processing, @receipt_email, @review, @setup_future_usage, @shipping, @source, @statement_descriptor, @statement_descriptor_suffix, @status, @transfer_data, @transfer_group, @amount_details)
  end
end
