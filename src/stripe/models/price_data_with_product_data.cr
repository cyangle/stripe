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
  class PriceDataWithProductData
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    @[JSON::Field(key: "currency", type: String)]
    property currency : String

    # Optional properties

    @[JSON::Field(key: "product", type: String?, presence: true, ignore_serialize: product.nil? && !product_present?)]
    getter product : String?

    @[JSON::Field(ignore: true)]
    property? product_present : Bool = false

    @[JSON::Field(key: "product_data", type: ProductData?, presence: true, ignore_serialize: product_data.nil? && !product_data_present?)]
    property product_data : ProductData?

    @[JSON::Field(ignore: true)]
    property? product_data_present : Bool = false

    @[JSON::Field(key: "recurring", type: RecurringAdhoc?, presence: true, ignore_serialize: recurring.nil? && !recurring_present?)]
    property recurring : RecurringAdhoc?

    @[JSON::Field(ignore: true)]
    property? recurring_present : Bool = false

    @[JSON::Field(key: "tax_behavior", type: String?, presence: true, ignore_serialize: tax_behavior.nil? && !tax_behavior_present?)]
    getter tax_behavior : String?

    @[JSON::Field(ignore: true)]
    property? tax_behavior_present : Bool = false

    ENUM_VALIDATOR_FOR_TAX_BEHAVIOR = EnumValidator.new("tax_behavior", "String", ["exclusive", "inclusive", "unspecified"])

    @[JSON::Field(key: "unit_amount", type: Int64?, presence: true, ignore_serialize: unit_amount.nil? && !unit_amount_present?)]
    property unit_amount : Int64?

    @[JSON::Field(ignore: true)]
    property? unit_amount_present : Bool = false

    @[JSON::Field(key: "unit_amount_decimal", type: String?, presence: true, ignore_serialize: unit_amount_decimal.nil? && !unit_amount_decimal_present?)]
    property unit_amount_decimal : String?

    @[JSON::Field(ignore: true)]
    property? unit_amount_decimal_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @currency : String,
      # Optional properties
      @product : String? = nil,
      @product_data : ProductData? = nil,
      @recurring : RecurringAdhoc? = nil,
      @tax_behavior : String? = nil,
      @unit_amount : Int64? = nil,
      @unit_amount_decimal : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if !@product.nil? && @product.to_s.size > 5000
        invalid_properties.push("invalid value for \"product\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_TAX_BEHAVIOR.error_message) unless ENUM_VALIDATOR_FOR_TAX_BEHAVIOR.valid?(@tax_behavior)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@product.nil? && @product.to_s.size > 5000
      return false unless ENUM_VALIDATOR_FOR_TAX_BEHAVIOR.valid?(@tax_behavior)

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] product Value to be assigned
    def product=(product)
      if !product.nil? && product.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"product\", the character length must be smaller than or equal to 5000.")
      end

      @product = product
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tax_behavior Object to be assigned
    def tax_behavior=(tax_behavior)
      ENUM_VALIDATOR_FOR_TAX_BEHAVIOR.valid!(tax_behavior)
      @tax_behavior = tax_behavior
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
    def_equals_and_hash(@currency, @product, @product_data, @recurring, @tax_behavior, @unit_amount, @unit_amount_decimal)
  end
end
