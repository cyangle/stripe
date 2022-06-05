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
  # [Stripe Connect](https://stripe.com/docs/connect) platforms can reverse transfers made to a connected account, either entirely or partially, and can also specify whether to refund any related application fees. Transfer reversals add to the platform's balance and subtract from the destination account's balance.  Reversing a transfer that was made for a [destination charge](/docs/connect/destination-charges) is allowed only up to the amount of the charge. It is possible to reverse a [transfer_group](https://stripe.com/docs/connect/charges-transfers#transfer-options) transfer only if the destination account has enough balance to cover the reversal.  Related guide: [Reversing Transfers](https://stripe.com/docs/connect/charges-transfers#reversing-transfers).
  @[JSON::Serializable::Options(emit_nulls: true)]
  class TransferReversal
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # Amount, in %s.
    @[JSON::Field(key: "amount", type: Int64)]
    property amount : Int64

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64)]
    property created : Int64

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[JSON::Field(key: "currency", type: String)]
    property currency : String

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String)]
    getter id : String

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String)]
    getter object : String

    ENUM_VALIDATOR_FOR_OBJECT = EnumValidator.new("object", "String", ["transfer_reversal"])

    @[JSON::Field(key: "transfer", type: TransferReversalTransfer)]
    property transfer : TransferReversalTransfer

    # Optional properties

    @[JSON::Field(key: "balance_transaction", type: FeeRefundBalanceTransaction?, presence: true, ignore_serialize: balance_transaction.nil? && !balance_transaction_present?)]
    property balance_transaction : FeeRefundBalanceTransaction?

    @[JSON::Field(ignore: true)]
    property? balance_transaction_present : Bool = false

    @[JSON::Field(key: "destination_payment_refund", type: TransferReversalDestinationPaymentRefund?, presence: true, ignore_serialize: destination_payment_refund.nil? && !destination_payment_refund_present?)]
    property destination_payment_refund : TransferReversalDestinationPaymentRefund?

    @[JSON::Field(ignore: true)]
    property? destination_payment_refund_present : Bool = false

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    @[JSON::Field(key: "metadata", type: Hash(String, String)?, presence: true, ignore_serialize: metadata.nil? && !metadata_present?)]
    property metadata : Hash(String, String)?

    @[JSON::Field(ignore: true)]
    property? metadata_present : Bool = false

    @[JSON::Field(key: "source_refund", type: TransferReversalSourceRefund?, presence: true, ignore_serialize: source_refund.nil? && !source_refund_present?)]
    property source_refund : TransferReversalSourceRefund?

    @[JSON::Field(ignore: true)]
    property? source_refund_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @amount : Int64,
      @created : Int64,
      @currency : String,
      @id : String,
      @object : String,
      @transfer : TransferReversalTransfer,
      # Optional properties
      @balance_transaction : FeeRefundBalanceTransaction? = nil,
      @destination_payment_refund : TransferReversalDestinationPaymentRefund? = nil,
      @metadata : Hash(String, String)? = nil,
      @source_refund : TransferReversalSourceRefund? = nil
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

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.to_s.size > 5000
      return false unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)

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

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@amount, @created, @currency, @id, @object, @transfer, @balance_transaction, @destination_payment_refund, @metadata, @source_refund)
  end
end
