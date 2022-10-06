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
  # Balance transactions represent funds moving through your Stripe account. They're created for every type of transaction that comes into or flows out of your Stripe account balance.  Related guide: [Balance Transaction Types](https://stripe.com/docs/reports/balance-transaction-types).
  class BalanceTransaction
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Gross amount of the transaction, in %s.
    @[JSON::Field(key: "amount", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter amount : Int64? = nil

    # The date the transaction's net funds will become available in the Stripe balance.
    @[JSON::Field(key: "available_on", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter available_on : Int64? = nil

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter created : Int64? = nil

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[JSON::Field(key: "currency", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter currency : String? = nil

    # Fees (in %s) paid for this transaction.
    @[JSON::Field(key: "fee", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter fee : Int64? = nil

    # Detailed breakdown of fees (in %s) paid for this transaction.
    @[JSON::Field(key: "fee_details", type: Array(Stripe::Fee)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter fee_details : Array(Stripe::Fee)? = nil

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil
    MAX_LENGTH_FOR_ID = 5000

    # Net amount of the transaction, in %s.
    @[JSON::Field(key: "net", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter net : Int64? = nil

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter object : String? = nil
    ERROR_MESSAGE_FOR_OBJECT = "invalid value for \"object\", must be one of [balance_transaction]."
    VALID_VALUES_FOR_OBJECT  = String.static_array("balance_transaction")

    # [Learn more](https://stripe.com/docs/reports/reporting-categories) about how reporting categories can help you understand balance transactions from an accounting perspective.
    @[JSON::Field(key: "reporting_category", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter reporting_category : String? = nil
    MAX_LENGTH_FOR_REPORTING_CATEGORY = 5000

    # If the transaction's net funds are available in the Stripe balance yet. Either `available` or `pending`.
    @[JSON::Field(key: "status", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter status : String? = nil
    MAX_LENGTH_FOR_STATUS = 5000

    # Transaction type: `adjustment`, `advance`, `advance_funding`, `anticipation_repayment`, `application_fee`, `application_fee_refund`, `charge`, `connect_collection_transfer`, `contribution`, `issuing_authorization_hold`, `issuing_authorization_release`, `issuing_dispute`, `issuing_transaction`, `payment`, `payment_failure_refund`, `payment_refund`, `payout`, `payout_cancel`, `payout_failure`, `refund`, `refund_failure`, `reserve_transaction`, `reserved_funds`, `stripe_fee`, `stripe_fx_fee`, `tax_fee`, `topup`, `topup_reversal`, `transfer`, `transfer_cancel`, `transfer_failure`, or `transfer_refund`. [Learn more](https://stripe.com/docs/reports/balance-transaction-types) about balance transaction types and what they represent. If you are looking to classify transactions for accounting purposes, you might want to consider `reporting_category` instead.
    @[JSON::Field(key: "type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter _type : String? = nil
    ERROR_MESSAGE_FOR__TYPE = "invalid value for \"_type\", must be one of [adjustment, advance, advance_funding, anticipation_repayment, application_fee, application_fee_refund, charge, connect_collection_transfer, contribution, issuing_authorization_hold, issuing_authorization_release, issuing_dispute, issuing_transaction, payment, payment_failure_refund, payment_refund, payout, payout_cancel, payout_failure, refund, refund_failure, reserve_transaction, reserved_funds, stripe_fee, stripe_fx_fee, tax_fee, topup, topup_reversal, transfer, transfer_cancel, transfer_failure, transfer_refund]."
    VALID_VALUES_FOR__TYPE  = String.static_array("adjustment", "advance", "advance_funding", "anticipation_repayment", "application_fee", "application_fee_refund", "charge", "connect_collection_transfer", "contribution", "issuing_authorization_hold", "issuing_authorization_release", "issuing_dispute", "issuing_transaction", "payment", "payment_failure_refund", "payment_refund", "payout", "payout_cancel", "payout_failure", "refund", "refund_failure", "reserve_transaction", "reserved_funds", "stripe_fee", "stripe_fx_fee", "tax_fee", "topup", "topup_reversal", "transfer", "transfer_cancel", "transfer_failure", "transfer_refund")

    # End of Required Properties

    # Optional Properties

    # An arbitrary string attached to the object. Often useful for displaying to users.
    @[JSON::Field(key: "description", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: description.nil? && !description_present?)]
    getter description : String? = nil
    MAX_LENGTH_FOR_DESCRIPTION = 5000

    @[JSON::Field(ignore: true)]
    property? description_present : Bool = false

    # The exchange rate used, if applicable, for this transaction. Specifically, if money was converted from currency A to currency B, then the `amount` in currency A, times `exchange_rate`, would be the `amount` in currency B. For example, suppose you charged a customer 10.00 EUR. Then the PaymentIntent's `amount` would be `1000` and `currency` would be `eur`. Suppose this was converted into 12.34 USD in your Stripe account. Then the BalanceTransaction's `amount` would be `1234`, `currency` would be `usd`, and `exchange_rate` would be `1.234`.
    @[JSON::Field(key: "exchange_rate", type: Float64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: exchange_rate.nil? && !exchange_rate_present?)]
    getter exchange_rate : Float64? = nil

    @[JSON::Field(ignore: true)]
    property? exchange_rate_present : Bool = false

    @[JSON::Field(key: "source", type: Stripe::BalanceTransactionSource?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: source.nil? && !source_present?)]
    getter source : Stripe::BalanceTransactionSource? = nil

    @[JSON::Field(ignore: true)]
    property? source_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @amount : Int64? = nil,
      @available_on : Int64? = nil,
      @created : Int64? = nil,
      @currency : String? = nil,
      @fee : Int64? = nil,
      @fee_details : Array(Stripe::Fee)? = nil,
      @id : String? = nil,
      @net : Int64? = nil,
      @object : String? = nil,
      @reporting_category : String? = nil,
      @status : String? = nil,
      @_type : String? = nil,
      # Optional properties
      @description : String? = nil,
      @exchange_rate : Float64? = nil,
      @source : Stripe::BalanceTransactionSource? = nil
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
      unless (_description = @description).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("description", _description.to_s.size, MAX_LENGTH_FOR_DESCRIPTION)
          invalid_properties.push(max_length_error)
        end
      end

      unless (_source = @source).nil?
        invalid_properties.concat(_source.list_invalid_properties_for("source")) if _source.is_a?(OpenApi::Validatable)
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

      return false if @status.nil?
      unless (_status = @status).nil?
        return false if _status.to_s.size > MAX_LENGTH_FOR_STATUS
      end

      return false if @_type.nil?
      unless (__type = @_type).nil?
        return false unless OpenApi::EnumValidator.valid?(__type, VALID_VALUES_FOR__TYPE)
      end

      unless (_description = @description).nil?
        return false if _description.to_s.size > MAX_LENGTH_FOR_DESCRIPTION
      end

      unless (_source = @source).nil?
        return false if _source.is_a?(OpenApi::Validatable) && !_source.valid?
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
    # @param [Object] available_on Object to be assigned
    def available_on=(available_on : Int64?)
      if available_on.nil?
        raise ArgumentError.new("\"available_on\" is required and cannot be null")
      end
      _available_on = available_on.not_nil!
      @available_on = _available_on
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
    # @param [Object] fee Object to be assigned
    def fee=(fee : Int64?)
      if fee.nil?
        raise ArgumentError.new("\"fee\" is required and cannot be null")
      end
      _fee = fee.not_nil!
      @fee = _fee
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] fee_details Object to be assigned
    def fee_details=(fee_details : Array(Stripe::Fee)?)
      if fee_details.nil?
        raise ArgumentError.new("\"fee_details\" is required and cannot be null")
      end
      _fee_details = fee_details.not_nil!
      OpenApi::ContainerValidator.validate(container: _fee_details) if _fee_details.is_a?(Array)
      @fee_details = _fee_details
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
    # @param [Object] net Object to be assigned
    def net=(net : Int64?)
      if net.nil?
        raise ArgumentError.new("\"net\" is required and cannot be null")
      end
      _net = net.not_nil!
      @net = _net
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
    # @param [Object] reporting_category Object to be assigned
    def reporting_category=(reporting_category : String?)
      if reporting_category.nil?
        raise ArgumentError.new("\"reporting_category\" is required and cannot be null")
      end
      _reporting_category = reporting_category.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("reporting_category", _reporting_category.to_s.size, MAX_LENGTH_FOR_REPORTING_CATEGORY)
      @reporting_category = _reporting_category
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status : String?)
      if status.nil?
        raise ArgumentError.new("\"status\" is required and cannot be null")
      end
      _status = status.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("status", _status.to_s.size, MAX_LENGTH_FOR_STATUS)
      @status = _status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(_type : String?)
      if _type.nil?
        raise ArgumentError.new("\"_type\" is required and cannot be null")
      end
      __type = _type.not_nil!
      OpenApi::EnumValidator.validate("_type", __type, VALID_VALUES_FOR__TYPE)
      @_type = __type
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
    # @param [Object] exchange_rate Object to be assigned
    def exchange_rate=(exchange_rate : Float64?)
      if exchange_rate.nil?
        return @exchange_rate = nil
      end
      _exchange_rate = exchange_rate.not_nil!
      @exchange_rate = _exchange_rate
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] source Object to be assigned
    def source=(source : Stripe::BalanceTransactionSource?)
      if source.nil?
        return @source = nil
      end
      _source = source.not_nil!
      _source.validate if _source.is_a?(OpenApi::Validatable)
      @source = _source
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@amount, @available_on, @created, @currency, @fee, @fee_details, @id, @net, @object, @reporting_category, @status, @_type, @description, @description_present, @exchange_rate, @exchange_rate_present, @source, @source_present)
  end
end
