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
  # Information about the items and shipping associated with the source. Required for transactional credit (for example Klarna) sources before you can charge it.
  class ShallowOrderSpecs
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "items", type: Array(Stripe::OrderItemSpecs)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter items : Array(Stripe::OrderItemSpecs)? = nil

    @[JSON::Field(key: "shipping", type: Stripe::OrderShipping?, default: nil, required: false, nullable: false, emit_null: false)]
    getter shipping : Stripe::OrderShipping? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @items : Array(Stripe::OrderItemSpecs)? = nil,
      @shipping : Stripe::OrderShipping? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      if _items = @items
        if _items.is_a?(Array)
          _items.each do |item|
            if item.is_a?(OpenApi::Validatable)
              invalid_properties.concat(item.list_invalid_properties_for("items"))
            end
          end
        end
      end
      if _shipping = @shipping
        if _shipping.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_shipping.list_invalid_properties_for("shipping"))
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _items = @items
        if _items.is_a?(Array)
          _items.each do |item|
            if item.is_a?(OpenApi::Validatable)
              return false unless item.valid?
            end
          end
        end
      end
      if _shipping = @shipping
        if _shipping.is_a?(OpenApi::Validatable)
          return false unless _shipping.valid?
        end
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] items Object to be assigned
    def items=(items : Array(Stripe::OrderItemSpecs)?)
      if items.nil?
        return @items = nil
      end
      _items = items.not_nil!
      if _items.is_a?(Array)
        _items.each do |item|
          if item.is_a?(OpenApi::Validatable)
            item.validate
          end
        end
      end
      @items = _items
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] shipping Object to be assigned
    def shipping=(shipping : Stripe::OrderShipping?)
      if shipping.nil?
        return @shipping = nil
      end
      _shipping = shipping.not_nil!
      if _shipping.is_a?(OpenApi::Validatable)
        _shipping.validate
      end
      @shipping = _shipping
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@items, @shipping)
  end
end
