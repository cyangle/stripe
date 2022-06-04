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
  # An Add Invoice Item describes the prices and quantities that will be added as pending invoice items when entering a phase.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class SubscriptionScheduleAddInvoiceItem
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    @[JSON::Field(key: "price", type: SubscriptionScheduleAddInvoiceItemPrice)]
    property price : SubscriptionScheduleAddInvoiceItemPrice

    # Optional properties

    # The quantity of the invoice item.
    @[JSON::Field(key: "quantity", type: Int64?, presence: true, ignore_serialize: quantity.nil? && !quantity_present?)]
    property quantity : Int64?

    @[JSON::Field(ignore: true)]
    property? quantity_present : Bool = false

    # The tax rates which apply to the item. When set, the `default_tax_rates` do not apply to this item.
    @[JSON::Field(key: "tax_rates", type: Array(TaxRate)?, presence: true, ignore_serialize: tax_rates.nil? && !tax_rates_present?)]
    property tax_rates : Array(TaxRate)?

    @[JSON::Field(ignore: true)]
    property? tax_rates_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *, 
      # Required properties
      @price : SubscriptionScheduleAddInvoiceItemPrice, 
      # Optional properties
      @quantity : Int64? = nil, 
      @tax_rates : Array(TaxRate)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?

      true
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
    def_equals_and_hash(@price, @quantity, @tax_rates)
  end
end
