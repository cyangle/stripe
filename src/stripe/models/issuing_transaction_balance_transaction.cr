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
  # ID of the [balance transaction](https://stripe.com/docs/api/balance_transactions) associated with this transaction.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class IssuingTransactionBalanceTransaction
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # Gross amount of the transaction, in %s.
    @[JSON::Field(key: "amount", type: Int64?)]
    property amount : Int64?

    # The date the transaction's net funds will become available in the Stripe balance.
    @[JSON::Field(key: "available_on", type: Int64?)]
    property available_on : Int64?

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64?)]
    property created : Int64?

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[JSON::Field(key: "currency", type: String?)]
    property currency : String?

    # Fees (in %s) paid for this transaction.
    @[JSON::Field(key: "fee", type: Int64?)]
    property fee : Int64?

    # Detailed breakdown of fees (in %s) paid for this transaction.
    @[JSON::Field(key: "fee_details", type: Array(Fee)?)]
    property fee_details : Array(Fee)?

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String?)]
    getter id : String?

    # Net amount of the transaction, in %s.
    @[JSON::Field(key: "net", type: Int64?)]
    property net : Int64?

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?)]
    getter object : String?

    ENUM_VALIDATOR_FOR_OBJECT = EnumValidator.new("object", "String", ["balance_transaction"])

    # [Learn more](https://stripe.com/docs/reports/reporting-categories) about how reporting categories can help you understand balance transactions from an accounting perspective.
    @[JSON::Field(key: "reporting_category", type: String?)]
    getter reporting_category : String?

    # If the transaction's net funds are available in the Stripe balance yet. Either `available` or `pending`.
    @[JSON::Field(key: "status", type: String?)]
    getter status : String?

    # Transaction type: `adjustment`, `advance`, `advance_funding`, `anticipation_repayment`, `application_fee`, `application_fee_refund`, `charge`, `connect_collection_transfer`, `contribution`, `issuing_authorization_hold`, `issuing_authorization_release`, `issuing_dispute`, `issuing_transaction`, `payment`, `payment_failure_refund`, `payment_refund`, `payout`, `payout_cancel`, `payout_failure`, `refund`, `refund_failure`, `reserve_transaction`, `reserved_funds`, `stripe_fee`, `stripe_fx_fee`, `tax_fee`, `topup`, `topup_reversal`, `transfer`, `transfer_cancel`, `transfer_failure`, or `transfer_refund`. [Learn more](https://stripe.com/docs/reports/balance-transaction-types) about balance transaction types and what they represent. If you are looking to classify transactions for accounting purposes, you might want to consider `reporting_category` instead.
    @[JSON::Field(key: "type", type: String?)]
    getter _type : String?

    ENUM_VALIDATOR_FOR__TYPE = EnumValidator.new("_type", "String", ["adjustment", "advance", "advance_funding", "anticipation_repayment", "application_fee", "application_fee_refund", "charge", "connect_collection_transfer", "contribution", "issuing_authorization_hold", "issuing_authorization_release", "issuing_dispute", "issuing_transaction", "payment", "payment_failure_refund", "payment_refund", "payout", "payout_cancel", "payout_failure", "refund", "refund_failure", "reserve_transaction", "reserved_funds", "stripe_fee", "stripe_fx_fee", "tax_fee", "topup", "topup_reversal", "transfer", "transfer_cancel", "transfer_failure", "transfer_refund"])

    # Optional properties

    # An arbitrary string attached to the object. Often useful for displaying to users.
    @[JSON::Field(key: "description", type: String?, presence: true, ignore_serialize: description.nil? && !description_present?)]
    getter description : String?

    @[JSON::Field(ignore: true)]
    property? description_present : Bool = false

    # The exchange rate used, if applicable, for this transaction. Specifically, if money was converted from currency A to currency B, then the `amount` in currency A, times `exchange_rate`, would be the `amount` in currency B. For example, suppose you charged a customer 10.00 EUR. Then the PaymentIntent's `amount` would be `1000` and `currency` would be `eur`. Suppose this was converted into 12.34 USD in your Stripe account. Then the BalanceTransaction's `amount` would be `1234`, `currency` would be `usd`, and `exchange_rate` would be `1.234`.
    @[JSON::Field(key: "exchange_rate", type: Float64?, presence: true, ignore_serialize: exchange_rate.nil? && !exchange_rate_present?)]
    property exchange_rate : Float64?

    @[JSON::Field(ignore: true)]
    property? exchange_rate_present : Bool = false

    @[JSON::Field(key: "source", type: BalanceTransactionSource?, presence: true, ignore_serialize: source.nil? && !source_present?)]
    property source : BalanceTransactionSource?

    @[JSON::Field(ignore: true)]
    property? source_present : Bool = false

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
      @fee : Int64? = nil,
      @fee_details : Array(Fee)? = nil,
      @id : String? = nil,
      @net : Int64? = nil,
      @object : String? = nil,
      @reporting_category : String? = nil,
      @status : String? = nil,
      @_type : String? = nil,
      # Optional properties
      @description : String? = nil,
      @exchange_rate : Float64? = nil,
      @source : BalanceTransactionSource? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if @id.to_s.size > 5000
        invalid_properties.push("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_OBJECT.error_message) unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)

      if @reporting_category.to_s.size > 5000
        invalid_properties.push("invalid value for \"reporting_category\", the character length must be smaller than or equal to 5000.")
      end

      if @status.to_s.size > 5000
        invalid_properties.push("invalid value for \"status\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR__TYPE.error_message) unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type, false)

      if !@description.nil? && @description.to_s.size > 5000
        invalid_properties.push("invalid value for \"description\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.to_s.size > 5000
      return false unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      return false if @reporting_category.to_s.size > 5000
      return false if @status.to_s.size > 5000
      return false unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type, false)
      return false if !@description.nil? && @description.to_s.size > 5000

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

    # Custom attribute writer method with validation
    # @param [Object] id Value to be assigned
    def id=(id)
      if id.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      @id = id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object)
      ENUM_VALIDATOR_FOR_OBJECT.valid!(object, false)
      @object = object
    end

    # Custom attribute writer method with validation
    # @param [Object] reporting_category Value to be assigned
    def reporting_category=(reporting_category)
      if reporting_category.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"reporting_category\", the character length must be smaller than or equal to 5000.")
      end

      @reporting_category = reporting_category
    end

    # Custom attribute writer method with validation
    # @param [Object] status Value to be assigned
    def status=(status)
      if status.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"status\", the character length must be smaller than or equal to 5000.")
      end

      @status = status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(_type)
      ENUM_VALIDATOR_FOR__TYPE.valid!(_type, false)
      @_type = _type
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description)
      if !description.nil? && description.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"description\", the character length must be smaller than or equal to 5000.")
      end

      @description = description
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
    def_equals_and_hash(@amount, @available_on, @created, @currency, @fee, @fee_details, @id, @net, @object, @reporting_category, @status, @_type, @description, @exchange_rate, @source)
  end
end