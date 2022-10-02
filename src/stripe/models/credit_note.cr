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
  # Issue a credit note to adjust an invoice's amount after the invoice is finalized.  Related guide: [Credit Notes](https://stripe.com/docs/billing/invoices/credit-notes).
  class CreditNote
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    # The integer amount in %s representing the total amount of the credit note, including tax.
    @[JSON::Field(key: "amount", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter amount : Int64? = nil

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter created : Int64? = nil

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[JSON::Field(key: "currency", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter currency : String? = nil

    @[JSON::Field(key: "customer", type: Stripe::CreditNoteCustomer?, default: nil, required: true, nullable: false, emit_null: false)]
    getter customer : Stripe::CreditNoteCustomer? = nil

    # The integer amount in %s representing the total amount of discount that was credited.
    @[JSON::Field(key: "discount_amount", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter discount_amount : Int64? = nil

    # The aggregate amounts calculated per discount for all line items.
    @[JSON::Field(key: "discount_amounts", type: Array(Stripe::DiscountsResourceDiscountAmount)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter discount_amounts : Array(Stripe::DiscountsResourceDiscountAmount)? = nil

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil
    MAX_LENGTH_FOR_ID = 5000

    @[JSON::Field(key: "invoice", type: Stripe::CreditNoteInvoice?, default: nil, required: true, nullable: false, emit_null: false)]
    getter invoice : Stripe::CreditNoteInvoice? = nil

    @[JSON::Field(key: "lines", type: Stripe::CreditNoteLinesList1?, default: nil, required: true, nullable: false, emit_null: false)]
    getter lines : Stripe::CreditNoteLinesList1? = nil

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter livemode : Bool? = nil

    # A unique number that identifies this particular credit note and appears on the PDF of the credit note and its associated invoice.
    @[JSON::Field(key: "number", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter number : String? = nil
    MAX_LENGTH_FOR_NUMBER = 5000

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter object : String? = nil
    ERROR_MESSAGE_FOR_OBJECT = "invalid value for \"object\", must be one of [credit_note]."
    VALID_VALUES_FOR_OBJECT  = StaticArray["credit_note"]

    # The link to download the PDF of the credit note.
    @[JSON::Field(key: "pdf", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter pdf : String? = nil
    MAX_LENGTH_FOR_PDF = 5000

    # Status of this credit note, one of `issued` or `void`. Learn more about [voiding credit notes](https://stripe.com/docs/billing/invoices/credit-notes#voiding).
    @[JSON::Field(key: "status", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter status : String? = nil
    ERROR_MESSAGE_FOR_STATUS = "invalid value for \"status\", must be one of [issued, void]."
    VALID_VALUES_FOR_STATUS  = StaticArray["issued", "void"]

    # The integer amount in %s representing the amount of the credit note, excluding exclusive tax and invoice level discounts.
    @[JSON::Field(key: "subtotal", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter subtotal : Int64? = nil

    # The aggregate amounts calculated per tax rate for all line items.
    @[JSON::Field(key: "tax_amounts", type: Array(Stripe::CreditNoteTaxAmount)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter tax_amounts : Array(Stripe::CreditNoteTaxAmount)? = nil

    # The integer amount in %s representing the total amount of the credit note, including tax and all discount.
    @[JSON::Field(key: "total", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter total : Int64? = nil

    # Type of this credit note, one of `pre_payment` or `post_payment`. A `pre_payment` credit note means it was issued when the invoice was open. A `post_payment` credit note means it was issued when the invoice was paid.
    @[JSON::Field(key: "type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter _type : String? = nil
    ERROR_MESSAGE_FOR__TYPE = "invalid value for \"_type\", must be one of [post_payment, pre_payment]."
    VALID_VALUES_FOR__TYPE  = StaticArray["post_payment", "pre_payment"]

    # Optional properties

    @[JSON::Field(key: "customer_balance_transaction", type: Stripe::CreditNoteCustomerBalanceTransaction?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: customer_balance_transaction.nil? && !customer_balance_transaction_present?)]
    getter customer_balance_transaction : Stripe::CreditNoteCustomerBalanceTransaction? = nil

    @[JSON::Field(ignore: true)]
    property? customer_balance_transaction_present : Bool = false

    # Customer-facing text that appears on the credit note PDF.
    @[JSON::Field(key: "memo", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: memo.nil? && !memo_present?)]
    getter memo : String? = nil
    MAX_LENGTH_FOR_MEMO = 5000

    @[JSON::Field(ignore: true)]
    property? memo_present : Bool = false

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: metadata.nil? && !metadata_present?)]
    getter metadata : Hash(String, String)? = nil

    @[JSON::Field(ignore: true)]
    property? metadata_present : Bool = false

    # Amount that was credited outside of Stripe.
    @[JSON::Field(key: "out_of_band_amount", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: out_of_band_amount.nil? && !out_of_band_amount_present?)]
    getter out_of_band_amount : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? out_of_band_amount_present : Bool = false

    # Reason for issuing this credit note, one of `duplicate`, `fraudulent`, `order_change`, or `product_unsatisfactory`
    @[JSON::Field(key: "reason", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: reason.nil? && !reason_present?)]
    getter reason : String? = nil
    ERROR_MESSAGE_FOR_REASON = "invalid value for \"reason\", must be one of [duplicate, fraudulent, order_change, product_unsatisfactory]."
    VALID_VALUES_FOR_REASON  = StaticArray["duplicate", "fraudulent", "order_change", "product_unsatisfactory"]

    @[JSON::Field(ignore: true)]
    property? reason_present : Bool = false

    @[JSON::Field(key: "refund", type: Stripe::CreditNoteRefund?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: refund.nil? && !refund_present?)]
    getter refund : Stripe::CreditNoteRefund? = nil

    @[JSON::Field(ignore: true)]
    property? refund_present : Bool = false

    # The integer amount in %s representing the amount of the credit note, excluding all tax and invoice level discounts.
    @[JSON::Field(key: "subtotal_excluding_tax", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: subtotal_excluding_tax.nil? && !subtotal_excluding_tax_present?)]
    getter subtotal_excluding_tax : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? subtotal_excluding_tax_present : Bool = false

    # The integer amount in %s representing the total amount of the credit note, excluding tax, but including discounts.
    @[JSON::Field(key: "total_excluding_tax", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: total_excluding_tax.nil? && !total_excluding_tax_present?)]
    getter total_excluding_tax : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? total_excluding_tax_present : Bool = false

    # The time that the credit note was voided.
    @[JSON::Field(key: "voided_at", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: voided_at.nil? && !voided_at_present?)]
    getter voided_at : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? voided_at_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @amount : Int64? = nil,
      @created : Int64? = nil,
      @currency : String? = nil,
      @customer : Stripe::CreditNoteCustomer? = nil,
      @discount_amount : Int64? = nil,
      @discount_amounts : Array(Stripe::DiscountsResourceDiscountAmount)? = nil,
      @id : String? = nil,
      @invoice : Stripe::CreditNoteInvoice? = nil,
      @lines : Stripe::CreditNoteLinesList1? = nil,
      @livemode : Bool? = nil,
      @number : String? = nil,
      @object : String? = nil,
      @pdf : String? = nil,
      @status : String? = nil,
      @subtotal : Int64? = nil,
      @tax_amounts : Array(Stripe::CreditNoteTaxAmount)? = nil,
      @total : Int64? = nil,
      @_type : String? = nil,
      # Optional properties
      @customer_balance_transaction : Stripe::CreditNoteCustomerBalanceTransaction? = nil,
      @memo : String? = nil,
      @metadata : Hash(String, String)? = nil,
      @out_of_band_amount : Int64? = nil,
      @reason : String? = nil,
      @refund : Stripe::CreditNoteRefund? = nil,
      @subtotal_excluding_tax : Int64? = nil,
      @total_excluding_tax : Int64? = nil,
      @voided_at : Int64? = nil
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
      invalid_properties.push("\"discount_amount\" is required and cannot be null") if @discount_amount.nil?

      invalid_properties.push("\"discount_amounts\" is required and cannot be null") if @discount_amounts.nil?

      if _discount_amounts = @discount_amounts
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "discount_amounts", container: _discount_amounts)) if _discount_amounts.is_a?(Array)
      end
      invalid_properties.push("\"id\" is required and cannot be null") if @id.nil?

      if _id = @id
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("id", _id.to_s.size, MAX_LENGTH_FOR_ID)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"invoice\" is required and cannot be null") if @invoice.nil?

      if _invoice = @invoice
        invalid_properties.concat(_invoice.list_invalid_properties_for("invoice")) if _invoice.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"lines\" is required and cannot be null") if @lines.nil?

      if _lines = @lines
        invalid_properties.concat(_lines.list_invalid_properties_for("lines")) if _lines.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"livemode\" is required and cannot be null") if @livemode.nil?

      invalid_properties.push("\"number\" is required and cannot be null") if @number.nil?

      if _number = @number
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("number", _number.to_s.size, MAX_LENGTH_FOR_NUMBER)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"object\" is required and cannot be null") if @object.nil?

      if _object = @object
        invalid_properties.push(ERROR_MESSAGE_FOR_OBJECT) unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end
      invalid_properties.push("\"pdf\" is required and cannot be null") if @pdf.nil?

      if _pdf = @pdf
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("pdf", _pdf.to_s.size, MAX_LENGTH_FOR_PDF)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"status\" is required and cannot be null") if @status.nil?

      if _status = @status
        invalid_properties.push(ERROR_MESSAGE_FOR_STATUS) unless OpenApi::EnumValidator.valid?(_status, VALID_VALUES_FOR_STATUS)
      end
      invalid_properties.push("\"subtotal\" is required and cannot be null") if @subtotal.nil?

      invalid_properties.push("\"tax_amounts\" is required and cannot be null") if @tax_amounts.nil?

      if _tax_amounts = @tax_amounts
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "tax_amounts", container: _tax_amounts)) if _tax_amounts.is_a?(Array)
      end
      invalid_properties.push("\"total\" is required and cannot be null") if @total.nil?

      invalid_properties.push("\"_type\" is required and cannot be null") if @_type.nil?

      if __type = @_type
        invalid_properties.push(ERROR_MESSAGE_FOR__TYPE) unless OpenApi::EnumValidator.valid?(__type, VALID_VALUES_FOR__TYPE)
      end
      if _customer_balance_transaction = @customer_balance_transaction
        invalid_properties.concat(_customer_balance_transaction.list_invalid_properties_for("customer_balance_transaction")) if _customer_balance_transaction.is_a?(OpenApi::Validatable)
      end
      if _memo = @memo
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("memo", _memo.to_s.size, MAX_LENGTH_FOR_MEMO)
          invalid_properties.push(max_length_error)
        end
      end

      if _reason = @reason
        invalid_properties.push(ERROR_MESSAGE_FOR_REASON) unless OpenApi::EnumValidator.valid?(_reason, VALID_VALUES_FOR_REASON)
      end
      if _refund = @refund
        invalid_properties.concat(_refund.list_invalid_properties_for("refund")) if _refund.is_a?(OpenApi::Validatable)
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

      return false if @discount_amount.nil?

      return false if @discount_amounts.nil?
      if _discount_amounts = @discount_amounts
        return false if _discount_amounts.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _discount_amounts)
      end

      return false if @id.nil?
      if _id = @id
        return false if _id.to_s.size > MAX_LENGTH_FOR_ID
      end

      return false if @invoice.nil?
      if _invoice = @invoice
        return false if _invoice.is_a?(OpenApi::Validatable) && !_invoice.valid?
      end

      return false if @lines.nil?
      if _lines = @lines
        return false if _lines.is_a?(OpenApi::Validatable) && !_lines.valid?
      end

      return false if @livemode.nil?

      return false if @number.nil?
      if _number = @number
        return false if _number.to_s.size > MAX_LENGTH_FOR_NUMBER
      end

      return false if @object.nil?
      if _object = @object
        return false unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end

      return false if @pdf.nil?
      if _pdf = @pdf
        return false if _pdf.to_s.size > MAX_LENGTH_FOR_PDF
      end

      return false if @status.nil?
      if _status = @status
        return false unless OpenApi::EnumValidator.valid?(_status, VALID_VALUES_FOR_STATUS)
      end

      return false if @subtotal.nil?

      return false if @tax_amounts.nil?
      if _tax_amounts = @tax_amounts
        return false if _tax_amounts.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _tax_amounts)
      end

      return false if @total.nil?

      return false if @_type.nil?
      if __type = @_type
        return false unless OpenApi::EnumValidator.valid?(__type, VALID_VALUES_FOR__TYPE)
      end

      if _customer_balance_transaction = @customer_balance_transaction
        return false if _customer_balance_transaction.is_a?(OpenApi::Validatable) && !_customer_balance_transaction.valid?
      end

      if _memo = @memo
        return false if _memo.to_s.size > MAX_LENGTH_FOR_MEMO
      end

      if _reason = @reason
        return false unless OpenApi::EnumValidator.valid?(_reason, VALID_VALUES_FOR_REASON)
      end

      if _refund = @refund
        return false if _refund.is_a?(OpenApi::Validatable) && !_refund.valid?
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
    def customer=(customer : Stripe::CreditNoteCustomer?)
      if customer.nil?
        raise ArgumentError.new("\"customer\" is required and cannot be null")
      end
      _customer = customer.not_nil!
      _customer.validate if _customer.is_a?(OpenApi::Validatable)
      @customer = _customer
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] discount_amount Object to be assigned
    def discount_amount=(discount_amount : Int64?)
      if discount_amount.nil?
        raise ArgumentError.new("\"discount_amount\" is required and cannot be null")
      end
      _discount_amount = discount_amount.not_nil!
      @discount_amount = _discount_amount
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] discount_amounts Object to be assigned
    def discount_amounts=(discount_amounts : Array(Stripe::DiscountsResourceDiscountAmount)?)
      if discount_amounts.nil?
        raise ArgumentError.new("\"discount_amounts\" is required and cannot be null")
      end
      _discount_amounts = discount_amounts.not_nil!
      OpenApi::ContainerValidator.validate(container: _discount_amounts) if _discount_amounts.is_a?(Array)
      @discount_amounts = _discount_amounts
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
    # @param [Object] invoice Object to be assigned
    def invoice=(invoice : Stripe::CreditNoteInvoice?)
      if invoice.nil?
        raise ArgumentError.new("\"invoice\" is required and cannot be null")
      end
      _invoice = invoice.not_nil!
      _invoice.validate if _invoice.is_a?(OpenApi::Validatable)
      @invoice = _invoice
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] lines Object to be assigned
    def lines=(lines : Stripe::CreditNoteLinesList1?)
      if lines.nil?
        raise ArgumentError.new("\"lines\" is required and cannot be null")
      end
      _lines = lines.not_nil!
      _lines.validate if _lines.is_a?(OpenApi::Validatable)
      @lines = _lines
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
    # @param [Object] number Object to be assigned
    def number=(number : String?)
      if number.nil?
        raise ArgumentError.new("\"number\" is required and cannot be null")
      end
      _number = number.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("number", _number.to_s.size, MAX_LENGTH_FOR_NUMBER)
      @number = _number
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
    # @param [Object] pdf Object to be assigned
    def pdf=(pdf : String?)
      if pdf.nil?
        raise ArgumentError.new("\"pdf\" is required and cannot be null")
      end
      _pdf = pdf.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("pdf", _pdf.to_s.size, MAX_LENGTH_FOR_PDF)
      @pdf = _pdf
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status : String?)
      if status.nil?
        raise ArgumentError.new("\"status\" is required and cannot be null")
      end
      _status = status.not_nil!
      OpenApi::EnumValidator.validate("status", _status, VALID_VALUES_FOR_STATUS)
      @status = _status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] subtotal Object to be assigned
    def subtotal=(subtotal : Int64?)
      if subtotal.nil?
        raise ArgumentError.new("\"subtotal\" is required and cannot be null")
      end
      _subtotal = subtotal.not_nil!
      @subtotal = _subtotal
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tax_amounts Object to be assigned
    def tax_amounts=(tax_amounts : Array(Stripe::CreditNoteTaxAmount)?)
      if tax_amounts.nil?
        raise ArgumentError.new("\"tax_amounts\" is required and cannot be null")
      end
      _tax_amounts = tax_amounts.not_nil!
      OpenApi::ContainerValidator.validate(container: _tax_amounts) if _tax_amounts.is_a?(Array)
      @tax_amounts = _tax_amounts
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] total Object to be assigned
    def total=(total : Int64?)
      if total.nil?
        raise ArgumentError.new("\"total\" is required and cannot be null")
      end
      _total = total.not_nil!
      @total = _total
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
    # @param [Object] customer_balance_transaction Object to be assigned
    def customer_balance_transaction=(customer_balance_transaction : Stripe::CreditNoteCustomerBalanceTransaction?)
      if customer_balance_transaction.nil?
        return @customer_balance_transaction = nil
      end
      _customer_balance_transaction = customer_balance_transaction.not_nil!
      _customer_balance_transaction.validate if _customer_balance_transaction.is_a?(OpenApi::Validatable)
      @customer_balance_transaction = _customer_balance_transaction
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] memo Object to be assigned
    def memo=(memo : String?)
      if memo.nil?
        return @memo = nil
      end
      _memo = memo.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("memo", _memo.to_s.size, MAX_LENGTH_FOR_MEMO)
      @memo = _memo
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

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] out_of_band_amount Object to be assigned
    def out_of_band_amount=(out_of_band_amount : Int64?)
      if out_of_band_amount.nil?
        return @out_of_band_amount = nil
      end
      _out_of_band_amount = out_of_band_amount.not_nil!
      @out_of_band_amount = _out_of_band_amount
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] reason Object to be assigned
    def reason=(reason : String?)
      if reason.nil?
        return @reason = nil
      end
      _reason = reason.not_nil!
      OpenApi::EnumValidator.validate("reason", _reason, VALID_VALUES_FOR_REASON)
      @reason = _reason
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] refund Object to be assigned
    def refund=(refund : Stripe::CreditNoteRefund?)
      if refund.nil?
        return @refund = nil
      end
      _refund = refund.not_nil!
      _refund.validate if _refund.is_a?(OpenApi::Validatable)
      @refund = _refund
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] subtotal_excluding_tax Object to be assigned
    def subtotal_excluding_tax=(subtotal_excluding_tax : Int64?)
      if subtotal_excluding_tax.nil?
        return @subtotal_excluding_tax = nil
      end
      _subtotal_excluding_tax = subtotal_excluding_tax.not_nil!
      @subtotal_excluding_tax = _subtotal_excluding_tax
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] total_excluding_tax Object to be assigned
    def total_excluding_tax=(total_excluding_tax : Int64?)
      if total_excluding_tax.nil?
        return @total_excluding_tax = nil
      end
      _total_excluding_tax = total_excluding_tax.not_nil!
      @total_excluding_tax = _total_excluding_tax
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] voided_at Object to be assigned
    def voided_at=(voided_at : Int64?)
      if voided_at.nil?
        return @voided_at = nil
      end
      _voided_at = voided_at.not_nil!
      @voided_at = _voided_at
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@amount, @created, @currency, @customer, @discount_amount, @discount_amounts, @id, @invoice, @lines, @livemode, @number, @object, @pdf, @status, @subtotal, @tax_amounts, @total, @_type, @customer_balance_transaction, @customer_balance_transaction_present, @memo, @memo_present, @metadata, @metadata_present, @out_of_band_amount, @out_of_band_amount_present, @reason, @reason_present, @refund, @refund_present, @subtotal_excluding_tax, @subtotal_excluding_tax_present, @total_excluding_tax, @total_excluding_tax_present, @voided_at, @voided_at_present)
  end
end
