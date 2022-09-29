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
  class OrdersV2ResourceTotalDetails
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    # This is the sum of all the discounts.
    @[JSON::Field(key: "amount_discount", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter amount_discount : Int64? = nil

    # This is the sum of all the tax amounts.
    @[JSON::Field(key: "amount_tax", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter amount_tax : Int64? = nil

    # Optional properties

    # This is the sum of all the shipping amounts.
    @[JSON::Field(key: "amount_shipping", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: amount_shipping.nil? && !amount_shipping_present?)]
    getter amount_shipping : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? amount_shipping_present : Bool = false

    @[JSON::Field(key: "breakdown", type: Stripe::OrdersV2ResourceTotalDetailsApiResourceBreakdown?, default: nil, required: false, nullable: false, emit_null: false)]
    getter breakdown : Stripe::OrdersV2ResourceTotalDetailsApiResourceBreakdown? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @amount_discount : Int64? = nil,
      @amount_tax : Int64? = nil,
      # Optional properties
      @amount_shipping : Int64? = nil,
      @breakdown : Stripe::OrdersV2ResourceTotalDetailsApiResourceBreakdown? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      invalid_properties.push("\"amount_discount\" is required and cannot be null") if @amount_discount.nil?

      invalid_properties.push("\"amount_tax\" is required and cannot be null") if @amount_tax.nil?

      if _breakdown = @breakdown
        invalid_properties.concat(_breakdown.list_invalid_properties_for("breakdown")) if _breakdown.is_a?(OpenApi::Validatable)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @amount_discount.nil?

      return false if @amount_tax.nil?

      if _breakdown = @breakdown
        return false if _breakdown.is_a?(OpenApi::Validatable) && !_breakdown.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount_discount Object to be assigned
    def amount_discount=(amount_discount : Int64?)
      if amount_discount.nil?
        raise ArgumentError.new("\"amount_discount\" is required and cannot be null")
      end
      _amount_discount = amount_discount.not_nil!
      @amount_discount = _amount_discount
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount_tax Object to be assigned
    def amount_tax=(amount_tax : Int64?)
      if amount_tax.nil?
        raise ArgumentError.new("\"amount_tax\" is required and cannot be null")
      end
      _amount_tax = amount_tax.not_nil!
      @amount_tax = _amount_tax
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount_shipping Object to be assigned
    def amount_shipping=(amount_shipping : Int64?)
      if amount_shipping.nil?
        return @amount_shipping = nil
      end
      _amount_shipping = amount_shipping.not_nil!
      @amount_shipping = _amount_shipping
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] breakdown Object to be assigned
    def breakdown=(breakdown : Stripe::OrdersV2ResourceTotalDetailsApiResourceBreakdown?)
      if breakdown.nil?
        return @breakdown = nil
      end
      _breakdown = breakdown.not_nil!
      _breakdown.validate if _breakdown.is_a?(OpenApi::Validatable)
      @breakdown = _breakdown
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@amount_discount, @amount_tax, @amount_shipping, @amount_shipping_present, @breakdown)
  end
end
