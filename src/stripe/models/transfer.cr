#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./transfer_balance_transaction"
require "./transfer_destination"
require "./transfer_destination_payment"
require "./transfer_reversal_list"
require "./transfer_source_transaction"

module Stripe
  # A `Transfer` object is created when you move funds between Stripe accounts as part of Connect.  Before April 6, 2017, transfers also represented movement of funds from a Stripe account to a card or bank account. This behavior has since been split out into a [Payout](https://stripe.com/docs/api#payout_object) object, with corresponding payout endpoints. For more information, read about the [transfer/payout split](https://stripe.com/docs/transfer-payout-split).  Related guide: [Creating separate charges and transfers](https://stripe.com/docs/connect/separate-charges-and-transfers)
  class Transfer
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Amount in cents (or local equivalent) to be transferred.
    @[JSON::Field(key: "amount", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter amount : Int64? = nil

    # Amount in cents (or local equivalent) reversed (can be less than the amount attribute on the transfer if a partial reversal was issued).
    @[JSON::Field(key: "amount_reversed", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter amount_reversed : Int64? = nil

    @[JSON::Field(key: "balance_transaction", type: Stripe::TransferBalanceTransaction?, default: nil, required: true, nullable: true, emit_null: true)]
    getter balance_transaction : Stripe::TransferBalanceTransaction? = nil

    # Time that this record of the transfer was first created.
    @[JSON::Field(key: "created", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter created : Int64? = nil

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[JSON::Field(key: "currency", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter currency : String? = nil

    # An arbitrary string attached to the object. Often useful for displaying to users.
    @[JSON::Field(key: "description", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter description : String? = nil
    MAX_LENGTH_FOR_DESCRIPTION = 5000

    @[JSON::Field(key: "destination", type: Stripe::TransferDestination?, default: nil, required: true, nullable: true, emit_null: true)]
    getter destination : Stripe::TransferDestination? = nil

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil
    MAX_LENGTH_FOR_ID = 5000

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter livemode : Bool? = nil

    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter metadata : Hash(String, String)? = nil

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter object : String? = nil
    ERROR_MESSAGE_FOR_OBJECT = "invalid value for \"object\", must be one of [transfer]."
    VALID_VALUES_FOR_OBJECT  = String.static_array("transfer")

    @[JSON::Field(key: "reversals", type: Stripe::TransferReversalList?, default: nil, required: true, nullable: false, emit_null: false)]
    getter reversals : Stripe::TransferReversalList? = nil

    # Whether the transfer has been fully reversed. If the transfer is only partially reversed, this attribute will still be false.
    @[JSON::Field(key: "reversed", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter reversed : Bool? = nil

    @[JSON::Field(key: "source_transaction", type: Stripe::TransferSourceTransaction?, default: nil, required: true, nullable: true, emit_null: true)]
    getter source_transaction : Stripe::TransferSourceTransaction? = nil

    # A string that identifies this transaction as part of a group. See the [Connect documentation](https://stripe.com/docs/connect/separate-charges-and-transfers#transfer-options) for details.
    @[JSON::Field(key: "transfer_group", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter transfer_group : String? = nil
    MAX_LENGTH_FOR_TRANSFER_GROUP = 5000

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "destination_payment", type: Stripe::TransferDestinationPayment?, default: nil, required: false, nullable: false, emit_null: false)]
    getter destination_payment : Stripe::TransferDestinationPayment? = nil

    # The source balance this transfer came from. One of `card`, `fpx`, or `bank_account`.
    @[JSON::Field(key: "source_type", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter source_type : String? = nil
    MAX_LENGTH_FOR_SOURCE_TYPE = 5000

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @amount : Int64? = nil,
      @amount_reversed : Int64? = nil,
      @balance_transaction : Stripe::TransferBalanceTransaction? = nil,
      @created : Int64? = nil,
      @currency : String? = nil,
      @description : String? = nil,
      @destination : Stripe::TransferDestination? = nil,
      @id : String? = nil,
      @livemode : Bool? = nil,
      @metadata : Hash(String, String)? = nil,
      @object : String? = nil,
      @reversals : Stripe::TransferReversalList? = nil,
      @reversed : Bool? = nil,
      @source_transaction : Stripe::TransferSourceTransaction? = nil,
      @transfer_group : String? = nil,
      # Optional properties
      @destination_payment : Stripe::TransferDestinationPayment? = nil,
      @source_type : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"amount\" is required and cannot be null") if @amount.nil?

      invalid_properties.push("\"amount_reversed\" is required and cannot be null") if @amount_reversed.nil?

      unless (_balance_transaction = @balance_transaction).nil?
        invalid_properties.concat(_balance_transaction.list_invalid_properties_for("balance_transaction")) if _balance_transaction.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"created\" is required and cannot be null") if @created.nil?

      invalid_properties.push("\"currency\" is required and cannot be null") if @currency.nil?

      unless (_description = @description).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("description", _description.to_s.size, MAX_LENGTH_FOR_DESCRIPTION)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_destination = @destination).nil?
        invalid_properties.concat(_destination.list_invalid_properties_for("destination")) if _destination.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"id\" is required and cannot be null") if @id.nil?

      unless (_id = @id).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("id", _id.to_s.size, MAX_LENGTH_FOR_ID)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"livemode\" is required and cannot be null") if @livemode.nil?

      invalid_properties.push("\"metadata\" is required and cannot be null") if @metadata.nil?

      invalid_properties.push("\"object\" is required and cannot be null") if @object.nil?

      unless (_object = @object).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_OBJECT) unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end
      invalid_properties.push("\"reversals\" is required and cannot be null") if @reversals.nil?

      unless (_reversals = @reversals).nil?
        invalid_properties.concat(_reversals.list_invalid_properties_for("reversals")) if _reversals.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"reversed\" is required and cannot be null") if @reversed.nil?

      unless (_source_transaction = @source_transaction).nil?
        invalid_properties.concat(_source_transaction.list_invalid_properties_for("source_transaction")) if _source_transaction.is_a?(OpenApi::Validatable)
      end
      unless (_transfer_group = @transfer_group).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("transfer_group", _transfer_group.to_s.size, MAX_LENGTH_FOR_TRANSFER_GROUP)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_destination_payment = @destination_payment).nil?
        invalid_properties.concat(_destination_payment.list_invalid_properties_for("destination_payment")) if _destination_payment.is_a?(OpenApi::Validatable)
      end
      unless (_source_type = @source_type).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("source_type", _source_type.to_s.size, MAX_LENGTH_FOR_SOURCE_TYPE)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @amount.nil?

      return false if @amount_reversed.nil?

      unless (_balance_transaction = @balance_transaction).nil?
        return false if _balance_transaction.is_a?(OpenApi::Validatable) && !_balance_transaction.valid?
      end

      return false if @created.nil?

      return false if @currency.nil?

      unless (_description = @description).nil?
        return false if _description.to_s.size > MAX_LENGTH_FOR_DESCRIPTION
      end

      unless (_destination = @destination).nil?
        return false if _destination.is_a?(OpenApi::Validatable) && !_destination.valid?
      end

      return false if @id.nil?
      unless (_id = @id).nil?
        return false if _id.to_s.size > MAX_LENGTH_FOR_ID
      end

      return false if @livemode.nil?

      return false if @metadata.nil?

      return false if @object.nil?
      unless (_object = @object).nil?
        return false unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end

      return false if @reversals.nil?
      unless (_reversals = @reversals).nil?
        return false if _reversals.is_a?(OpenApi::Validatable) && !_reversals.valid?
      end

      return false if @reversed.nil?

      unless (_source_transaction = @source_transaction).nil?
        return false if _source_transaction.is_a?(OpenApi::Validatable) && !_source_transaction.valid?
      end

      unless (_transfer_group = @transfer_group).nil?
        return false if _transfer_group.to_s.size > MAX_LENGTH_FOR_TRANSFER_GROUP
      end

      unless (_destination_payment = @destination_payment).nil?
        return false if _destination_payment.is_a?(OpenApi::Validatable) && !_destination_payment.valid?
      end

      unless (_source_type = @source_type).nil?
        return false if _source_type.to_s.size > MAX_LENGTH_FOR_SOURCE_TYPE
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
    # @param [Object] amount_reversed Object to be assigned
    def amount_reversed=(new_value : Int64?)
      raise ArgumentError.new("\"amount_reversed\" is required and cannot be null") if new_value.nil?

      @amount_reversed = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] balance_transaction Object to be assigned
    def balance_transaction=(new_value : Stripe::TransferBalanceTransaction?)
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
    # @param [Object] description Object to be assigned
    def description=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("description", new_value.to_s.size, MAX_LENGTH_FOR_DESCRIPTION)
      end

      @description = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] destination Object to be assigned
    def destination=(new_value : Stripe::TransferDestination?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @destination = new_value
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
    # @param [Object] livemode Object to be assigned
    def livemode=(new_value : Bool?)
      raise ArgumentError.new("\"livemode\" is required and cannot be null") if new_value.nil?

      @livemode = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(new_value : Hash(String, String)?)
      raise ArgumentError.new("\"metadata\" is required and cannot be null") if new_value.nil?

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
    # @param [Object] reversals Object to be assigned
    def reversals=(new_value : Stripe::TransferReversalList?)
      raise ArgumentError.new("\"reversals\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @reversals = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] reversed Object to be assigned
    def reversed=(new_value : Bool?)
      raise ArgumentError.new("\"reversed\" is required and cannot be null") if new_value.nil?

      @reversed = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] source_transaction Object to be assigned
    def source_transaction=(new_value : Stripe::TransferSourceTransaction?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @source_transaction = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transfer_group Object to be assigned
    def transfer_group=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("transfer_group", new_value.to_s.size, MAX_LENGTH_FOR_TRANSFER_GROUP)
      end

      @transfer_group = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] destination_payment Object to be assigned
    def destination_payment=(new_value : Stripe::TransferDestinationPayment?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @destination_payment = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] source_type Object to be assigned
    def source_type=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("source_type", new_value.to_s.size, MAX_LENGTH_FOR_SOURCE_TYPE)
      end

      @source_type = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@amount, @amount_reversed, @balance_transaction, @created, @currency, @description, @destination, @id, @livemode, @metadata, @object, @reversals, @reversed, @source_transaction, @transfer_group, @destination_payment, @source_type)
  end
end
