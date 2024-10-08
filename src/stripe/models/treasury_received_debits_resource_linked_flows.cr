#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

module Stripe
  #
  class TreasuryReceivedDebitsResourceLinkedFlows
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The DebitReversal created as a result of this ReceivedDebit being reversed.
    @[JSON::Field(key: "debit_reversal", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter debit_reversal : String? = nil
    MAX_LENGTH_FOR_DEBIT_REVERSAL = 5000

    # Set if the ReceivedDebit is associated with an InboundTransfer's return of funds.
    @[JSON::Field(key: "inbound_transfer", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter inbound_transfer : String? = nil
    MAX_LENGTH_FOR_INBOUND_TRANSFER = 5000

    # Set if the ReceivedDebit was created due to an [Issuing Authorization](https://stripe.com/docs/api#issuing_authorizations) object.
    @[JSON::Field(key: "issuing_authorization", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter issuing_authorization : String? = nil
    MAX_LENGTH_FOR_ISSUING_AUTHORIZATION = 5000

    # Set if the ReceivedDebit is also viewable as an [Issuing Dispute](https://stripe.com/docs/api#issuing_disputes) object.
    @[JSON::Field(key: "issuing_transaction", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter issuing_transaction : String? = nil
    MAX_LENGTH_FOR_ISSUING_TRANSACTION = 5000

    # Set if the ReceivedDebit was created due to a [Payout](https://stripe.com/docs/api#payouts) object.
    @[JSON::Field(key: "payout", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter payout : String? = nil
    MAX_LENGTH_FOR_PAYOUT = 5000

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @debit_reversal : String? = nil,
      @inbound_transfer : String? = nil,
      @issuing_authorization : String? = nil,
      @issuing_transaction : String? = nil,
      @payout : String? = nil
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
      unless (_payout = @payout).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("payout", _payout.to_s.size, MAX_LENGTH_FOR_PAYOUT)
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

      unless (_payout = @payout).nil?
        return false if _payout.to_s.size > MAX_LENGTH_FOR_PAYOUT
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] debit_reversal Object to be assigned
    def debit_reversal=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("debit_reversal", new_value.to_s.size, MAX_LENGTH_FOR_DEBIT_REVERSAL)
      end

      @debit_reversal = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] inbound_transfer Object to be assigned
    def inbound_transfer=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("inbound_transfer", new_value.to_s.size, MAX_LENGTH_FOR_INBOUND_TRANSFER)
      end

      @inbound_transfer = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] issuing_authorization Object to be assigned
    def issuing_authorization=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("issuing_authorization", new_value.to_s.size, MAX_LENGTH_FOR_ISSUING_AUTHORIZATION)
      end

      @issuing_authorization = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] issuing_transaction Object to be assigned
    def issuing_transaction=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("issuing_transaction", new_value.to_s.size, MAX_LENGTH_FOR_ISSUING_TRANSACTION)
      end

      @issuing_transaction = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payout Object to be assigned
    def payout=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("payout", new_value.to_s.size, MAX_LENGTH_FOR_PAYOUT)
      end

      @payout = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@debit_reversal, @inbound_transfer, @issuing_authorization, @issuing_transaction, @payout)
  end
end
