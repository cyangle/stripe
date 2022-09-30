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
  class LineItem
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    # The amount, in %s.
    @[JSON::Field(key: "amount", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter amount : Int64? = nil

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[JSON::Field(key: "currency", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter currency : String? = nil

    # If true, discounts will apply to this line item. Always false for prorations.
    @[JSON::Field(key: "discountable", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter discountable : Bool? = nil

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter livemode : Bool? = nil

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Note that for line items with `type=subscription` this will reflect the metadata of the subscription that caused the line item to be created.
    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter metadata : Hash(String, String)? = nil

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter object : String? = nil

    VALID_VALUES_FOR_OBJECT = StaticArray["line_item"]

    @[JSON::Field(key: "period", type: Stripe::InvoiceLineItemPeriod?, default: nil, required: true, nullable: false, emit_null: false)]
    getter period : Stripe::InvoiceLineItemPeriod? = nil

    # Whether this is a proration.
    @[JSON::Field(key: "proration", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter proration : Bool? = nil

    # A string identifying the type of the source of this line item, either an `invoiceitem` or a `subscription`.
    @[JSON::Field(key: "type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter _type : String? = nil

    VALID_VALUES_FOR__TYPE = StaticArray["invoiceitem", "subscription"]

    # Optional properties

    # The integer amount in %s representing the amount for this line item, excluding all tax and discounts.
    @[JSON::Field(key: "amount_excluding_tax", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: amount_excluding_tax.nil? && !amount_excluding_tax_present?)]
    getter amount_excluding_tax : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? amount_excluding_tax_present : Bool = false

    # An arbitrary string attached to the object. Often useful for displaying to users.
    @[JSON::Field(key: "description", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: description.nil? && !description_present?)]
    getter description : String? = nil

    @[JSON::Field(ignore: true)]
    property? description_present : Bool = false

    # The amount of discount calculated per discount for this line item.
    @[JSON::Field(key: "discount_amounts", type: Array(Stripe::DiscountsResourceDiscountAmount)?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: discount_amounts.nil? && !discount_amounts_present?)]
    getter discount_amounts : Array(Stripe::DiscountsResourceDiscountAmount)? = nil

    @[JSON::Field(ignore: true)]
    property? discount_amounts_present : Bool = false

    # The discounts applied to the invoice line item. Line item discounts are applied before invoice discounts. Use `expand[]=discounts` to expand each discount.
    @[JSON::Field(key: "discounts", type: Array(Stripe::InvoiceitemDiscountsInner)?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: discounts.nil? && !discounts_present?)]
    getter discounts : Array(Stripe::InvoiceitemDiscountsInner)? = nil

    @[JSON::Field(ignore: true)]
    property? discounts_present : Bool = false

    # The ID of the [invoice item](https://stripe.com/docs/api/invoiceitems) associated with this line item if any.
    @[JSON::Field(key: "invoice_item", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter invoice_item : String? = nil

    @[JSON::Field(key: "price", type: Stripe::LineItemPrice?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: price.nil? && !price_present?)]
    getter price : Stripe::LineItemPrice? = nil

    @[JSON::Field(ignore: true)]
    property? price_present : Bool = false

    @[JSON::Field(key: "proration_details", type: Stripe::LineItemProrationDetails?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: proration_details.nil? && !proration_details_present?)]
    getter proration_details : Stripe::LineItemProrationDetails? = nil

    @[JSON::Field(ignore: true)]
    property? proration_details_present : Bool = false

    # The quantity of the subscription, if the line item is a subscription or a proration.
    @[JSON::Field(key: "quantity", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: quantity.nil? && !quantity_present?)]
    getter quantity : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? quantity_present : Bool = false

    # The subscription that the invoice item pertains to, if any.
    @[JSON::Field(key: "subscription", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: subscription.nil? && !subscription_present?)]
    getter subscription : String? = nil

    @[JSON::Field(ignore: true)]
    property? subscription_present : Bool = false

    # The subscription item that generated this invoice item. Left empty if the line item is not an explicit result of a subscription.
    @[JSON::Field(key: "subscription_item", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter subscription_item : String? = nil

    # The amount of tax calculated per tax rate for this line item
    @[JSON::Field(key: "tax_amounts", type: Array(Stripe::InvoiceTaxAmount)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter tax_amounts : Array(Stripe::InvoiceTaxAmount)? = nil

    # The tax rates which apply to the line item.
    @[JSON::Field(key: "tax_rates", type: Array(Stripe::TaxRate)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter tax_rates : Array(Stripe::TaxRate)? = nil

    # The amount in %s representing the unit amount for this line item, excluding all tax and discounts.
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
      @currency : String? = nil,
      @discountable : Bool? = nil,
      @id : String? = nil,
      @livemode : Bool? = nil,
      @metadata : Hash(String, String)? = nil,
      @object : String? = nil,
      @period : Stripe::InvoiceLineItemPeriod? = nil,
      @proration : Bool? = nil,
      @_type : String? = nil,
      # Optional properties
      @amount_excluding_tax : Int64? = nil,
      @description : String? = nil,
      @discount_amounts : Array(Stripe::DiscountsResourceDiscountAmount)? = nil,
      @discounts : Array(Stripe::InvoiceitemDiscountsInner)? = nil,
      @invoice_item : String? = nil,
      @price : Stripe::LineItemPrice? = nil,
      @proration_details : Stripe::LineItemProrationDetails? = nil,
      @quantity : Int64? = nil,
      @subscription : String? = nil,
      @subscription_item : String? = nil,
      @tax_amounts : Array(Stripe::InvoiceTaxAmount)? = nil,
      @tax_rates : Array(Stripe::TaxRate)? = nil,
      @unit_amount_excluding_tax : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"amount\" is required and cannot be null") if @amount.nil?

      invalid_properties.push("\"currency\" is required and cannot be null") if @currency.nil?

      invalid_properties.push("\"discountable\" is required and cannot be null") if @discountable.nil?

      invalid_properties.push("\"id\" is required and cannot be null") if @id.nil?

      if _id = @id
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("id", _id.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"livemode\" is required and cannot be null") if @livemode.nil?

      invalid_properties.push("\"metadata\" is required and cannot be null") if @metadata.nil?

      invalid_properties.push("\"object\" is required and cannot be null") if @object.nil?

      if _object = @object
        invalid_properties.push(OpenApi::EnumValidator.error_message("object", VALID_VALUES_FOR_OBJECT)) unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end
      invalid_properties.push("\"period\" is required and cannot be null") if @period.nil?

      if _period = @period
        invalid_properties.concat(_period.list_invalid_properties_for("period")) if _period.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"proration\" is required and cannot be null") if @proration.nil?

      invalid_properties.push("\"_type\" is required and cannot be null") if @_type.nil?

      if __type = @_type
        invalid_properties.push(OpenApi::EnumValidator.error_message("_type", VALID_VALUES_FOR__TYPE)) unless OpenApi::EnumValidator.valid?(__type, VALID_VALUES_FOR__TYPE)
      end

      if _description = @description
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("description", _description.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _discount_amounts = @discount_amounts
        invalid_properties.concat(OpenApi::ArrayValidator.list_invalid_properties_for(key: "discount_amounts", array: _discount_amounts)) if _discount_amounts.is_a?(Array)
      end
      if _discounts = @discounts
        invalid_properties.concat(OpenApi::ArrayValidator.list_invalid_properties_for(key: "discounts", array: _discounts)) if _discounts.is_a?(Array)
      end
      if _invoice_item = @invoice_item
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("invoice_item", _invoice_item.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _price = @price
        invalid_properties.concat(_price.list_invalid_properties_for("price")) if _price.is_a?(OpenApi::Validatable)
      end
      if _proration_details = @proration_details
        invalid_properties.concat(_proration_details.list_invalid_properties_for("proration_details")) if _proration_details.is_a?(OpenApi::Validatable)
      end

      if _subscription = @subscription
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("subscription", _subscription.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _subscription_item = @subscription_item
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("subscription_item", _subscription_item.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _tax_amounts = @tax_amounts
        invalid_properties.concat(OpenApi::ArrayValidator.list_invalid_properties_for(key: "tax_amounts", array: _tax_amounts)) if _tax_amounts.is_a?(Array)
      end
      if _tax_rates = @tax_rates
        invalid_properties.concat(OpenApi::ArrayValidator.list_invalid_properties_for(key: "tax_rates", array: _tax_rates)) if _tax_rates.is_a?(Array)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @amount.nil?

      return false if @currency.nil?

      return false if @discountable.nil?

      return false if @id.nil?
      if _id = @id
        return false if _id.to_s.size > 5000
      end

      return false if @livemode.nil?

      return false if @metadata.nil?

      return false if @object.nil?
      if _object = @object
        return false unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end

      return false if @period.nil?
      if _period = @period
        return false if _period.is_a?(OpenApi::Validatable) && !_period.valid?
      end

      return false if @proration.nil?

      return false if @_type.nil?
      if __type = @_type
        return false unless OpenApi::EnumValidator.valid?(__type, VALID_VALUES_FOR__TYPE)
      end

      if _description = @description
        return false if _description.to_s.size > 5000
      end

      if _discount_amounts = @discount_amounts
        return false if _discount_amounts.is_a?(Array) && !OpenApi::ArrayValidator.valid?(array: _discount_amounts)
      end

      if _discounts = @discounts
        return false if _discounts.is_a?(Array) && !OpenApi::ArrayValidator.valid?(array: _discounts)
      end

      if _invoice_item = @invoice_item
        return false if _invoice_item.to_s.size > 5000
      end

      if _price = @price
        return false if _price.is_a?(OpenApi::Validatable) && !_price.valid?
      end

      if _proration_details = @proration_details
        return false if _proration_details.is_a?(OpenApi::Validatable) && !_proration_details.valid?
      end

      if _subscription = @subscription
        return false if _subscription.to_s.size > 5000
      end

      if _subscription_item = @subscription_item
        return false if _subscription_item.to_s.size > 5000
      end

      if _tax_amounts = @tax_amounts
        return false if _tax_amounts.is_a?(Array) && !OpenApi::ArrayValidator.valid?(array: _tax_amounts)
      end

      if _tax_rates = @tax_rates
        return false if _tax_rates.is_a?(Array) && !OpenApi::ArrayValidator.valid?(array: _tax_rates)
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
    # @param [Object] currency Object to be assigned
    def currency=(currency : String?)
      if currency.nil?
        raise ArgumentError.new("\"currency\" is required and cannot be null")
      end
      _currency = currency.not_nil!
      @currency = _currency
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] discountable Object to be assigned
    def discountable=(discountable : Bool?)
      if discountable.nil?
        raise ArgumentError.new("\"discountable\" is required and cannot be null")
      end
      _discountable = discountable.not_nil!
      @discountable = _discountable
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] id Object to be assigned
    def id=(id : String?)
      if id.nil?
        raise ArgumentError.new("\"id\" is required and cannot be null")
      end
      _id = id.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("id", _id.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
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
    # @param [Object] metadata Object to be assigned
    def metadata=(metadata : Hash(String, String)?)
      if metadata.nil?
        raise ArgumentError.new("\"metadata\" is required and cannot be null")
      end
      _metadata = metadata.not_nil!
      @metadata = _metadata
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
    # @param [Object] period Object to be assigned
    def period=(period : Stripe::InvoiceLineItemPeriod?)
      if period.nil?
        raise ArgumentError.new("\"period\" is required and cannot be null")
      end
      _period = period.not_nil!
      _period.validate if _period.is_a?(OpenApi::Validatable)
      @period = _period
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] proration Object to be assigned
    def proration=(proration : Bool?)
      if proration.nil?
        raise ArgumentError.new("\"proration\" is required and cannot be null")
      end
      _proration = proration.not_nil!
      @proration = _proration
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
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("description", _description.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @description = _description
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] discount_amounts Object to be assigned
    def discount_amounts=(discount_amounts : Array(Stripe::DiscountsResourceDiscountAmount)?)
      if discount_amounts.nil?
        return @discount_amounts = nil
      end
      _discount_amounts = discount_amounts.not_nil!
      OpenApi::ArrayValidator.validate(array: _discount_amounts) if _discount_amounts.is_a?(Array)
      @discount_amounts = _discount_amounts
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] discounts Object to be assigned
    def discounts=(discounts : Array(Stripe::InvoiceitemDiscountsInner)?)
      if discounts.nil?
        return @discounts = nil
      end
      _discounts = discounts.not_nil!
      OpenApi::ArrayValidator.validate(array: _discounts) if _discounts.is_a?(Array)
      @discounts = _discounts
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] invoice_item Object to be assigned
    def invoice_item=(invoice_item : String?)
      if invoice_item.nil?
        return @invoice_item = nil
      end
      _invoice_item = invoice_item.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("invoice_item", _invoice_item.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @invoice_item = _invoice_item
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] price Object to be assigned
    def price=(price : Stripe::LineItemPrice?)
      if price.nil?
        return @price = nil
      end
      _price = price.not_nil!
      _price.validate if _price.is_a?(OpenApi::Validatable)
      @price = _price
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] proration_details Object to be assigned
    def proration_details=(proration_details : Stripe::LineItemProrationDetails?)
      if proration_details.nil?
        return @proration_details = nil
      end
      _proration_details = proration_details.not_nil!
      _proration_details.validate if _proration_details.is_a?(OpenApi::Validatable)
      @proration_details = _proration_details
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
    # @param [Object] subscription Object to be assigned
    def subscription=(subscription : String?)
      if subscription.nil?
        return @subscription = nil
      end
      _subscription = subscription.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("subscription", _subscription.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @subscription = _subscription
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] subscription_item Object to be assigned
    def subscription_item=(subscription_item : String?)
      if subscription_item.nil?
        return @subscription_item = nil
      end
      _subscription_item = subscription_item.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("subscription_item", _subscription_item.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @subscription_item = _subscription_item
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tax_amounts Object to be assigned
    def tax_amounts=(tax_amounts : Array(Stripe::InvoiceTaxAmount)?)
      if tax_amounts.nil?
        return @tax_amounts = nil
      end
      _tax_amounts = tax_amounts.not_nil!
      OpenApi::ArrayValidator.validate(array: _tax_amounts) if _tax_amounts.is_a?(Array)
      @tax_amounts = _tax_amounts
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tax_rates Object to be assigned
    def tax_rates=(tax_rates : Array(Stripe::TaxRate)?)
      if tax_rates.nil?
        return @tax_rates = nil
      end
      _tax_rates = tax_rates.not_nil!
      OpenApi::ArrayValidator.validate(array: _tax_rates) if _tax_rates.is_a?(Array)
      @tax_rates = _tax_rates
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
    def_equals_and_hash(@amount, @currency, @discountable, @id, @livemode, @metadata, @object, @period, @proration, @_type, @amount_excluding_tax, @amount_excluding_tax_present, @description, @description_present, @discount_amounts, @discount_amounts_present, @discounts, @discounts_present, @invoice_item, @price, @price_present, @proration_details, @proration_details_present, @quantity, @quantity_present, @subscription, @subscription_present, @subscription_item, @tax_amounts, @tax_rates, @unit_amount_excluding_tax, @unit_amount_excluding_tax_present)
  end
end
