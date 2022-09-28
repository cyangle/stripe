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
  # Customers with certain payments enabled have a cash balance, representing funds that were paid by the customer to a merchant, but have not yet been allocated to a payment. Cash Balance Transactions represent when funds are moved into or out of this balance. This includes funding by the customer, allocation to payments, and refunds to the customer.
  class CustomerCashBalanceTransaction
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter created : Int64? = nil

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[JSON::Field(key: "currency", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter currency : String? = nil

    @[JSON::Field(key: "customer", type: Stripe::CustomerCashBalanceTransactionCustomer?, default: nil, required: true, nullable: false, emit_null: false)]
    getter customer : Stripe::CustomerCashBalanceTransactionCustomer? = nil

    # The total available cash balance for the specified currency after this transaction was applied. Represented in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
    @[JSON::Field(key: "ending_balance", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter ending_balance : Int64? = nil

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter livemode : Bool? = nil

    # The amount by which the cash balance changed, represented in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal). A positive value represents funds being added to the cash balance, a negative value represents funds being removed from the cash balance.
    @[JSON::Field(key: "net_amount", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter net_amount : Int64? = nil

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter object : String? = nil

    ENUM_VALIDATOR_FOR_OBJECT = EnumValidator.new("object", "String", ["customer_cash_balance_transaction"])

    # The type of the cash balance transaction. One of `applied_to_payment`, `unapplied_from_payment`, `refunded_from_payment`, `funded`, `return_initiated`, or `return_canceled`. New types may be added in future. See [Customer Balance](https://stripe.com/docs/payments/customer-balance#types) to learn more about these types.
    @[JSON::Field(key: "type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter _type : String? = nil

    ENUM_VALIDATOR_FOR__TYPE = EnumValidator.new("_type", "String", ["applied_to_payment", "funded", "refunded_from_payment", "return_canceled", "return_initiated", "unapplied_from_payment"])

    # Optional properties

    @[JSON::Field(key: "applied_to_payment", type: Stripe::CustomerBalanceResourceCashBalanceTransactionResourceAppliedToPaymentTransaction?, default: nil, required: false, nullable: false, emit_null: false)]
    getter applied_to_payment : Stripe::CustomerBalanceResourceCashBalanceTransactionResourceAppliedToPaymentTransaction? = nil

    @[JSON::Field(key: "funded", type: Stripe::CustomerBalanceResourceCashBalanceTransactionResourceFundedTransaction?, default: nil, required: false, nullable: false, emit_null: false)]
    getter funded : Stripe::CustomerBalanceResourceCashBalanceTransactionResourceFundedTransaction? = nil

    @[JSON::Field(key: "refunded_from_payment", type: Stripe::CustomerBalanceResourceCashBalanceTransactionResourceRefundedFromPaymentTransaction?, default: nil, required: false, nullable: false, emit_null: false)]
    getter refunded_from_payment : Stripe::CustomerBalanceResourceCashBalanceTransactionResourceRefundedFromPaymentTransaction? = nil

    @[JSON::Field(key: "unapplied_from_payment", type: Stripe::CustomerBalanceResourceCashBalanceTransactionResourceUnappliedFromPaymentTransaction?, default: nil, required: false, nullable: false, emit_null: false)]
    getter unapplied_from_payment : Stripe::CustomerBalanceResourceCashBalanceTransactionResourceUnappliedFromPaymentTransaction? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @created : Int64? = nil,
      @currency : String? = nil,
      @customer : Stripe::CustomerCashBalanceTransactionCustomer? = nil,
      @ending_balance : Int64? = nil,
      @id : String? = nil,
      @livemode : Bool? = nil,
      @net_amount : Int64? = nil,
      @object : String? = nil,
      @_type : String? = nil,
      # Optional properties
      @applied_to_payment : Stripe::CustomerBalanceResourceCashBalanceTransactionResourceAppliedToPaymentTransaction? = nil,
      @funded : Stripe::CustomerBalanceResourceCashBalanceTransactionResourceFundedTransaction? = nil,
      @refunded_from_payment : Stripe::CustomerBalanceResourceCashBalanceTransactionResourceRefundedFromPaymentTransaction? = nil,
      @unapplied_from_payment : Stripe::CustomerBalanceResourceCashBalanceTransactionResourceUnappliedFromPaymentTransaction? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      invalid_properties.push("\"created\" is required and cannot be null") if @created.nil?

      invalid_properties.push("\"currency\" is required and cannot be null") if @currency.nil?
      if _currency = @currency
        if _currency.to_s.size > 5000
          invalid_properties.push("invalid value for \"currency\", the character length must be smaller than or equal to 5000.")
        end
      end
      invalid_properties.push("\"customer\" is required and cannot be null") if @customer.nil?
      if _customer = @customer
        if _customer.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_customer.list_invalid_properties_for("customer"))
        end
      end
      invalid_properties.push("\"ending_balance\" is required and cannot be null") if @ending_balance.nil?

      invalid_properties.push("\"id\" is required and cannot be null") if @id.nil?
      if _id = @id
        if _id.to_s.size > 5000
          invalid_properties.push("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
        end
      end
      invalid_properties.push("\"livemode\" is required and cannot be null") if @livemode.nil?

      invalid_properties.push("\"net_amount\" is required and cannot be null") if @net_amount.nil?

      invalid_properties.push(ENUM_VALIDATOR_FOR_OBJECT.error_message) unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)

      invalid_properties.push(ENUM_VALIDATOR_FOR__TYPE.error_message) unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type, false)
      if _applied_to_payment = @applied_to_payment
        if _applied_to_payment.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_applied_to_payment.list_invalid_properties_for("applied_to_payment"))
        end
      end
      if _funded = @funded
        if _funded.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_funded.list_invalid_properties_for("funded"))
        end
      end
      if _refunded_from_payment = @refunded_from_payment
        if _refunded_from_payment.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_refunded_from_payment.list_invalid_properties_for("refunded_from_payment"))
        end
      end
      if _unapplied_from_payment = @unapplied_from_payment
        if _unapplied_from_payment.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_unapplied_from_payment.list_invalid_properties_for("unapplied_from_payment"))
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @created.nil?

      return false if @currency.nil?
      if _currency = @currency
        return false if _currency.to_s.size > 5000
      end
      return false if @customer.nil?
      if _customer = @customer
        if _customer.is_a?(OpenApi::Validatable)
          return false unless _customer.valid?
        end
      end
      return false if @ending_balance.nil?

      return false if @id.nil?
      if _id = @id
        return false if _id.to_s.size > 5000
      end
      return false if @livemode.nil?

      return false if @net_amount.nil?

      return false unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      return false unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type, false)
      if _applied_to_payment = @applied_to_payment
        if _applied_to_payment.is_a?(OpenApi::Validatable)
          return false unless _applied_to_payment.valid?
        end
      end
      if _funded = @funded
        if _funded.is_a?(OpenApi::Validatable)
          return false unless _funded.valid?
        end
      end
      if _refunded_from_payment = @refunded_from_payment
        if _refunded_from_payment.is_a?(OpenApi::Validatable)
          return false unless _refunded_from_payment.valid?
        end
      end
      if _unapplied_from_payment = @unapplied_from_payment
        if _unapplied_from_payment.is_a?(OpenApi::Validatable)
          return false unless _unapplied_from_payment.valid?
        end
      end

      true
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
      if _currency.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"currency\", the character length must be smaller than or equal to 5000.")
      end

      @currency = _currency
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] customer Object to be assigned
    def customer=(customer : Stripe::CustomerCashBalanceTransactionCustomer?)
      if customer.nil?
        raise ArgumentError.new("\"customer\" is required and cannot be null")
      end
      _customer = customer.not_nil!
      if _customer.is_a?(OpenApi::Validatable)
        _customer.validate
      end
      @customer = _customer
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] ending_balance Object to be assigned
    def ending_balance=(ending_balance : Int64?)
      if ending_balance.nil?
        raise ArgumentError.new("\"ending_balance\" is required and cannot be null")
      end
      _ending_balance = ending_balance.not_nil!
      @ending_balance = _ending_balance
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
    # @param [Object] net_amount Object to be assigned
    def net_amount=(net_amount : Int64?)
      if net_amount.nil?
        raise ArgumentError.new("\"net_amount\" is required and cannot be null")
      end
      _net_amount = net_amount.not_nil!
      @net_amount = _net_amount
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
    # @param [Object] _type Object to be assigned
    def _type=(_type : String?)
      if _type.nil?
        raise ArgumentError.new("\"_type\" is required and cannot be null")
      end
      __type = _type.not_nil!
      ENUM_VALIDATOR_FOR__TYPE.valid!(__type)
      @_type = __type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] applied_to_payment Object to be assigned
    def applied_to_payment=(applied_to_payment : Stripe::CustomerBalanceResourceCashBalanceTransactionResourceAppliedToPaymentTransaction?)
      if applied_to_payment.nil?
        return @applied_to_payment = nil
      end
      _applied_to_payment = applied_to_payment.not_nil!
      if _applied_to_payment.is_a?(OpenApi::Validatable)
        _applied_to_payment.validate
      end
      @applied_to_payment = _applied_to_payment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] funded Object to be assigned
    def funded=(funded : Stripe::CustomerBalanceResourceCashBalanceTransactionResourceFundedTransaction?)
      if funded.nil?
        return @funded = nil
      end
      _funded = funded.not_nil!
      if _funded.is_a?(OpenApi::Validatable)
        _funded.validate
      end
      @funded = _funded
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] refunded_from_payment Object to be assigned
    def refunded_from_payment=(refunded_from_payment : Stripe::CustomerBalanceResourceCashBalanceTransactionResourceRefundedFromPaymentTransaction?)
      if refunded_from_payment.nil?
        return @refunded_from_payment = nil
      end
      _refunded_from_payment = refunded_from_payment.not_nil!
      if _refunded_from_payment.is_a?(OpenApi::Validatable)
        _refunded_from_payment.validate
      end
      @refunded_from_payment = _refunded_from_payment
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] unapplied_from_payment Object to be assigned
    def unapplied_from_payment=(unapplied_from_payment : Stripe::CustomerBalanceResourceCashBalanceTransactionResourceUnappliedFromPaymentTransaction?)
      if unapplied_from_payment.nil?
        return @unapplied_from_payment = nil
      end
      _unapplied_from_payment = unapplied_from_payment.not_nil!
      if _unapplied_from_payment.is_a?(OpenApi::Validatable)
        _unapplied_from_payment.validate
      end
      @unapplied_from_payment = _unapplied_from_payment
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@created, @currency, @customer, @ending_balance, @id, @livemode, @net_amount, @object, @_type, @applied_to_payment, @funded, @refunded_from_payment, @unapplied_from_payment)
  end
end
