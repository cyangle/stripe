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
  # Represents a line item to be displayed on the reader
  class TerminalReaderReaderResourceLineItem
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    # The amount of the line item. A positive integer in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal).
    @[JSON::Field(key: "amount", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter amount : Int64? = nil

    # Description of the line item.
    @[JSON::Field(key: "description", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter description : String? = nil

    # The quantity of the line item.
    @[JSON::Field(key: "quantity", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter quantity : Int64? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @amount : Int64? = nil,
      @description : String? = nil,
      @quantity : Int64? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      invalid_properties.push("\"amount\" is required and cannot be null") if @amount.nil?

      invalid_properties.push("\"description\" is required and cannot be null") if @description.nil?
      if _description = @description
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("description", _description.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"quantity\" is required and cannot be null") if @quantity.nil?

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @amount.nil?

      return false if @description.nil?
      if _description = @description
        return false if _description.to_s.size > 5000
      end
      return false if @quantity.nil?

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount Object to be assigned
    def amount=(amount : Int64?)
      if amount.nil?
        raise ArgumentError.new("\"amount\" is required and cannot be null")
      end
      _amount = amount.not_nil!
      @amount = _amount
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] description Object to be assigned
    def description=(description : String?)
      if description.nil?
        raise ArgumentError.new("\"description\" is required and cannot be null")
      end
      _description = description.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("description", _description.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @description = _description
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] quantity Object to be assigned
    def quantity=(quantity : Int64?)
      if quantity.nil?
        raise ArgumentError.new("\"quantity\" is required and cannot be null")
      end
      _quantity = quantity.not_nil!
      @quantity = _quantity
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@amount, @description, @quantity)
  end
end
