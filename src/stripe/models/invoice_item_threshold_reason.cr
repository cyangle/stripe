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
  #
  class InvoiceItemThresholdReason
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The IDs of the line items that triggered the threshold invoice.
    @[JSON::Field(key: "line_item_ids", type: Array(String)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter line_item_ids : Array(String)? = nil

    # The quantity threshold boundary that applied to the given line item.
    @[JSON::Field(key: "usage_gte", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter usage_gte : Int64? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @line_item_ids : Array(String)? = nil,
      @usage_gte : Int64? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"line_item_ids\" is required and cannot be null") if @line_item_ids.nil?

      invalid_properties.push("\"usage_gte\" is required and cannot be null") if @usage_gte.nil?

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @line_item_ids.nil?

      return false if @usage_gte.nil?

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] line_item_ids Object to be assigned
    def line_item_ids=(new_value : Array(String)?)
      raise ArgumentError.new("\"line_item_ids\" is required and cannot be null") if new_value.nil?

      @line_item_ids = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] usage_gte Object to be assigned
    def usage_gte=(new_value : Int64?)
      raise ArgumentError.new("\"usage_gte\" is required and cannot be null") if new_value.nil?

      @usage_gte = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@line_item_ids, @usage_gte)
  end
end
