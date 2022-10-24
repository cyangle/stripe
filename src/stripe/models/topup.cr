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
  # To top up your Stripe balance, you create a top-up object. You can retrieve individual top-ups, as well as list all top-ups. Top-ups are identified by a unique, random ID.  Related guide: [Topping Up your Platform Account](https://stripe.com/docs/connect/top-ups).
  class Topup
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Amount transferred.
    @[JSON::Field(key: "amount", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter amount : Int64? = nil

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter created : Int64? = nil

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[JSON::Field(key: "currency", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter currency : String? = nil
    MAX_LENGTH_FOR_CURRENCY = 5000

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
    ERROR_MESSAGE_FOR_OBJECT = "invalid value for \"object\", must be one of [topup]."
    VALID_VALUES_FOR_OBJECT  = String.static_array("topup")

    # The status of the top-up is either `canceled`, `failed`, `pending`, `reversed`, or `succeeded`.
    @[JSON::Field(key: "status", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter status : String? = nil
    ERROR_MESSAGE_FOR_STATUS = "invalid value for \"status\", must be one of [canceled, failed, pending, reversed, succeeded]."
    VALID_VALUES_FOR_STATUS  = String.static_array("canceled", "failed", "pending", "reversed", "succeeded")

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "balance_transaction", type: Stripe::TopupBalanceTransaction?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: balance_transaction.nil? && !balance_transaction_present?)]
    getter balance_transaction : Stripe::TopupBalanceTransaction? = nil

    @[JSON::Field(ignore: true)]
    property? balance_transaction_present : Bool = false

    # An arbitrary string attached to the object. Often useful for displaying to users.
    @[JSON::Field(key: "description", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: description.nil? && !description_present?)]
    getter description : String? = nil
    MAX_LENGTH_FOR_DESCRIPTION = 5000

    @[JSON::Field(ignore: true)]
    property? description_present : Bool = false

    # Date the funds are expected to arrive in your Stripe account for payouts. This factors in delays like weekends or bank holidays. May not be specified depending on status of top-up.
    @[JSON::Field(key: "expected_availability_date", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: expected_availability_date.nil? && !expected_availability_date_present?)]
    getter expected_availability_date : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? expected_availability_date_present : Bool = false

    # Error code explaining reason for top-up failure if available (see [the errors section](https://stripe.com/docs/api#errors) for a list of codes).
    @[JSON::Field(key: "failure_code", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: failure_code.nil? && !failure_code_present?)]
    getter failure_code : String? = nil
    MAX_LENGTH_FOR_FAILURE_CODE = 5000

    @[JSON::Field(ignore: true)]
    property? failure_code_present : Bool = false

    # Message to user further explaining reason for top-up failure if available.
    @[JSON::Field(key: "failure_message", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: failure_message.nil? && !failure_message_present?)]
    getter failure_message : String? = nil
    MAX_LENGTH_FOR_FAILURE_MESSAGE = 5000

    @[JSON::Field(ignore: true)]
    property? failure_message_present : Bool = false

    @[JSON::Field(key: "source", type: Stripe::TopupSource?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: source.nil? && !source_present?)]
    getter source : Stripe::TopupSource? = nil

    @[JSON::Field(ignore: true)]
    property? source_present : Bool = false

    # Extra information about a top-up. This will appear on your source's bank statement. It must contain at least one letter.
    @[JSON::Field(key: "statement_descriptor", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: statement_descriptor.nil? && !statement_descriptor_present?)]
    getter statement_descriptor : String? = nil
    MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR = 5000

    @[JSON::Field(ignore: true)]
    property? statement_descriptor_present : Bool = false

    # A string that identifies this top-up as part of a group.
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
      @created : Int64? = nil,
      @currency : String? = nil,
      @id : String? = nil,
      @livemode : Bool? = nil,
      @metadata : Hash(String, String)? = nil,
      @object : String? = nil,
      @status : String? = nil,
      # Optional properties
      @balance_transaction : Stripe::TopupBalanceTransaction? = nil,
      @description : String? = nil,
      @expected_availability_date : Int64? = nil,
      @failure_code : String? = nil,
      @failure_message : String? = nil,
      @source : Stripe::TopupSource? = nil,
      @statement_descriptor : String? = nil,
      @transfer_group : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"amount\" is required and cannot be null") if @amount.nil?

      invalid_properties.push("\"created\" is required and cannot be null") if @created.nil?

      invalid_properties.push("\"currency\" is required and cannot be null") if @currency.nil?

      unless (_currency = @currency).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("currency", _currency.to_s.size, MAX_LENGTH_FOR_CURRENCY)
          invalid_properties.push(max_length_error)
        end
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
      invalid_properties.push("\"status\" is required and cannot be null") if @status.nil?

      unless (_status = @status).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_STATUS) unless OpenApi::EnumValidator.valid?(_status, VALID_VALUES_FOR_STATUS)
      end
      unless (_balance_transaction = @balance_transaction).nil?
        invalid_properties.concat(_balance_transaction.list_invalid_properties_for("balance_transaction")) if _balance_transaction.is_a?(OpenApi::Validatable)
      end
      unless (_description = @description).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("description", _description.to_s.size, MAX_LENGTH_FOR_DESCRIPTION)
          invalid_properties.push(max_length_error)
        end
      end

      unless (_failure_code = @failure_code).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("failure_code", _failure_code.to_s.size, MAX_LENGTH_FOR_FAILURE_CODE)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_failure_message = @failure_message).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("failure_message", _failure_message.to_s.size, MAX_LENGTH_FOR_FAILURE_MESSAGE)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_source = @source).nil?
        invalid_properties.concat(_source.list_invalid_properties_for("source")) if _source.is_a?(OpenApi::Validatable)
      end
      unless (_statement_descriptor = @statement_descriptor).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("statement_descriptor", _statement_descriptor.to_s.size, MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR)
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

      return false if @created.nil?

      return false if @currency.nil?
      unless (_currency = @currency).nil?
        return false if _currency.to_s.size > MAX_LENGTH_FOR_CURRENCY
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

      return false if @status.nil?
      unless (_status = @status).nil?
        return false unless OpenApi::EnumValidator.valid?(_status, VALID_VALUES_FOR_STATUS)
      end

      unless (_balance_transaction = @balance_transaction).nil?
        return false if _balance_transaction.is_a?(OpenApi::Validatable) && !_balance_transaction.valid?
      end

      unless (_description = @description).nil?
        return false if _description.to_s.size > MAX_LENGTH_FOR_DESCRIPTION
      end

      unless (_failure_code = @failure_code).nil?
        return false if _failure_code.to_s.size > MAX_LENGTH_FOR_FAILURE_CODE
      end

      unless (_failure_message = @failure_message).nil?
        return false if _failure_message.to_s.size > MAX_LENGTH_FOR_FAILURE_MESSAGE
      end

      unless (_source = @source).nil?
        return false if _source.is_a?(OpenApi::Validatable) && !_source.valid?
      end

      unless (_statement_descriptor = @statement_descriptor).nil?
        return false if _statement_descriptor.to_s.size > MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR
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
      OpenApi::PrimitiveValidator.validate_max_length("currency", _currency.to_s.size, MAX_LENGTH_FOR_CURRENCY)
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
    # @param [Object] status Object to be assigned
    def status=(status : String?)
      if status.nil?
        raise ArgumentError.new("\"status\" is required and cannot be null")
      end
      _status = status.not_nil!
      OpenApi::EnumValidator.validate("status", _status, VALID_VALUES_FOR_STATUS)
      @status = _status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] balance_transaction Object to be assigned
    def balance_transaction=(balance_transaction : Stripe::TopupBalanceTransaction?)
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
    # @param [Object] expected_availability_date Object to be assigned
    def expected_availability_date=(expected_availability_date : Int64?)
      if expected_availability_date.nil?
        return @expected_availability_date = nil
      end
      _expected_availability_date = expected_availability_date.not_nil!
      @expected_availability_date = _expected_availability_date
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] failure_code Object to be assigned
    def failure_code=(failure_code : String?)
      if failure_code.nil?
        return @failure_code = nil
      end
      _failure_code = failure_code.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("failure_code", _failure_code.to_s.size, MAX_LENGTH_FOR_FAILURE_CODE)
      @failure_code = _failure_code
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] failure_message Object to be assigned
    def failure_message=(failure_message : String?)
      if failure_message.nil?
        return @failure_message = nil
      end
      _failure_message = failure_message.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("failure_message", _failure_message.to_s.size, MAX_LENGTH_FOR_FAILURE_MESSAGE)
      @failure_message = _failure_message
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] source Object to be assigned
    def source=(source : Stripe::TopupSource?)
      if source.nil?
        return @source = nil
      end
      _source = source.not_nil!
      _source.validate if _source.is_a?(OpenApi::Validatable)
      @source = _source
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] statement_descriptor Object to be assigned
    def statement_descriptor=(statement_descriptor : String?)
      if statement_descriptor.nil?
        return @statement_descriptor = nil
      end
      _statement_descriptor = statement_descriptor.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("statement_descriptor", _statement_descriptor.to_s.size, MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR)
      @statement_descriptor = _statement_descriptor
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
    def_equals_and_hash(@amount, @created, @currency, @id, @livemode, @metadata, @object, @status, @balance_transaction, @balance_transaction_present, @description, @description_present, @expected_availability_date, @expected_availability_date_present, @failure_code, @failure_code_present, @failure_message, @failure_message_present, @source, @source_present, @statement_descriptor, @statement_descriptor_present, @transfer_group, @transfer_group_present)
  end
end
