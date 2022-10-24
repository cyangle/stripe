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
  class PostCreditNotesRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # ID of the invoice.
    @[JSON::Field(key: "invoice", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter invoice : String? = nil
    MAX_LENGTH_FOR_INVOICE = 5000

    # End of Required Properties

    # Optional Properties

    # The integer amount in cents (or local equivalent) representing the total amount of the credit note.
    @[JSON::Field(key: "amount", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter amount : Int64? = nil

    # The integer amount in cents (or local equivalent) representing the amount to credit the customer's balance, which will be automatically applied to their next invoice.
    @[JSON::Field(key: "credit_amount", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter credit_amount : Int64? = nil

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    # Line items that make up the credit note.
    @[JSON::Field(key: "lines", type: Array(Stripe::CreditNoteLineItemParams)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter lines : Array(Stripe::CreditNoteLineItemParams)? = nil

    # The credit note's memo appears on the credit note PDF.
    @[JSON::Field(key: "memo", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter memo : String? = nil
    MAX_LENGTH_FOR_MEMO = 5000

    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Hash(String, String)? = nil

    # The integer amount in cents (or local equivalent) representing the amount that is credited outside of Stripe.
    @[JSON::Field(key: "out_of_band_amount", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter out_of_band_amount : Int64? = nil

    # Reason for issuing this credit note, one of `duplicate`, `fraudulent`, `order_change`, or `product_unsatisfactory`
    @[JSON::Field(key: "reason", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter reason : String? = nil
    ERROR_MESSAGE_FOR_REASON = "invalid value for \"reason\", must be one of [duplicate, fraudulent, order_change, product_unsatisfactory]."
    VALID_VALUES_FOR_REASON  = String.static_array("duplicate", "fraudulent", "order_change", "product_unsatisfactory")

    # ID of an existing refund to link this credit note to.
    @[JSON::Field(key: "refund", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter refund : String? = nil

    # The integer amount in cents (or local equivalent) representing the amount to refund. If set, a refund will be created for the charge associated with the invoice.
    @[JSON::Field(key: "refund_amount", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter refund_amount : Int64? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @invoice : String? = nil,
      # Optional properties
      @amount : Int64? = nil,
      @credit_amount : Int64? = nil,
      @expand : Array(String)? = nil,
      @lines : Array(Stripe::CreditNoteLineItemParams)? = nil,
      @memo : String? = nil,
      @metadata : Hash(String, String)? = nil,
      @out_of_band_amount : Int64? = nil,
      @reason : String? = nil,
      @refund : String? = nil,
      @refund_amount : Int64? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"invoice\" is required and cannot be null") if @invoice.nil?

      unless (_invoice = @invoice).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("invoice", _invoice.to_s.size, MAX_LENGTH_FOR_INVOICE)
          invalid_properties.push(max_length_error)
        end
      end

      unless (_lines = @lines).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "lines", container: _lines)) if _lines.is_a?(Array)
      end
      unless (_memo = @memo).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("memo", _memo.to_s.size, MAX_LENGTH_FOR_MEMO)
          invalid_properties.push(max_length_error)
        end
      end

      unless (_reason = @reason).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_REASON) unless OpenApi::EnumValidator.valid?(_reason, VALID_VALUES_FOR_REASON)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @invoice.nil?
      unless (_invoice = @invoice).nil?
        return false if _invoice.to_s.size > MAX_LENGTH_FOR_INVOICE
      end

      unless (_lines = @lines).nil?
        return false if _lines.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _lines)
      end

      unless (_memo = @memo).nil?
        return false if _memo.to_s.size > MAX_LENGTH_FOR_MEMO
      end

      unless (_reason = @reason).nil?
        return false unless OpenApi::EnumValidator.valid?(_reason, VALID_VALUES_FOR_REASON)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] invoice Object to be assigned
    def invoice=(invoice : String?)
      if invoice.nil?
        raise ArgumentError.new("\"invoice\" is required and cannot be null")
      end
      _invoice = invoice.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("invoice", _invoice.to_s.size, MAX_LENGTH_FOR_INVOICE)
      @invoice = _invoice
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount Object to be assigned
    def amount=(amount : Int64?)
      if amount.nil?
        return @amount = nil
      end
      _amount = amount.not_nil!
      @amount = _amount
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] credit_amount Object to be assigned
    def credit_amount=(credit_amount : Int64?)
      if credit_amount.nil?
        return @credit_amount = nil
      end
      _credit_amount = credit_amount.not_nil!
      @credit_amount = _credit_amount
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expand Object to be assigned
    def expand=(expand : Array(String)?)
      if expand.nil?
        return @expand = nil
      end
      _expand = expand.not_nil!
      @expand = _expand
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] lines Object to be assigned
    def lines=(lines : Array(Stripe::CreditNoteLineItemParams)?)
      if lines.nil?
        return @lines = nil
      end
      _lines = lines.not_nil!
      OpenApi::ContainerValidator.validate(container: _lines) if _lines.is_a?(Array)
      @lines = _lines
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
    def refund=(refund : String?)
      if refund.nil?
        return @refund = nil
      end
      _refund = refund.not_nil!
      @refund = _refund
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] refund_amount Object to be assigned
    def refund_amount=(refund_amount : Int64?)
      if refund_amount.nil?
        return @refund_amount = nil
      end
      _refund_amount = refund_amount.not_nil!
      @refund_amount = _refund_amount
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@invoice, @amount, @credit_amount, @expand, @lines, @memo, @metadata, @out_of_band_amount, @reason, @refund, @refund_amount)
  end
end
