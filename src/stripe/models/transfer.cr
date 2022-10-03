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
  # A `Transfer` object is created when you move funds between Stripe accounts as part of Connect.  Before April 6, 2017, transfers also represented movement of funds from a Stripe account to a card or bank account. This behavior has since been split out into a [Payout](https://stripe.com/docs/api#payout_object) object, with corresponding payout endpoints. For more information, read about the [transfer/payout split](https://stripe.com/docs/transfer-payout-split).  Related guide: [Creating Separate Charges and Transfers](https://stripe.com/docs/connect/charges-transfers).
  class Transfer
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Amount in %s to be transferred.
    @[JSON::Field(key: "amount", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter amount : Int64? = nil

    # Amount in %s reversed (can be less than the amount attribute on the transfer if a partial reversal was issued).
    @[JSON::Field(key: "amount_reversed", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter amount_reversed : Int64? = nil

    # Time that this record of the transfer was first created.
    @[JSON::Field(key: "created", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter created : Int64? = nil

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[JSON::Field(key: "currency", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter currency : String? = nil

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil
    MAX_LENGTH_FOR_ID = 5000

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter livemode : Bool? = nil

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter metadata : Hash(String, String)? = nil

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter object : String? = nil
    ERROR_MESSAGE_FOR_OBJECT = "invalid value for \"object\", must be one of [transfer]."
    VALID_VALUES_FOR_OBJECT  = StaticArray["transfer"]

    @[JSON::Field(key: "reversals", type: Stripe::TransferReversalList1?, default: nil, required: true, nullable: false, emit_null: false)]
    getter reversals : Stripe::TransferReversalList1? = nil

    # Whether the transfer has been fully reversed. If the transfer is only partially reversed, this attribute will still be false.
    @[JSON::Field(key: "reversed", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter reversed : Bool? = nil

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "balance_transaction", type: Stripe::TransferBalanceTransaction?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: balance_transaction.nil? && !balance_transaction_present?)]
    getter balance_transaction : Stripe::TransferBalanceTransaction? = nil

    @[JSON::Field(ignore: true)]
    property? balance_transaction_present : Bool = false

    # An arbitrary string attached to the object. Often useful for displaying to users.
    @[JSON::Field(key: "description", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: description.nil? && !description_present?)]
    getter description : String? = nil
    MAX_LENGTH_FOR_DESCRIPTION = 5000

    @[JSON::Field(ignore: true)]
    property? description_present : Bool = false

    @[JSON::Field(key: "destination", type: Stripe::TransferDestination?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: destination.nil? && !destination_present?)]
    getter destination : Stripe::TransferDestination? = nil

    @[JSON::Field(ignore: true)]
    property? destination_present : Bool = false

    @[JSON::Field(key: "destination_payment", type: Stripe::TransferDestinationPayment?, default: nil, required: false, nullable: false, emit_null: false)]
    getter destination_payment : Stripe::TransferDestinationPayment? = nil

    @[JSON::Field(key: "source_transaction", type: Stripe::TransferSourceTransaction?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: source_transaction.nil? && !source_transaction_present?)]
    getter source_transaction : Stripe::TransferSourceTransaction? = nil

    @[JSON::Field(ignore: true)]
    property? source_transaction_present : Bool = false

    # The source balance this transfer came from. One of `card`, `fpx`, or `bank_account`.
    @[JSON::Field(key: "source_type", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter source_type : String? = nil
    MAX_LENGTH_FOR_SOURCE_TYPE = 5000

    # A string that identifies this transaction as part of a group. See the [Connect documentation](https://stripe.com/docs/connect/charges-transfers#transfer-options) for details.
    @[JSON::Field(key: "transfer_group", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: transfer_group.nil? && !transfer_group_present?)]
    getter transfer_group : String? = nil
    MAX_LENGTH_FOR_TRANSFER_GROUP = 5000

    @[JSON::Field(ignore: true)]
    property? transfer_group_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @amount : Int64? = nil,
      @amount_reversed : Int64? = nil,
      @created : Int64? = nil,
      @currency : String? = nil,
      @id : String? = nil,
      @livemode : Bool? = nil,
      @metadata : Hash(String, String)? = nil,
      @object : String? = nil,
      @reversals : Stripe::TransferReversalList1? = nil,
      @reversed : Bool? = nil,
      # Optional properties
      @balance_transaction : Stripe::TransferBalanceTransaction? = nil,
      @description : String? = nil,
      @destination : Stripe::TransferDestination? = nil,
      @destination_payment : Stripe::TransferDestinationPayment? = nil,
      @source_transaction : Stripe::TransferSourceTransaction? = nil,
      @source_type : String? = nil,
      @transfer_group : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"amount\" is required and cannot be null") if @amount.nil?

      invalid_properties.push("\"amount_reversed\" is required and cannot be null") if @amount_reversed.nil?

      invalid_properties.push("\"created\" is required and cannot be null") if @created.nil?

      invalid_properties.push("\"currency\" is required and cannot be null") if @currency.nil?

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

      unless (_balance_transaction = @balance_transaction).nil?
        invalid_properties.concat(_balance_transaction.list_invalid_properties_for("balance_transaction")) if _balance_transaction.is_a?(OpenApi::Validatable)
      end
      unless (_description = @description).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("description", _description.to_s.size, MAX_LENGTH_FOR_DESCRIPTION)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_destination = @destination).nil?
        invalid_properties.concat(_destination.list_invalid_properties_for("destination")) if _destination.is_a?(OpenApi::Validatable)
      end
      unless (_destination_payment = @destination_payment).nil?
        invalid_properties.concat(_destination_payment.list_invalid_properties_for("destination_payment")) if _destination_payment.is_a?(OpenApi::Validatable)
      end
      unless (_source_transaction = @source_transaction).nil?
        invalid_properties.concat(_source_transaction.list_invalid_properties_for("source_transaction")) if _source_transaction.is_a?(OpenApi::Validatable)
      end
      unless (_source_type = @source_type).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("source_type", _source_type.to_s.size, MAX_LENGTH_FOR_SOURCE_TYPE)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_transfer_group = @transfer_group).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("transfer_group", _transfer_group.to_s.size, MAX_LENGTH_FOR_TRANSFER_GROUP)
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

      return false if @created.nil?

      return false if @currency.nil?

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

      unless (_balance_transaction = @balance_transaction).nil?
        return false if _balance_transaction.is_a?(OpenApi::Validatable) && !_balance_transaction.valid?
      end

      unless (_description = @description).nil?
        return false if _description.to_s.size > MAX_LENGTH_FOR_DESCRIPTION
      end

      unless (_destination = @destination).nil?
        return false if _destination.is_a?(OpenApi::Validatable) && !_destination.valid?
      end

      unless (_destination_payment = @destination_payment).nil?
        return false if _destination_payment.is_a?(OpenApi::Validatable) && !_destination_payment.valid?
      end

      unless (_source_transaction = @source_transaction).nil?
        return false if _source_transaction.is_a?(OpenApi::Validatable) && !_source_transaction.valid?
      end

      unless (_source_type = @source_type).nil?
        return false if _source_type.to_s.size > MAX_LENGTH_FOR_SOURCE_TYPE
      end

      unless (_transfer_group = @transfer_group).nil?
        return false if _transfer_group.to_s.size > MAX_LENGTH_FOR_TRANSFER_GROUP
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount Object to be assigned
    def amount=(amount : Int64?)
      if amount.nil?
        raise ArgumentError.new("\"amount\" is required and cannot be null")
      end
      _amount = amount.not_nil!
      @amount = _amount
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount_reversed Object to be assigned
    def amount_reversed=(amount_reversed : Int64?)
      if amount_reversed.nil?
        raise ArgumentError.new("\"amount_reversed\" is required and cannot be null")
      end
      _amount_reversed = amount_reversed.not_nil!
      @amount_reversed = _amount_reversed
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] created Object to be assigned
    def created=(created : Int64?)
      if created.nil?
        raise ArgumentError.new("\"created\" is required and cannot be null")
      end
      _created = created.not_nil!
      @created = _created
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] currency Object to be assigned
    def currency=(currency : String?)
      if currency.nil?
        raise ArgumentError.new("\"currency\" is required and cannot be null")
      end
      _currency = currency.not_nil!
      @currency = _currency
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] id Object to be assigned
    def id=(id : String?)
      if id.nil?
        raise ArgumentError.new("\"id\" is required and cannot be null")
      end
      _id = id.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("id", _id.to_s.size, MAX_LENGTH_FOR_ID)
      @id = _id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] livemode Object to be assigned
    def livemode=(livemode : Bool?)
      if livemode.nil?
        raise ArgumentError.new("\"livemode\" is required and cannot be null")
      end
      _livemode = livemode.not_nil!
      @livemode = _livemode
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(metadata : Hash(String, String)?)
      if metadata.nil?
        raise ArgumentError.new("\"metadata\" is required and cannot be null")
      end
      _metadata = metadata.not_nil!
      @metadata = _metadata
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object : String?)
      if object.nil?
        raise ArgumentError.new("\"object\" is required and cannot be null")
      end
      _object = object.not_nil!
      OpenApi::EnumValidator.validate("object", _object, VALID_VALUES_FOR_OBJECT)
      @object = _object
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] reversals Object to be assigned
    def reversals=(reversals : Stripe::TransferReversalList1?)
      if reversals.nil?
        raise ArgumentError.new("\"reversals\" is required and cannot be null")
      end
      _reversals = reversals.not_nil!
      _reversals.validate if _reversals.is_a?(OpenApi::Validatable)
      @reversals = _reversals
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] reversed Object to be assigned
    def reversed=(reversed : Bool?)
      if reversed.nil?
        raise ArgumentError.new("\"reversed\" is required and cannot be null")
      end
      _reversed = reversed.not_nil!
      @reversed = _reversed
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] balance_transaction Object to be assigned
    def balance_transaction=(balance_transaction : Stripe::TransferBalanceTransaction?)
      if balance_transaction.nil?
        return @balance_transaction = nil
      end
      _balance_transaction = balance_transaction.not_nil!
      _balance_transaction.validate if _balance_transaction.is_a?(OpenApi::Validatable)
      @balance_transaction = _balance_transaction
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] description Object to be assigned
    def description=(description : String?)
      if description.nil?
        return @description = nil
      end
      _description = description.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("description", _description.to_s.size, MAX_LENGTH_FOR_DESCRIPTION)
      @description = _description
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] destination Object to be assigned
    def destination=(destination : Stripe::TransferDestination?)
      if destination.nil?
        return @destination = nil
      end
      _destination = destination.not_nil!
      _destination.validate if _destination.is_a?(OpenApi::Validatable)
      @destination = _destination
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] destination_payment Object to be assigned
    def destination_payment=(destination_payment : Stripe::TransferDestinationPayment?)
      if destination_payment.nil?
        return @destination_payment = nil
      end
      _destination_payment = destination_payment.not_nil!
      _destination_payment.validate if _destination_payment.is_a?(OpenApi::Validatable)
      @destination_payment = _destination_payment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] source_transaction Object to be assigned
    def source_transaction=(source_transaction : Stripe::TransferSourceTransaction?)
      if source_transaction.nil?
        return @source_transaction = nil
      end
      _source_transaction = source_transaction.not_nil!
      _source_transaction.validate if _source_transaction.is_a?(OpenApi::Validatable)
      @source_transaction = _source_transaction
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] source_type Object to be assigned
    def source_type=(source_type : String?)
      if source_type.nil?
        return @source_type = nil
      end
      _source_type = source_type.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("source_type", _source_type.to_s.size, MAX_LENGTH_FOR_SOURCE_TYPE)
      @source_type = _source_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transfer_group Object to be assigned
    def transfer_group=(transfer_group : String?)
      if transfer_group.nil?
        return @transfer_group = nil
      end
      _transfer_group = transfer_group.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("transfer_group", _transfer_group.to_s.size, MAX_LENGTH_FOR_TRANSFER_GROUP)
      @transfer_group = _transfer_group
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@amount, @amount_reversed, @created, @currency, @id, @livemode, @metadata, @object, @reversals, @reversed, @balance_transaction, @balance_transaction_present, @description, @description_present, @destination, @destination_present, @destination_payment, @source_transaction, @source_transaction_present, @source_type, @transfer_group, @transfer_group_present)
  end
end
