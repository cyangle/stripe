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
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Type of the flow that created the Transaction. Set to the same value as `flow_type`.
    @[JSON::Field(key: "type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter _type : String? = nil
    ERROR_MESSAGE_FOR__TYPE = "invalid value for \"_type\", must be one of [credit_reversal, debit_reversal, inbound_transfer, issuing_authorization, other, outbound_payment, outbound_transfer, received_credit, received_debit]."
    VALID_VALUES_FOR__TYPE  = StaticArray["credit_reversal", "debit_reversal", "inbound_transfer", "issuing_authorization", "other", "outbound_payment", "outbound_transfer", "received_credit", "received_debit"]

    # End of Required Properties

    # Optional Properties

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
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"_type\" is required and cannot be null") if @_type.nil?

      unless (__type = @_type).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR__TYPE) unless OpenApi::EnumValidator.valid?(__type, VALID_VALUES_FOR__TYPE)
      end
      unless (_credit_reversal = @credit_reversal).nil?
        invalid_properties.concat(_credit_reversal.list_invalid_properties_for("credit_reversal")) if _credit_reversal.is_a?(OpenApi::Validatable)
      end
      unless (_debit_reversal = @debit_reversal).nil?
        invalid_properties.concat(_debit_reversal.list_invalid_properties_for("debit_reversal")) if _debit_reversal.is_a?(OpenApi::Validatable)
      end
      unless (_inbound_transfer = @inbound_transfer).nil?
        invalid_properties.concat(_inbound_transfer.list_invalid_properties_for("inbound_transfer")) if _inbound_transfer.is_a?(OpenApi::Validatable)
      end
      unless (_issuing_authorization = @issuing_authorization).nil?
        invalid_properties.concat(_issuing_authorization.list_invalid_properties_for("issuing_authorization")) if _issuing_authorization.is_a?(OpenApi::Validatable)
      end
      unless (_outbound_payment = @outbound_payment).nil?
        invalid_properties.concat(_outbound_payment.list_invalid_properties_for("outbound_payment")) if _outbound_payment.is_a?(OpenApi::Validatable)
      end
      unless (_outbound_transfer = @outbound_transfer).nil?
        invalid_properties.concat(_outbound_transfer.list_invalid_properties_for("outbound_transfer")) if _outbound_transfer.is_a?(OpenApi::Validatable)
      end
      unless (_received_credit = @received_credit).nil?
        invalid_properties.concat(_received_credit.list_invalid_properties_for("received_credit")) if _received_credit.is_a?(OpenApi::Validatable)
      end
      unless (_received_debit = @received_debit).nil?
        invalid_properties.concat(_received_debit.list_invalid_properties_for("received_debit")) if _received_debit.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @_type.nil?
      unless (__type = @_type).nil?
        return false unless OpenApi::EnumValidator.valid?(__type, VALID_VALUES_FOR__TYPE)
      end

      unless (_credit_reversal = @credit_reversal).nil?
        return false if _credit_reversal.is_a?(OpenApi::Validatable) && !_credit_reversal.valid?
      end

      unless (_debit_reversal = @debit_reversal).nil?
        return false if _debit_reversal.is_a?(OpenApi::Validatable) && !_debit_reversal.valid?
      end

      unless (_inbound_transfer = @inbound_transfer).nil?
        return false if _inbound_transfer.is_a?(OpenApi::Validatable) && !_inbound_transfer.valid?
      end

      unless (_issuing_authorization = @issuing_authorization).nil?
        return false if _issuing_authorization.is_a?(OpenApi::Validatable) && !_issuing_authorization.valid?
      end

      unless (_outbound_payment = @outbound_payment).nil?
        return false if _outbound_payment.is_a?(OpenApi::Validatable) && !_outbound_payment.valid?
      end

      unless (_outbound_transfer = @outbound_transfer).nil?
        return false if _outbound_transfer.is_a?(OpenApi::Validatable) && !_outbound_transfer.valid?
      end

      unless (_received_credit = @received_credit).nil?
        return false if _received_credit.is_a?(OpenApi::Validatable) && !_received_credit.valid?
      end

      unless (_received_debit = @received_debit).nil?
        return false if _received_debit.is_a?(OpenApi::Validatable) && !_received_debit.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(_type : String?)
      if _type.nil?
        raise ArgumentError.new("\"_type\" is required and cannot be null")
      end
      __type = _type.not_nil!
      OpenApi::EnumValidator.validate("_type", __type, VALID_VALUES_FOR__TYPE)
      @_type = __type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] credit_reversal Object to be assigned
    def credit_reversal=(credit_reversal : Stripe::TreasuryCreditReversal?)
      if credit_reversal.nil?
        return @credit_reversal = nil
      end
      _credit_reversal = credit_reversal.not_nil!
      _credit_reversal.validate if _credit_reversal.is_a?(OpenApi::Validatable)
      @credit_reversal = _credit_reversal
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] debit_reversal Object to be assigned
    def debit_reversal=(debit_reversal : Stripe::TreasuryDebitReversal?)
      if debit_reversal.nil?
        return @debit_reversal = nil
      end
      _debit_reversal = debit_reversal.not_nil!
      _debit_reversal.validate if _debit_reversal.is_a?(OpenApi::Validatable)
      @debit_reversal = _debit_reversal
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] inbound_transfer Object to be assigned
    def inbound_transfer=(inbound_transfer : Stripe::TreasuryInboundTransfer?)
      if inbound_transfer.nil?
        return @inbound_transfer = nil
      end
      _inbound_transfer = inbound_transfer.not_nil!
      _inbound_transfer.validate if _inbound_transfer.is_a?(OpenApi::Validatable)
      @inbound_transfer = _inbound_transfer
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] issuing_authorization Object to be assigned
    def issuing_authorization=(issuing_authorization : Stripe::IssuingAuthorization?)
      if issuing_authorization.nil?
        return @issuing_authorization = nil
      end
      _issuing_authorization = issuing_authorization.not_nil!
      _issuing_authorization.validate if _issuing_authorization.is_a?(OpenApi::Validatable)
      @issuing_authorization = _issuing_authorization
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] outbound_payment Object to be assigned
    def outbound_payment=(outbound_payment : Stripe::TreasuryOutboundPayment?)
      if outbound_payment.nil?
        return @outbound_payment = nil
      end
      _outbound_payment = outbound_payment.not_nil!
      _outbound_payment.validate if _outbound_payment.is_a?(OpenApi::Validatable)
      @outbound_payment = _outbound_payment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] outbound_transfer Object to be assigned
    def outbound_transfer=(outbound_transfer : Stripe::TreasuryOutboundTransfer?)
      if outbound_transfer.nil?
        return @outbound_transfer = nil
      end
      _outbound_transfer = outbound_transfer.not_nil!
      _outbound_transfer.validate if _outbound_transfer.is_a?(OpenApi::Validatable)
      @outbound_transfer = _outbound_transfer
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] received_credit Object to be assigned
    def received_credit=(received_credit : Stripe::TreasuryReceivedCredit?)
      if received_credit.nil?
        return @received_credit = nil
      end
      _received_credit = received_credit.not_nil!
      _received_credit.validate if _received_credit.is_a?(OpenApi::Validatable)
      @received_credit = _received_credit
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] received_debit Object to be assigned
    def received_debit=(received_debit : Stripe::TreasuryReceivedDebit?)
      if received_debit.nil?
        return @received_debit = nil
      end
      _received_debit = received_debit.not_nil!
      _received_debit.validate if _received_debit.is_a?(OpenApi::Validatable)
      @received_debit = _received_debit
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@_type, @credit_reversal, @debit_reversal, @inbound_transfer, @issuing_authorization, @outbound_payment, @outbound_transfer, @received_credit, @received_debit)
  end
end
