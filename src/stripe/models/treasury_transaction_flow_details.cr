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
  # Details of the flow that created the Transaction.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class TreasuryTransactionFlowDetails
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # Type of the flow that created the Transaction. Set to the same value as `flow_type`.
    @[JSON::Field(key: "type", type: String?)]
    getter _type : String?

    ENUM_VALIDATOR_FOR__TYPE = EnumValidator.new("_type", "String", ["credit_reversal", "debit_reversal", "inbound_transfer", "issuing_authorization", "other", "outbound_payment", "outbound_transfer", "received_credit", "received_debit"])

    # Optional properties

    @[JSON::Field(key: "credit_reversal", type: TreasuryCreditReversal?, presence: true, ignore_serialize: credit_reversal.nil? && !credit_reversal_present?)]
    property credit_reversal : TreasuryCreditReversal?

    @[JSON::Field(ignore: true)]
    property? credit_reversal_present : Bool = false

    @[JSON::Field(key: "debit_reversal", type: TreasuryDebitReversal?, presence: true, ignore_serialize: debit_reversal.nil? && !debit_reversal_present?)]
    property debit_reversal : TreasuryDebitReversal?

    @[JSON::Field(ignore: true)]
    property? debit_reversal_present : Bool = false

    @[JSON::Field(key: "inbound_transfer", type: TreasuryInboundTransfer?, presence: true, ignore_serialize: inbound_transfer.nil? && !inbound_transfer_present?)]
    property inbound_transfer : TreasuryInboundTransfer?

    @[JSON::Field(ignore: true)]
    property? inbound_transfer_present : Bool = false

    @[JSON::Field(key: "issuing_authorization", type: IssuingAuthorization?, presence: true, ignore_serialize: issuing_authorization.nil? && !issuing_authorization_present?)]
    property issuing_authorization : IssuingAuthorization?

    @[JSON::Field(ignore: true)]
    property? issuing_authorization_present : Bool = false

    @[JSON::Field(key: "outbound_payment", type: TreasuryOutboundPayment?, presence: true, ignore_serialize: outbound_payment.nil? && !outbound_payment_present?)]
    property outbound_payment : TreasuryOutboundPayment?

    @[JSON::Field(ignore: true)]
    property? outbound_payment_present : Bool = false

    @[JSON::Field(key: "outbound_transfer", type: TreasuryOutboundTransfer?, presence: true, ignore_serialize: outbound_transfer.nil? && !outbound_transfer_present?)]
    property outbound_transfer : TreasuryOutboundTransfer?

    @[JSON::Field(ignore: true)]
    property? outbound_transfer_present : Bool = false

    @[JSON::Field(key: "received_credit", type: TreasuryReceivedCredit?, presence: true, ignore_serialize: received_credit.nil? && !received_credit_present?)]
    property received_credit : TreasuryReceivedCredit?

    @[JSON::Field(ignore: true)]
    property? received_credit_present : Bool = false

    @[JSON::Field(key: "received_debit", type: TreasuryReceivedDebit?, presence: true, ignore_serialize: received_debit.nil? && !received_debit_present?)]
    property received_debit : TreasuryReceivedDebit?

    @[JSON::Field(ignore: true)]
    property? received_debit_present : Bool = false

    # List of class defined in anyOf (OpenAPI v3)
    def self.openapi_any_of
      [
        Stripe::TransactionsResourceTreasuryFlowDetails,
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @_type : String? = nil,
      # Optional properties
      @credit_reversal : TreasuryCreditReversal? = nil,
      @debit_reversal : TreasuryDebitReversal? = nil,
      @inbound_transfer : TreasuryInboundTransfer? = nil,
      @issuing_authorization : IssuingAuthorization? = nil,
      @outbound_payment : TreasuryOutboundPayment? = nil,
      @outbound_transfer : TreasuryOutboundTransfer? = nil,
      @received_credit : TreasuryReceivedCredit? = nil,
      @received_debit : TreasuryReceivedDebit? = nil
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

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(_type)
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
    def_equals_and_hash(@_type, @credit_reversal, @debit_reversal, @inbound_transfer, @issuing_authorization, @outbound_payment, @outbound_transfer, @received_credit, @received_debit)
  end
end