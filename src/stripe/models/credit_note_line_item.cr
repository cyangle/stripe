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
  #
  class CreditNoteLineItem
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The integer amount in %s representing the gross amount being credited for this line item, excluding (exclusive) tax and discounts.
    @[JSON::Field(key: "amount", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter amount : Int64? = nil

    # The integer amount in %s representing the discount being credited for this line item.
    @[JSON::Field(key: "discount_amount", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter discount_amount : Int64? = nil

    # The amount of discount calculated per discount for this line item
    @[JSON::Field(key: "discount_amounts", type: Array(Stripe::DiscountsResourceDiscountAmount)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter discount_amounts : Array(Stripe::DiscountsResourceDiscountAmount)? = nil

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
    ERROR_MESSAGE_FOR_OBJECT = "invalid value for \"object\", must be one of [credit_note_line_item]."
    VALID_VALUES_FOR_OBJECT  = String.static_array("credit_note_line_item")

    # The amount of tax calculated per tax rate for this line item
    @[JSON::Field(key: "tax_amounts", type: Array(Stripe::CreditNoteTaxAmount)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter tax_amounts : Array(Stripe::CreditNoteTaxAmount)? = nil

    # The tax rates which apply to the line item.
    @[JSON::Field(key: "tax_rates", type: Array(Stripe::TaxRate)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter tax_rates : Array(Stripe::TaxRate)? = nil

    # The type of the credit note line item, one of `invoice_line_item` or `custom_line_item`. When the type is `invoice_line_item` there is an additional `invoice_line_item` property on the resource the value of which is the id of the credited line item on the invoice.
    @[JSON::Field(key: "type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter _type : String? = nil
    ERROR_MESSAGE_FOR__TYPE = "invalid value for \"_type\", must be one of [custom_line_item, invoice_line_item]."
    VALID_VALUES_FOR__TYPE  = String.static_array("custom_line_item", "invoice_line_item")

    # End of Required Properties

    # Optional Properties

    # The integer amount in %s representing the amount being credited for this line item, excluding all tax and discounts.
    @[JSON::Field(key: "amount_excluding_tax", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: amount_excluding_tax.nil? && !amount_excluding_tax_present?)]
    getter amount_excluding_tax : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? amount_excluding_tax_present : Bool = false

    # Description of the item being credited.
    @[JSON::Field(key: "description", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: description.nil? && !description_present?)]
    getter description : String? = nil
    MAX_LENGTH_FOR_DESCRIPTION = 5000

    @[JSON::Field(ignore: true)]
    property? description_present : Bool = false

    # ID of the invoice line item being credited
    @[JSON::Field(key: "invoice_line_item", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter invoice_line_item : String? = nil
    MAX_LENGTH_FOR_INVOICE_LINE_ITEM = 5000

    # The number of units of product being credited.
    @[JSON::Field(key: "quantity", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: quantity.nil? && !quantity_present?)]
    getter quantity : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? quantity_present : Bool = false

    # The cost of each unit of product being credited.
    @[JSON::Field(key: "unit_amount", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: unit_amount.nil? && !unit_amount_present?)]
    getter unit_amount : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? unit_amount_present : Bool = false

    # Same as `unit_amount`, but contains a decimal value with at most 12 decimal places.
    @[JSON::Field(key: "unit_amount_decimal", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: unit_amount_decimal.nil? && !unit_amount_decimal_present?)]
    getter unit_amount_decimal : String? = nil

    @[JSON::Field(ignore: true)]
    property? unit_amount_decimal_present : Bool = false

    # The amount in %s representing the unit amount being credited for this line item, excluding all tax and discounts.
    @[JSON::Field(key: "unit_amount_excluding_tax", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: unit_amount_excluding_tax.nil? && !unit_amount_excluding_tax_present?)]
    getter unit_amount_excluding_tax : String? = nil

    @[JSON::Field(ignore: true)]
    property? unit_amount_excluding_tax_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @amount : Int64? = nil,
      @discount_amount : Int64? = nil,
      @discount_amounts : Array(Stripe::DiscountsResourceDiscountAmount)? = nil,
      @id : String? = nil,
      @livemode : Bool? = nil,
      @object : String? = nil,
      @tax_amounts : Array(Stripe::CreditNoteTaxAmount)? = nil,
      @tax_rates : Array(Stripe::TaxRate)? = nil,
      @_type : String? = nil,
      # Optional properties
      @amount_excluding_tax : Int64? = nil,
      @description : String? = nil,
      @invoice_line_item : String? = nil,
      @quantity : Int64? = nil,
      @unit_amount : Int64? = nil,
      @unit_amount_decimal : String? = nil,
      @unit_amount_excluding_tax : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"amount\" is required and cannot be null") if @amount.nil?

      invalid_properties.push("\"discount_amount\" is required and cannot be null") if @discount_amount.nil?

      invalid_properties.push("\"discount_amounts\" is required and cannot be null") if @discount_amounts.nil?

      unless (_discount_amounts = @discount_amounts).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "discount_amounts", container: _discount_amounts)) if _discount_amounts.is_a?(Array)
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
      invalid_properties.push("\"tax_amounts\" is required and cannot be null") if @tax_amounts.nil?

      unless (_tax_amounts = @tax_amounts).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "tax_amounts", container: _tax_amounts)) if _tax_amounts.is_a?(Array)
      end
      invalid_properties.push("\"tax_rates\" is required and cannot be null") if @tax_rates.nil?

      unless (_tax_rates = @tax_rates).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "tax_rates", container: _tax_rates)) if _tax_rates.is_a?(Array)
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
      unless (_invoice_line_item = @invoice_line_item).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("invoice_line_item", _invoice_line_item.to_s.size, MAX_LENGTH_FOR_INVOICE_LINE_ITEM)
          invalid_properties.push(max_length_error)
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @amount.nil?

      return false if @discount_amount.nil?

      return false if @discount_amounts.nil?
      unless (_discount_amounts = @discount_amounts).nil?
        return false if _discount_amounts.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _discount_amounts)
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

      return false if @tax_amounts.nil?
      unless (_tax_amounts = @tax_amounts).nil?
        return false if _tax_amounts.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _tax_amounts)
      end

      return false if @tax_rates.nil?
      unless (_tax_rates = @tax_rates).nil?
        return false if _tax_rates.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _tax_rates)
      end

      return false if @_type.nil?
      unless (__type = @_type).nil?
        return false unless OpenApi::EnumValidator.valid?(__type, VALID_VALUES_FOR__TYPE)
      end

      unless (_description = @description).nil?
        return false if _description.to_s.size > MAX_LENGTH_FOR_DESCRIPTION
      end

      unless (_invoice_line_item = @invoice_line_item).nil?
        return false if _invoice_line_item.to_s.size > MAX_LENGTH_FOR_INVOICE_LINE_ITEM
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
    # @param [Object] tax_rates Object to be assigned
    def tax_rates=(tax_rates : Array(Stripe::TaxRate)?)
      if tax_rates.nil?
        raise ArgumentError.new("\"tax_rates\" is required and cannot be null")
      end
      _tax_rates = tax_rates.not_nil!
      OpenApi::ContainerValidator.validate(container: _tax_rates) if _tax_rates.is_a?(Array)
      @tax_rates = _tax_rates
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
    # @param [Object] amount_excluding_tax Object to be assigned
    def amount_excluding_tax=(amount_excluding_tax : Int64?)
      if amount_excluding_tax.nil?
        return @amount_excluding_tax = nil
      end
      _amount_excluding_tax = amount_excluding_tax.not_nil!
      @amount_excluding_tax = _amount_excluding_tax
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
    # @param [Object] invoice_line_item Object to be assigned
    def invoice_line_item=(invoice_line_item : String?)
      if invoice_line_item.nil?
        return @invoice_line_item = nil
      end
      _invoice_line_item = invoice_line_item.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("invoice_line_item", _invoice_line_item.to_s.size, MAX_LENGTH_FOR_INVOICE_LINE_ITEM)
      @invoice_line_item = _invoice_line_item
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] quantity Object to be assigned
    def quantity=(quantity : Int64?)
      if quantity.nil?
        return @quantity = nil
      end
      _quantity = quantity.not_nil!
      @quantity = _quantity
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] unit_amount Object to be assigned
    def unit_amount=(unit_amount : Int64?)
      if unit_amount.nil?
        return @unit_amount = nil
      end
      _unit_amount = unit_amount.not_nil!
      @unit_amount = _unit_amount
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] unit_amount_decimal Object to be assigned
    def unit_amount_decimal=(unit_amount_decimal : String?)
      if unit_amount_decimal.nil?
        return @unit_amount_decimal = nil
      end
      _unit_amount_decimal = unit_amount_decimal.not_nil!
      @unit_amount_decimal = _unit_amount_decimal
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] unit_amount_excluding_tax Object to be assigned
    def unit_amount_excluding_tax=(unit_amount_excluding_tax : String?)
      if unit_amount_excluding_tax.nil?
        return @unit_amount_excluding_tax = nil
      end
      _unit_amount_excluding_tax = unit_amount_excluding_tax.not_nil!
      @unit_amount_excluding_tax = _unit_amount_excluding_tax
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@amount, @discount_amount, @discount_amounts, @id, @livemode, @object, @tax_amounts, @tax_rates, @_type, @amount_excluding_tax, @amount_excluding_tax_present, @description, @description_present, @invoice_line_item, @quantity, @quantity_present, @unit_amount, @unit_amount_present, @unit_amount_decimal, @unit_amount_decimal_present, @unit_amount_excluding_tax, @unit_amount_excluding_tax_present)
  end
end
