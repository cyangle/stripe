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
  # Represents a cart to be displayed on the reader
  class TerminalReaderReaderResourceCart
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[JSON::Field(key: "currency", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter currency : String? = nil

    # List of line items in the cart.
    @[JSON::Field(key: "line_items", type: Array(Stripe::TerminalReaderReaderResourceLineItem)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter line_items : Array(Stripe::TerminalReaderReaderResourceLineItem)? = nil

    # Total amount for the entire cart, including tax. A positive integer in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
    @[JSON::Field(key: "total", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter total : Int64? = nil

    # Optional properties

    # Tax amount for the entire cart. A positive integer in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
    @[JSON::Field(key: "tax", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: tax.nil? && !tax_present?)]
    getter tax : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? tax_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @currency : String? = nil,
      @line_items : Array(Stripe::TerminalReaderReaderResourceLineItem)? = nil,
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
      if _line_items = @line_items
        if _line_items.is_a?(Array)
          _line_items.each do |item|
            if item.is_a?(OpenApi::Validatable)
              invalid_properties.concat(item.list_invalid_properties_for("line_items"))
            end
          end
        end
      end
      invalid_properties.push("\"total\" is required and cannot be null") if @total.nil?

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @currency.nil?

      return false if @line_items.nil?
      if _line_items = @line_items
        if _line_items.is_a?(Array)
          _line_items.each do |item|
            if item.is_a?(OpenApi::Validatable)
              return false unless item.valid?
            end
          end
        end
      end
      return false if @total.nil?

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] currency Object to be assigned
    def currency=(currency : String?)
      if currency.nil?
        raise ArgumentError.new("\"currency\" is required and cannot be null")
      end
      _currency = currency.not_nil!
      @currency = _currency
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] line_items Object to be assigned
    def line_items=(line_items : Array(Stripe::TerminalReaderReaderResourceLineItem)?)
      if line_items.nil?
        raise ArgumentError.new("\"line_items\" is required and cannot be null")
      end
      _line_items = line_items.not_nil!
      if _line_items.is_a?(Array)
        _line_items.each do |item|
          if item.is_a?(OpenApi::Validatable)
            item.validate
          end
        end
      end
      @line_items = _line_items
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] total Object to be assigned
    def total=(total : Int64?)
      if total.nil?
        raise ArgumentError.new("\"total\" is required and cannot be null")
      end
      _total = total.not_nil!
      @total = _total
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tax Object to be assigned
    def tax=(tax : Int64?)
      if tax.nil?
        return @tax = nil
      end
      _tax = tax.not_nil!
      @tax = _tax
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@currency, @line_items, @total, @tax, @tax_present)
  end
end
