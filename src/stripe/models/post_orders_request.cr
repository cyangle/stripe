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
  @[JSON::Serializable::Options(emit_nulls: true)]
  class PostOrdersRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[JSON::Field(key: "currency", type: String)]
    property currency : String

    # A list of line items the customer is ordering. Each line item includes information about the product, the quantity, and the resulting cost.
    @[JSON::Field(key: "line_items", type: Array(CreateParams))]
    property line_items : Array(CreateParams)

    # Optional properties

    @[JSON::Field(key: "automatic_tax", type: AutomaticTax1?, presence: true, ignore_serialize: automatic_tax.nil? && !automatic_tax_present?)]
    property automatic_tax : AutomaticTax1?

    @[JSON::Field(ignore: true)]
    property? automatic_tax_present : Bool = false

    @[JSON::Field(key: "billing_details", type: PostOrdersRequestBillingDetails?, presence: true, ignore_serialize: billing_details.nil? && !billing_details_present?)]
    property billing_details : PostOrdersRequestBillingDetails?

    @[JSON::Field(ignore: true)]
    property? billing_details_present : Bool = false

    # The customer associated with this order.
    @[JSON::Field(key: "customer", type: String?, presence: true, ignore_serialize: customer.nil? && !customer_present?)]
    getter customer : String?

    @[JSON::Field(ignore: true)]
    property? customer_present : Bool = false

    # An arbitrary string attached to the object. Often useful for displaying to users.
    @[JSON::Field(key: "description", type: String?, presence: true, ignore_serialize: description.nil? && !description_present?)]
    getter description : String?

    @[JSON::Field(ignore: true)]
    property? description_present : Bool = false

    @[JSON::Field(key: "discounts", type: PostOrdersRequestDiscounts?, presence: true, ignore_serialize: discounts.nil? && !discounts_present?)]
    property discounts : PostOrdersRequestDiscounts?

    @[JSON::Field(ignore: true)]
    property? discounts_present : Bool = false

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, presence: true, ignore_serialize: expand.nil? && !expand_present?)]
    property expand : Array(String)?

    @[JSON::Field(ignore: true)]
    property? expand_present : Bool = false

    # The IP address of the purchaser for this order.
    @[JSON::Field(key: "ip_address", type: String?, presence: true, ignore_serialize: ip_address.nil? && !ip_address_present?)]
    property ip_address : String?

    @[JSON::Field(ignore: true)]
    property? ip_address_present : Bool = false

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    @[JSON::Field(key: "metadata", type: Hash(String, String)?, presence: true, ignore_serialize: metadata.nil? && !metadata_present?)]
    property metadata : Hash(String, String)?

    @[JSON::Field(ignore: true)]
    property? metadata_present : Bool = false

    @[JSON::Field(key: "payment", type: CreateParams1?, presence: true, ignore_serialize: payment.nil? && !payment_present?)]
    property payment : CreateParams1?

    @[JSON::Field(ignore: true)]
    property? payment_present : Bool = false

    @[JSON::Field(key: "shipping_cost", type: PostOrdersRequestShippingCost?, presence: true, ignore_serialize: shipping_cost.nil? && !shipping_cost_present?)]
    property shipping_cost : PostOrdersRequestShippingCost?

    @[JSON::Field(ignore: true)]
    property? shipping_cost_present : Bool = false

    @[JSON::Field(key: "shipping_details", type: PostOrdersRequestShippingDetails?, presence: true, ignore_serialize: shipping_details.nil? && !shipping_details_present?)]
    property shipping_details : PostOrdersRequestShippingDetails?

    @[JSON::Field(ignore: true)]
    property? shipping_details_present : Bool = false

    @[JSON::Field(key: "tax_details", type: TaxDetails?, presence: true, ignore_serialize: tax_details.nil? && !tax_details_present?)]
    property tax_details : TaxDetails?

    @[JSON::Field(ignore: true)]
    property? tax_details_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *, 
      # Required properties
      @currency : String, 
      @line_items : Array(CreateParams), 
      # Optional properties
      @automatic_tax : AutomaticTax1? = nil, 
      @billing_details : PostOrdersRequestBillingDetails? = nil, 
      @customer : String? = nil, 
      @description : String? = nil, 
      @discounts : PostOrdersRequestDiscounts? = nil, 
      @expand : Array(String)? = nil, 
      @ip_address : String? = nil, 
      @metadata : Hash(String, String)? = nil, 
      @payment : CreateParams1? = nil, 
      @shipping_cost : PostOrdersRequestShippingCost? = nil, 
      @shipping_details : PostOrdersRequestShippingDetails? = nil, 
      @tax_details : TaxDetails? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if !@customer.nil? && @customer.to_s.size > 5000
        invalid_properties.push("invalid value for \"customer\", the character length must be smaller than or equal to 5000.")
      end

      if !@description.nil? && @description.to_s.size > 5000
        invalid_properties.push("invalid value for \"description\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@customer.nil? && @customer.to_s.size > 5000
      return false if !@description.nil? && @description.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] customer Value to be assigned
    def customer=(customer)
      if !customer.nil? && customer.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"customer\", the character length must be smaller than or equal to 5000.")
      end

      @customer = customer
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description)
      if !description.nil? && description.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"description\", the character length must be smaller than or equal to 5000.")
      end

      @description = description
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
    def_equals_and_hash(@currency, @line_items, @automatic_tax, @billing_details, @customer, @description, @discounts, @expand, @ip_address, @metadata, @payment, @shipping_cost, @shipping_details, @tax_details)
  end
end
