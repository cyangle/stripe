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
  # ReceivedDebits represent funds pulled from a [FinancialAccount](https://stripe.com/docs/api#financial_accounts). These are not initiated from the FinancialAccount.
  class TreasuryReceivedDebit
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Amount (in cents) transferred.
    @[JSON::Field(key: "amount", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter amount : Int64? = nil

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter created : Int64? = nil

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[JSON::Field(key: "currency", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter currency : String? = nil

    # An arbitrary string attached to the object. Often useful for displaying to users.
    @[JSON::Field(key: "description", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter description : String? = nil
    MAX_LENGTH_FOR_DESCRIPTION = 5000

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil
    MAX_LENGTH_FOR_ID = 5000

    @[JSON::Field(key: "linked_flows", type: Stripe::TreasuryReceivedDebitsResourceLinkedFlows?, default: nil, required: true, nullable: false, emit_null: false)]
    getter linked_flows : Stripe::TreasuryReceivedDebitsResourceLinkedFlows? = nil

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter livemode : Bool? = nil

    # The network used for the ReceivedDebit.
    @[JSON::Field(key: "network", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter network : String? = nil
    ERROR_MESSAGE_FOR_NETWORK = "invalid value for \"network\", must be one of [ach, card, stripe]."
    VALID_VALUES_FOR_NETWORK  = String.static_array("ach", "card", "stripe")

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter object : String? = nil
    ERROR_MESSAGE_FOR_OBJECT = "invalid value for \"object\", must be one of [treasury.received_debit]."
    VALID_VALUES_FOR_OBJECT  = String.static_array("treasury.received_debit")

    # Status of the ReceivedDebit. ReceivedDebits are created with a status of either `succeeded` (approved) or `failed` (declined). The failure reason can be found under the `failure_code`.
    @[JSON::Field(key: "status", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter status : String? = nil
    ERROR_MESSAGE_FOR_STATUS = "invalid value for \"status\", must be one of [failed, succeeded]."
    VALID_VALUES_FOR_STATUS  = String.static_array("failed", "succeeded")

    # End of Required Properties

    # Optional Properties

    # Reason for the failure. A ReceivedDebit might fail because the FinancialAccount doesn't have sufficient funds, is closed, or is frozen.
    @[JSON::Field(key: "failure_code", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: failure_code.nil? && !failure_code_present?)]
    getter failure_code : String? = nil
    ERROR_MESSAGE_FOR_FAILURE_CODE = "invalid value for \"failure_code\", must be one of [account_closed, account_frozen, insufficient_funds, other]."
    VALID_VALUES_FOR_FAILURE_CODE  = String.static_array("account_closed", "account_frozen", "insufficient_funds", "other")

    @[JSON::Field(ignore: true)]
    property? failure_code_present : Bool = false

    # The FinancialAccount that funds were pulled from.
    @[JSON::Field(key: "financial_account", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: financial_account.nil? && !financial_account_present?)]
    getter financial_account : String? = nil
    MAX_LENGTH_FOR_FINANCIAL_ACCOUNT = 5000

    @[JSON::Field(ignore: true)]
    property? financial_account_present : Bool = false

    # A [hosted transaction receipt](https://stripe.com/docs/treasury/moving-money/regulatory-receipts) URL that is provided when money movement is considered regulated under Stripe's money transmission licenses.
    @[JSON::Field(key: "hosted_regulatory_receipt_url", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: hosted_regulatory_receipt_url.nil? && !hosted_regulatory_receipt_url_present?)]
    getter hosted_regulatory_receipt_url : String? = nil
    MAX_LENGTH_FOR_HOSTED_REGULATORY_RECEIPT_URL = 5000

    @[JSON::Field(ignore: true)]
    property? hosted_regulatory_receipt_url_present : Bool = false

    @[JSON::Field(key: "initiating_payment_method_details", type: Stripe::TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetails?, default: nil, required: false, nullable: false, emit_null: false)]
    getter initiating_payment_method_details : Stripe::TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetails? = nil

    @[JSON::Field(key: "reversal_details", type: Stripe::TreasuryReceivedDebitReversalDetails?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: reversal_details.nil? && !reversal_details_present?)]
    getter reversal_details : Stripe::TreasuryReceivedDebitReversalDetails? = nil

    @[JSON::Field(ignore: true)]
    property? reversal_details_present : Bool = false

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
      @description : String? = nil,
      @id : String? = nil,
      @linked_flows : Stripe::TreasuryReceivedDebitsResourceLinkedFlows? = nil,
      @livemode : Bool? = nil,
      @network : String? = nil,
      @object : String? = nil,
      @status : String? = nil,
      # Optional properties
      @failure_code : String? = nil,
      @financial_account : String? = nil,
      @hosted_regulatory_receipt_url : String? = nil,
      @initiating_payment_method_details : Stripe::TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetails? = nil,
      @reversal_details : Stripe::TreasuryReceivedDebitReversalDetails? = nil,
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

      invalid_properties.push("\"description\" is required and cannot be null") if @description.nil?

      unless (_description = @description).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("description", _description.to_s.size, MAX_LENGTH_FOR_DESCRIPTION)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"id\" is required and cannot be null") if @id.nil?

      unless (_id = @id).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("id", _id.to_s.size, MAX_LENGTH_FOR_ID)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"linked_flows\" is required and cannot be null") if @linked_flows.nil?

      unless (_linked_flows = @linked_flows).nil?
        invalid_properties.concat(_linked_flows.list_invalid_properties_for("linked_flows")) if _linked_flows.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"livemode\" is required and cannot be null") if @livemode.nil?

      invalid_properties.push("\"object\" is required and cannot be null") if @object.nil?

      unless (_object = @object).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_OBJECT) unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end
      unless (_failure_code = @failure_code).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_FAILURE_CODE) unless OpenApi::EnumValidator.valid?(_failure_code, VALID_VALUES_FOR_FAILURE_CODE)
      end
      unless (_financial_account = @financial_account).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("financial_account", _financial_account.to_s.size, MAX_LENGTH_FOR_FINANCIAL_ACCOUNT)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_hosted_regulatory_receipt_url = @hosted_regulatory_receipt_url).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("hosted_regulatory_receipt_url", _hosted_regulatory_receipt_url.to_s.size, MAX_LENGTH_FOR_HOSTED_REGULATORY_RECEIPT_URL)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_initiating_payment_method_details = @initiating_payment_method_details).nil?
        invalid_properties.concat(_initiating_payment_method_details.list_invalid_properties_for("initiating_payment_method_details")) if _initiating_payment_method_details.is_a?(OpenApi::Validatable)
      end
      unless (_reversal_details = @reversal_details).nil?
        invalid_properties.concat(_reversal_details.list_invalid_properties_for("reversal_details")) if _reversal_details.is_a?(OpenApi::Validatable)
      end
      unless (_transaction = @transaction).nil?
        invalid_properties.concat(_transaction.list_invalid_properties_for("transaction")) if _transaction.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @amount.nil?

      return false if @created.nil?

      return false if @currency.nil?

      return false if @description.nil?
      unless (_description = @description).nil?
        return false if _description.to_s.size > MAX_LENGTH_FOR_DESCRIPTION
      end

      return false if @id.nil?
      unless (_id = @id).nil?
        return false if _id.to_s.size > MAX_LENGTH_FOR_ID
      end

      return false if @linked_flows.nil?
      unless (_linked_flows = @linked_flows).nil?
        return false if _linked_flows.is_a?(OpenApi::Validatable) && !_linked_flows.valid?
      end

      return false if @livemode.nil?

      return false if @object.nil?
      unless (_object = @object).nil?
        return false unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end

      unless (_failure_code = @failure_code).nil?
        return false unless OpenApi::EnumValidator.valid?(_failure_code, VALID_VALUES_FOR_FAILURE_CODE)
      end

      unless (_financial_account = @financial_account).nil?
        return false if _financial_account.to_s.size > MAX_LENGTH_FOR_FINANCIAL_ACCOUNT
      end

      unless (_hosted_regulatory_receipt_url = @hosted_regulatory_receipt_url).nil?
        return false if _hosted_regulatory_receipt_url.to_s.size > MAX_LENGTH_FOR_HOSTED_REGULATORY_RECEIPT_URL
      end

      unless (_initiating_payment_method_details = @initiating_payment_method_details).nil?
        return false if _initiating_payment_method_details.is_a?(OpenApi::Validatable) && !_initiating_payment_method_details.valid?
      end

      unless (_reversal_details = @reversal_details).nil?
        return false if _reversal_details.is_a?(OpenApi::Validatable) && !_reversal_details.valid?
      end

      unless (_transaction = @transaction).nil?
        return false if _transaction.is_a?(OpenApi::Validatable) && !_transaction.valid?
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
    # @param [Object] description Object to be assigned
    def description=(description : String?)
      if description.nil?
        raise ArgumentError.new("\"description\" is required and cannot be null")
      end
      _description = description.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("description", _description.to_s.size, MAX_LENGTH_FOR_DESCRIPTION)
      @description = _description
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
    # @param [Object] linked_flows Object to be assigned
    def linked_flows=(linked_flows : Stripe::TreasuryReceivedDebitsResourceLinkedFlows?)
      if linked_flows.nil?
        raise ArgumentError.new("\"linked_flows\" is required and cannot be null")
      end
      _linked_flows = linked_flows.not_nil!
      _linked_flows.validate if _linked_flows.is_a?(OpenApi::Validatable)
      @linked_flows = _linked_flows
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
    # @param [Object] network Object to be assigned
    def network=(network : String?)
      @network = network
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
      @status = status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] failure_code Object to be assigned
    def failure_code=(failure_code : String?)
      if failure_code.nil?
        return @failure_code = nil
      end
      _failure_code = failure_code.not_nil!
      OpenApi::EnumValidator.validate("failure_code", _failure_code, VALID_VALUES_FOR_FAILURE_CODE)
      @failure_code = _failure_code
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] financial_account Object to be assigned
    def financial_account=(financial_account : String?)
      if financial_account.nil?
        return @financial_account = nil
      end
      _financial_account = financial_account.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("financial_account", _financial_account.to_s.size, MAX_LENGTH_FOR_FINANCIAL_ACCOUNT)
      @financial_account = _financial_account
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] hosted_regulatory_receipt_url Object to be assigned
    def hosted_regulatory_receipt_url=(hosted_regulatory_receipt_url : String?)
      if hosted_regulatory_receipt_url.nil?
        return @hosted_regulatory_receipt_url = nil
      end
      _hosted_regulatory_receipt_url = hosted_regulatory_receipt_url.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("hosted_regulatory_receipt_url", _hosted_regulatory_receipt_url.to_s.size, MAX_LENGTH_FOR_HOSTED_REGULATORY_RECEIPT_URL)
      @hosted_regulatory_receipt_url = _hosted_regulatory_receipt_url
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] initiating_payment_method_details Object to be assigned
    def initiating_payment_method_details=(initiating_payment_method_details : Stripe::TreasurySharedResourceInitiatingPaymentMethodDetailsInitiatingPaymentMethodDetails?)
      if initiating_payment_method_details.nil?
        return @initiating_payment_method_details = nil
      end
      _initiating_payment_method_details = initiating_payment_method_details.not_nil!
      _initiating_payment_method_details.validate if _initiating_payment_method_details.is_a?(OpenApi::Validatable)
      @initiating_payment_method_details = _initiating_payment_method_details
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] reversal_details Object to be assigned
    def reversal_details=(reversal_details : Stripe::TreasuryReceivedDebitReversalDetails?)
      if reversal_details.nil?
        return @reversal_details = nil
      end
      _reversal_details = reversal_details.not_nil!
      _reversal_details.validate if _reversal_details.is_a?(OpenApi::Validatable)
      @reversal_details = _reversal_details
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transaction Object to be assigned
    def transaction=(transaction : Stripe::TreasuryCreditReversalTransaction?)
      if transaction.nil?
        return @transaction = nil
      end
      _transaction = transaction.not_nil!
      _transaction.validate if _transaction.is_a?(OpenApi::Validatable)
      @transaction = _transaction
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@amount, @created, @currency, @description, @id, @linked_flows, @livemode, @network, @object, @status, @failure_code, @failure_code_present, @financial_account, @financial_account_present, @hosted_regulatory_receipt_url, @hosted_regulatory_receipt_url_present, @initiating_payment_method_details, @reversal_details, @reversal_details_present, @transaction, @transaction_present)
  end
end
