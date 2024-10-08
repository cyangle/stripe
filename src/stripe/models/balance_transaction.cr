#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./balance_transaction_source1"
require "./fee"

module Stripe
  # Balance transactions represent funds moving through your Stripe account. Stripe creates them for every type of transaction that enters or leaves your Stripe account balance.  Related guide: [Balance transaction types](https://stripe.com/docs/reports/balance-transaction-types)
  class BalanceTransaction
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Gross amount of this transaction (in cents (or local equivalent)). A positive value represents funds charged to another party, and a negative value represents funds sent to another party.
    @[JSON::Field(key: "amount", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter amount : Int64? = nil

    # The date that the transaction's net funds become available in the Stripe balance.
    @[JSON::Field(key: "available_on", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter available_on : Int64? = nil

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter created : Int64? = nil

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[JSON::Field(key: "currency", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter currency : String? = nil

    # An arbitrary string attached to the object. Often useful for displaying to users.
    @[JSON::Field(key: "description", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter description : String? = nil
    MAX_LENGTH_FOR_DESCRIPTION = 5000

    # If applicable, this transaction uses an exchange rate. If money converts from currency A to currency B, then the `amount` in currency A, multipled by the `exchange_rate`, equals the `amount` in currency B. For example, if you charge a customer 10.00 EUR, the PaymentIntent's `amount` is `1000` and `currency` is `eur`. If this converts to 12.34 USD in your Stripe account, the BalanceTransaction's `amount` is `1234`, its `currency` is `usd`, and the `exchange_rate` is `1.234`.
    @[JSON::Field(key: "exchange_rate", type: Float64?, default: nil, required: true, nullable: true, emit_null: true)]
    getter exchange_rate : Float64? = nil

    # Fees (in cents (or local equivalent)) paid for this transaction. Represented as a positive integer when assessed.
    @[JSON::Field(key: "fee", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter fee : Int64? = nil

    # Detailed breakdown of fees (in cents (or local equivalent)) paid for this transaction.
    @[JSON::Field(key: "fee_details", type: Array(Stripe::Fee)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter fee_details : Array(Stripe::Fee)? = nil

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil
    MAX_LENGTH_FOR_ID = 5000

    # Net impact to a Stripe balance (in cents (or local equivalent)). A positive value represents incrementing a Stripe balance, and a negative value decrementing a Stripe balance. You can calculate the net impact of a transaction on a balance by `amount` - `fee`
    @[JSON::Field(key: "net", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter net : Int64? = nil

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter object : String? = nil
    ERROR_MESSAGE_FOR_OBJECT = "invalid value for \"object\", must be one of [balance_transaction]."
    VALID_VALUES_FOR_OBJECT  = String.static_array("balance_transaction")

    # Learn more about how [reporting categories](https://stripe.com/docs/reports/reporting-categories) can help you understand balance transactions from an accounting perspective.
    @[JSON::Field(key: "reporting_category", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter reporting_category : String? = nil
    MAX_LENGTH_FOR_REPORTING_CATEGORY = 5000

    @[JSON::Field(key: "source", type: Stripe::BalanceTransactionSource1?, default: nil, required: true, nullable: true, emit_null: true)]
    getter source : Stripe::BalanceTransactionSource1? = nil

    # The transaction's net funds status in the Stripe balance, which are either `available` or `pending`.
    @[JSON::Field(key: "status", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter status : String? = nil
    MAX_LENGTH_FOR_STATUS = 5000

    # Transaction type: `adjustment`, `advance`, `advance_funding`, `anticipation_repayment`, `application_fee`, `application_fee_refund`, `charge`, `climate_order_purchase`, `climate_order_refund`, `connect_collection_transfer`, `contribution`, `issuing_authorization_hold`, `issuing_authorization_release`, `issuing_dispute`, `issuing_transaction`, `obligation_outbound`, `obligation_reversal_inbound`, `payment`, `payment_failure_refund`, `payment_network_reserve_hold`, `payment_network_reserve_release`, `payment_refund`, `payment_reversal`, `payment_unreconciled`, `payout`, `payout_cancel`, `payout_failure`, `refund`, `refund_failure`, `reserve_transaction`, `reserved_funds`, `stripe_fee`, `stripe_fx_fee`, `tax_fee`, `topup`, `topup_reversal`, `transfer`, `transfer_cancel`, `transfer_failure`, or `transfer_refund`. Learn more about [balance transaction types and what they represent](https://stripe.com/docs/reports/balance-transaction-types). To classify transactions for accounting purposes, consider `reporting_category` instead.
    @[JSON::Field(key: "type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter _type : String? = nil
    ERROR_MESSAGE_FOR__TYPE = "invalid value for \"_type\", must be one of [adjustment, advance, advance_funding, anticipation_repayment, application_fee, application_fee_refund, charge, climate_order_purchase, climate_order_refund, connect_collection_transfer, contribution, issuing_authorization_hold, issuing_authorization_release, issuing_dispute, issuing_transaction, obligation_outbound, obligation_reversal_inbound, payment, payment_failure_refund, payment_network_reserve_hold, payment_network_reserve_release, payment_refund, payment_reversal, payment_unreconciled, payout, payout_cancel, payout_failure, refund, refund_failure, reserve_transaction, reserved_funds, stripe_fee, stripe_fx_fee, tax_fee, topup, topup_reversal, transfer, transfer_cancel, transfer_failure, transfer_refund]."
    VALID_VALUES_FOR__TYPE  = String.static_array("adjustment", "advance", "advance_funding", "anticipation_repayment", "application_fee", "application_fee_refund", "charge", "climate_order_purchase", "climate_order_refund", "connect_collection_transfer", "contribution", "issuing_authorization_hold", "issuing_authorization_release", "issuing_dispute", "issuing_transaction", "obligation_outbound", "obligation_reversal_inbound", "payment", "payment_failure_refund", "payment_network_reserve_hold", "payment_network_reserve_release", "payment_refund", "payment_reversal", "payment_unreconciled", "payout", "payout_cancel", "payout_failure", "refund", "refund_failure", "reserve_transaction", "reserved_funds", "stripe_fee", "stripe_fx_fee", "tax_fee", "topup", "topup_reversal", "transfer", "transfer_cancel", "transfer_failure", "transfer_refund")

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @amount : Int64? = nil,
      @available_on : Int64? = nil,
      @created : Int64? = nil,
      @currency : String? = nil,
      @description : String? = nil,
      @exchange_rate : Float64? = nil,
      @fee : Int64? = nil,
      @fee_details : Array(Stripe::Fee)? = nil,
      @id : String? = nil,
      @net : Int64? = nil,
      @object : String? = nil,
      @reporting_category : String? = nil,
      @source : Stripe::BalanceTransactionSource1? = nil,
      @status : String? = nil,
      @_type : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"amount\" is required and cannot be null") if @amount.nil?

      invalid_properties.push("\"available_on\" is required and cannot be null") if @available_on.nil?

      invalid_properties.push("\"created\" is required and cannot be null") if @created.nil?

      invalid_properties.push("\"currency\" is required and cannot be null") if @currency.nil?

      unless (_description = @description).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("description", _description.to_s.size, MAX_LENGTH_FOR_DESCRIPTION)
          invalid_properties.push(max_length_error)
        end
      end

      invalid_properties.push("\"fee\" is required and cannot be null") if @fee.nil?

      invalid_properties.push("\"fee_details\" is required and cannot be null") if @fee_details.nil?

      unless (_fee_details = @fee_details).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "fee_details", container: _fee_details)) if _fee_details.is_a?(Array)
      end
      invalid_properties.push("\"id\" is required and cannot be null") if @id.nil?

      unless (_id = @id).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("id", _id.to_s.size, MAX_LENGTH_FOR_ID)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"net\" is required and cannot be null") if @net.nil?

      invalid_properties.push("\"object\" is required and cannot be null") if @object.nil?

      unless (_object = @object).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_OBJECT) unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end
      invalid_properties.push("\"reporting_category\" is required and cannot be null") if @reporting_category.nil?

      unless (_reporting_category = @reporting_category).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("reporting_category", _reporting_category.to_s.size, MAX_LENGTH_FOR_REPORTING_CATEGORY)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_source = @source).nil?
        invalid_properties.concat(_source.list_invalid_properties_for("source")) if _source.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"status\" is required and cannot be null") if @status.nil?

      unless (_status = @status).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("status", _status.to_s.size, MAX_LENGTH_FOR_STATUS)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"_type\" is required and cannot be null") if @_type.nil?

      unless (__type = @_type).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR__TYPE) unless OpenApi::EnumValidator.valid?(__type, VALID_VALUES_FOR__TYPE)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @amount.nil?

      return false if @available_on.nil?

      return false if @created.nil?

      return false if @currency.nil?

      unless (_description = @description).nil?
        return false if _description.to_s.size > MAX_LENGTH_FOR_DESCRIPTION
      end

      return false if @fee.nil?

      return false if @fee_details.nil?
      unless (_fee_details = @fee_details).nil?
        return false if _fee_details.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _fee_details)
      end

      return false if @id.nil?
      unless (_id = @id).nil?
        return false if _id.to_s.size > MAX_LENGTH_FOR_ID
      end

      return false if @net.nil?

      return false if @object.nil?
      unless (_object = @object).nil?
        return false unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end

      return false if @reporting_category.nil?
      unless (_reporting_category = @reporting_category).nil?
        return false if _reporting_category.to_s.size > MAX_LENGTH_FOR_REPORTING_CATEGORY
      end

      unless (_source = @source).nil?
        return false if _source.is_a?(OpenApi::Validatable) && !_source.valid?
      end

      return false if @status.nil?
      unless (_status = @status).nil?
        return false if _status.to_s.size > MAX_LENGTH_FOR_STATUS
      end

      return false if @_type.nil?
      unless (__type = @_type).nil?
        return false unless OpenApi::EnumValidator.valid?(__type, VALID_VALUES_FOR__TYPE)
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
    # @param [Object] available_on Object to be assigned
    def available_on=(new_value : Int64?)
      raise ArgumentError.new("\"available_on\" is required and cannot be null") if new_value.nil?

      @available_on = new_value
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
    # @param [Object] description Object to be assigned
    def description=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("description", new_value.to_s.size, MAX_LENGTH_FOR_DESCRIPTION)
      end

      @description = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] exchange_rate Object to be assigned
    def exchange_rate=(new_value : Float64?)
      @exchange_rate = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] fee Object to be assigned
    def fee=(new_value : Int64?)
      raise ArgumentError.new("\"fee\" is required and cannot be null") if new_value.nil?

      @fee = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] fee_details Object to be assigned
    def fee_details=(new_value : Array(Stripe::Fee)?)
      raise ArgumentError.new("\"fee_details\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::ContainerValidator.validate(container: new_value) if new_value.is_a?(Array)
      end

      @fee_details = new_value
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
    # @param [Object] net Object to be assigned
    def net=(new_value : Int64?)
      raise ArgumentError.new("\"net\" is required and cannot be null") if new_value.nil?

      @net = new_value
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
    # @param [Object] reporting_category Object to be assigned
    def reporting_category=(new_value : String?)
      raise ArgumentError.new("\"reporting_category\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("reporting_category", new_value.to_s.size, MAX_LENGTH_FOR_REPORTING_CATEGORY)
      end

      @reporting_category = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] source Object to be assigned
    def source=(new_value : Stripe::BalanceTransactionSource1?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @source = new_value
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
      raise ArgumentError.new("\"_type\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::EnumValidator.validate("_type", new_value, VALID_VALUES_FOR__TYPE)
      end

      @_type = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@amount, @available_on, @created, @currency, @description, @exchange_rate, @fee, @fee_details, @id, @net, @object, @reporting_category, @source, @status, @_type)
  end
end
