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
require "./transfer_reversal_destination_payment_refund"
require "./transfer_reversal_source_refund"
require "./transfer_reversal_transfer"

module Stripe
  # [Stripe Connect](https://stripe.com/docs/connect) platforms can reverse transfers made to a connected account, either entirely or partially, and can also specify whether to refund any related application fees. Transfer reversals add to the platform's balance and subtract from the destination account's balance.  Reversing a transfer that was made for a [destination charge](/docs/connect/destination-charges) is allowed only up to the amount of the charge. It is possible to reverse a [transfer_group](https://stripe.com/docs/connect/separate-charges-and-transfers#transfer-options) transfer only if the destination account has enough balance to cover the reversal.  Related guide: [Reverse transfers](https://stripe.com/docs/connect/separate-charges-and-transfers#reverse-transfers)
  class TransferReversal
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Amount, in cents (or local equivalent).
    @[JSON::Field(key: "amount", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter amount : Int64? = nil

    @[JSON::Field(key: "balance_transaction", type: Stripe::FeeRefundBalanceTransaction?, default: nil, required: true, nullable: true, emit_null: true)]
    getter balance_transaction : Stripe::FeeRefundBalanceTransaction? = nil

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter created : Int64? = nil

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[JSON::Field(key: "currency", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter currency : String? = nil

    @[JSON::Field(key: "destination_payment_refund", type: Stripe::TransferReversalDestinationPaymentRefund?, default: nil, required: true, nullable: true, emit_null: true)]
    getter destination_payment_refund : Stripe::TransferReversalDestinationPaymentRefund? = nil

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil
    MAX_LENGTH_FOR_ID = 5000

    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: true, nullable: true, emit_null: true)]
    getter metadata : Hash(String, String)? = nil

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter object : String? = nil
    ERROR_MESSAGE_FOR_OBJECT = "invalid value for \"object\", must be one of [transfer_reversal]."
    VALID_VALUES_FOR_OBJECT  = String.static_array("transfer_reversal")

    @[JSON::Field(key: "source_refund", type: Stripe::TransferReversalSourceRefund?, default: nil, required: true, nullable: true, emit_null: true)]
    getter source_refund : Stripe::TransferReversalSourceRefund? = nil

    @[JSON::Field(key: "transfer", type: Stripe::TransferReversalTransfer?, default: nil, required: true, nullable: false, emit_null: false)]
    getter transfer : Stripe::TransferReversalTransfer? = nil

    # End of Required Properties

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

      invalid_properties.push("\"amount\" is required and cannot be null") if @amount.nil?

      unless (_balance_transaction = @balance_transaction).nil?
        invalid_properties.concat(_balance_transaction.list_invalid_properties_for("balance_transaction")) if _balance_transaction.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"created\" is required and cannot be null") if @created.nil?

      invalid_properties.push("\"currency\" is required and cannot be null") if @currency.nil?

      unless (_destination_payment_refund = @destination_payment_refund).nil?
        invalid_properties.concat(_destination_payment_refund.list_invalid_properties_for("destination_payment_refund")) if _destination_payment_refund.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"id\" is required and cannot be null") if @id.nil?

      unless (_id = @id).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("id", _id.to_s.size, MAX_LENGTH_FOR_ID)
          invalid_properties.push(max_length_error)
        end
      end

      invalid_properties.push("\"object\" is required and cannot be null") if @object.nil?

      unless (_object = @object).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_OBJECT) unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end
      unless (_source_refund = @source_refund).nil?
        invalid_properties.concat(_source_refund.list_invalid_properties_for("source_refund")) if _source_refund.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"transfer\" is required and cannot be null") if @transfer.nil?

      unless (_transfer = @transfer).nil?
        invalid_properties.concat(_transfer.list_invalid_properties_for("transfer")) if _transfer.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @amount.nil?

      unless (_balance_transaction = @balance_transaction).nil?
        return false if _balance_transaction.is_a?(OpenApi::Validatable) && !_balance_transaction.valid?
      end

      return false if @created.nil?

      return false if @currency.nil?

      unless (_destination_payment_refund = @destination_payment_refund).nil?
        return false if _destination_payment_refund.is_a?(OpenApi::Validatable) && !_destination_payment_refund.valid?
      end

      return false if @id.nil?
      unless (_id = @id).nil?
        return false if _id.to_s.size > MAX_LENGTH_FOR_ID
      end

      return false if @object.nil?
      unless (_object = @object).nil?
        return false unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end

      unless (_source_refund = @source_refund).nil?
        return false if _source_refund.is_a?(OpenApi::Validatable) && !_source_refund.valid?
      end

      return false if @transfer.nil?
      unless (_transfer = @transfer).nil?
        return false if _transfer.is_a?(OpenApi::Validatable) && !_transfer.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount Object to be assigned
    def amount=(new_value : Int64?)
      raise ArgumentError.new("\"amount\" is required and cannot be null") if new_value.nil?

      @amount = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] balance_transaction Object to be assigned
    def balance_transaction=(new_value : Stripe::FeeRefundBalanceTransaction?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @balance_transaction = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] created Object to be assigned
    def created=(new_value : Int64?)
      raise ArgumentError.new("\"created\" is required and cannot be null") if new_value.nil?

      @created = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] currency Object to be assigned
    def currency=(new_value : String?)
      raise ArgumentError.new("\"currency\" is required and cannot be null") if new_value.nil?

      @currency = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] destination_payment_refund Object to be assigned
    def destination_payment_refund=(new_value : Stripe::TransferReversalDestinationPaymentRefund?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @destination_payment_refund = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] id Object to be assigned
    def id=(new_value : String?)
      raise ArgumentError.new("\"id\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("id", new_value.to_s.size, MAX_LENGTH_FOR_ID)
      end

      @id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(new_value : Hash(String, String)?)
      @metadata = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(new_value : String?)
      raise ArgumentError.new("\"object\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::EnumValidator.validate("object", new_value, VALID_VALUES_FOR_OBJECT)
      end

      @object = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] source_refund Object to be assigned
    def source_refund=(new_value : Stripe::TransferReversalSourceRefund?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @source_refund = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transfer Object to be assigned
    def transfer=(new_value : Stripe::TransferReversalTransfer?)
      raise ArgumentError.new("\"transfer\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @transfer = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@amount, @balance_transaction, @created, @currency, @destination_payment_refund, @id, @metadata, @object, @source_refund, @transfer)
  end
end
