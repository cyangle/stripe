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
  class PostCouponsRequestCurrencyOptionsValue
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    @[JSON::Field(key: "amount_off", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter amount_off : Int64? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @amount_off : Int64? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      invalid_properties.push("\"amount_off\" is required and cannot be null") if @amount_off.nil?

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @amount_off.nil?

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount_off Object to be assigned
    def amount_off=(amount_off : Int64?)
      if amount_off.nil?
        raise ArgumentError.new("\"amount_off\" is required and cannot be null")
      end
      _amount_off = amount_off.not_nil!
      @amount_off = _amount_off
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@amount_off)
  end
end
