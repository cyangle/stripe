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
  # As a [card issuer](https://stripe.com/docs/issuing), you can dispute transactions that the cardholder does not recognize, suspects to be fraudulent, or has other issues with.  Related guide: [Disputing Transactions](https://stripe.com/docs/issuing/purchases/disputes)
  class IssuingDispute
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    # Disputed amount in the card's currency and in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal). Usually the amount of the `transaction`, but can differ (usually because of currency fluctuation).
    @[JSON::Field(key: "amount", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter amount : Int64? = nil

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter created : Int64? = nil

    # The currency the `transaction` was made in.
    @[JSON::Field(key: "currency", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter currency : String? = nil

    @[JSON::Field(key: "evidence", type: Stripe::IssuingDisputeEvidence?, default: nil, required: true, nullable: false, emit_null: false)]
    getter evidence : Stripe::IssuingDisputeEvidence? = nil

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter livemode : Bool? = nil

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter metadata : Hash(String, String)? = nil

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter object : String? = nil

    ENUM_VALIDATOR_FOR_OBJECT = OpenApi::EnumValidator.new("object", "String", ["issuing.dispute"])

    # Current status of the dispute.
    @[JSON::Field(key: "status", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter status : String? = nil

    ENUM_VALIDATOR_FOR_STATUS = OpenApi::EnumValidator.new("status", "String", ["expired", "lost", "submitted", "unsubmitted", "won"])

    @[JSON::Field(key: "transaction", type: Stripe::IssuingDisputeTransaction?, default: nil, required: true, nullable: false, emit_null: false)]
    getter transaction : Stripe::IssuingDisputeTransaction? = nil

    # Optional properties

    # List of balance transactions associated with the dispute.
    @[JSON::Field(key: "balance_transactions", type: Array(Stripe::BalanceTransaction)?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: balance_transactions.nil? && !balance_transactions_present?)]
    getter balance_transactions : Array(Stripe::BalanceTransaction)? = nil

    @[JSON::Field(ignore: true)]
    property? balance_transactions_present : Bool = false

    @[JSON::Field(key: "treasury", type: Stripe::IssuingDisputeTreasury1?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: treasury.nil? && !treasury_present?)]
    getter treasury : Stripe::IssuingDisputeTreasury1? = nil

    @[JSON::Field(ignore: true)]
    property? treasury_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @amount : Int64? = nil,
      @created : Int64? = nil,
      @currency : String? = nil,
      @evidence : Stripe::IssuingDisputeEvidence? = nil,
      @id : String? = nil,
      @livemode : Bool? = nil,
      @metadata : Hash(String, String)? = nil,
      @object : String? = nil,
      @status : String? = nil,
      @transaction : Stripe::IssuingDisputeTransaction? = nil,
      # Optional properties
      @balance_transactions : Array(Stripe::BalanceTransaction)? = nil,
      @treasury : Stripe::IssuingDisputeTreasury1? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      invalid_properties.push("\"amount\" is required and cannot be null") if @amount.nil?

      invalid_properties.push("\"created\" is required and cannot be null") if @created.nil?

      invalid_properties.push("\"currency\" is required and cannot be null") if @currency.nil?

      invalid_properties.push("\"evidence\" is required and cannot be null") if @evidence.nil?
      if _evidence = @evidence
        invalid_properties.concat(_evidence.list_invalid_properties_for("evidence")) if _evidence.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"id\" is required and cannot be null") if @id.nil?
      if _id = @id
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("id", _id.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"livemode\" is required and cannot be null") if @livemode.nil?

      invalid_properties.push("\"metadata\" is required and cannot be null") if @metadata.nil?

      invalid_properties.push(ENUM_VALIDATOR_FOR_OBJECT.error_message) unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)

      invalid_properties.push(ENUM_VALIDATOR_FOR_STATUS.error_message) unless ENUM_VALIDATOR_FOR_STATUS.valid?(@status, false)
      invalid_properties.push("\"transaction\" is required and cannot be null") if @transaction.nil?
      if _transaction = @transaction
        invalid_properties.concat(_transaction.list_invalid_properties_for("transaction")) if _transaction.is_a?(OpenApi::Validatable)
      end
      if _balance_transactions = @balance_transactions
        invalid_properties.concat(OpenApi::ArrayValidator.list_invalid_properties_for(key: "balance_transactions", array: _balance_transactions)) if _balance_transactions.is_a?(Array)
      end
      if _treasury = @treasury
        invalid_properties.concat(_treasury.list_invalid_properties_for("treasury")) if _treasury.is_a?(OpenApi::Validatable)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @amount.nil?

      return false if @created.nil?

      return false if @currency.nil?

      return false if @evidence.nil?
      if _evidence = @evidence
        return false if _evidence.is_a?(OpenApi::Validatable) && !_evidence.valid?
      end
      return false if @id.nil?
      if _id = @id
        return false if _id.to_s.size > 5000
      end
      return false if @livemode.nil?

      return false if @metadata.nil?

      return false unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      return false unless ENUM_VALIDATOR_FOR_STATUS.valid?(@status, false)
      return false if @transaction.nil?
      if _transaction = @transaction
        return false if _transaction.is_a?(OpenApi::Validatable) && !_transaction.valid?
      end
      if _balance_transactions = @balance_transactions
        return false if _balance_transactions.is_a?(Array) && !OpenApi::ArrayValidator.valid?(array: _balance_transactions)
      end
      if _treasury = @treasury
        return false if _treasury.is_a?(OpenApi::Validatable) && !_treasury.valid?
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
      @currency = _currency
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] evidence Object to be assigned
    def evidence=(evidence : Stripe::IssuingDisputeEvidence?)
      if evidence.nil?
        raise ArgumentError.new("\"evidence\" is required and cannot be null")
      end
      _evidence = evidence.not_nil!
      _evidence.validate if _evidence.is_a?(OpenApi::Validatable)
      @evidence = _evidence
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] id Object to be assigned
    def id=(id : String?)
      if id.nil?
        raise ArgumentError.new("\"id\" is required and cannot be null")
      end
      _id = id.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("id", _id.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

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
      ENUM_VALIDATOR_FOR_OBJECT.valid!(_object)
      @object = _object
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status : String?)
      if status.nil?
        raise ArgumentError.new("\"status\" is required and cannot be null")
      end
      _status = status.not_nil!
      ENUM_VALIDATOR_FOR_STATUS.valid!(_status)
      @status = _status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transaction Object to be assigned
    def transaction=(transaction : Stripe::IssuingDisputeTransaction?)
      if transaction.nil?
        raise ArgumentError.new("\"transaction\" is required and cannot be null")
      end
      _transaction = transaction.not_nil!
      _transaction.validate if _transaction.is_a?(OpenApi::Validatable)
      @transaction = _transaction
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] balance_transactions Object to be assigned
    def balance_transactions=(balance_transactions : Array(Stripe::BalanceTransaction)?)
      if balance_transactions.nil?
        return @balance_transactions = nil
      end
      _balance_transactions = balance_transactions.not_nil!
      OpenApi::ArrayValidator.validate(array: _balance_transactions) if _balance_transactions.is_a?(Array)
      @balance_transactions = _balance_transactions
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] treasury Object to be assigned
    def treasury=(treasury : Stripe::IssuingDisputeTreasury1?)
      if treasury.nil?
        return @treasury = nil
      end
      _treasury = treasury.not_nil!
      _treasury.validate if _treasury.is_a?(OpenApi::Validatable)
      @treasury = _treasury
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@amount, @created, @currency, @evidence, @id, @livemode, @metadata, @object, @status, @transaction, @balance_transactions, @balance_transactions_present, @treasury, @treasury_present)
  end
end
