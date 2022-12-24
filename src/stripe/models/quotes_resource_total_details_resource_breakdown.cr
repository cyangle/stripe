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
  class QuotesResourceTotalDetailsResourceBreakdown
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The aggregated discounts.
    @[JSON::Field(key: "discounts", type: Array(Stripe::LineItemsDiscountAmount)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter discounts : Array(Stripe::LineItemsDiscountAmount)? = nil

    # The aggregated tax amounts by rate.
    @[JSON::Field(key: "taxes", type: Array(Stripe::LineItemsTaxAmount)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter taxes : Array(Stripe::LineItemsTaxAmount)? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @discounts : Array(Stripe::LineItemsDiscountAmount)? = nil,
      @taxes : Array(Stripe::LineItemsTaxAmount)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"discounts\" is required and cannot be null") if @discounts.nil?

      unless (_discounts = @discounts).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "discounts", container: _discounts)) if _discounts.is_a?(Array)
      end
      invalid_properties.push("\"taxes\" is required and cannot be null") if @taxes.nil?

      unless (_taxes = @taxes).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "taxes", container: _taxes)) if _taxes.is_a?(Array)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @discounts.nil?
      unless (_discounts = @discounts).nil?
        return false if _discounts.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _discounts)
      end

      return false if @taxes.nil?
      unless (_taxes = @taxes).nil?
        return false if _taxes.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _taxes)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] discounts Object to be assigned
    def discounts=(new_value : Array(Stripe::LineItemsDiscountAmount)?)
      raise ArgumentError.new("\"discounts\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::ContainerValidator.validate(container: new_value) if new_value.is_a?(Array)
      end

      @discounts = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] taxes Object to be assigned
    def taxes=(new_value : Array(Stripe::LineItemsTaxAmount)?)
      raise ArgumentError.new("\"taxes\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::ContainerValidator.validate(container: new_value) if new_value.is_a?(Array)
      end

      @taxes = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@discounts, @taxes)
  end
end
