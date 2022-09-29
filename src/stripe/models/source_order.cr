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
  class SourceOrder
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    # A positive integer in the smallest currency unit (that is, 100 cents for $1.00, or 1 for ¥1, Japanese Yen being a zero-decimal currency) representing the total amount for the order.
    @[JSON::Field(key: "amount", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter amount : Int64? = nil

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[JSON::Field(key: "currency", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter currency : String? = nil

    # Optional properties

    # The email address of the customer placing the order.
    @[JSON::Field(key: "email", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter email : String? = nil

    # List of items constituting the order.
    @[JSON::Field(key: "items", type: Array(Stripe::SourceOrderItem)?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: items.nil? && !items_present?)]
    getter items : Array(Stripe::SourceOrderItem)? = nil

    @[JSON::Field(ignore: true)]
    property? items_present : Bool = false

    @[JSON::Field(key: "shipping", type: Stripe::Shipping?, default: nil, required: false, nullable: false, emit_null: false)]
    getter shipping : Stripe::Shipping? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @amount : Int64? = nil,
      @currency : String? = nil,
      # Optional properties
      @email : String? = nil,
      @items : Array(Stripe::SourceOrderItem)? = nil,
      @shipping : Stripe::Shipping? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      invalid_properties.push("\"amount\" is required and cannot be null") if @amount.nil?

      invalid_properties.push("\"currency\" is required and cannot be null") if @currency.nil?

      if _email = @email
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("email", _email.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _items = @items
        invalid_properties.concat(OpenApi::ArrayValidator.list_invalid_properties_for(key: "items", array: _items)) if _items.is_a?(Array)
      end
      if _shipping = @shipping
        invalid_properties.concat(_shipping.list_invalid_properties_for("shipping")) if _shipping.is_a?(OpenApi::Validatable)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @amount.nil?

      return false if @currency.nil?

      if _email = @email
        return false if _email.to_s.size > 5000
      end
      if _items = @items
        return false if _items.is_a?(Array) && !OpenApi::ArrayValidator.valid?(array: _items)
      end
      if _shipping = @shipping
        return false if _shipping.is_a?(OpenApi::Validatable) && !_shipping.valid?
      end

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
    # @param [Object] currency Object to be assigned
    def currency=(currency : String?)
      if currency.nil?
        raise ArgumentError.new("\"currency\" is required and cannot be null")
      end
      _currency = currency.not_nil!
      @currency = _currency
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] email Object to be assigned
    def email=(email : String?)
      if email.nil?
        return @email = nil
      end
      _email = email.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("email", _email.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @email = _email
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] items Object to be assigned
    def items=(items : Array(Stripe::SourceOrderItem)?)
      if items.nil?
        return @items = nil
      end
      _items = items.not_nil!
      OpenApi::ArrayValidator.validate(array: _items) if _items.is_a?(Array)
      @items = _items
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] shipping Object to be assigned
    def shipping=(shipping : Stripe::Shipping?)
      if shipping.nil?
        return @shipping = nil
      end
      _shipping = shipping.not_nil!
      _shipping.validate if _shipping.is_a?(OpenApi::Validatable)
      @shipping = _shipping
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@amount, @currency, @email, @items, @items_present, @shipping)
  end
end
