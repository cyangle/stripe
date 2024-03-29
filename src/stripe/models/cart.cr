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
  class Cart
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "currency", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter currency : String? = nil

    @[JSON::Field(key: "line_items", type: Array(Stripe::LineItem)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter line_items : Array(Stripe::LineItem)? = nil

    @[JSON::Field(key: "total", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter total : Int64? = nil

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "tax", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter tax : Int64? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @currency : String? = nil,
      @line_items : Array(Stripe::LineItem)? = nil,
      @total : Int64? = nil,
      # Optional properties
      @tax : Int64? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"currency\" is required and cannot be null") if @currency.nil?

      invalid_properties.push("\"line_items\" is required and cannot be null") if @line_items.nil?

      unless (_line_items = @line_items).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "line_items", container: _line_items)) if _line_items.is_a?(Array)
      end
      invalid_properties.push("\"total\" is required and cannot be null") if @total.nil?

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @currency.nil?

      return false if @line_items.nil?
      unless (_line_items = @line_items).nil?
        return false if _line_items.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _line_items)
      end

      return false if @total.nil?

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] currency Object to be assigned
    def currency=(new_value : String?)
      raise ArgumentError.new("\"currency\" is required and cannot be null") if new_value.nil?

      @currency = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] line_items Object to be assigned
    def line_items=(new_value : Array(Stripe::LineItem)?)
      raise ArgumentError.new("\"line_items\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::ContainerValidator.validate(container: new_value) if new_value.is_a?(Array)
      end

      @line_items = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] total Object to be assigned
    def total=(new_value : Int64?)
      raise ArgumentError.new("\"total\" is required and cannot be null") if new_value.nil?

      @total = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tax Object to be assigned
    def tax=(new_value : Int64?)
      @tax = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@currency, @line_items, @total, @tax)
  end
end
