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
  # Use [InboundTransfers](https://stripe.com/docs/treasury/moving-money/financial-accounts/into/inbound-transfers) to add funds to your [FinancialAccount](https://stripe.com/docs/api#financial_accounts) via a PaymentMethod that is owned by you. The funds will be transferred via an ACH debit.
  class TreasuryInboundTransfer
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Amount (in cents) transferred.
    @[JSON::Field(key: "amount", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter amount : Int64? = nil

    # Returns `true` if the InboundTransfer is able to be canceled.
    @[JSON::Field(key: "cancelable", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter cancelable : Bool? = nil

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter created : Int64? = nil

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[JSON::Field(key: "currency", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter currency : String? = nil

    # The FinancialAccount that received the funds.
    @[JSON::Field(key: "financial_account", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter financial_account : String? = nil
    MAX_LENGTH_FOR_FINANCIAL_ACCOUNT = 5000

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil
    MAX_LENGTH_FOR_ID = 5000

    @[JSON::Field(key: "linked_flows", type: Stripe::TreasuryInboundTransfersResourceInboundTransferResourceLinkedFlows?, default: nil, required: true, nullable: false, emit_null: false)]
    getter linked_flows : Stripe::TreasuryInboundTransfersResourceInboundTransferResourceLinkedFlows? = nil

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter livemode : Bool? = nil

    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter metadata : Hash(String, String)? = nil

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter object : String? = nil
    ERROR_MESSAGE_FOR_OBJECT = "invalid value for \"object\", must be one of [treasury.inbound_transfer]."
    VALID_VALUES_FOR_OBJECT  = String.static_array("treasury.inbound_transfer")

    # The origin payment method to be debited for an InboundTransfer.
    @[JSON::Field(key: "origin_payment_method", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter origin_payment_method : String? = nil
    MAX_LENGTH_FOR_ORIGIN_PAYMENT_METHOD = 5000

    # Statement descriptor shown when funds are debited from the source. Not all payment networks support `statement_descriptor`.
    @[JSON::Field(key: "statement_descriptor", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter statement_descriptor : String? = nil
    MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR = 5000

    # Status of the InboundTransfer: `processing`, `succeeded`, `failed`, and `canceled`. An InboundTransfer is `processing` if it is created and pending. The status changes to `succeeded` once the funds have been \"confirmed\" and a `transaction` is created and posted. The status changes to `failed` if the transfer fails.
    @[JSON::Field(key: "status", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter status : String? = nil
    ERROR_MESSAGE_FOR_STATUS = "invalid value for \"status\", must be one of [canceled, failed, processing, succeeded]."
    VALID_VALUES_FOR_STATUS  = String.static_array("canceled", "failed", "processing", "succeeded")

    @[JSON::Field(key: "status_transitions", type: Stripe::TreasuryInboundTransfersResourceInboundTransferResourceStatusTransitions?, default: nil, required: true, nullable: false, emit_null: false)]
    getter status_transitions : Stripe::TreasuryInboundTransfersResourceInboundTransferResourceStatusTransitions? = nil

    # End of Required Properties

    # Optional Properties

    # An arbitrary string attached to the object. Often useful for displaying to users.
    @[JSON::Field(key: "description", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: description.nil? && !description_present?)]
    getter description : String? = nil
    MAX_LENGTH_FOR_DESCRIPTION = 5000

    @[JSON::Field(ignore: true)]
    property? description_present : Bool = false

    @[JSON::Field(key: "failure_details", type: Stripe::TreasuryInboundTransferFailureDetails?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: failure_details.nil? && !failure_details_present?)]
    getter failure_details : Stripe::TreasuryInboundTransferFailureDetails? = nil

    @[JSON::Field(ignore: true)]
    property? failure_details_present : Bool = false

    # A [hosted transaction receipt](https://stripe.com/docs/treasury/moving-money/regulatory-receipts) URL that is provided when money movement is considered regulated under Stripe's money transmission licenses.
    @[JSON::Field(key: "hosted_regulatory_receipt_url", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: hosted_regulatory_receipt_url.nil? && !hosted_regulatory_receipt_url_present?)]
    getter hosted_regulatory_receipt_url : String? = nil
    MAX_LENGTH_FOR_HOSTED_REGULATORY_RECEIPT_URL = 5000

    @[JSON::Field(ignore: true)]
    property? hosted_regulatory_receipt_url_present : Bool = false

    @[JSON::Field(key: "origin_payment_method_details", type: Stripe::TreasuryInboundTransferOriginPaymentMethodDetails?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: origin_payment_method_details.nil? && !origin_payment_method_details_present?)]
    getter origin_payment_method_details : Stripe::TreasuryInboundTransferOriginPaymentMethodDetails? = nil

    @[JSON::Field(ignore: true)]
    property? origin_payment_method_details_present : Bool = false

    # Returns `true` if the funds for an InboundTransfer were returned after the InboundTransfer went to the `succeeded` state.
    @[JSON::Field(key: "returned", type: Bool?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: returned.nil? && !returned_present?)]
    getter returned : Bool? = nil

    @[JSON::Field(ignore: true)]
    property? returned_present : Bool = false

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
      @cancelable : Bool? = nil,
      @created : Int64? = nil,
      @currency : String? = nil,
      @financial_account : String? = nil,
      @id : String? = nil,
      @linked_flows : Stripe::TreasuryInboundTransfersResourceInboundTransferResourceLinkedFlows? = nil,
      @livemode : Bool? = nil,
      @metadata : Hash(String, String)? = nil,
      @object : String? = nil,
      @origin_payment_method : String? = nil,
      @statement_descriptor : String? = nil,
      @status : String? = nil,
      @status_transitions : Stripe::TreasuryInboundTransfersResourceInboundTransferResourceStatusTransitions? = nil,
      # Optional properties
      @description : String? = nil,
      @failure_details : Stripe::TreasuryInboundTransferFailureDetails? = nil,
      @hosted_regulatory_receipt_url : String? = nil,
      @origin_payment_method_details : Stripe::TreasuryInboundTransferOriginPaymentMethodDetails? = nil,
      @returned : Bool? = nil,
      @transaction : Stripe::TreasuryCreditReversalTransaction? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"amount\" is required and cannot be null") if @amount.nil?

      invalid_properties.push("\"cancelable\" is required and cannot be null") if @cancelable.nil?

      invalid_properties.push("\"created\" is required and cannot be null") if @created.nil?

      invalid_properties.push("\"currency\" is required and cannot be null") if @currency.nil?

      invalid_properties.push("\"financial_account\" is required and cannot be null") if @financial_account.nil?

      unless (_financial_account = @financial_account).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("financial_account", _financial_account.to_s.size, MAX_LENGTH_FOR_FINANCIAL_ACCOUNT)
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

      invalid_properties.push("\"metadata\" is required and cannot be null") if @metadata.nil?

      invalid_properties.push("\"object\" is required and cannot be null") if @object.nil?

      unless (_object = @object).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_OBJECT) unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end
      invalid_properties.push("\"origin_payment_method\" is required and cannot be null") if @origin_payment_method.nil?

      unless (_origin_payment_method = @origin_payment_method).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("origin_payment_method", _origin_payment_method.to_s.size, MAX_LENGTH_FOR_ORIGIN_PAYMENT_METHOD)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"statement_descriptor\" is required and cannot be null") if @statement_descriptor.nil?

      unless (_statement_descriptor = @statement_descriptor).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("statement_descriptor", _statement_descriptor.to_s.size, MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"status\" is required and cannot be null") if @status.nil?

      unless (_status = @status).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_STATUS) unless OpenApi::EnumValidator.valid?(_status, VALID_VALUES_FOR_STATUS)
      end
      invalid_properties.push("\"status_transitions\" is required and cannot be null") if @status_transitions.nil?

      unless (_status_transitions = @status_transitions).nil?
        invalid_properties.concat(_status_transitions.list_invalid_properties_for("status_transitions")) if _status_transitions.is_a?(OpenApi::Validatable)
      end
      unless (_description = @description).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("description", _description.to_s.size, MAX_LENGTH_FOR_DESCRIPTION)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_failure_details = @failure_details).nil?
        invalid_properties.concat(_failure_details.list_invalid_properties_for("failure_details")) if _failure_details.is_a?(OpenApi::Validatable)
      end
      unless (_hosted_regulatory_receipt_url = @hosted_regulatory_receipt_url).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("hosted_regulatory_receipt_url", _hosted_regulatory_receipt_url.to_s.size, MAX_LENGTH_FOR_HOSTED_REGULATORY_RECEIPT_URL)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_origin_payment_method_details = @origin_payment_method_details).nil?
        invalid_properties.concat(_origin_payment_method_details.list_invalid_properties_for("origin_payment_method_details")) if _origin_payment_method_details.is_a?(OpenApi::Validatable)
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

      return false if @cancelable.nil?

      return false if @created.nil?

      return false if @currency.nil?

      return false if @financial_account.nil?
      unless (_financial_account = @financial_account).nil?
        return false if _financial_account.to_s.size > MAX_LENGTH_FOR_FINANCIAL_ACCOUNT
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

      return false if @metadata.nil?

      return false if @object.nil?
      unless (_object = @object).nil?
        return false unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end

      return false if @origin_payment_method.nil?
      unless (_origin_payment_method = @origin_payment_method).nil?
        return false if _origin_payment_method.to_s.size > MAX_LENGTH_FOR_ORIGIN_PAYMENT_METHOD
      end

      return false if @statement_descriptor.nil?
      unless (_statement_descriptor = @statement_descriptor).nil?
        return false if _statement_descriptor.to_s.size > MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR
      end

      return false if @status.nil?
      unless (_status = @status).nil?
        return false unless OpenApi::EnumValidator.valid?(_status, VALID_VALUES_FOR_STATUS)
      end

      return false if @status_transitions.nil?
      unless (_status_transitions = @status_transitions).nil?
        return false if _status_transitions.is_a?(OpenApi::Validatable) && !_status_transitions.valid?
      end

      unless (_description = @description).nil?
        return false if _description.to_s.size > MAX_LENGTH_FOR_DESCRIPTION
      end

      unless (_failure_details = @failure_details).nil?
        return false if _failure_details.is_a?(OpenApi::Validatable) && !_failure_details.valid?
      end

      unless (_hosted_regulatory_receipt_url = @hosted_regulatory_receipt_url).nil?
        return false if _hosted_regulatory_receipt_url.to_s.size > MAX_LENGTH_FOR_HOSTED_REGULATORY_RECEIPT_URL
      end

      unless (_origin_payment_method_details = @origin_payment_method_details).nil?
        return false if _origin_payment_method_details.is_a?(OpenApi::Validatable) && !_origin_payment_method_details.valid?
      end

      unless (_transaction = @transaction).nil?
        return false if _transaction.is_a?(OpenApi::Validatable) && !_transaction.valid?
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
    # @param [Object] cancelable Object to be assigned
    def cancelable=(new_value : Bool?)
      raise ArgumentError.new("\"cancelable\" is required and cannot be null") if new_value.nil?

      @cancelable = new_value
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
    # @param [Object] financial_account Object to be assigned
    def financial_account=(new_value : String?)
      raise ArgumentError.new("\"financial_account\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("financial_account", new_value.to_s.size, MAX_LENGTH_FOR_FINANCIAL_ACCOUNT)
      end

      @financial_account = new_value
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
    # @param [Object] linked_flows Object to be assigned
    def linked_flows=(new_value : Stripe::TreasuryInboundTransfersResourceInboundTransferResourceLinkedFlows?)
      raise ArgumentError.new("\"linked_flows\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @linked_flows = new_value
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
    # @param [Object] origin_payment_method Object to be assigned
    def origin_payment_method=(new_value : String?)
      raise ArgumentError.new("\"origin_payment_method\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("origin_payment_method", new_value.to_s.size, MAX_LENGTH_FOR_ORIGIN_PAYMENT_METHOD)
      end

      @origin_payment_method = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] statement_descriptor Object to be assigned
    def statement_descriptor=(new_value : String?)
      raise ArgumentError.new("\"statement_descriptor\" is required and cannot be null") if new_value.nil?
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
    # @param [Object] status_transitions Object to be assigned
    def status_transitions=(new_value : Stripe::TreasuryInboundTransfersResourceInboundTransferResourceStatusTransitions?)
      raise ArgumentError.new("\"status_transitions\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @status_transitions = new_value
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
    # @param [Object] failure_details Object to be assigned
    def failure_details=(new_value : Stripe::TreasuryInboundTransferFailureDetails?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @failure_details = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] hosted_regulatory_receipt_url Object to be assigned
    def hosted_regulatory_receipt_url=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("hosted_regulatory_receipt_url", new_value.to_s.size, MAX_LENGTH_FOR_HOSTED_REGULATORY_RECEIPT_URL)
      end

      @hosted_regulatory_receipt_url = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] origin_payment_method_details Object to be assigned
    def origin_payment_method_details=(new_value : Stripe::TreasuryInboundTransferOriginPaymentMethodDetails?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @origin_payment_method_details = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] returned Object to be assigned
    def returned=(new_value : Bool?)
      @returned = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] transaction Object to be assigned
    def transaction=(new_value : Stripe::TreasuryCreditReversalTransaction?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @transaction = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@amount, @cancelable, @created, @currency, @financial_account, @id, @linked_flows, @livemode, @metadata, @object, @origin_payment_method, @statement_descriptor, @status, @status_transitions, @description, @description_present, @failure_details, @failure_details_present, @hosted_regulatory_receipt_url, @hosted_regulatory_receipt_url_present, @origin_payment_method_details, @origin_payment_method_details_present, @returned, @returned_present, @transaction, @transaction_present)
  end
end
