#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./coupon"
require "./deleted_discount_customer"
require "./deleted_discount_promotion_code"
require "./discount"

module Stripe
  # ID of an existing discount on the object (or one of its ancestors) to reuse.
  class DiscountsResourceStackableDiscountDiscount
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The Checkout session that this coupon is applied to, if it is applied to a particular session in payment mode. Will not be present for subscription mode.
    @[JSON::Field(key: "checkout_session", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    property checkout_session : String? = nil
    MAX_LENGTH_FOR_CHECKOUT_SESSION = 5000

    @[JSON::Field(key: "coupon", type: Stripe::Coupon?, default: nil, required: true, nullable: false, emit_null: false)]
    property coupon : Stripe::Coupon? = nil

    @[JSON::Field(key: "customer", type: Stripe::DeletedDiscountCustomer?, default: nil, required: true, nullable: true, emit_null: true)]
    property customer : Stripe::DeletedDiscountCustomer? = nil

    # If the coupon has a duration of `repeating`, the date that this discount will end. If the coupon has a duration of `once` or `forever`, this attribute will be null.
    @[JSON::Field(key: "end", type: Int64?, default: nil, required: true, nullable: true, emit_null: true)]
    property _end : Int64? = nil

    # The ID of the discount object. Discounts cannot be fetched by ID. Use `expand[]=discounts` in API calls to expand discount IDs in an array.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    property id : String? = nil
    MAX_LENGTH_FOR_ID = 5000

    # The invoice that the discount's coupon was applied to, if it was applied directly to a particular invoice.
    @[JSON::Field(key: "invoice", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    property invoice : String? = nil
    MAX_LENGTH_FOR_INVOICE = 5000

    # The invoice item `id` (or invoice line item `id` for invoice line items of type='subscription') that the discount's coupon was applied to, if it was applied directly to a particular invoice item or invoice line item.
    @[JSON::Field(key: "invoice_item", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    property invoice_item : String? = nil
    MAX_LENGTH_FOR_INVOICE_ITEM = 5000

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    property object : String? = nil
    ERROR_MESSAGE_FOR_OBJECT = "invalid value for \"object\", must be one of [discount]."
    VALID_VALUES_FOR_OBJECT  = String.static_array("discount")

    @[JSON::Field(key: "promotion_code", type: Stripe::DeletedDiscountPromotionCode?, default: nil, required: true, nullable: true, emit_null: true)]
    property promotion_code : Stripe::DeletedDiscountPromotionCode? = nil

    # Date that the coupon was applied.
    @[JSON::Field(key: "start", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    property start : Int64? = nil

    # The subscription that this coupon is applied to, if it is applied to a particular subscription.
    @[JSON::Field(key: "subscription", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    property subscription : String? = nil
    MAX_LENGTH_FOR_SUBSCRIPTION = 5000

    # The subscription item that this coupon is applied to, if it is applied to a particular subscription item.
    @[JSON::Field(key: "subscription_item", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    property subscription_item : String? = nil
    MAX_LENGTH_FOR_SUBSCRIPTION_ITEM = 5000

    # End of Required Properties
    # List of class defined in anyOf (OpenAPI v3)
    def self.openapi_any_of
      [
        Stripe::Discount,
        String,
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @checkout_session : String? = nil,
      @coupon : Stripe::Coupon? = nil,
      @customer : Stripe::DeletedDiscountCustomer? = nil,
      @_end : Int64? = nil,
      @id : String? = nil,
      @invoice : String? = nil,
      @invoice_item : String? = nil,
      @object : String? = nil,
      @promotion_code : Stripe::DeletedDiscountPromotionCode? = nil,
      @start : Int64? = nil,
      @subscription : String? = nil,
      @subscription_item : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      _any_of_found = false
      json_string : String = self.to_json
      _any_of_found = self.class.openapi_any_of.any? do |_class|
        _any_of = begin
          _class.from_json(json_string)
        rescue
          nil
        end

        !_any_of.nil? && _any_of.not_nil!.valid?
      end
      return false if !_any_of_found

      true
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@checkout_session, @coupon, @customer, @_end, @id, @invoice, @invoice_item, @object, @promotion_code, @start, @subscription, @subscription_item)
  end
end
