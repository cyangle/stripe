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
require "./charge"
require "./charge_application"
require "./charge_application_fee"
require "./charge_balance_transaction"
require "./charge_customer"
require "./charge_failure_balance_transaction"
require "./charge_fraud_details"
require "./charge_invoice"
require "./charge_on_behalf_of"
require "./charge_outcome"
require "./charge_payment_intent"
require "./charge_review"
require "./charge_source_transfer"
require "./charge_transfer"
require "./charge_transfer_data"
require "./level3"
require "./payment_method_details"
require "./payment_source"
require "./radar_radar_options"
require "./refund_list"
require "./shipping"

module Stripe
  # Charge that is being refunded.
  class TerminalReaderReaderResourceRefundPaymentActionCharge
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Amount intended to be collected by this payment. A positive integer representing how much to charge in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) (e.g., 100 cents to charge $1.00 or 100 to charge ¥100, a zero-decimal currency). The minimum amount is $0.50 US or [equivalent in charge currency](https://stripe.com/docs/currencies#minimum-and-maximum-charge-amounts). The amount value supports up to eight digits (e.g., a value of 99999999 for a USD charge of $999,999.99).
    @[JSON::Field(key: "amount", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    property amount : Int64? = nil

    # Amount in cents (or local equivalent) captured (can be less than the amount attribute on the charge if a partial capture was made).
    @[JSON::Field(key: "amount_captured", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    property amount_captured : Int64? = nil

    # Amount in cents (or local equivalent) refunded (can be less than the amount attribute on the charge if a partial refund was issued).
    @[JSON::Field(key: "amount_refunded", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    property amount_refunded : Int64? = nil

    @[JSON::Field(key: "application", type: Stripe::ChargeApplication?, default: nil, required: true, nullable: true, emit_null: true)]
    property application : Stripe::ChargeApplication? = nil

    @[JSON::Field(key: "application_fee", type: Stripe::ChargeApplicationFee?, default: nil, required: true, nullable: true, emit_null: true)]
    property application_fee : Stripe::ChargeApplicationFee? = nil

    # The amount of the application fee (if any) requested for the charge. [See the Connect documentation](https://stripe.com/docs/connect/direct-charges#collect-fees) for details.
    @[JSON::Field(key: "application_fee_amount", type: Int64?, default: nil, required: true, nullable: true, emit_null: true)]
    property application_fee_amount : Int64? = nil

    @[JSON::Field(key: "balance_transaction", type: Stripe::ChargeBalanceTransaction?, default: nil, required: true, nullable: true, emit_null: true)]
    property balance_transaction : Stripe::ChargeBalanceTransaction? = nil

    @[JSON::Field(key: "billing_details", type: Stripe::BillingDetails?, default: nil, required: true, nullable: false, emit_null: false)]
    property billing_details : Stripe::BillingDetails? = nil

    # The full statement descriptor that is passed to card networks, and that is displayed on your customers' credit card and bank statements. Allows you to see what the statement descriptor looks like after the static and dynamic portions are combined. This value only exists for card payments.
    @[JSON::Field(key: "calculated_statement_descriptor", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    property calculated_statement_descriptor : String? = nil
    MAX_LENGTH_FOR_CALCULATED_STATEMENT_DESCRIPTOR = 5000

    # If the charge was created without capturing, this Boolean represents whether it is still uncaptured or has since been captured.
    @[JSON::Field(key: "captured", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    property captured : Bool? = nil

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    property created : Int64? = nil

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[JSON::Field(key: "currency", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    property currency : String? = nil

    @[JSON::Field(key: "customer", type: Stripe::ChargeCustomer?, default: nil, required: true, nullable: true, emit_null: true)]
    property customer : Stripe::ChargeCustomer? = nil

    # An arbitrary string attached to the object. Often useful for displaying to users.
    @[JSON::Field(key: "description", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    property description : String? = nil
    MAX_LENGTH_FOR_DESCRIPTION = 40000

    # Whether the charge has been disputed.
    @[JSON::Field(key: "disputed", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    property disputed : Bool? = nil

    @[JSON::Field(key: "failure_balance_transaction", type: Stripe::ChargeFailureBalanceTransaction?, default: nil, required: true, nullable: true, emit_null: true)]
    property failure_balance_transaction : Stripe::ChargeFailureBalanceTransaction? = nil

    # Error code explaining reason for charge failure if available (see [the errors section](https://stripe.com/docs/error-codes) for a list of codes).
    @[JSON::Field(key: "failure_code", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    property failure_code : String? = nil
    MAX_LENGTH_FOR_FAILURE_CODE = 5000

    # Message to user further explaining reason for charge failure if available.
    @[JSON::Field(key: "failure_message", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    property failure_message : String? = nil
    MAX_LENGTH_FOR_FAILURE_MESSAGE = 5000

    @[JSON::Field(key: "fraud_details", type: Stripe::ChargeFraudDetails?, default: nil, required: true, nullable: false, emit_null: false)]
    property fraud_details : Stripe::ChargeFraudDetails? = nil

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    property id : String? = nil
    MAX_LENGTH_FOR_ID = 5000

    @[JSON::Field(key: "invoice", type: Stripe::ChargeInvoice?, default: nil, required: true, nullable: true, emit_null: true)]
    property invoice : Stripe::ChargeInvoice? = nil

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    property livemode : Bool? = nil

    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: true, nullable: false, emit_null: false)]
    property metadata : Hash(String, String)? = nil

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    property object : String? = nil
    ERROR_MESSAGE_FOR_OBJECT = "invalid value for \"object\", must be one of [charge]."
    VALID_VALUES_FOR_OBJECT  = String.static_array("charge")

    @[JSON::Field(key: "on_behalf_of", type: Stripe::ChargeOnBehalfOf?, default: nil, required: true, nullable: true, emit_null: true)]
    property on_behalf_of : Stripe::ChargeOnBehalfOf? = nil

    @[JSON::Field(key: "outcome", type: Stripe::ChargeOutcome?, default: nil, required: true, nullable: false, emit_null: false)]
    property outcome : Stripe::ChargeOutcome? = nil

    # `true` if the charge succeeded, or was successfully authorized for later capture.
    @[JSON::Field(key: "paid", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    property paid : Bool? = nil

    @[JSON::Field(key: "payment_intent", type: Stripe::ChargePaymentIntent?, default: nil, required: true, nullable: true, emit_null: true)]
    property payment_intent : Stripe::ChargePaymentIntent? = nil

    # ID of the payment method used in this charge.
    @[JSON::Field(key: "payment_method", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    property payment_method : String? = nil
    MAX_LENGTH_FOR_PAYMENT_METHOD = 5000

    @[JSON::Field(key: "payment_method_details", type: Stripe::PaymentMethodDetails?, default: nil, required: true, nullable: false, emit_null: false)]
    property payment_method_details : Stripe::PaymentMethodDetails? = nil

    # This is the email address that the receipt for this charge was sent to.
    @[JSON::Field(key: "receipt_email", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    property receipt_email : String? = nil
    MAX_LENGTH_FOR_RECEIPT_EMAIL = 5000

    # This is the transaction number that appears on email receipts sent for this charge. This attribute will be `null` until a receipt has been sent.
    @[JSON::Field(key: "receipt_number", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    property receipt_number : String? = nil
    MAX_LENGTH_FOR_RECEIPT_NUMBER = 5000

    # This is the URL to view the receipt for this charge. The receipt is kept up-to-date to the latest state of the charge, including any refunds. If the charge is for an Invoice, the receipt will be stylized as an Invoice receipt.
    @[JSON::Field(key: "receipt_url", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    property receipt_url : String? = nil
    MAX_LENGTH_FOR_RECEIPT_URL = 5000

    # Whether the charge has been fully refunded. If the charge is only partially refunded, this attribute will still be false.
    @[JSON::Field(key: "refunded", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    property refunded : Bool? = nil

    @[JSON::Field(key: "review", type: Stripe::ChargeReview?, default: nil, required: true, nullable: true, emit_null: true)]
    property review : Stripe::ChargeReview? = nil

    @[JSON::Field(key: "shipping", type: Stripe::Shipping?, default: nil, required: true, nullable: false, emit_null: false)]
    property shipping : Stripe::Shipping? = nil

    @[JSON::Field(key: "source", type: Stripe::PaymentSource?, default: nil, required: true, nullable: false, emit_null: false)]
    property source : Stripe::PaymentSource? = nil

    @[JSON::Field(key: "source_transfer", type: Stripe::ChargeSourceTransfer?, default: nil, required: true, nullable: true, emit_null: true)]
    property source_transfer : Stripe::ChargeSourceTransfer? = nil

    # For a non-card charge, text that appears on the customer's statement as the statement descriptor. This value overrides the account's default statement descriptor. For information about requirements, including the 22-character limit, see [the Statement Descriptor docs](https://docs.stripe.com/get-started/account/statement-descriptors).  For a card charge, this value is ignored unless you don't specify a `statement_descriptor_suffix`, in which case this value is used as the suffix.
    @[JSON::Field(key: "statement_descriptor", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    property statement_descriptor : String? = nil
    MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR = 5000

    # Provides information about a card charge. Concatenated to the account's [statement descriptor prefix](https://docs.stripe.com/get-started/account/statement-descriptors#static) to form the complete statement descriptor that appears on the customer's statement. If the account has no prefix value, the suffix is concatenated to the account's statement descriptor.
    @[JSON::Field(key: "statement_descriptor_suffix", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    property statement_descriptor_suffix : String? = nil
    MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR_SUFFIX = 5000

    # The status of the payment is either `succeeded`, `pending`, or `failed`.
    @[JSON::Field(key: "status", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    property status : String? = nil
    ERROR_MESSAGE_FOR_STATUS = "invalid value for \"status\", must be one of [failed, pending, succeeded]."
    VALID_VALUES_FOR_STATUS  = String.static_array("failed", "pending", "succeeded")

    @[JSON::Field(key: "transfer_data", type: Stripe::ChargeTransferData?, default: nil, required: true, nullable: false, emit_null: false)]
    property transfer_data : Stripe::ChargeTransferData? = nil

    # A string that identifies this transaction as part of a group. See the [Connect documentation](https://stripe.com/docs/connect/separate-charges-and-transfers#transfer-options) for details.
    @[JSON::Field(key: "transfer_group", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    property transfer_group : String? = nil
    MAX_LENGTH_FOR_TRANSFER_GROUP = 5000

    # End of Required Properties

    # Optional Properties

    # Authorization code on the charge.
    @[JSON::Field(key: "authorization_code", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    property authorization_code : String? = nil
    MAX_LENGTH_FOR_AUTHORIZATION_CODE = 5000

    @[JSON::Field(key: "level3", type: Stripe::Level3?, default: nil, required: false, nullable: false, emit_null: false)]
    property level3 : Stripe::Level3? = nil

    @[JSON::Field(key: "radar_options", type: Stripe::RadarRadarOptions?, default: nil, required: false, nullable: false, emit_null: false)]
    property radar_options : Stripe::RadarRadarOptions? = nil

    @[JSON::Field(key: "refunds", type: Stripe::RefundList?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: refunds.nil? && !refunds_present?)]
    property refunds : Stripe::RefundList? = nil

    @[JSON::Field(ignore: true)]
    property? refunds_present : Bool = false

    @[JSON::Field(key: "transfer", type: Stripe::ChargeTransfer?, default: nil, required: false, nullable: false, emit_null: false)]
    property transfer : Stripe::ChargeTransfer? = nil

    # List of class defined in anyOf (OpenAPI v3)
    def self.openapi_any_of
      [
        Stripe::Charge,
        String,
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @amount : Int64? = nil,
      @amount_captured : Int64? = nil,
      @amount_refunded : Int64? = nil,
      @application : Stripe::ChargeApplication? = nil,
      @application_fee : Stripe::ChargeApplicationFee? = nil,
      @application_fee_amount : Int64? = nil,
      @balance_transaction : Stripe::ChargeBalanceTransaction? = nil,
      @billing_details : Stripe::BillingDetails? = nil,
      @calculated_statement_descriptor : String? = nil,
      @captured : Bool? = nil,
      @created : Int64? = nil,
      @currency : String? = nil,
      @customer : Stripe::ChargeCustomer? = nil,
      @description : String? = nil,
      @disputed : Bool? = nil,
      @failure_balance_transaction : Stripe::ChargeFailureBalanceTransaction? = nil,
      @failure_code : String? = nil,
      @failure_message : String? = nil,
      @fraud_details : Stripe::ChargeFraudDetails? = nil,
      @id : String? = nil,
      @invoice : Stripe::ChargeInvoice? = nil,
      @livemode : Bool? = nil,
      @metadata : Hash(String, String)? = nil,
      @object : String? = nil,
      @on_behalf_of : Stripe::ChargeOnBehalfOf? = nil,
      @outcome : Stripe::ChargeOutcome? = nil,
      @paid : Bool? = nil,
      @payment_intent : Stripe::ChargePaymentIntent? = nil,
      @payment_method : String? = nil,
      @payment_method_details : Stripe::PaymentMethodDetails? = nil,
      @receipt_email : String? = nil,
      @receipt_number : String? = nil,
      @receipt_url : String? = nil,
      @refunded : Bool? = nil,
      @review : Stripe::ChargeReview? = nil,
      @shipping : Stripe::Shipping? = nil,
      @source : Stripe::PaymentSource? = nil,
      @source_transfer : Stripe::ChargeSourceTransfer? = nil,
      @statement_descriptor : String? = nil,
      @statement_descriptor_suffix : String? = nil,
      @status : String? = nil,
      @transfer_data : Stripe::ChargeTransferData? = nil,
      @transfer_group : String? = nil,
      # Optional properties
      @authorization_code : String? = nil,
      @level3 : Stripe::Level3? = nil,
      @radar_options : Stripe::RadarRadarOptions? = nil,
      @refunds : Stripe::RefundList? = nil,
      @transfer : Stripe::ChargeTransfer? = nil
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
    def_equals_and_hash(@amount, @amount_captured, @amount_refunded, @application, @application_fee, @application_fee_amount, @balance_transaction, @billing_details, @calculated_statement_descriptor, @captured, @created, @currency, @customer, @description, @disputed, @failure_balance_transaction, @failure_code, @failure_message, @fraud_details, @id, @invoice, @livemode, @metadata, @object, @on_behalf_of, @outcome, @paid, @payment_intent, @payment_method, @payment_method_details, @receipt_email, @receipt_number, @receipt_url, @refunded, @review, @shipping, @source, @source_transfer, @statement_descriptor, @statement_descriptor_suffix, @status, @transfer_data, @transfer_group, @authorization_code, @level3, @radar_options, @refunds, @refunds_present, @transfer)
  end
end