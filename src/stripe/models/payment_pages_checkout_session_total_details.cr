#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-11-15
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module Stripe
  #
  class PaymentPagesCheckoutSessionTotalDetails
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # This is the sum of all the discounts.
    @[JSON::Field(key: "amount_discount", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter amount_discount : Int64? = nil

    # This is the sum of all the tax amounts.
    @[JSON::Field(key: "amount_tax", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter amount_tax : Int64? = nil

    # End of Required Properties

    # Optional Properties

    # This is the sum of all the shipping amounts.
    @[JSON::Field(key: "amount_shipping", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: amount_shipping.nil? && !amount_shipping_present?)]
    getter amount_shipping : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? amount_shipping_present : Bool = false

    @[JSON::Field(key: "breakdown", type: Stripe::PaymentPagesCheckoutSessionTotalDetailsResourceBreakdown?, default: nil, required: false, nullable: false, emit_null: false)]
    getter breakdown : Stripe::PaymentPagesCheckoutSessionTotalDetailsResourceBreakdown? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @amount_discount : Int64? = nil,
      @amount_tax : Int64? = nil,
      # Optional properties
      @amount_shipping : Int64? = nil,
      @breakdown : Stripe::PaymentPagesCheckoutSessionTotalDetailsResourceBreakdown? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"amount_discount\" is required and cannot be null") if @amount_discount.nil?

      invalid_properties.push("\"amount_tax\" is required and cannot be null") if @amount_tax.nil?

      unless (_breakdown = @breakdown).nil?
        invalid_properties.concat(_breakdown.list_invalid_properties_for("breakdown")) if _breakdown.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @amount_discount.nil?

      return false if @amount_tax.nil?

      unless (_breakdown = @breakdown).nil?
        return false if _breakdown.is_a?(OpenApi::Validatable) && !_breakdown.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount_discount Object to be assigned
    def amount_discount=(new_value : Int64?)
      raise ArgumentError.new("\"amount_discount\" is required and cannot be null") if new_value.nil?

      @amount_discount = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount_tax Object to be assigned
    def amount_tax=(new_value : Int64?)
      raise ArgumentError.new("\"amount_tax\" is required and cannot be null") if new_value.nil?

      @amount_tax = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount_shipping Object to be assigned
    def amount_shipping=(new_value : Int64?)
      @amount_shipping = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] breakdown Object to be assigned
    def breakdown=(new_value : Stripe::PaymentPagesCheckoutSessionTotalDetailsResourceBreakdown?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @breakdown = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@amount_discount, @amount_tax, @amount_shipping, @amount_shipping_present, @breakdown)
  end
end
