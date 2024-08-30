#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./treasury_outbound_payment_transaction"
require "./treasury_transactions_resource_balance_impact"
require "./treasury_transactions_resource_flow_details"

module Stripe
  # TransactionEntries represent individual units of money movements within a single [Transaction](https://stripe.com/docs/api#transactions).
  class TreasuryTransactionEntry
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "balance_impact", type: Stripe::TreasuryTransactionsResourceBalanceImpact?, default: nil, required: true, nullable: false, emit_null: false)]
    getter balance_impact : Stripe::TreasuryTransactionsResourceBalanceImpact? = nil

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter created : Int64? = nil

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[JSON::Field(key: "currency", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter currency : String? = nil

    # When the TransactionEntry will impact the FinancialAccount's balance.
    @[JSON::Field(key: "effective_at", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter effective_at : Int64? = nil

    # The FinancialAccount associated with this object.
    @[JSON::Field(key: "financial_account", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter financial_account : String? = nil
    MAX_LENGTH_FOR_FINANCIAL_ACCOUNT = 5000

    # Token of the flow associated with the TransactionEntry.
    @[JSON::Field(key: "flow", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter flow : String? = nil
    MAX_LENGTH_FOR_FLOW = 5000

    # Type of the flow associated with the TransactionEntry.
    @[JSON::Field(key: "flow_type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter flow_type : String? = nil
    ERROR_MESSAGE_FOR_FLOW_TYPE = "invalid value for \"flow_type\", must be one of [credit_reversal, debit_reversal, inbound_transfer, issuing_authorization, other, outbound_payment, outbound_transfer, received_credit, received_debit]."
    VALID_VALUES_FOR_FLOW_TYPE  = String.static_array("credit_reversal", "debit_reversal", "inbound_transfer", "issuing_authorization", "other", "outbound_payment", "outbound_transfer", "received_credit", "received_debit")

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil
    MAX_LENGTH_FOR_ID = 5000

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter livemode : Bool? = nil

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter object : String? = nil
    ERROR_MESSAGE_FOR_OBJECT = "invalid value for \"object\", must be one of [treasury.transaction_entry]."
    VALID_VALUES_FOR_OBJECT  = String.static_array("treasury.transaction_entry")

    @[JSON::Field(key: "transaction", type: Stripe::TreasuryOutboundPaymentTransaction?, default: nil, required: true, nullable: false, emit_null: false)]
    getter transaction : Stripe::TreasuryOutboundPaymentTransaction? = nil

    # The specific money movement that generated the TransactionEntry.
    @[JSON::Field(key: "type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter _type : String? = nil
    ERROR_MESSAGE_FOR__TYPE = "invalid value for \"_type\", must be one of [credit_reversal, credit_reversal_posting, debit_reversal, inbound_transfer, inbound_transfer_return, issuing_authorization_hold, issuing_authorization_release, other, outbound_payment, outbound_payment_cancellation, outbound_payment_failure, outbound_payment_posting, outbound_payment_return, outbound_transfer, outbound_transfer_cancellation, outbound_transfer_failure, outbound_transfer_posting, outbound_transfer_return, received_credit, received_debit]."
    VALID_VALUES_FOR__TYPE  = String.static_array("credit_reversal", "credit_reversal_posting", "debit_reversal", "inbound_transfer", "inbound_transfer_return", "issuing_authorization_hold", "issuing_authorization_release", "other", "outbound_payment", "outbound_payment_cancellation", "outbound_payment_failure", "outbound_payment_posting", "outbound_payment_return", "outbound_transfer", "outbound_transfer_cancellation", "outbound_transfer_failure", "outbound_transfer_posting", "outbound_transfer_return", "received_credit", "received_debit")

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "flow_details", type: Stripe::TreasuryTransactionsResourceFlowDetails?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: flow_details.nil? && !flow_details_present?)]
    getter flow_details : Stripe::TreasuryTransactionsResourceFlowDetails? = nil

    @[JSON::Field(ignore: true)]
    property? flow_details_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @balance_impact : Stripe::TreasuryTransactionsResourceBalanceImpact? = nil,
      @created : Int64? = nil,
      @currency : String? = nil,
      @effective_at : Int64? = nil,
      @financial_account : String? = nil,
      @flow : String? = nil,
      @flow_type : String? = nil,
      @id : String? = nil,
      @livemode : Bool? = nil,
      @object : String? = nil,
      @transaction : Stripe::TreasuryOutboundPaymentTransaction? = nil,
      @_type : String? = nil,
      # Optional properties
      @flow_details : Stripe::TreasuryTransactionsResourceFlowDetails? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"balance_impact\" is required and cannot be null") if @balance_impact.nil?

      unless (_balance_impact = @balance_impact).nil?
        invalid_properties.concat(_balance_impact.list_invalid_properties_for("balance_impact")) if _balance_impact.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"created\" is required and cannot be null") if @created.nil?

      invalid_properties.push("\"currency\" is required and cannot be null") if @currency.nil?

      invalid_properties.push("\"effective_at\" is required and cannot be null") if @effective_at.nil?

      invalid_properties.push("\"financial_account\" is required and cannot be null") if @financial_account.nil?

      unless (_financial_account = @financial_account).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("financial_account", _financial_account.to_s.size, MAX_LENGTH_FOR_FINANCIAL_ACCOUNT)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_flow = @flow).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("flow", _flow.to_s.size, MAX_LENGTH_FOR_FLOW)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"flow_type\" is required and cannot be null") if @flow_type.nil?

      unless (_flow_type = @flow_type).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_FLOW_TYPE) unless OpenApi::EnumValidator.valid?(_flow_type, VALID_VALUES_FOR_FLOW_TYPE)
      end
      invalid_properties.push("\"id\" is required and cannot be null") if @id.nil?

      unless (_id = @id).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("id", _id.to_s.size, MAX_LENGTH_FOR_ID)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"livemode\" is required and cannot be null") if @livemode.nil?

      invalid_properties.push("\"object\" is required and cannot be null") if @object.nil?

      unless (_object = @object).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_OBJECT) unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end
      invalid_properties.push("\"transaction\" is required and cannot be null") if @transaction.nil?

      unless (_transaction = @transaction).nil?
        invalid_properties.concat(_transaction.list_invalid_properties_for("transaction")) if _transaction.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"_type\" is required and cannot be null") if @_type.nil?

      unless (__type = @_type).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR__TYPE) unless OpenApi::EnumValidator.valid?(__type, VALID_VALUES_FOR__TYPE)
      end
      unless (_flow_details = @flow_details).nil?
        invalid_properties.concat(_flow_details.list_invalid_properties_for("flow_details")) if _flow_details.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @balance_impact.nil?
      unless (_balance_impact = @balance_impact).nil?
        return false if _balance_impact.is_a?(OpenApi::Validatable) && !_balance_impact.valid?
      end

      return false if @created.nil?

      return false if @currency.nil?

      return false if @effective_at.nil?

      return false if @financial_account.nil?
      unless (_financial_account = @financial_account).nil?
        return false if _financial_account.to_s.size > MAX_LENGTH_FOR_FINANCIAL_ACCOUNT
      end

      unless (_flow = @flow).nil?
        return false if _flow.to_s.size > MAX_LENGTH_FOR_FLOW
      end

      return false if @flow_type.nil?
      unless (_flow_type = @flow_type).nil?
        return false unless OpenApi::EnumValidator.valid?(_flow_type, VALID_VALUES_FOR_FLOW_TYPE)
      end

      return false if @id.nil?
      unless (_id = @id).nil?
        return false if _id.to_s.size > MAX_LENGTH_FOR_ID
      end

      return false if @livemode.nil?

      return false if @object.nil?
      unless (_object = @object).nil?
        return false unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end

      return false if @transaction.nil?
      unless (_transaction = @transaction).nil?
        return false if _transaction.is_a?(OpenApi::Validatable) && !_transaction.valid?
      end

      return false if @_type.nil?
      unless (__type = @_type).nil?
        return false unless OpenApi::EnumValidator.valid?(__type, VALID_VALUES_FOR__TYPE)
      end

      unless (_flow_details = @flow_details).nil?
        return false if _flow_details.is_a?(OpenApi::Validatable) && !_flow_details.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] balance_impact Object to be assigned
    def balance_impact=(new_value : Stripe::TreasuryTransactionsResourceBalanceImpact?)
      raise ArgumentError.new("\"balance_impact\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @balance_impact = new_value
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
    # @param [Object] effective_at Object to be assigned
    def effective_at=(new_value : Int64?)
      raise ArgumentError.new("\"effective_at\" is required and cannot be null") if new_value.nil?

      @effective_at = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] financial_account Object to be assigned
    def financial_account=(new_value : String?)
      raise ArgumentError.new("\"financial_account\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("financial_account", new_value.to_s.size, MAX_LENGTH_FOR_FINANCIAL_ACCOUNT)
      end

      @financial_account = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] flow Object to be assigned
    def flow=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("flow", new_value.to_s.size, MAX_LENGTH_FOR_FLOW)
      end

      @flow = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] flow_type Object to be assigned
    def flow_type=(new_value : String?)
      raise ArgumentError.new("\"flow_type\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::EnumValidator.validate("flow_type", new_value, VALID_VALUES_FOR_FLOW_TYPE)
      end

      @flow_type = new_value
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
    # @param [Object] object Object to be assigned
    def object=(new_value : String?)
      raise ArgumentError.new("\"object\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::EnumValidator.validate("object", new_value, VALID_VALUES_FOR_OBJECT)
      end

      @object = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transaction Object to be assigned
    def transaction=(new_value : Stripe::TreasuryOutboundPaymentTransaction?)
      raise ArgumentError.new("\"transaction\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @transaction = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(new_value : String?)
      raise ArgumentError.new("\"_type\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::EnumValidator.validate("_type", new_value, VALID_VALUES_FOR__TYPE)
      end

      @_type = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] flow_details Object to be assigned
    def flow_details=(new_value : Stripe::TreasuryTransactionsResourceFlowDetails?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @flow_details = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@balance_impact, @created, @currency, @effective_at, @financial_account, @flow, @flow_type, @id, @livemode, @object, @transaction, @_type, @flow_details, @flow_details_present)
  end
end
