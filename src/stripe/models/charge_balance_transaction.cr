#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./balance_transaction"
require "./balance_transaction_source1"
require "./fee"

module Stripe
  # ID of the balance transaction that describes the impact of this charge on your account balance (not including refunds or disputes).
  class ChargeBalanceTransaction
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Gross amount of this transaction (in cents (or local equivalent)). A positive value represents funds charged to another party, and a negative value represents funds sent to another party.
    @[JSON::Field(key: "amount", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    property amount : Int64? = nil

    # The date that the transaction's net funds become available in the Stripe balance.
    @[JSON::Field(key: "available_on", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    property available_on : Int64? = nil

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    property created : Int64? = nil

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[JSON::Field(key: "currency", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    property currency : String? = nil

    # An arbitrary string attached to the object. Often useful for displaying to users.
    @[JSON::Field(key: "description", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    property description : String? = nil
    MAX_LENGTH_FOR_DESCRIPTION = 5000

    # If applicable, this transaction uses an exchange rate. If money converts from currency A to currency B, then the `amount` in currency A, multipled by the `exchange_rate`, equals the `amount` in currency B. For example, if you charge a customer 10.00 EUR, the PaymentIntent's `amount` is `1000` and `currency` is `eur`. If this converts to 12.34 USD in your Stripe account, the BalanceTransaction's `amount` is `1234`, its `currency` is `usd`, and the `exchange_rate` is `1.234`.
    @[JSON::Field(key: "exchange_rate", type: Float64?, default: nil, required: true, nullable: true, emit_null: true)]
    property exchange_rate : Float64? = nil

    # Fees (in cents (or local equivalent)) paid for this transaction. Represented as a positive integer when assessed.
    @[JSON::Field(key: "fee", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    property fee : Int64? = nil

    # Detailed breakdown of fees (in cents (or local equivalent)) paid for this transaction.
    @[JSON::Field(key: "fee_details", type: Array(Stripe::Fee)?, default: nil, required: true, nullable: false, emit_null: false)]
    property fee_details : Array(Stripe::Fee)? = nil

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    property id : String? = nil
    MAX_LENGTH_FOR_ID = 5000

    # Net impact to a Stripe balance (in cents (or local equivalent)). A positive value represents incrementing a Stripe balance, and a negative value decrementing a Stripe balance. You can calculate the net impact of a transaction on a balance by `amount` - `fee`
    @[JSON::Field(key: "net", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    property net : Int64? = nil

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    property object : String? = nil
    ERROR_MESSAGE_FOR_OBJECT = "invalid value for \"object\", must be one of [balance_transaction]."
    VALID_VALUES_FOR_OBJECT  = String.static_array("balance_transaction")

    # Learn more about how [reporting categories](https://stripe.com/docs/reports/reporting-categories) can help you understand balance transactions from an accounting perspective.
    @[JSON::Field(key: "reporting_category", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    property reporting_category : String? = nil
    MAX_LENGTH_FOR_REPORTING_CATEGORY = 5000

    @[JSON::Field(key: "source", type: Stripe::BalanceTransactionSource1?, default: nil, required: true, nullable: true, emit_null: true)]
    property source : Stripe::BalanceTransactionSource1? = nil

    # The transaction's net funds status in the Stripe balance, which are either `available` or `pending`.
    @[JSON::Field(key: "status", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    property status : String? = nil
    MAX_LENGTH_FOR_STATUS = 5000

    # Transaction type: `adjustment`, `advance`, `advance_funding`, `anticipation_repayment`, `application_fee`, `application_fee_refund`, `charge`, `climate_order_purchase`, `climate_order_refund`, `connect_collection_transfer`, `contribution`, `issuing_authorization_hold`, `issuing_authorization_release`, `issuing_dispute`, `issuing_transaction`, `obligation_outbound`, `obligation_reversal_inbound`, `payment`, `payment_failure_refund`, `payment_network_reserve_hold`, `payment_network_reserve_release`, `payment_refund`, `payment_reversal`, `payment_unreconciled`, `payout`, `payout_cancel`, `payout_failure`, `refund`, `refund_failure`, `reserve_transaction`, `reserved_funds`, `stripe_fee`, `stripe_fx_fee`, `tax_fee`, `topup`, `topup_reversal`, `transfer`, `transfer_cancel`, `transfer_failure`, or `transfer_refund`. Learn more about [balance transaction types and what they represent](https://stripe.com/docs/reports/balance-transaction-types). To classify transactions for accounting purposes, consider `reporting_category` instead.
    @[JSON::Field(key: "type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    property _type : String? = nil
    ERROR_MESSAGE_FOR__TYPE = "invalid value for \"_type\", must be one of [adjustment, advance, advance_funding, anticipation_repayment, application_fee, application_fee_refund, charge, climate_order_purchase, climate_order_refund, connect_collection_transfer, contribution, issuing_authorization_hold, issuing_authorization_release, issuing_dispute, issuing_transaction, obligation_outbound, obligation_reversal_inbound, payment, payment_failure_refund, payment_network_reserve_hold, payment_network_reserve_release, payment_refund, payment_reversal, payment_unreconciled, payout, payout_cancel, payout_failure, refund, refund_failure, reserve_transaction, reserved_funds, stripe_fee, stripe_fx_fee, tax_fee, topup, topup_reversal, transfer, transfer_cancel, transfer_failure, transfer_refund]."
    VALID_VALUES_FOR__TYPE  = String.static_array("adjustment", "advance", "advance_funding", "anticipation_repayment", "application_fee", "application_fee_refund", "charge", "climate_order_purchase", "climate_order_refund", "connect_collection_transfer", "contribution", "issuing_authorization_hold", "issuing_authorization_release", "issuing_dispute", "issuing_transaction", "obligation_outbound", "obligation_reversal_inbound", "payment", "payment_failure_refund", "payment_network_reserve_hold", "payment_network_reserve_release", "payment_refund", "payment_reversal", "payment_unreconciled", "payout", "payout_cancel", "payout_failure", "refund", "refund_failure", "reserve_transaction", "reserved_funds", "stripe_fee", "stripe_fx_fee", "tax_fee", "topup", "topup_reversal", "transfer", "transfer_cancel", "transfer_failure", "transfer_refund")

    # End of Required Properties
    # List of class defined in anyOf (OpenAPI v3)
    def self.openapi_any_of
      [
        Stripe::BalanceTransaction,
        String,
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @amount : Int64? = nil,
      @available_on : Int64? = nil,
      @created : Int64? = nil,
      @currency : String? = nil,
      @description : String? = nil,
      @exchange_rate : Float64? = nil,
      @fee : Int64? = nil,
      @fee_details : Array(Stripe::Fee)? = nil,
      @id : String? = nil,
      @net : Int64? = nil,
      @object : String? = nil,
      @reporting_category : String? = nil,
      @source : Stripe::BalanceTransactionSource1? = nil,
      @status : String? = nil,
      @_type : String? = nil
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
    def_equals_and_hash(@amount, @available_on, @created, @currency, @description, @exchange_rate, @fee, @fee_details, @id, @net, @object, @reporting_category, @source, @status, @_type)
  end
end
