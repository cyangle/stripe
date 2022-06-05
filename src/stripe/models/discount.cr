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
  # A discount represents the actual application of a [coupon](https://stripe.com/docs/api#coupons) or [promotion code](https://stripe.com/docs/api#promotion_codes). It contains information about when the discount began, when it will end, and what it is applied to.  Related guide: [Applying Discounts to Subscriptions](https://stripe.com/docs/billing/subscriptions/discounts).
  @[JSON::Serializable::Options(emit_nulls: true)]
  class Discount
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    @[JSON::Field(key: "coupon", type: Coupon)]
    property coupon : Coupon

    # The ID of the discount object. Discounts cannot be fetched by ID. Use `expand[]=discounts` in API calls to expand discount IDs in an array.
    @[JSON::Field(key: "id", type: String)]
    getter id : String

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String)]
    getter object : String

    ENUM_VALIDATOR_FOR_OBJECT = EnumValidator.new("object", "String", ["discount"])

    # Date that the coupon was applied.
    @[JSON::Field(key: "start", type: Int64)]
    property start : Int64

    # Optional properties

    # The Checkout session that this coupon is applied to, if it is applied to a particular session in payment mode. Will not be present for subscription mode.
    @[JSON::Field(key: "checkout_session", type: String?, presence: true, ignore_serialize: checkout_session.nil? && !checkout_session_present?)]
    getter checkout_session : String?

    @[JSON::Field(ignore: true)]
    property? checkout_session_present : Bool = false

    @[JSON::Field(key: "customer", type: DeletedDiscountCustomer?, presence: true, ignore_serialize: customer.nil? && !customer_present?)]
    property customer : DeletedDiscountCustomer?

    @[JSON::Field(ignore: true)]
    property? customer_present : Bool = false

    # If the coupon has a duration of `repeating`, the date that this discount will end. If the coupon has a duration of `once` or `forever`, this attribute will be null.
    @[JSON::Field(key: "end", type: Int64?, presence: true, ignore_serialize: _end.nil? && !_end_present?)]
    property _end : Int64?

    @[JSON::Field(ignore: true)]
    property? _end_present : Bool = false

    # The invoice that the discount's coupon was applied to, if it was applied directly to a particular invoice.
    @[JSON::Field(key: "invoice", type: String?, presence: true, ignore_serialize: invoice.nil? && !invoice_present?)]
    getter invoice : String?

    @[JSON::Field(ignore: true)]
    property? invoice_present : Bool = false

    # The invoice item `id` (or invoice line item `id` for invoice line items of type='subscription') that the discount's coupon was applied to, if it was applied directly to a particular invoice item or invoice line item.
    @[JSON::Field(key: "invoice_item", type: String?, presence: true, ignore_serialize: invoice_item.nil? && !invoice_item_present?)]
    getter invoice_item : String?

    @[JSON::Field(ignore: true)]
    property? invoice_item_present : Bool = false

    @[JSON::Field(key: "promotion_code", type: DeletedDiscountPromotionCode?, presence: true, ignore_serialize: promotion_code.nil? && !promotion_code_present?)]
    property promotion_code : DeletedDiscountPromotionCode?

    @[JSON::Field(ignore: true)]
    property? promotion_code_present : Bool = false

    # The subscription that this coupon is applied to, if it is applied to a particular subscription.
    @[JSON::Field(key: "subscription", type: String?, presence: true, ignore_serialize: subscription.nil? && !subscription_present?)]
    getter subscription : String?

    @[JSON::Field(ignore: true)]
    property? subscription_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @coupon : Coupon,
      @id : String,
      @object : String,
      @start : Int64,
      # Optional properties
      @checkout_session : String? = nil,
      @customer : DeletedDiscountCustomer? = nil,
      @_end : Int64? = nil,
      @invoice : String? = nil,
      @invoice_item : String? = nil,
      @promotion_code : DeletedDiscountPromotionCode? = nil,
      @subscription : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if @id.to_s.size > 5000
        invalid_properties.push("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_OBJECT.error_message) unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)

      if !@checkout_session.nil? && @checkout_session.to_s.size > 5000
        invalid_properties.push("invalid value for \"checkout_session\", the character length must be smaller than or equal to 5000.")
      end

      if !@invoice.nil? && @invoice.to_s.size > 5000
        invalid_properties.push("invalid value for \"invoice\", the character length must be smaller than or equal to 5000.")
      end

      if !@invoice_item.nil? && @invoice_item.to_s.size > 5000
        invalid_properties.push("invalid value for \"invoice_item\", the character length must be smaller than or equal to 5000.")
      end

      if !@subscription.nil? && @subscription.to_s.size > 5000
        invalid_properties.push("invalid value for \"subscription\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.to_s.size > 5000
      return false unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      return false if !@checkout_session.nil? && @checkout_session.to_s.size > 5000
      return false if !@invoice.nil? && @invoice.to_s.size > 5000
      return false if !@invoice_item.nil? && @invoice_item.to_s.size > 5000
      return false if !@subscription.nil? && @subscription.to_s.size > 5000

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

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object)
      ENUM_VALIDATOR_FOR_OBJECT.valid!(object, false)
      @object = object
    end

    # Custom attribute writer method with validation
    # @param [Object] checkout_session Value to be assigned
    def checkout_session=(checkout_session)
      if !checkout_session.nil? && checkout_session.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"checkout_session\", the character length must be smaller than or equal to 5000.")
      end

      @checkout_session = checkout_session
    end

    # Custom attribute writer method with validation
    # @param [Object] invoice Value to be assigned
    def invoice=(invoice)
      if !invoice.nil? && invoice.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"invoice\", the character length must be smaller than or equal to 5000.")
      end

      @invoice = invoice
    end

    # Custom attribute writer method with validation
    # @param [Object] invoice_item Value to be assigned
    def invoice_item=(invoice_item)
      if !invoice_item.nil? && invoice_item.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"invoice_item\", the character length must be smaller than or equal to 5000.")
      end

      @invoice_item = invoice_item
    end

    # Custom attribute writer method with validation
    # @param [Object] subscription Value to be assigned
    def subscription=(subscription)
      if !subscription.nil? && subscription.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"subscription\", the character length must be smaller than or equal to 5000.")
      end

      @subscription = subscription
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
    def_equals_and_hash(@coupon, @id, @object, @start, @checkout_session, @customer, @_end, @invoice, @invoice_item, @promotion_code, @subscription)
  end
end
