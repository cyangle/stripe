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
  # If specified, the funds from the subscription's invoices will be transferred to the destination and the ID of the resulting transfers will be found on the resulting charges.
  class TransferDataSpecs3
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Required properties

    @[JSON::Field(key: "destination", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter destination : String? = nil

    # Optional properties

    @[JSON::Field(key: "amount_percent", type: Float64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter amount_percent : Float64? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @destination : String? = nil,
      # Optional properties
      @amount_percent : Float64? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      invalid_properties.push("\"destination\" is required and cannot be null") if @destination.nil?

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @destination.nil?

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] destination Object to be assigned
    def destination=(destination : String?)
      if destination.nil?
        raise ArgumentError.new("\"destination\" is required and cannot be null")
      end
      @destination = destination
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount_percent Object to be assigned
    def amount_percent=(amount_percent : Float64?)
      if amount_percent.nil?
        return @amount_percent = nil
      end
      @amount_percent = amount_percent
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@destination, @amount_percent)
  end
end
