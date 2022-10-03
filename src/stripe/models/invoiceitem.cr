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
  # Sometimes you want to add a charge or credit to a customer, but actually charge or credit the customer's card only at the end of a regular billing cycle. This is useful for combining several charges (to minimize per-transaction fees), or for having Stripe tabulate your usage-based billing totals.  Related guide: [Subscription Invoices](https://stripe.com/docs/billing/invoices/subscription#adding-upcoming-invoice-items).
  class Invoiceitem
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Amount (in the `currency` specified) of the invoice item. This should always be equal to `unit_amount * quantity`.
    @[JSON::Field(key: "amount", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter amount : Int64? = nil

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[JSON::Field(key: "currency", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter currency : String? = nil

    @[JSON::Field(key: "customer", type: Stripe::InvoiceitemCustomer?, default: nil, required: true, nullable: false, emit_null: false)]
    getter customer : Stripe::InvoiceitemCustomer? = nil

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "date", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter date : Int64? = nil

    # If true, discounts will apply to this invoice item. Always false for prorations.
    @[JSON::Field(key: "discountable", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter discountable : Bool? = nil

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
    ERROR_MESSAGE_FOR_OBJECT = "invalid value for \"object\", must be one of [invoiceitem]."
    VALID_VALUES_FOR_OBJECT  = StaticArray["invoiceitem"]

    @[JSON::Field(key: "period", type: Stripe::InvoiceLineItemPeriod?, default: nil, required: true, nullable: false, emit_null: false)]
    getter period : Stripe::InvoiceLineItemPeriod? = nil

    # Whether the invoice item was created automatically as a proration adjustment when the customer switched plans.
    @[JSON::Field(key: "proration", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter proration : Bool? = nil

    # Quantity of units for the invoice item. If the invoice item is a proration, the quantity of the subscription that the proration was computed for.
    @[JSON::Field(key: "quantity", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter quantity : Int64? = nil

    # End of Required Properties

    # Optional Properties

    # An arbitrary string attached to the object. Often useful for displaying to users.
    @[JSON::Field(key: "description", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: description.nil? && !description_present?)]
    getter description : String? = nil
    MAX_LENGTH_FOR_DESCRIPTION = 5000

    @[JSON::Field(ignore: true)]
    property? description_present : Bool = false

    # The discounts which apply to the invoice item. Item discounts are applied before invoice discounts. Use `expand[]=discounts` to expand each discount.
    @[JSON::Field(key: "discounts", type: Array(Stripe::InvoiceitemDiscountsInner)?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: discounts.nil? && !discounts_present?)]
    getter discounts : Array(Stripe::InvoiceitemDiscountsInner)? = nil

    @[JSON::Field(ignore: true)]
    property? discounts_present : Bool = false

    @[JSON::Field(key: "invoice", type: Stripe::InvoiceitemInvoice?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: invoice.nil? && !invoice_present?)]
    getter invoice : Stripe::InvoiceitemInvoice? = nil

    @[JSON::Field(ignore: true)]
    property? invoice_present : Bool = false

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: metadata.nil? && !metadata_present?)]
    getter metadata : Hash(String, String)? = nil

    @[JSON::Field(ignore: true)]
    property? metadata_present : Bool = false

    @[JSON::Field(key: "price", type: Stripe::InvoiceitemPrice?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: price.nil? && !price_present?)]
    getter price : Stripe::InvoiceitemPrice? = nil

    @[JSON::Field(ignore: true)]
    property? price_present : Bool = false

    @[JSON::Field(key: "subscription", type: Stripe::InvoiceitemSubscription?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: subscription.nil? && !subscription_present?)]
    getter subscription : Stripe::InvoiceitemSubscription? = nil

    @[JSON::Field(ignore: true)]
    property? subscription_present : Bool = false

    # The subscription item that this invoice item has been created for, if any.
    @[JSON::Field(key: "subscription_item", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter subscription_item : String? = nil
    MAX_LENGTH_FOR_SUBSCRIPTION_ITEM = 5000

    # The tax rates which apply to the invoice item. When set, the `default_tax_rates` on the invoice do not apply to this invoice item.
    @[JSON::Field(key: "tax_rates", type: Array(Stripe::TaxRate)?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: tax_rates.nil? && !tax_rates_present?)]
    getter tax_rates : Array(Stripe::TaxRate)? = nil

    @[JSON::Field(ignore: true)]
    property? tax_rates_present : Bool = false

    @[JSON::Field(key: "test_clock", type: Stripe::InvoiceitemTestClock?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: test_clock.nil? && !test_clock_present?)]
    getter test_clock : Stripe::InvoiceitemTestClock? = nil

    @[JSON::Field(ignore: true)]
    property? test_clock_present : Bool = false

    # Unit amount (in the `currency` specified) of the invoice item.
    @[JSON::Field(key: "unit_amount", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: unit_amount.nil? && !unit_amount_present?)]
    getter unit_amount : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? unit_amount_present : Bool = false

    # Same as `unit_amount`, but contains a decimal value with at most 12 decimal places.
    @[JSON::Field(key: "unit_amount_decimal", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: unit_amount_decimal.nil? && !unit_amount_decimal_present?)]
    getter unit_amount_decimal : String? = nil

    @[JSON::Field(ignore: true)]
    property? unit_amount_decimal_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @amount : Int64? = nil,
      @currency : String? = nil,
      @customer : Stripe::InvoiceitemCustomer? = nil,
      @date : Int64? = nil,
      @discountable : Bool? = nil,
      @id : String? = nil,
      @livemode : Bool? = nil,
      @object : String? = nil,
      @period : Stripe::InvoiceLineItemPeriod? = nil,
      @proration : Bool? = nil,
      @quantity : Int64? = nil,
      # Optional properties
      @description : String? = nil,
      @discounts : Array(Stripe::InvoiceitemDiscountsInner)? = nil,
      @invoice : Stripe::InvoiceitemInvoice? = nil,
      @metadata : Hash(String, String)? = nil,
      @price : Stripe::InvoiceitemPrice? = nil,
      @subscription : Stripe::InvoiceitemSubscription? = nil,
      @subscription_item : String? = nil,
      @tax_rates : Array(Stripe::TaxRate)? = nil,
      @test_clock : Stripe::InvoiceitemTestClock? = nil,
      @unit_amount : Int64? = nil,
      @unit_amount_decimal : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"amount\" is required and cannot be null") if @amount.nil?

      invalid_properties.push("\"currency\" is required and cannot be null") if @currency.nil?

      invalid_properties.push("\"customer\" is required and cannot be null") if @customer.nil?

      unless (_customer = @customer).nil?
        invalid_properties.concat(_customer.list_invalid_properties_for("customer")) if _customer.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"date\" is required and cannot be null") if @date.nil?

      invalid_properties.push("\"discountable\" is required and cannot be null") if @discountable.nil?

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
      invalid_properties.push("\"period\" is required and cannot be null") if @period.nil?

      unless (_period = @period).nil?
        invalid_properties.concat(_period.list_invalid_properties_for("period")) if _period.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"proration\" is required and cannot be null") if @proration.nil?

      invalid_properties.push("\"quantity\" is required and cannot be null") if @quantity.nil?

      unless (_description = @description).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("description", _description.to_s.size, MAX_LENGTH_FOR_DESCRIPTION)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_discounts = @discounts).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "discounts", container: _discounts)) if _discounts.is_a?(Array)
      end
      unless (_invoice = @invoice).nil?
        invalid_properties.concat(_invoice.list_invalid_properties_for("invoice")) if _invoice.is_a?(OpenApi::Validatable)
      end

      unless (_price = @price).nil?
        invalid_properties.concat(_price.list_invalid_properties_for("price")) if _price.is_a?(OpenApi::Validatable)
      end
      unless (_subscription = @subscription).nil?
        invalid_properties.concat(_subscription.list_invalid_properties_for("subscription")) if _subscription.is_a?(OpenApi::Validatable)
      end
      unless (_subscription_item = @subscription_item).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("subscription_item", _subscription_item.to_s.size, MAX_LENGTH_FOR_SUBSCRIPTION_ITEM)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_tax_rates = @tax_rates).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "tax_rates", container: _tax_rates)) if _tax_rates.is_a?(Array)
      end
      unless (_test_clock = @test_clock).nil?
        invalid_properties.concat(_test_clock.list_invalid_properties_for("test_clock")) if _test_clock.is_a?(OpenApi::Validatable)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @amount.nil?

      return false if @currency.nil?

      return false if @customer.nil?
      unless (_customer = @customer).nil?
        return false if _customer.is_a?(OpenApi::Validatable) && !_customer.valid?
      end

      return false if @date.nil?

      return false if @discountable.nil?

      return false if @id.nil?
      unless (_id = @id).nil?
        return false if _id.to_s.size > MAX_LENGTH_FOR_ID
      end

      return false if @livemode.nil?

      return false if @object.nil?
      unless (_object = @object).nil?
        return false unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end

      return false if @period.nil?
      unless (_period = @period).nil?
        return false if _period.is_a?(OpenApi::Validatable) && !_period.valid?
      end

      return false if @proration.nil?

      return false if @quantity.nil?

      unless (_description = @description).nil?
        return false if _description.to_s.size > MAX_LENGTH_FOR_DESCRIPTION
      end

      unless (_discounts = @discounts).nil?
        return false if _discounts.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _discounts)
      end

      unless (_invoice = @invoice).nil?
        return false if _invoice.is_a?(OpenApi::Validatable) && !_invoice.valid?
      end

      unless (_price = @price).nil?
        return false if _price.is_a?(OpenApi::Validatable) && !_price.valid?
      end

      unless (_subscription = @subscription).nil?
        return false if _subscription.is_a?(OpenApi::Validatable) && !_subscription.valid?
      end

      unless (_subscription_item = @subscription_item).nil?
        return false if _subscription_item.to_s.size > MAX_LENGTH_FOR_SUBSCRIPTION_ITEM
      end

      unless (_tax_rates = @tax_rates).nil?
        return false if _tax_rates.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _tax_rates)
      end

      unless (_test_clock = @test_clock).nil?
        return false if _test_clock.is_a?(OpenApi::Validatable) && !_test_clock.valid?
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
    # @param [Object] customer Object to be assigned
    def customer=(customer : Stripe::InvoiceitemCustomer?)
      if customer.nil?
        raise ArgumentError.new("\"customer\" is required and cannot be null")
      end
      _customer = customer.not_nil!
      _customer.validate if _customer.is_a?(OpenApi::Validatable)
      @customer = _customer
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] date Object to be assigned
    def date=(date : Int64?)
      if date.nil?
        raise ArgumentError.new("\"date\" is required and cannot be null")
      end
      _date = date.not_nil!
      @date = _date
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
    # @param [Object] quantity Object to be assigned
    def quantity=(quantity : Int64?)
      if quantity.nil?
        raise ArgumentError.new("\"quantity\" is required and cannot be null")
      end
      _quantity = quantity.not_nil!
      @quantity = _quantity
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
    # @param [Object] discounts Object to be assigned
    def discounts=(discounts : Array(Stripe::InvoiceitemDiscountsInner)?)
      if discounts.nil?
        return @discounts = nil
      end
      _discounts = discounts.not_nil!
      OpenApi::ContainerValidator.validate(container: _discounts) if _discounts.is_a?(Array)
      @discounts = _discounts
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] invoice Object to be assigned
    def invoice=(invoice : Stripe::InvoiceitemInvoice?)
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

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] price Object to be assigned
    def price=(price : Stripe::InvoiceitemPrice?)
      if price.nil?
        return @price = nil
      end
      _price = price.not_nil!
      _price.validate if _price.is_a?(OpenApi::Validatable)
      @price = _price
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] subscription Object to be assigned
    def subscription=(subscription : Stripe::InvoiceitemSubscription?)
      if subscription.nil?
        return @subscription = nil
      end
      _subscription = subscription.not_nil!
      _subscription.validate if _subscription.is_a?(OpenApi::Validatable)
      @subscription = _subscription
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] subscription_item Object to be assigned
    def subscription_item=(subscription_item : String?)
      if subscription_item.nil?
        return @subscription_item = nil
      end
      _subscription_item = subscription_item.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("subscription_item", _subscription_item.to_s.size, MAX_LENGTH_FOR_SUBSCRIPTION_ITEM)
      @subscription_item = _subscription_item
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tax_rates Object to be assigned
    def tax_rates=(tax_rates : Array(Stripe::TaxRate)?)
      if tax_rates.nil?
        return @tax_rates = nil
      end
      _tax_rates = tax_rates.not_nil!
      OpenApi::ContainerValidator.validate(container: _tax_rates) if _tax_rates.is_a?(Array)
      @tax_rates = _tax_rates
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] test_clock Object to be assigned
    def test_clock=(test_clock : Stripe::InvoiceitemTestClock?)
      if test_clock.nil?
        return @test_clock = nil
      end
      _test_clock = test_clock.not_nil!
      _test_clock.validate if _test_clock.is_a?(OpenApi::Validatable)
      @test_clock = _test_clock
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

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@amount, @currency, @customer, @date, @discountable, @id, @livemode, @object, @period, @proration, @quantity, @description, @description_present, @discounts, @discounts_present, @invoice, @invoice_present, @metadata, @metadata_present, @price, @price_present, @subscription, @subscription_present, @subscription_item, @tax_rates, @tax_rates_present, @test_clock, @test_clock_present, @unit_amount, @unit_amount_present, @unit_amount_decimal, @unit_amount_decimal_present)
  end
end
