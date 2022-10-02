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
  # Each customer has a [`balance`](https://stripe.com/docs/api/customers/object#customer_object-balance) value, which denotes a debit or credit that's automatically applied to their next invoice upon finalization. You may modify the value directly by using the [update customer API](https://stripe.com/docs/api/customers/update), or by creating a Customer Balance Transaction, which increments or decrements the customer's `balance` by the specified `amount`.  Related guide: [Customer Balance](https://stripe.com/docs/billing/customer/balance) to learn more.
  class CustomerBalanceTransaction
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    # The amount of the transaction. A negative value is a credit for the customer's balance, and a positive value is a debit to the customer's `balance`.
    @[JSON::Field(key: "amount", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter amount : Int64? = nil

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter created : Int64? = nil

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[JSON::Field(key: "currency", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter currency : String? = nil

    @[JSON::Field(key: "customer", type: Stripe::CustomerBalanceTransactionCustomer?, default: nil, required: true, nullable: false, emit_null: false)]
    getter customer : Stripe::CustomerBalanceTransactionCustomer? = nil

    # The customer's `balance` after the transaction was applied. A negative value decreases the amount due on the customer's next invoice. A positive value increases the amount due on the customer's next invoice.
    @[JSON::Field(key: "ending_balance", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter ending_balance : Int64? = nil

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
    ERROR_MESSAGE_FOR_OBJECT = "invalid value for \"object\", must be one of [customer_balance_transaction]."
    VALID_VALUES_FOR_OBJECT  = StaticArray["customer_balance_transaction"]

    # Transaction type: `adjustment`, `applied_to_invoice`, `credit_note`, `initial`, `invoice_too_large`, `invoice_too_small`, `unspent_receiver_credit`, or `unapplied_from_invoice`. See the [Customer Balance page](https://stripe.com/docs/billing/customer/balance#types) to learn more about transaction types.
    @[JSON::Field(key: "type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter _type : String? = nil
    ERROR_MESSAGE_FOR__TYPE = "invalid value for \"_type\", must be one of [adjustment, applied_to_invoice, credit_note, initial, invoice_too_large, invoice_too_small, migration, unapplied_from_invoice, unspent_receiver_credit]."
    VALID_VALUES_FOR__TYPE  = StaticArray["adjustment", "applied_to_invoice", "credit_note", "initial", "invoice_too_large", "invoice_too_small", "migration", "unapplied_from_invoice", "unspent_receiver_credit"]

    # Optional properties

    @[JSON::Field(key: "credit_note", type: Stripe::CustomerBalanceTransactionCreditNote?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: credit_note.nil? && !credit_note_present?)]
    getter credit_note : Stripe::CustomerBalanceTransactionCreditNote? = nil

    @[JSON::Field(ignore: true)]
    property? credit_note_present : Bool = false

    # An arbitrary string attached to the object. Often useful for displaying to users.
    @[JSON::Field(key: "description", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: description.nil? && !description_present?)]
    getter description : String? = nil
    MAX_LENGTH_FOR_DESCRIPTION = 5000

    @[JSON::Field(ignore: true)]
    property? description_present : Bool = false

    @[JSON::Field(key: "invoice", type: Stripe::CustomerBalanceTransactionInvoice?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: invoice.nil? && !invoice_present?)]
    getter invoice : Stripe::CustomerBalanceTransactionInvoice? = nil

    @[JSON::Field(ignore: true)]
    property? invoice_present : Bool = false

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: metadata.nil? && !metadata_present?)]
    getter metadata : Hash(String, String)? = nil

    @[JSON::Field(ignore: true)]
    property? metadata_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @amount : Int64? = nil,
      @created : Int64? = nil,
      @currency : String? = nil,
      @customer : Stripe::CustomerBalanceTransactionCustomer? = nil,
      @ending_balance : Int64? = nil,
      @id : String? = nil,
      @livemode : Bool? = nil,
      @object : String? = nil,
      @_type : String? = nil,
      # Optional properties
      @credit_note : Stripe::CustomerBalanceTransactionCreditNote? = nil,
      @description : String? = nil,
      @invoice : Stripe::CustomerBalanceTransactionInvoice? = nil,
      @metadata : Hash(String, String)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"amount\" is required and cannot be null") if @amount.nil?

      invalid_properties.push("\"created\" is required and cannot be null") if @created.nil?

      invalid_properties.push("\"currency\" is required and cannot be null") if @currency.nil?

      invalid_properties.push("\"customer\" is required and cannot be null") if @customer.nil?

      if _customer = @customer
        invalid_properties.concat(_customer.list_invalid_properties_for("customer")) if _customer.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"ending_balance\" is required and cannot be null") if @ending_balance.nil?

      invalid_properties.push("\"id\" is required and cannot be null") if @id.nil?

      if _id = @id
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("id", _id.to_s.size, MAX_LENGTH_FOR_ID)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"livemode\" is required and cannot be null") if @livemode.nil?

      invalid_properties.push("\"object\" is required and cannot be null") if @object.nil?

      if _object = @object
        invalid_properties.push(ERROR_MESSAGE_FOR_OBJECT) unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end
      invalid_properties.push("\"_type\" is required and cannot be null") if @_type.nil?

      if __type = @_type
        invalid_properties.push(ERROR_MESSAGE_FOR__TYPE) unless OpenApi::EnumValidator.valid?(__type, VALID_VALUES_FOR__TYPE)
      end
      if _credit_note = @credit_note
        invalid_properties.concat(_credit_note.list_invalid_properties_for("credit_note")) if _credit_note.is_a?(OpenApi::Validatable)
      end
      if _description = @description
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("description", _description.to_s.size, MAX_LENGTH_FOR_DESCRIPTION)
          invalid_properties.push(max_length_error)
        end
      end
      if _invoice = @invoice
        invalid_properties.concat(_invoice.list_invalid_properties_for("invoice")) if _invoice.is_a?(OpenApi::Validatable)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @amount.nil?

      return false if @created.nil?

      return false if @currency.nil?

      return false if @customer.nil?
      if _customer = @customer
        return false if _customer.is_a?(OpenApi::Validatable) && !_customer.valid?
      end

      return false if @ending_balance.nil?

      return false if @id.nil?
      if _id = @id
        return false if _id.to_s.size > MAX_LENGTH_FOR_ID
      end

      return false if @livemode.nil?

      return false if @object.nil?
      if _object = @object
        return false unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end

      return false if @_type.nil?
      if __type = @_type
        return false unless OpenApi::EnumValidator.valid?(__type, VALID_VALUES_FOR__TYPE)
      end

      if _credit_note = @credit_note
        return false if _credit_note.is_a?(OpenApi::Validatable) && !_credit_note.valid?
      end

      if _description = @description
        return false if _description.to_s.size > MAX_LENGTH_FOR_DESCRIPTION
      end

      if _invoice = @invoice
        return false if _invoice.is_a?(OpenApi::Validatable) && !_invoice.valid?
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
    # @param [Object] customer Object to be assigned
    def customer=(customer : Stripe::CustomerBalanceTransactionCustomer?)
      if customer.nil?
        raise ArgumentError.new("\"customer\" is required and cannot be null")
      end
      _customer = customer.not_nil!
      _customer.validate if _customer.is_a?(OpenApi::Validatable)
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
      OpenApi::PrimitiveValidator.validate_max_length("id", _id.to_s.size, MAX_LENGTH_FOR_ID)
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
    # @param [Object] credit_note Object to be assigned
    def credit_note=(credit_note : Stripe::CustomerBalanceTransactionCreditNote?)
      if credit_note.nil?
        return @credit_note = nil
      end
      _credit_note = credit_note.not_nil!
      _credit_note.validate if _credit_note.is_a?(OpenApi::Validatable)
      @credit_note = _credit_note
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
    # @param [Object] invoice Object to be assigned
    def invoice=(invoice : Stripe::CustomerBalanceTransactionInvoice?)
      if invoice.nil?
        return @invoice = nil
      end
      _invoice = invoice.not_nil!
      _invoice.validate if _invoice.is_a?(OpenApi::Validatable)
      @invoice = _invoice
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(metadata : Hash(String, String)?)
      if metadata.nil?
        return @metadata = nil
      end
      _metadata = metadata.not_nil!
      @metadata = _metadata
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@amount, @created, @currency, @customer, @ending_balance, @id, @livemode, @object, @_type, @credit_note, @credit_note_present, @description, @description_present, @invoice, @invoice_present, @metadata, @metadata_present)
  end
end
