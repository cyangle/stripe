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
  class CreateParams
    include JSON::Serializable
    include JSON::Serializable::Unmapped


    # Optional properties

    @[JSON::Field(key: "description", type: String?, presence: true, ignore_serialize: description.nil? && !description_present?)]
    getter description : String?

    @[JSON::Field(ignore: true)]
    property? description_present : Bool = false

    @[JSON::Field(key: "discounts", type: GetInvoicesUpcomingDiscountsParameter?, presence: true, ignore_serialize: discounts.nil? && !discounts_present?)]
    property discounts : GetInvoicesUpcomingDiscountsParameter?

    @[JSON::Field(ignore: true)]
    property? discounts_present : Bool = false

    @[JSON::Field(key: "price", type: String?, presence: true, ignore_serialize: price.nil? && !price_present?)]
    getter price : String?

    @[JSON::Field(ignore: true)]
    property? price_present : Bool = false

    @[JSON::Field(key: "price_data", type: PriceDataWithOptionalProduct?, presence: true, ignore_serialize: price_data.nil? && !price_data_present?)]
    property price_data : PriceDataWithOptionalProduct?

    @[JSON::Field(ignore: true)]
    property? price_data_present : Bool = false

    @[JSON::Field(key: "product", type: String?, presence: true, ignore_serialize: product.nil? && !product_present?)]
    getter product : String?

    @[JSON::Field(ignore: true)]
    property? product_present : Bool = false

    @[JSON::Field(key: "quantity", type: Int64?, presence: true, ignore_serialize: quantity.nil? && !quantity_present?)]
    property quantity : Int64?

    @[JSON::Field(ignore: true)]
    property? quantity_present : Bool = false

    @[JSON::Field(key: "tax_rates", type: CreditNoteLineItemParamsTaxRates?, presence: true, ignore_serialize: tax_rates.nil? && !tax_rates_present?)]
    property tax_rates : CreditNoteLineItemParamsTaxRates?

    @[JSON::Field(ignore: true)]
    property? tax_rates_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *, 
      # Optional properties
      @description : String? = nil, 
      @discounts : GetInvoicesUpcomingDiscountsParameter? = nil, 
      @price : String? = nil, 
      @price_data : PriceDataWithOptionalProduct? = nil, 
      @product : String? = nil, 
      @quantity : Int64? = nil, 
      @tax_rates : CreditNoteLineItemParamsTaxRates? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if !@description.nil? && @description.to_s.size > 5000
        invalid_properties.push("invalid value for \"description\", the character length must be smaller than or equal to 5000.")
      end

      if !@price.nil? && @price.to_s.size > 5000
        invalid_properties.push("invalid value for \"price\", the character length must be smaller than or equal to 5000.")
      end

      if !@product.nil? && @product.to_s.size > 5000
        invalid_properties.push("invalid value for \"product\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@description.nil? && @description.to_s.size > 5000
      return false if !@price.nil? && @price.to_s.size > 5000
      return false if !@product.nil? && @product.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description)
      if !description.nil? && description.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"description\", the character length must be smaller than or equal to 5000.")
      end

      @description = description
    end

    # Custom attribute writer method with validation
    # @param [Object] price Value to be assigned
    def price=(price)
      if !price.nil? && price.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"price\", the character length must be smaller than or equal to 5000.")
      end

      @price = price
    end

    # Custom attribute writer method with validation
    # @param [Object] product Value to be assigned
    def product=(product)
      if !product.nil? && product.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"product\", the character length must be smaller than or equal to 5000.")
      end

      @product = product
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
    def_equals_and_hash(@description, @discounts, @price, @price_data, @product, @quantity, @tax_rates)
  end
end
