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
  #
  class InvoiceLineItemPeriod
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The end of the period, which must be greater than or equal to the start.
    @[JSON::Field(key: "end", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter _end : Int64? = nil

    # The start of the period.
    @[JSON::Field(key: "start", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter start : Int64? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @_end : Int64? = nil,
      @start : Int64? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"_end\" is required and cannot be null") if @_end.nil?

      invalid_properties.push("\"start\" is required and cannot be null") if @start.nil?

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @_end.nil?

      return false if @start.nil?

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _end Object to be assigned
    def _end=(new_value : Int64?)
      raise ArgumentError.new("\"_end\" is required and cannot be null") if new_value.nil?

      @_end = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] start Object to be assigned
    def start=(new_value : Int64?)
      raise ArgumentError.new("\"start\" is required and cannot be null") if new_value.nil?

      @start = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@_end, @start)
  end
end
