#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-11-15
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module Stripe
  # A `Payout` object is created when you receive funds from Stripe, or when you initiate a payout to either a bank account or debit card of a [connected Stripe account](/docs/connect/bank-debit-card-payouts). You can retrieve individual payouts, as well as list all payouts. Payouts are made on [varying schedules](/docs/connect/manage-payout-schedule), depending on your country and industry.  Related guide: [Receiving Payouts](https://stripe.com/docs/payouts).
  class Payout
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Amount (in %s) to be transferred to your bank account or debit card.
    @[JSON::Field(key: "amount", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter amount : Int64? = nil

    # Date the payout is expected to arrive in the bank. This factors in delays like weekends or bank holidays.
    @[JSON::Field(key: "arrival_date", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter arrival_date : Int64? = nil

    # Returns `true` if the payout was created by an [automated payout schedule](https://stripe.com/docs/payouts#payout-schedule), and `false` if it was [requested manually](https://stripe.com/docs/payouts#manual-payouts).
    @[JSON::Field(key: "automatic", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter automatic : Bool? = nil

    # Time at which the object was created. Measured in seconds since the Unix epoch.
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

    # The method used to send this payout, which can be `standard` or `instant`. `instant` is only supported for payouts to debit cards. (See [Instant payouts for marketplaces](https://stripe.com/blog/instant-payouts-for-marketplaces) for more information.)
    @[JSON::Field(key: "method", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter method : String? = nil
    MAX_LENGTH_FOR_METHOD = 5000

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter object : String? = nil
    ERROR_MESSAGE_FOR_OBJECT = "invalid value for \"object\", must be one of [payout]."
    VALID_VALUES_FOR_OBJECT  = String.static_array("payout")

    # The source balance this payout came from. One of `card`, `fpx`, or `bank_account`.
    @[JSON::Field(key: "source_type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter source_type : String? = nil
    MAX_LENGTH_FOR_SOURCE_TYPE = 5000

    # Current status of the payout: `paid`, `pending`, `in_transit`, `canceled` or `failed`. A payout is `pending` until it is submitted to the bank, when it becomes `in_transit`. The status then changes to `paid` if the transaction goes through, or to `failed` or `canceled` (within 5 business days). Some failed payouts may initially show as `paid` but then change to `failed`.
    @[JSON::Field(key: "status", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter status : String? = nil
    MAX_LENGTH_FOR_STATUS = 5000

    # Can be `bank_account` or `card`.
    @[JSON::Field(key: "type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter _type : String? = nil
    ERROR_MESSAGE_FOR__TYPE = "invalid value for \"_type\", must be one of [bank_account, card]."
    VALID_VALUES_FOR__TYPE  = String.static_array("bank_account", "card")

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "balance_transaction", type: Stripe::PayoutBalanceTransaction?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: balance_transaction.nil? && !balance_transaction_present?)]
    getter balance_transaction : Stripe::PayoutBalanceTransaction? = nil

    @[JSON::Field(ignore: true)]
    property? balance_transaction_present : Bool = false

    # An arbitrary string attached to the object. Often useful for displaying to users.
    @[JSON::Field(key: "description", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: description.nil? && !description_present?)]
    getter description : String? = nil
    MAX_LENGTH_FOR_DESCRIPTION = 5000

    @[JSON::Field(ignore: true)]
    property? description_present : Bool = false

    @[JSON::Field(key: "destination", type: Stripe::PayoutDestination?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: destination.nil? && !destination_present?)]
    getter destination : Stripe::PayoutDestination? = nil

    @[JSON::Field(ignore: true)]
    property? destination_present : Bool = false

    @[JSON::Field(key: "failure_balance_transaction", type: Stripe::PayoutFailureBalanceTransaction?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: failure_balance_transaction.nil? && !failure_balance_transaction_present?)]
    getter failure_balance_transaction : Stripe::PayoutFailureBalanceTransaction? = nil

    @[JSON::Field(ignore: true)]
    property? failure_balance_transaction_present : Bool = false

    # Error code explaining reason for payout failure if available. See [Types of payout failures](https://stripe.com/docs/api#payout_failures) for a list of failure codes.
    @[JSON::Field(key: "failure_code", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: failure_code.nil? && !failure_code_present?)]
    getter failure_code : String? = nil
    MAX_LENGTH_FOR_FAILURE_CODE = 5000

    @[JSON::Field(ignore: true)]
    property? failure_code_present : Bool = false

    # Message to user further explaining reason for payout failure if available.
    @[JSON::Field(key: "failure_message", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: failure_message.nil? && !failure_message_present?)]
    getter failure_message : String? = nil
    MAX_LENGTH_FOR_FAILURE_MESSAGE = 5000

    @[JSON::Field(ignore: true)]
    property? failure_message_present : Bool = false

    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: metadata.nil? && !metadata_present?)]
    getter metadata : Hash(String, String)? = nil

    @[JSON::Field(ignore: true)]
    property? metadata_present : Bool = false

    @[JSON::Field(key: "original_payout", type: Stripe::PayoutOriginalPayout?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: original_payout.nil? && !original_payout_present?)]
    getter original_payout : Stripe::PayoutOriginalPayout? = nil

    @[JSON::Field(ignore: true)]
    property? original_payout_present : Bool = false

    @[JSON::Field(key: "reversed_by", type: Stripe::PayoutReversedBy?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: reversed_by.nil? && !reversed_by_present?)]
    getter reversed_by : Stripe::PayoutReversedBy? = nil

    @[JSON::Field(ignore: true)]
    property? reversed_by_present : Bool = false

    # Extra information about a payout to be displayed on the user's bank statement.
    @[JSON::Field(key: "statement_descriptor", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: statement_descriptor.nil? && !statement_descriptor_present?)]
    getter statement_descriptor : String? = nil
    MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR = 5000

    @[JSON::Field(ignore: true)]
    property? statement_descriptor_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @amount : Int64? = nil,
      @arrival_date : Int64? = nil,
      @automatic : Bool? = nil,
      @created : Int64? = nil,
      @currency : String? = nil,
      @id : String? = nil,
      @livemode : Bool? = nil,
      @method : String? = nil,
      @object : String? = nil,
      @source_type : String? = nil,
      @status : String? = nil,
      @_type : String? = nil,
      # Optional properties
      @balance_transaction : Stripe::PayoutBalanceTransaction? = nil,
      @description : String? = nil,
      @destination : Stripe::PayoutDestination? = nil,
      @failure_balance_transaction : Stripe::PayoutFailureBalanceTransaction? = nil,
      @failure_code : String? = nil,
      @failure_message : String? = nil,
      @metadata : Hash(String, String)? = nil,
      @original_payout : Stripe::PayoutOriginalPayout? = nil,
      @reversed_by : Stripe::PayoutReversedBy? = nil,
      @statement_descriptor : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"amount\" is required and cannot be null") if @amount.nil?

      invalid_properties.push("\"arrival_date\" is required and cannot be null") if @arrival_date.nil?

      invalid_properties.push("\"automatic\" is required and cannot be null") if @automatic.nil?

      invalid_properties.push("\"created\" is required and cannot be null") if @created.nil?

      invalid_properties.push("\"currency\" is required and cannot be null") if @currency.nil?

      invalid_properties.push("\"id\" is required and cannot be null") if @id.nil?

      unless (_id = @id).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("id", _id.to_s.size, MAX_LENGTH_FOR_ID)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"livemode\" is required and cannot be null") if @livemode.nil?

      invalid_properties.push("\"method\" is required and cannot be null") if @method.nil?

      unless (_method = @method).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("method", _method.to_s.size, MAX_LENGTH_FOR_METHOD)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"object\" is required and cannot be null") if @object.nil?

      unless (_object = @object).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_OBJECT) unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end
      invalid_properties.push("\"source_type\" is required and cannot be null") if @source_type.nil?

      unless (_source_type = @source_type).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("source_type", _source_type.to_s.size, MAX_LENGTH_FOR_SOURCE_TYPE)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"status\" is required and cannot be null") if @status.nil?

      unless (_status = @status).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("status", _status.to_s.size, MAX_LENGTH_FOR_STATUS)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_balance_transaction = @balance_transaction).nil?
        invalid_properties.concat(_balance_transaction.list_invalid_properties_for("balance_transaction")) if _balance_transaction.is_a?(OpenApi::Validatable)
      end
      unless (_description = @description).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("description", _description.to_s.size, MAX_LENGTH_FOR_DESCRIPTION)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_failure_balance_transaction = @failure_balance_transaction).nil?
        invalid_properties.concat(_failure_balance_transaction.list_invalid_properties_for("failure_balance_transaction")) if _failure_balance_transaction.is_a?(OpenApi::Validatable)
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

      unless (_original_payout = @original_payout).nil?
        invalid_properties.concat(_original_payout.list_invalid_properties_for("original_payout")) if _original_payout.is_a?(OpenApi::Validatable)
      end
      unless (_reversed_by = @reversed_by).nil?
        invalid_properties.concat(_reversed_by.list_invalid_properties_for("reversed_by")) if _reversed_by.is_a?(OpenApi::Validatable)
      end
      unless (_statement_descriptor = @statement_descriptor).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("statement_descriptor", _statement_descriptor.to_s.size, MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @amount.nil?

      return false if @arrival_date.nil?

      return false if @automatic.nil?

      return false if @created.nil?

      return false if @currency.nil?

      return false if @id.nil?
      unless (_id = @id).nil?
        return false if _id.to_s.size > MAX_LENGTH_FOR_ID
      end

      return false if @livemode.nil?

      return false if @method.nil?
      unless (_method = @method).nil?
        return false if _method.to_s.size > MAX_LENGTH_FOR_METHOD
      end

      return false if @object.nil?
      unless (_object = @object).nil?
        return false unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end

      return false if @source_type.nil?
      unless (_source_type = @source_type).nil?
        return false if _source_type.to_s.size > MAX_LENGTH_FOR_SOURCE_TYPE
      end

      return false if @status.nil?
      unless (_status = @status).nil?
        return false if _status.to_s.size > MAX_LENGTH_FOR_STATUS
      end

      unless (_balance_transaction = @balance_transaction).nil?
        return false if _balance_transaction.is_a?(OpenApi::Validatable) && !_balance_transaction.valid?
      end

      unless (_description = @description).nil?
        return false if _description.to_s.size > MAX_LENGTH_FOR_DESCRIPTION
      end

      unless (_failure_balance_transaction = @failure_balance_transaction).nil?
        return false if _failure_balance_transaction.is_a?(OpenApi::Validatable) && !_failure_balance_transaction.valid?
      end

      unless (_failure_code = @failure_code).nil?
        return false if _failure_code.to_s.size > MAX_LENGTH_FOR_FAILURE_CODE
      end

      unless (_failure_message = @failure_message).nil?
        return false if _failure_message.to_s.size > MAX_LENGTH_FOR_FAILURE_MESSAGE
      end

      unless (_original_payout = @original_payout).nil?
        return false if _original_payout.is_a?(OpenApi::Validatable) && !_original_payout.valid?
      end

      unless (_reversed_by = @reversed_by).nil?
        return false if _reversed_by.is_a?(OpenApi::Validatable) && !_reversed_by.valid?
      end

      unless (_statement_descriptor = @statement_descriptor).nil?
        return false if _statement_descriptor.to_s.size > MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR
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
    # @param [Object] arrival_date Object to be assigned
    def arrival_date=(new_value : Int64?)
      raise ArgumentError.new("\"arrival_date\" is required and cannot be null") if new_value.nil?

      @arrival_date = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] automatic Object to be assigned
    def automatic=(new_value : Bool?)
      raise ArgumentError.new("\"automatic\" is required and cannot be null") if new_value.nil?

      @automatic = new_value
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
    # @param [Object] method Object to be assigned
    def method=(new_value : String?)
      raise ArgumentError.new("\"method\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("method", new_value.to_s.size, MAX_LENGTH_FOR_METHOD)
      end

      @method = new_value
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
    # @param [Object] source_type Object to be assigned
    def source_type=(new_value : String?)
      raise ArgumentError.new("\"source_type\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("source_type", new_value.to_s.size, MAX_LENGTH_FOR_SOURCE_TYPE)
      end

      @source_type = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(new_value : String?)
      raise ArgumentError.new("\"status\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("status", new_value.to_s.size, MAX_LENGTH_FOR_STATUS)
      end

      @status = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(new_value : String?)
      @_type = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] balance_transaction Object to be assigned
    def balance_transaction=(new_value : Stripe::PayoutBalanceTransaction?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @balance_transaction = new_value
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
    def destination=(new_value : Stripe::PayoutDestination?)
      @destination = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] failure_balance_transaction Object to be assigned
    def failure_balance_transaction=(new_value : Stripe::PayoutFailureBalanceTransaction?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @failure_balance_transaction = new_value
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
    # @param [Object] metadata Object to be assigned
    def metadata=(new_value : Hash(String, String)?)
      @metadata = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] original_payout Object to be assigned
    def original_payout=(new_value : Stripe::PayoutOriginalPayout?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @original_payout = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] reversed_by Object to be assigned
    def reversed_by=(new_value : Stripe::PayoutReversedBy?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @reversed_by = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] statement_descriptor Object to be assigned
    def statement_descriptor=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("statement_descriptor", new_value.to_s.size, MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR)
      end

      @statement_descriptor = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@amount, @arrival_date, @automatic, @created, @currency, @id, @livemode, @method, @object, @source_type, @status, @_type, @balance_transaction, @balance_transaction_present, @description, @description_present, @destination, @destination_present, @failure_balance_transaction, @failure_balance_transaction_present, @failure_code, @failure_code_present, @failure_message, @failure_message_present, @metadata, @metadata_present, @original_payout, @original_payout_present, @reversed_by, @reversed_by_present, @statement_descriptor, @statement_descriptor_present)
  end
end
