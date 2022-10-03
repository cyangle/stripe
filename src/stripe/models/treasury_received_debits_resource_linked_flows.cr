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
  class TreasuryReceivedDebitsResourceLinkedFlows
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # The DebitReversal created as a result of this ReceivedDebit being reversed.
    @[JSON::Field(key: "debit_reversal", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: debit_reversal.nil? && !debit_reversal_present?)]
    getter debit_reversal : String? = nil
    MAX_LENGTH_FOR_DEBIT_REVERSAL = 5000

    @[JSON::Field(ignore: true)]
    property? debit_reversal_present : Bool = false

    # Set if the ReceivedDebit is associated with an InboundTransfer's return of funds.
    @[JSON::Field(key: "inbound_transfer", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: inbound_transfer.nil? && !inbound_transfer_present?)]
    getter inbound_transfer : String? = nil
    MAX_LENGTH_FOR_INBOUND_TRANSFER = 5000

    @[JSON::Field(ignore: true)]
    property? inbound_transfer_present : Bool = false

    # Set if the ReceivedDebit was created due to an [Issuing Authorization](https://stripe.com/docs/api#issuing_authorizations) object.
    @[JSON::Field(key: "issuing_authorization", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: issuing_authorization.nil? && !issuing_authorization_present?)]
    getter issuing_authorization : String? = nil
    MAX_LENGTH_FOR_ISSUING_AUTHORIZATION = 5000

    @[JSON::Field(ignore: true)]
    property? issuing_authorization_present : Bool = false

    # Set if the ReceivedDebit is also viewable as an [Issuing Dispute](https://stripe.com/docs/api#issuing_disputes) object.
    @[JSON::Field(key: "issuing_transaction", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: issuing_transaction.nil? && !issuing_transaction_present?)]
    getter issuing_transaction : String? = nil
    MAX_LENGTH_FOR_ISSUING_TRANSACTION = 5000

    @[JSON::Field(ignore: true)]
    property? issuing_transaction_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @debit_reversal : String? = nil,
      @inbound_transfer : String? = nil,
      @issuing_authorization : String? = nil,
      @issuing_transaction : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_debit_reversal = @debit_reversal).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("debit_reversal", _debit_reversal.to_s.size, MAX_LENGTH_FOR_DEBIT_REVERSAL)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_inbound_transfer = @inbound_transfer).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("inbound_transfer", _inbound_transfer.to_s.size, MAX_LENGTH_FOR_INBOUND_TRANSFER)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_issuing_authorization = @issuing_authorization).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("issuing_authorization", _issuing_authorization.to_s.size, MAX_LENGTH_FOR_ISSUING_AUTHORIZATION)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_issuing_transaction = @issuing_transaction).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("issuing_transaction", _issuing_transaction.to_s.size, MAX_LENGTH_FOR_ISSUING_TRANSACTION)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_debit_reversal = @debit_reversal).nil?
        return false if _debit_reversal.to_s.size > MAX_LENGTH_FOR_DEBIT_REVERSAL
      end

      unless (_inbound_transfer = @inbound_transfer).nil?
        return false if _inbound_transfer.to_s.size > MAX_LENGTH_FOR_INBOUND_TRANSFER
      end

      unless (_issuing_authorization = @issuing_authorization).nil?
        return false if _issuing_authorization.to_s.size > MAX_LENGTH_FOR_ISSUING_AUTHORIZATION
      end

      unless (_issuing_transaction = @issuing_transaction).nil?
        return false if _issuing_transaction.to_s.size > MAX_LENGTH_FOR_ISSUING_TRANSACTION
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] debit_reversal Object to be assigned
    def debit_reversal=(debit_reversal : String?)
      if debit_reversal.nil?
        return @debit_reversal = nil
      end
      _debit_reversal = debit_reversal.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("debit_reversal", _debit_reversal.to_s.size, MAX_LENGTH_FOR_DEBIT_REVERSAL)
      @debit_reversal = _debit_reversal
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] inbound_transfer Object to be assigned
    def inbound_transfer=(inbound_transfer : String?)
      if inbound_transfer.nil?
        return @inbound_transfer = nil
      end
      _inbound_transfer = inbound_transfer.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("inbound_transfer", _inbound_transfer.to_s.size, MAX_LENGTH_FOR_INBOUND_TRANSFER)
      @inbound_transfer = _inbound_transfer
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] issuing_authorization Object to be assigned
    def issuing_authorization=(issuing_authorization : String?)
      if issuing_authorization.nil?
        return @issuing_authorization = nil
      end
      _issuing_authorization = issuing_authorization.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("issuing_authorization", _issuing_authorization.to_s.size, MAX_LENGTH_FOR_ISSUING_AUTHORIZATION)
      @issuing_authorization = _issuing_authorization
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] issuing_transaction Object to be assigned
    def issuing_transaction=(issuing_transaction : String?)
      if issuing_transaction.nil?
        return @issuing_transaction = nil
      end
      _issuing_transaction = issuing_transaction.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("issuing_transaction", _issuing_transaction.to_s.size, MAX_LENGTH_FOR_ISSUING_TRANSACTION)
      @issuing_transaction = _issuing_transaction
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@debit_reversal, @debit_reversal_present, @inbound_transfer, @inbound_transfer_present, @issuing_authorization, @issuing_authorization_present, @issuing_transaction, @issuing_transaction_present)
  end
end
