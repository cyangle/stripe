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
  # You can reverse some [ReceivedDebits](https://stripe.com/docs/api#received_debits) depending on their network and source flow. Reversing a ReceivedDebit leads to the creation of a new object known as a DebitReversal.
  class TreasuryDebitReversal
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    # Amount (in cents) transferred.
    @[JSON::Field(key: "amount", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter amount : Int64? = nil

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter created : Int64? = nil

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[JSON::Field(key: "currency", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter currency : String? = nil

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter livemode : Bool? = nil

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter metadata : Hash(String, String)? = nil

    # The rails used to reverse the funds.
    @[JSON::Field(key: "network", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter network : String? = nil

    ENUM_VALIDATOR_FOR_NETWORK = EnumValidator.new("network", "String", ["ach", "card"])

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter object : String? = nil

    ENUM_VALIDATOR_FOR_OBJECT = EnumValidator.new("object", "String", ["treasury.debit_reversal"])

    # The ReceivedDebit being reversed.
    @[JSON::Field(key: "received_debit", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter received_debit : String? = nil

    # Status of the DebitReversal
    @[JSON::Field(key: "status", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter status : String? = nil

    ENUM_VALIDATOR_FOR_STATUS = EnumValidator.new("status", "String", ["failed", "processing", "succeeded"])

    @[JSON::Field(key: "status_transitions", type: Stripe::TreasuryReceivedDebitsResourceStatusTransitions?, default: nil, required: true, nullable: false, emit_null: false)]
    getter status_transitions : Stripe::TreasuryReceivedDebitsResourceStatusTransitions? = nil

    # Optional properties

    # The FinancialAccount to reverse funds from.
    @[JSON::Field(key: "financial_account", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: financial_account.nil? && !financial_account_present?)]
    getter financial_account : String? = nil

    @[JSON::Field(ignore: true)]
    property? financial_account_present : Bool = false

    # A [hosted transaction receipt](https://stripe.com/docs/treasury/moving-money/regulatory-receipts) URL that is provided when money movement is considered regulated under Stripe's money transmission licenses.
    @[JSON::Field(key: "hosted_regulatory_receipt_url", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: hosted_regulatory_receipt_url.nil? && !hosted_regulatory_receipt_url_present?)]
    getter hosted_regulatory_receipt_url : String? = nil

    @[JSON::Field(ignore: true)]
    property? hosted_regulatory_receipt_url_present : Bool = false

    @[JSON::Field(key: "linked_flows", type: Stripe::TreasuryDebitReversalLinkedFlows?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: linked_flows.nil? && !linked_flows_present?)]
    getter linked_flows : Stripe::TreasuryDebitReversalLinkedFlows? = nil

    @[JSON::Field(ignore: true)]
    property? linked_flows_present : Bool = false

    @[JSON::Field(key: "transaction", type: Stripe::TreasuryCreditReversalTransaction?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: transaction.nil? && !transaction_present?)]
    getter transaction : Stripe::TreasuryCreditReversalTransaction? = nil

    @[JSON::Field(ignore: true)]
    property? transaction_present : Bool = false

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
      @network : String? = nil,
      @object : String? = nil,
      @received_debit : String? = nil,
      @status : String? = nil,
      @status_transitions : Stripe::TreasuryReceivedDebitsResourceStatusTransitions? = nil,
      # Optional properties
      @financial_account : String? = nil,
      @hosted_regulatory_receipt_url : String? = nil,
      @linked_flows : Stripe::TreasuryDebitReversalLinkedFlows? = nil,
      @transaction : Stripe::TreasuryCreditReversalTransaction? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      invalid_properties.push("\"amount\" is required and cannot be null") if @amount.nil?

      invalid_properties.push("\"created\" is required and cannot be null") if @created.nil?

      invalid_properties.push("\"currency\" is required and cannot be null") if @currency.nil?

      invalid_properties.push("\"id\" is required and cannot be null") if @id.nil?
      if _id = @id
        if _id.to_s.size > 5000
          invalid_properties.push("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
        end
      end
      invalid_properties.push("\"livemode\" is required and cannot be null") if @livemode.nil?

      invalid_properties.push("\"metadata\" is required and cannot be null") if @metadata.nil?

      invalid_properties.push(ENUM_VALIDATOR_FOR_NETWORK.error_message) unless ENUM_VALIDATOR_FOR_NETWORK.valid?(@network, false)

      invalid_properties.push(ENUM_VALIDATOR_FOR_OBJECT.error_message) unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      invalid_properties.push("\"received_debit\" is required and cannot be null") if @received_debit.nil?
      if _received_debit = @received_debit
        if _received_debit.to_s.size > 5000
          invalid_properties.push("invalid value for \"received_debit\", the character length must be smaller than or equal to 5000.")
        end
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_STATUS.error_message) unless ENUM_VALIDATOR_FOR_STATUS.valid?(@status, false)
      invalid_properties.push("\"status_transitions\" is required and cannot be null") if @status_transitions.nil?
      if _status_transitions = @status_transitions
        if _status_transitions.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_status_transitions.list_invalid_properties_for("status_transitions"))
        end
      end
      if _financial_account = @financial_account
        if _financial_account.to_s.size > 5000
          invalid_properties.push("invalid value for \"financial_account\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _hosted_regulatory_receipt_url = @hosted_regulatory_receipt_url
        if _hosted_regulatory_receipt_url.to_s.size > 5000
          invalid_properties.push("invalid value for \"hosted_regulatory_receipt_url\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _linked_flows = @linked_flows
        if _linked_flows.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_linked_flows.list_invalid_properties_for("linked_flows"))
        end
      end
      if _transaction = @transaction
        if _transaction.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_transaction.list_invalid_properties_for("transaction"))
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

      return false if @id.nil?
      if _id = @id
        return false if _id.to_s.size > 5000
      end
      return false if @livemode.nil?

      return false if @metadata.nil?

      return false unless ENUM_VALIDATOR_FOR_NETWORK.valid?(@network, false)
      return false unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      return false if @received_debit.nil?
      if _received_debit = @received_debit
        return false if _received_debit.to_s.size > 5000
      end
      return false unless ENUM_VALIDATOR_FOR_STATUS.valid?(@status, false)
      return false if @status_transitions.nil?
      if _status_transitions = @status_transitions
        if _status_transitions.is_a?(OpenApi::Validatable)
          return false unless _status_transitions.valid?
        end
      end
      if _financial_account = @financial_account
        return false if _financial_account.to_s.size > 5000
      end
      if _hosted_regulatory_receipt_url = @hosted_regulatory_receipt_url
        return false if _hosted_regulatory_receipt_url.to_s.size > 5000
      end
      if _linked_flows = @linked_flows
        if _linked_flows.is_a?(OpenApi::Validatable)
          return false unless _linked_flows.valid?
        end
      end
      if _transaction = @transaction
        if _transaction.is_a?(OpenApi::Validatable)
          return false unless _transaction.valid?
        end
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
    # @param [Object] id Object to be assigned
    def id=(id : String?)
      if id.nil?
        raise ArgumentError.new("\"id\" is required and cannot be null")
      end
      _id = id.not_nil!
      if _id.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
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
    # @param [Object] network Object to be assigned
    def network=(network : String?)
      if network.nil?
        raise ArgumentError.new("\"network\" is required and cannot be null")
      end
      _network = network.not_nil!
      ENUM_VALIDATOR_FOR_NETWORK.valid!(_network)
      @network = _network
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
    # @param [Object] received_debit Object to be assigned
    def received_debit=(received_debit : String?)
      if received_debit.nil?
        raise ArgumentError.new("\"received_debit\" is required and cannot be null")
      end
      _received_debit = received_debit.not_nil!
      if _received_debit.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"received_debit\", the character length must be smaller than or equal to 5000.")
      end

      @received_debit = _received_debit
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
    # @param [Object] status_transitions Object to be assigned
    def status_transitions=(status_transitions : Stripe::TreasuryReceivedDebitsResourceStatusTransitions?)
      if status_transitions.nil?
        raise ArgumentError.new("\"status_transitions\" is required and cannot be null")
      end
      _status_transitions = status_transitions.not_nil!
      if _status_transitions.is_a?(OpenApi::Validatable)
        _status_transitions.validate
      end
      @status_transitions = _status_transitions
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] financial_account Object to be assigned
    def financial_account=(financial_account : String?)
      if financial_account.nil?
        return @financial_account = nil
      end
      _financial_account = financial_account.not_nil!
      if _financial_account.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"financial_account\", the character length must be smaller than or equal to 5000.")
      end

      @financial_account = _financial_account
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] hosted_regulatory_receipt_url Object to be assigned
    def hosted_regulatory_receipt_url=(hosted_regulatory_receipt_url : String?)
      if hosted_regulatory_receipt_url.nil?
        return @hosted_regulatory_receipt_url = nil
      end
      _hosted_regulatory_receipt_url = hosted_regulatory_receipt_url.not_nil!
      if _hosted_regulatory_receipt_url.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"hosted_regulatory_receipt_url\", the character length must be smaller than or equal to 5000.")
      end

      @hosted_regulatory_receipt_url = _hosted_regulatory_receipt_url
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] linked_flows Object to be assigned
    def linked_flows=(linked_flows : Stripe::TreasuryDebitReversalLinkedFlows?)
      if linked_flows.nil?
        return @linked_flows = nil
      end
      _linked_flows = linked_flows.not_nil!
      if _linked_flows.is_a?(OpenApi::Validatable)
        _linked_flows.validate
      end
      @linked_flows = _linked_flows
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transaction Object to be assigned
    def transaction=(transaction : Stripe::TreasuryCreditReversalTransaction?)
      if transaction.nil?
        return @transaction = nil
      end
      _transaction = transaction.not_nil!
      if _transaction.is_a?(OpenApi::Validatable)
        _transaction.validate
      end
      @transaction = _transaction
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@amount, @created, @currency, @id, @livemode, @metadata, @network, @object, @received_debit, @status, @status_transitions, @financial_account, @financial_account_present, @hosted_regulatory_receipt_url, @hosted_regulatory_receipt_url_present, @linked_flows, @linked_flows_present, @transaction, @transaction_present)
  end
end
