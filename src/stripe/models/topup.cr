#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./topup_balance_transaction"
require "./topup_source"

module Stripe
  # To top up your Stripe balance, you create a top-up object. You can retrieve individual top-ups, as well as list all top-ups. Top-ups are identified by a unique, random ID.  Related guide: [Topping up your platform account](https://stripe.com/docs/connect/top-ups)
  class Topup
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Amount transferred.
    @[JSON::Field(key: "amount", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter amount : Int64? = nil

    @[JSON::Field(key: "balance_transaction", type: Stripe::TopupBalanceTransaction?, default: nil, required: true, nullable: true, emit_null: true)]
    getter balance_transaction : Stripe::TopupBalanceTransaction? = nil

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter created : Int64? = nil

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[JSON::Field(key: "currency", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter currency : String? = nil
    MAX_LENGTH_FOR_CURRENCY = 5000

    # An arbitrary string attached to the object. Often useful for displaying to users.
    @[JSON::Field(key: "description", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter description : String? = nil
    MAX_LENGTH_FOR_DESCRIPTION = 5000

    # Date the funds are expected to arrive in your Stripe account for payouts. This factors in delays like weekends or bank holidays. May not be specified depending on status of top-up.
    @[JSON::Field(key: "expected_availability_date", type: Int64?, default: nil, required: true, nullable: true, emit_null: true)]
    getter expected_availability_date : Int64? = nil

    # Error code explaining reason for top-up failure if available (see [the errors section](https://stripe.com/docs/api#errors) for a list of codes).
    @[JSON::Field(key: "failure_code", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter failure_code : String? = nil
    MAX_LENGTH_FOR_FAILURE_CODE = 5000

    # Message to user further explaining reason for top-up failure if available.
    @[JSON::Field(key: "failure_message", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter failure_message : String? = nil
    MAX_LENGTH_FOR_FAILURE_MESSAGE = 5000

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

    @[JSON::Field(key: "source", type: Stripe::TopupSource?, default: nil, required: true, nullable: true, emit_null: true)]
    getter source : Stripe::TopupSource? = nil

    # Extra information about a top-up. This will appear on your source's bank statement. It must contain at least one letter.
    @[JSON::Field(key: "statement_descriptor", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter statement_descriptor : String? = nil
    MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR = 5000

    # The status of the top-up is either `canceled`, `failed`, `pending`, `reversed`, or `succeeded`.
    @[JSON::Field(key: "status", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter status : String? = nil
    ERROR_MESSAGE_FOR_STATUS = "invalid value for \"status\", must be one of [canceled, failed, pending, reversed, succeeded]."
    VALID_VALUES_FOR_STATUS  = String.static_array("canceled", "failed", "pending", "reversed", "succeeded")

    # A string that identifies this top-up as part of a group.
    @[JSON::Field(key: "transfer_group", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter transfer_group : String? = nil
    MAX_LENGTH_FOR_TRANSFER_GROUP = 5000

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @amount : Int64? = nil,
      @balance_transaction : Stripe::TopupBalanceTransaction? = nil,
      @created : Int64? = nil,
      @currency : String? = nil,
      @description : String? = nil,
      @expected_availability_date : Int64? = nil,
      @failure_code : String? = nil,
      @failure_message : String? = nil,
      @id : String? = nil,
      @livemode : Bool? = nil,
      @metadata : Hash(String, String)? = nil,
      @object : String? = nil,
      @source : Stripe::TopupSource? = nil,
      @statement_descriptor : String? = nil,
      @status : String? = nil,
      @transfer_group : String? = nil
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

      unless (_currency = @currency).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("currency", _currency.to_s.size, MAX_LENGTH_FOR_CURRENCY)
          invalid_properties.push(max_length_error)
        end
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
      unless (_source = @source).nil?
        invalid_properties.concat(_source.list_invalid_properties_for("source")) if _source.is_a?(OpenApi::Validatable)
      end
      unless (_statement_descriptor = @statement_descriptor).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("statement_descriptor", _statement_descriptor.to_s.size, MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"status\" is required and cannot be null") if @status.nil?

      unless (_status = @status).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_STATUS) unless OpenApi::EnumValidator.valid?(_status, VALID_VALUES_FOR_STATUS)
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

      unless (_balance_transaction = @balance_transaction).nil?
        return false if _balance_transaction.is_a?(OpenApi::Validatable) && !_balance_transaction.valid?
      end

      return false if @created.nil?

      return false if @currency.nil?
      unless (_currency = @currency).nil?
        return false if _currency.to_s.size > MAX_LENGTH_FOR_CURRENCY
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

      unless (_source = @source).nil?
        return false if _source.is_a?(OpenApi::Validatable) && !_source.valid?
      end

      unless (_statement_descriptor = @statement_descriptor).nil?
        return false if _statement_descriptor.to_s.size > MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR
      end

      return false if @status.nil?
      unless (_status = @status).nil?
        return false unless OpenApi::EnumValidator.valid?(_status, VALID_VALUES_FOR_STATUS)
      end

      unless (_transfer_group = @transfer_group).nil?
        return false if _transfer_group.to_s.size > MAX_LENGTH_FOR_TRANSFER_GROUP
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
    def balance_transaction=(new_value : Stripe::TopupBalanceTransaction?)
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
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("currency", new_value.to_s.size, MAX_LENGTH_FOR_CURRENCY)
      end

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
    # @param [Object] expected_availability_date Object to be assigned
    def expected_availability_date=(new_value : Int64?)
      @expected_availability_date = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] failure_code Object to be assigned
    def failure_code=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("failure_code", new_value.to_s.size, MAX_LENGTH_FOR_FAILURE_CODE)
      end

      @failure_code = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] failure_message Object to be assigned
    def failure_message=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("failure_message", new_value.to_s.size, MAX_LENGTH_FOR_FAILURE_MESSAGE)
      end

      @failure_message = new_value
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
    # @param [Object] source Object to be assigned
    def source=(new_value : Stripe::TopupSource?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @source = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] statement_descriptor Object to be assigned
    def statement_descriptor=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("statement_descriptor", new_value.to_s.size, MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR)
      end

      @statement_descriptor = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(new_value : String?)
      raise ArgumentError.new("\"status\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::EnumValidator.validate("status", new_value, VALID_VALUES_FOR_STATUS)
      end

      @status = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transfer_group Object to be assigned
    def transfer_group=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("transfer_group", new_value.to_s.size, MAX_LENGTH_FOR_TRANSFER_GROUP)
      end

      @transfer_group = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@amount, @balance_transaction, @created, @currency, @description, @expected_availability_date, @failure_code, @failure_message, @id, @livemode, @metadata, @object, @source, @statement_descriptor, @status, @transfer_group)
  end
end
