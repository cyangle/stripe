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
  # As a [card issuer](https://stripe.com/docs/issuing), you can dispute transactions that the cardholder does not recognize, suspects to be fraudulent, or has other issues with.  Related guide: [Disputing Transactions](https://stripe.com/docs/issuing/purchases/disputes)
  class IssuingDispute
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

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
    MAX_LENGTH_FOR_ID = 5000

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter livemode : Bool? = nil

    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter metadata : Hash(String, String)? = nil

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter object : String? = nil
    ERROR_MESSAGE_FOR_OBJECT = "invalid value for \"object\", must be one of [issuing.dispute]."
    VALID_VALUES_FOR_OBJECT  = String.static_array("issuing.dispute")

    # Current status of the dispute.
    @[JSON::Field(key: "status", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter status : String? = nil
    ERROR_MESSAGE_FOR_STATUS = "invalid value for \"status\", must be one of [expired, lost, submitted, unsubmitted, won]."
    VALID_VALUES_FOR_STATUS  = String.static_array("expired", "lost", "submitted", "unsubmitted", "won")

    @[JSON::Field(key: "transaction", type: Stripe::IssuingDisputeTransaction?, default: nil, required: true, nullable: false, emit_null: false)]
    getter transaction : Stripe::IssuingDisputeTransaction? = nil

    # End of Required Properties

    # Optional Properties

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

      unless (_evidence = @evidence).nil?
        invalid_properties.concat(_evidence.list_invalid_properties_for("evidence")) if _evidence.is_a?(OpenApi::Validatable)
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
      invalid_properties.push("\"transaction\" is required and cannot be null") if @transaction.nil?

      unless (_transaction = @transaction).nil?
        invalid_properties.concat(_transaction.list_invalid_properties_for("transaction")) if _transaction.is_a?(OpenApi::Validatable)
      end
      unless (_balance_transactions = @balance_transactions).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "balance_transactions", container: _balance_transactions)) if _balance_transactions.is_a?(Array)
      end
      unless (_treasury = @treasury).nil?
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
      unless (_evidence = @evidence).nil?
        return false if _evidence.is_a?(OpenApi::Validatable) && !_evidence.valid?
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

      return false if @transaction.nil?
      unless (_transaction = @transaction).nil?
        return false if _transaction.is_a?(OpenApi::Validatable) && !_transaction.valid?
      end

      unless (_balance_transactions = @balance_transactions).nil?
        return false if _balance_transactions.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _balance_transactions)
      end

      unless (_treasury = @treasury).nil?
        return false if _treasury.is_a?(OpenApi::Validatable) && !_treasury.valid?
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
    # @param [Object] evidence Object to be assigned
    def evidence=(new_value : Stripe::IssuingDisputeEvidence?)
      raise ArgumentError.new("\"evidence\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @evidence = new_value
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
    # @param [Object] status Object to be assigned
    def status=(new_value : String?)
      raise ArgumentError.new("\"status\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::EnumValidator.validate("status", new_value, VALID_VALUES_FOR_STATUS)
      end

      @status = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transaction Object to be assigned
    def transaction=(new_value : Stripe::IssuingDisputeTransaction?)
      raise ArgumentError.new("\"transaction\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @transaction = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] balance_transactions Object to be assigned
    def balance_transactions=(new_value : Array(Stripe::BalanceTransaction)?)
      unless new_value.nil?
        OpenApi::ContainerValidator.validate(container: new_value) if new_value.is_a?(Array)
      end

      @balance_transactions = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] treasury Object to be assigned
    def treasury=(new_value : Stripe::IssuingDisputeTreasury1?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @treasury = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@amount, @created, @currency, @evidence, @id, @livemode, @metadata, @object, @status, @transaction, @balance_transactions, @balance_transactions_present, @treasury, @treasury_present)
  end
end
