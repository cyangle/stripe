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
  class AdjustableQuantityParams
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Set to true if the quantity can be adjusted to any non-negative Integer.
    @[JSON::Field(key: "enabled", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter enabled : Bool? = nil

    # End of Required Properties

    # Optional Properties

    # The maximum quantity the customer can purchase. By default this value is 99. You can specify a value up to 999.
    @[JSON::Field(key: "maximum", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter maximum : Int64? = nil

    # The minimum quantity the customer can purchase. By default this value is 0. If there is only one item in the cart then that item's quantity cannot go down to 0.
    @[JSON::Field(key: "minimum", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter minimum : Int64? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @enabled : Bool? = nil,
      # Optional properties
      @maximum : Int64? = nil,
      @minimum : Int64? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"enabled\" is required and cannot be null") if @enabled.nil?

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @enabled.nil?

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] enabled Object to be assigned
    def enabled=(new_value : Bool?)
      raise ArgumentError.new("\"enabled\" is required and cannot be null") if new_value.nil?

      @enabled = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] maximum Object to be assigned
    def maximum=(new_value : Int64?)
      @maximum = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] minimum Object to be assigned
    def minimum=(new_value : Int64?)
      @minimum = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@enabled, @maximum, @minimum)
  end
end
