#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

module Stripe
  class TransactionShippingCostReversal
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The amount to reverse, in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) in negative.
    @[JSON::Field(key: "amount", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter amount : Int64? = nil

    # The amount of tax to reverse, in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) in negative.
    @[JSON::Field(key: "amount_tax", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter amount_tax : Int64? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @amount : Int64? = nil,
      @amount_tax : Int64? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"amount\" is required and cannot be null") if @amount.nil?

      invalid_properties.push("\"amount_tax\" is required and cannot be null") if @amount_tax.nil?

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @amount.nil?

      return false if @amount_tax.nil?

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount Object to be assigned
    def amount=(new_value : Int64?)
      raise ArgumentError.new("\"amount\" is required and cannot be null") if new_value.nil?

      @amount = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount_tax Object to be assigned
    def amount_tax=(new_value : Int64?)
      raise ArgumentError.new("\"amount_tax\" is required and cannot be null") if new_value.nil?

      @amount_tax = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@amount, @amount_tax)
  end
end