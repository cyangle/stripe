#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./fee_refund_balance_transaction"
require "./transfer_reversal"
require "./transfer_reversal_destination_payment_refund"
require "./transfer_reversal_source_refund"
require "./transfer_reversal_transfer"

module Stripe
  # This refers to the transfer reversal object if the accompanying transfer reverses. This is only applicable if the charge was created using the destination parameter.
  class RefundTransferReversal
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Amount, in cents (or local equivalent).
    @[JSON::Field(key: "amount", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    property amount : Int64? = nil

    @[JSON::Field(key: "balance_transaction", type: Stripe::FeeRefundBalanceTransaction?, default: nil, required: true, nullable: true, emit_null: true)]
    property balance_transaction : Stripe::FeeRefundBalanceTransaction? = nil

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    property created : Int64? = nil

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[JSON::Field(key: "currency", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    property currency : String? = nil

    @[JSON::Field(key: "destination_payment_refund", type: Stripe::TransferReversalDestinationPaymentRefund?, default: nil, required: true, nullable: true, emit_null: true)]
    property destination_payment_refund : Stripe::TransferReversalDestinationPaymentRefund? = nil

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    property id : String? = nil
    MAX_LENGTH_FOR_ID = 5000

    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: true, nullable: true, emit_null: true)]
    property metadata : Hash(String, String)? = nil

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    property object : String? = nil
    ERROR_MESSAGE_FOR_OBJECT = "invalid value for \"object\", must be one of [transfer_reversal]."
    VALID_VALUES_FOR_OBJECT  = String.static_array("transfer_reversal")

    @[JSON::Field(key: "source_refund", type: Stripe::TransferReversalSourceRefund?, default: nil, required: true, nullable: true, emit_null: true)]
    property source_refund : Stripe::TransferReversalSourceRefund? = nil

    @[JSON::Field(key: "transfer", type: Stripe::TransferReversalTransfer?, default: nil, required: true, nullable: false, emit_null: false)]
    property transfer : Stripe::TransferReversalTransfer? = nil

    # End of Required Properties
    # List of class defined in anyOf (OpenAPI v3)
    def self.openapi_any_of
      [
        String,
        Stripe::TransferReversal,
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @amount : Int64? = nil,
      @balance_transaction : Stripe::FeeRefundBalanceTransaction? = nil,
      @created : Int64? = nil,
      @currency : String? = nil,
      @destination_payment_refund : Stripe::TransferReversalDestinationPaymentRefund? = nil,
      @id : String? = nil,
      @metadata : Hash(String, String)? = nil,
      @object : String? = nil,
      @source_refund : Stripe::TransferReversalSourceRefund? = nil,
      @transfer : Stripe::TransferReversalTransfer? = nil
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
    def_equals_and_hash(@amount, @balance_transaction, @created, @currency, @destination_payment_refund, @id, @metadata, @object, @source_refund, @transfer)
  end
end
