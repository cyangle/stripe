#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./order_item_specs"
require "./order_shipping"

module Stripe
  class ShallowOrderSpecs
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # List of items constituting the order.
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

      unless (_items = @items).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "items", container: _items)) if _items.is_a?(Array)
      end
      unless (_shipping = @shipping).nil?
        invalid_properties.concat(_shipping.list_invalid_properties_for("shipping")) if _shipping.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_items = @items).nil?
        return false if _items.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _items)
      end

      unless (_shipping = @shipping).nil?
        return false if _shipping.is_a?(OpenApi::Validatable) && !_shipping.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] items Object to be assigned
    def items=(new_value : Array(Stripe::OrderItemSpecs)?)
      unless new_value.nil?
        OpenApi::ContainerValidator.validate(container: new_value) if new_value.is_a?(Array)
      end

      @items = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] shipping Object to be assigned
    def shipping=(new_value : Stripe::OrderShipping?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @shipping = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@items, @shipping)
  end
end
