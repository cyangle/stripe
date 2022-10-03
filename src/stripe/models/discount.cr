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
  # A discount represents the actual application of a [coupon](https://stripe.com/docs/api#coupons) or [promotion code](https://stripe.com/docs/api#promotion_codes). It contains information about when the discount began, when it will end, and what it is applied to.  Related guide: [Applying Discounts to Subscriptions](https://stripe.com/docs/billing/subscriptions/discounts).
  class Discount
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "coupon", type: Stripe::Coupon?, default: nil, required: true, nullable: false, emit_null: false)]
    getter coupon : Stripe::Coupon? = nil

    # The ID of the discount object. Discounts cannot be fetched by ID. Use `expand[]=discounts` in API calls to expand discount IDs in an array.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil
    MAX_LENGTH_FOR_ID = 5000

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter object : String? = nil
    ERROR_MESSAGE_FOR_OBJECT = "invalid value for \"object\", must be one of [discount]."
    VALID_VALUES_FOR_OBJECT  = StaticArray["discount"]

    # Date that the coupon was applied.
    @[JSON::Field(key: "start", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter start : Int64? = nil

    # End of Required Properties

    # Optional Properties

    # The Checkout session that this coupon is applied to, if it is applied to a particular session in payment mode. Will not be present for subscription mode.
    @[JSON::Field(key: "checkout_session", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: checkout_session.nil? && !checkout_session_present?)]
    getter checkout_session : String? = nil
    MAX_LENGTH_FOR_CHECKOUT_SESSION = 5000

    @[JSON::Field(ignore: true)]
    property? checkout_session_present : Bool = false

    @[JSON::Field(key: "customer", type: Stripe::DeletedDiscountCustomer?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: customer.nil? && !customer_present?)]
    getter customer : Stripe::DeletedDiscountCustomer? = nil

    @[JSON::Field(ignore: true)]
    property? customer_present : Bool = false

    # If the coupon has a duration of `repeating`, the date that this discount will end. If the coupon has a duration of `once` or `forever`, this attribute will be null.
    @[JSON::Field(key: "end", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: _end.nil? && !_end_present?)]
    getter _end : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? _end_present : Bool = false

    # The invoice that the discount's coupon was applied to, if it was applied directly to a particular invoice.
    @[JSON::Field(key: "invoice", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: invoice.nil? && !invoice_present?)]
    getter invoice : String? = nil
    MAX_LENGTH_FOR_INVOICE = 5000

    @[JSON::Field(ignore: true)]
    property? invoice_present : Bool = false

    # The invoice item `id` (or invoice line item `id` for invoice line items of type='subscription') that the discount's coupon was applied to, if it was applied directly to a particular invoice item or invoice line item.
    @[JSON::Field(key: "invoice_item", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: invoice_item.nil? && !invoice_item_present?)]
    getter invoice_item : String? = nil
    MAX_LENGTH_FOR_INVOICE_ITEM = 5000

    @[JSON::Field(ignore: true)]
    property? invoice_item_present : Bool = false

    @[JSON::Field(key: "promotion_code", type: Stripe::DeletedDiscountPromotionCode?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: promotion_code.nil? && !promotion_code_present?)]
    getter promotion_code : Stripe::DeletedDiscountPromotionCode? = nil

    @[JSON::Field(ignore: true)]
    property? promotion_code_present : Bool = false

    # The subscription that this coupon is applied to, if it is applied to a particular subscription.
    @[JSON::Field(key: "subscription", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: subscription.nil? && !subscription_present?)]
    getter subscription : String? = nil
    MAX_LENGTH_FOR_SUBSCRIPTION = 5000

    @[JSON::Field(ignore: true)]
    property? subscription_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @coupon : Stripe::Coupon? = nil,
      @id : String? = nil,
      @object : String? = nil,
      @start : Int64? = nil,
      # Optional properties
      @checkout_session : String? = nil,
      @customer : Stripe::DeletedDiscountCustomer? = nil,
      @_end : Int64? = nil,
      @invoice : String? = nil,
      @invoice_item : String? = nil,
      @promotion_code : Stripe::DeletedDiscountPromotionCode? = nil,
      @subscription : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"coupon\" is required and cannot be null") if @coupon.nil?

      unless (_coupon = @coupon).nil?
        invalid_properties.concat(_coupon.list_invalid_properties_for("coupon")) if _coupon.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"id\" is required and cannot be null") if @id.nil?

      unless (_id = @id).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("id", _id.to_s.size, MAX_LENGTH_FOR_ID)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"object\" is required and cannot be null") if @object.nil?

      unless (_object = @object).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_OBJECT) unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end
      invalid_properties.push("\"start\" is required and cannot be null") if @start.nil?

      unless (_checkout_session = @checkout_session).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("checkout_session", _checkout_session.to_s.size, MAX_LENGTH_FOR_CHECKOUT_SESSION)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_customer = @customer).nil?
        invalid_properties.concat(_customer.list_invalid_properties_for("customer")) if _customer.is_a?(OpenApi::Validatable)
      end

      unless (_invoice = @invoice).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("invoice", _invoice.to_s.size, MAX_LENGTH_FOR_INVOICE)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_invoice_item = @invoice_item).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("invoice_item", _invoice_item.to_s.size, MAX_LENGTH_FOR_INVOICE_ITEM)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_promotion_code = @promotion_code).nil?
        invalid_properties.concat(_promotion_code.list_invalid_properties_for("promotion_code")) if _promotion_code.is_a?(OpenApi::Validatable)
      end
      unless (_subscription = @subscription).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("subscription", _subscription.to_s.size, MAX_LENGTH_FOR_SUBSCRIPTION)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @coupon.nil?
      unless (_coupon = @coupon).nil?
        return false if _coupon.is_a?(OpenApi::Validatable) && !_coupon.valid?
      end

      return false if @id.nil?
      unless (_id = @id).nil?
        return false if _id.to_s.size > MAX_LENGTH_FOR_ID
      end

      return false if @object.nil?
      unless (_object = @object).nil?
        return false unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end

      return false if @start.nil?

      unless (_checkout_session = @checkout_session).nil?
        return false if _checkout_session.to_s.size > MAX_LENGTH_FOR_CHECKOUT_SESSION
      end

      unless (_customer = @customer).nil?
        return false if _customer.is_a?(OpenApi::Validatable) && !_customer.valid?
      end

      unless (_invoice = @invoice).nil?
        return false if _invoice.to_s.size > MAX_LENGTH_FOR_INVOICE
      end

      unless (_invoice_item = @invoice_item).nil?
        return false if _invoice_item.to_s.size > MAX_LENGTH_FOR_INVOICE_ITEM
      end

      unless (_promotion_code = @promotion_code).nil?
        return false if _promotion_code.is_a?(OpenApi::Validatable) && !_promotion_code.valid?
      end

      unless (_subscription = @subscription).nil?
        return false if _subscription.to_s.size > MAX_LENGTH_FOR_SUBSCRIPTION
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] coupon Object to be assigned
    def coupon=(coupon : Stripe::Coupon?)
      if coupon.nil?
        raise ArgumentError.new("\"coupon\" is required and cannot be null")
      end
      _coupon = coupon.not_nil!
      _coupon.validate if _coupon.is_a?(OpenApi::Validatable)
      @coupon = _coupon
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
    # @param [Object] start Object to be assigned
    def start=(start : Int64?)
      if start.nil?
        raise ArgumentError.new("\"start\" is required and cannot be null")
      end
      _start = start.not_nil!
      @start = _start
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] checkout_session Object to be assigned
    def checkout_session=(checkout_session : String?)
      if checkout_session.nil?
        return @checkout_session = nil
      end
      _checkout_session = checkout_session.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("checkout_session", _checkout_session.to_s.size, MAX_LENGTH_FOR_CHECKOUT_SESSION)
      @checkout_session = _checkout_session
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] customer Object to be assigned
    def customer=(customer : Stripe::DeletedDiscountCustomer?)
      if customer.nil?
        return @customer = nil
      end
      _customer = customer.not_nil!
      _customer.validate if _customer.is_a?(OpenApi::Validatable)
      @customer = _customer
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _end Object to be assigned
    def _end=(_end : Int64?)
      if _end.nil?
        return @_end = nil
      end
      __end = _end.not_nil!
      @_end = __end
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] invoice Object to be assigned
    def invoice=(invoice : String?)
      if invoice.nil?
        return @invoice = nil
      end
      _invoice = invoice.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("invoice", _invoice.to_s.size, MAX_LENGTH_FOR_INVOICE)
      @invoice = _invoice
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] invoice_item Object to be assigned
    def invoice_item=(invoice_item : String?)
      if invoice_item.nil?
        return @invoice_item = nil
      end
      _invoice_item = invoice_item.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("invoice_item", _invoice_item.to_s.size, MAX_LENGTH_FOR_INVOICE_ITEM)
      @invoice_item = _invoice_item
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] promotion_code Object to be assigned
    def promotion_code=(promotion_code : Stripe::DeletedDiscountPromotionCode?)
      if promotion_code.nil?
        return @promotion_code = nil
      end
      _promotion_code = promotion_code.not_nil!
      _promotion_code.validate if _promotion_code.is_a?(OpenApi::Validatable)
      @promotion_code = _promotion_code
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] subscription Object to be assigned
    def subscription=(subscription : String?)
      if subscription.nil?
        return @subscription = nil
      end
      _subscription = subscription.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("subscription", _subscription.to_s.size, MAX_LENGTH_FOR_SUBSCRIPTION)
      @subscription = _subscription
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@coupon, @id, @object, @start, @checkout_session, @checkout_session_present, @customer, @customer_present, @_end, @_end_present, @invoice, @invoice_present, @invoice_item, @invoice_item_present, @promotion_code, @promotion_code_present, @subscription, @subscription_present)
  end
end
