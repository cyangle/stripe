#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-08-01
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module Stripe
  #
  class TreasuryTransactionsResourceFlowDetails
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Required properties

    # Type of the flow that created the Transaction. Set to the same value as `flow_type`.
    @[JSON::Field(key: "type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter _type : String? = nil

    ENUM_VALIDATOR_FOR__TYPE = EnumValidator.new("_type", "String", ["credit_reversal", "debit_reversal", "inbound_transfer", "issuing_authorization", "other", "outbound_payment", "outbound_transfer", "received_credit", "received_debit"])

    # Optional properties

    @[JSON::Field(key: "credit_reversal", type: Stripe::TreasuryCreditReversal?, default: nil, required: false, nullable: false, emit_null: false)]
    getter credit_reversal : Stripe::TreasuryCreditReversal? = nil

    @[JSON::Field(key: "debit_reversal", type: Stripe::TreasuryDebitReversal?, default: nil, required: false, nullable: false, emit_null: false)]
    getter debit_reversal : Stripe::TreasuryDebitReversal? = nil

    @[JSON::Field(key: "inbound_transfer", type: Stripe::TreasuryInboundTransfer?, default: nil, required: false, nullable: false, emit_null: false)]
    getter inbound_transfer : Stripe::TreasuryInboundTransfer? = nil

    @[JSON::Field(key: "issuing_authorization", type: Stripe::IssuingAuthorization?, default: nil, required: false, nullable: false, emit_null: false)]
    getter issuing_authorization : Stripe::IssuingAuthorization? = nil

    @[JSON::Field(key: "outbound_payment", type: Stripe::TreasuryOutboundPayment?, default: nil, required: false, nullable: false, emit_null: false)]
    getter outbound_payment : Stripe::TreasuryOutboundPayment? = nil

    @[JSON::Field(key: "outbound_transfer", type: Stripe::TreasuryOutboundTransfer?, default: nil, required: false, nullable: false, emit_null: false)]
    getter outbound_transfer : Stripe::TreasuryOutboundTransfer? = nil

    @[JSON::Field(key: "received_credit", type: Stripe::TreasuryReceivedCredit?, default: nil, required: false, nullable: false, emit_null: false)]
    getter received_credit : Stripe::TreasuryReceivedCredit? = nil

    @[JSON::Field(key: "received_debit", type: Stripe::TreasuryReceivedDebit?, default: nil, required: false, nullable: false, emit_null: false)]
    getter received_debit : Stripe::TreasuryReceivedDebit? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @_type : String? = nil,
      # Optional properties
      @credit_reversal : Stripe::TreasuryCreditReversal? = nil,
      @debit_reversal : Stripe::TreasuryDebitReversal? = nil,
      @inbound_transfer : Stripe::TreasuryInboundTransfer? = nil,
      @issuing_authorization : Stripe::IssuingAuthorization? = nil,
      @outbound_payment : Stripe::TreasuryOutboundPayment? = nil,
      @outbound_transfer : Stripe::TreasuryOutboundTransfer? = nil,
      @received_credit : Stripe::TreasuryReceivedCredit? = nil,
      @received_debit : Stripe::TreasuryReceivedDebit? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR__TYPE.error_message) unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type, false)
      # This is a model credit_reversal : Stripe::TreasuryCreditReversal?
      # This is a model debit_reversal : Stripe::TreasuryDebitReversal?
      # This is a model inbound_transfer : Stripe::TreasuryInboundTransfer?
      # This is a model issuing_authorization : Stripe::IssuingAuthorization?
      # This is a model outbound_payment : Stripe::TreasuryOutboundPayment?
      # This is a model outbound_transfer : Stripe::TreasuryOutboundTransfer?
      # This is a model received_credit : Stripe::TreasuryReceivedCredit?
      # This is a model received_debit : Stripe::TreasuryReceivedDebit?

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
    def _type=(_type : String?)
      if _type.nil?
        raise ArgumentError.new("\"_type\" is required and cannot be null")
      end
      __type = _type.not_nil!
      ENUM_VALIDATOR_FOR__TYPE.valid!(__type)
      @_type = _type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] credit_reversal Object to be assigned
    def credit_reversal=(credit_reversal : Stripe::TreasuryCreditReversal?)
      if credit_reversal.nil?
        return @credit_reversal = nil
      end
      @credit_reversal = credit_reversal
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] debit_reversal Object to be assigned
    def debit_reversal=(debit_reversal : Stripe::TreasuryDebitReversal?)
      if debit_reversal.nil?
        return @debit_reversal = nil
      end
      @debit_reversal = debit_reversal
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] inbound_transfer Object to be assigned
    def inbound_transfer=(inbound_transfer : Stripe::TreasuryInboundTransfer?)
      if inbound_transfer.nil?
        return @inbound_transfer = nil
      end
      @inbound_transfer = inbound_transfer
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] issuing_authorization Object to be assigned
    def issuing_authorization=(issuing_authorization : Stripe::IssuingAuthorization?)
      if issuing_authorization.nil?
        return @issuing_authorization = nil
      end
      @issuing_authorization = issuing_authorization
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] outbound_payment Object to be assigned
    def outbound_payment=(outbound_payment : Stripe::TreasuryOutboundPayment?)
      if outbound_payment.nil?
        return @outbound_payment = nil
      end
      @outbound_payment = outbound_payment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] outbound_transfer Object to be assigned
    def outbound_transfer=(outbound_transfer : Stripe::TreasuryOutboundTransfer?)
      if outbound_transfer.nil?
        return @outbound_transfer = nil
      end
      @outbound_transfer = outbound_transfer
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] received_credit Object to be assigned
    def received_credit=(received_credit : Stripe::TreasuryReceivedCredit?)
      if received_credit.nil?
        return @received_credit = nil
      end
      @received_credit = received_credit
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] received_debit Object to be assigned
    def received_debit=(received_debit : Stripe::TreasuryReceivedDebit?)
      if received_debit.nil?
        return @received_debit = nil
      end
      @received_debit = received_debit
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