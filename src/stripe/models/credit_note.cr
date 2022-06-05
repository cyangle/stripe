#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-08-27
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module Stripe
  # Issue a credit note to adjust an invoice's amount after the invoice is finalized.  Related guide: [Credit Notes](https://stripe.com/docs/billing/invoices/credit-notes).
  @[JSON::Serializable::Options(emit_nulls: true)]
  class CreditNote
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # The integer amount in %s representing the total amount of the credit note, including tax.
    @[JSON::Field(key: "amount", type: Int64)]
    property amount : Int64

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64)]
    property created : Int64

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[JSON::Field(key: "currency", type: String)]
    property currency : String

    @[JSON::Field(key: "customer", type: CreditNoteCustomer)]
    property customer : CreditNoteCustomer

    # The integer amount in %s representing the total amount of discount that was credited.
    @[JSON::Field(key: "discount_amount", type: Int64)]
    property discount_amount : Int64

    # The aggregate amounts calculated per discount for all line items.
    @[JSON::Field(key: "discount_amounts", type: Array(DiscountsResourceDiscountAmount))]
    property discount_amounts : Array(DiscountsResourceDiscountAmount)

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String)]
    getter id : String

    @[JSON::Field(key: "invoice", type: CreditNoteInvoice)]
    property invoice : CreditNoteInvoice

    @[JSON::Field(key: "lines", type: CreditNoteLinesList1)]
    property lines : CreditNoteLinesList1

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool)]
    property livemode : Bool

    # A unique number that identifies this particular credit note and appears on the PDF of the credit note and its associated invoice.
    @[JSON::Field(key: "number", type: String)]
    getter number : String

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String)]
    getter object : String

    ENUM_VALIDATOR_FOR_OBJECT = EnumValidator.new("object", "String", ["credit_note"])

    # The link to download the PDF of the credit note.
    @[JSON::Field(key: "pdf", type: String)]
    getter pdf : String

    # Status of this credit note, one of `issued` or `void`. Learn more about [voiding credit notes](https://stripe.com/docs/billing/invoices/credit-notes#voiding).
    @[JSON::Field(key: "status", type: String)]
    getter status : String

    ENUM_VALIDATOR_FOR_STATUS = EnumValidator.new("status", "String", ["issued", "void"])

    # The integer amount in %s representing the amount of the credit note, excluding tax and invoice level discounts.
    @[JSON::Field(key: "subtotal", type: Int64)]
    property subtotal : Int64

    # The aggregate amounts calculated per tax rate for all line items.
    @[JSON::Field(key: "tax_amounts", type: Array(CreditNoteTaxAmount))]
    property tax_amounts : Array(CreditNoteTaxAmount)

    # The integer amount in %s representing the total amount of the credit note, including tax and all discount.
    @[JSON::Field(key: "total", type: Int64)]
    property total : Int64

    # Type of this credit note, one of `pre_payment` or `post_payment`. A `pre_payment` credit note means it was issued when the invoice was open. A `post_payment` credit note means it was issued when the invoice was paid.
    @[JSON::Field(key: "type", type: String)]
    getter _type : String

    ENUM_VALIDATOR_FOR__TYPE = EnumValidator.new("_type", "String", ["post_payment", "pre_payment"])

    # Optional properties

    @[JSON::Field(key: "customer_balance_transaction", type: CreditNoteCustomerBalanceTransaction?, presence: true, ignore_serialize: customer_balance_transaction.nil? && !customer_balance_transaction_present?)]
    property customer_balance_transaction : CreditNoteCustomerBalanceTransaction?

    @[JSON::Field(ignore: true)]
    property? customer_balance_transaction_present : Bool = false

    # Customer-facing text that appears on the credit note PDF.
    @[JSON::Field(key: "memo", type: String?, presence: true, ignore_serialize: memo.nil? && !memo_present?)]
    getter memo : String?

    @[JSON::Field(ignore: true)]
    property? memo_present : Bool = false

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    @[JSON::Field(key: "metadata", type: Hash(String, String)?, presence: true, ignore_serialize: metadata.nil? && !metadata_present?)]
    property metadata : Hash(String, String)?

    @[JSON::Field(ignore: true)]
    property? metadata_present : Bool = false

    # Amount that was credited outside of Stripe.
    @[JSON::Field(key: "out_of_band_amount", type: Int64?, presence: true, ignore_serialize: out_of_band_amount.nil? && !out_of_band_amount_present?)]
    property out_of_band_amount : Int64?

    @[JSON::Field(ignore: true)]
    property? out_of_band_amount_present : Bool = false

    # Reason for issuing this credit note, one of `duplicate`, `fraudulent`, `order_change`, or `product_unsatisfactory`
    @[JSON::Field(key: "reason", type: String?, presence: true, ignore_serialize: reason.nil? && !reason_present?)]
    getter reason : String?

    @[JSON::Field(ignore: true)]
    property? reason_present : Bool = false

    ENUM_VALIDATOR_FOR_REASON = EnumValidator.new("reason", "String", ["duplicate", "fraudulent", "order_change", "product_unsatisfactory"])

    @[JSON::Field(key: "refund", type: CreditNoteRefund?, presence: true, ignore_serialize: refund.nil? && !refund_present?)]
    property refund : CreditNoteRefund?

    @[JSON::Field(ignore: true)]
    property? refund_present : Bool = false

    # The time that the credit note was voided.
    @[JSON::Field(key: "voided_at", type: Int64?, presence: true, ignore_serialize: voided_at.nil? && !voided_at_present?)]
    property voided_at : Int64?

    @[JSON::Field(ignore: true)]
    property? voided_at_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @amount : Int64,
      @created : Int64,
      @currency : String,
      @customer : CreditNoteCustomer,
      @discount_amount : Int64,
      @discount_amounts : Array(DiscountsResourceDiscountAmount),
      @id : String,
      @invoice : CreditNoteInvoice,
      @lines : CreditNoteLinesList1,
      @livemode : Bool,
      @number : String,
      @object : String,
      @pdf : String,
      @status : String,
      @subtotal : Int64,
      @tax_amounts : Array(CreditNoteTaxAmount),
      @total : Int64,
      @_type : String,
      # Optional properties
      @customer_balance_transaction : CreditNoteCustomerBalanceTransaction? = nil,
      @memo : String? = nil,
      @metadata : Hash(String, String)? = nil,
      @out_of_band_amount : Int64? = nil,
      @reason : String? = nil,
      @refund : CreditNoteRefund? = nil,
      @voided_at : Int64? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if @id.to_s.size > 5000
        invalid_properties.push("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      if @number.to_s.size > 5000
        invalid_properties.push("invalid value for \"number\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_OBJECT.error_message) unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)

      if @pdf.to_s.size > 5000
        invalid_properties.push("invalid value for \"pdf\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_STATUS.error_message) unless ENUM_VALIDATOR_FOR_STATUS.valid?(@status, false)

      invalid_properties.push(ENUM_VALIDATOR_FOR__TYPE.error_message) unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type, false)

      if !@memo.nil? && @memo.to_s.size > 5000
        invalid_properties.push("invalid value for \"memo\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_REASON.error_message) unless ENUM_VALIDATOR_FOR_REASON.valid?(@reason)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.to_s.size > 5000
      return false if @number.to_s.size > 5000
      return false unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      return false if @pdf.to_s.size > 5000
      return false unless ENUM_VALIDATOR_FOR_STATUS.valid?(@status, false)
      return false unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type, false)
      return false if !@memo.nil? && @memo.to_s.size > 5000
      return false unless ENUM_VALIDATOR_FOR_REASON.valid?(@reason)

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] id Value to be assigned
    def id=(id)
      if id.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      @id = id
    end

    # Custom attribute writer method with validation
    # @param [Object] number Value to be assigned
    def number=(number)
      if number.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"number\", the character length must be smaller than or equal to 5000.")
      end

      @number = number
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object)
      ENUM_VALIDATOR_FOR_OBJECT.valid!(object, false)
      @object = object
    end

    # Custom attribute writer method with validation
    # @param [Object] pdf Value to be assigned
    def pdf=(pdf)
      if pdf.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"pdf\", the character length must be smaller than or equal to 5000.")
      end

      @pdf = pdf
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      ENUM_VALIDATOR_FOR_STATUS.valid!(status, false)
      @status = status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(_type)
      ENUM_VALIDATOR_FOR__TYPE.valid!(_type, false)
      @_type = _type
    end

    # Custom attribute writer method with validation
    # @param [Object] memo Value to be assigned
    def memo=(memo)
      if !memo.nil? && memo.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"memo\", the character length must be smaller than or equal to 5000.")
      end

      @memo = memo
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] reason Object to be assigned
    def reason=(reason)
      ENUM_VALIDATOR_FOR_REASON.valid!(reason)
      @reason = reason
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@amount, @created, @currency, @customer, @discount_amount, @discount_amounts, @id, @invoice, @lines, @livemode, @number, @object, @pdf, @status, @subtotal, @tax_amounts, @total, @_type, @customer_balance_transaction, @memo, @metadata, @out_of_band_amount, @reason, @refund, @voided_at)
  end
end
