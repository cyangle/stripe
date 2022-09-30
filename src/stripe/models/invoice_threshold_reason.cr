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
  class InvoiceThresholdReason
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    # Indicates which line items triggered a threshold invoice.
    @[JSON::Field(key: "item_reasons", type: Array(Stripe::InvoiceItemThresholdReason)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter item_reasons : Array(Stripe::InvoiceItemThresholdReason)? = nil

    # Optional properties

    # The total invoice amount threshold boundary if it triggered the threshold invoice.
    @[JSON::Field(key: "amount_gte", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: amount_gte.nil? && !amount_gte_present?)]
    getter amount_gte : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? amount_gte_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @item_reasons : Array(Stripe::InvoiceItemThresholdReason)? = nil,
      # Optional properties
      @amount_gte : Int64? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"item_reasons\" is required and cannot be null") if @item_reasons.nil?

      if _item_reasons = @item_reasons
        invalid_properties.concat(OpenApi::ArrayValidator.list_invalid_properties_for(key: "item_reasons", array: _item_reasons)) if _item_reasons.is_a?(Array)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @item_reasons.nil?
      if _item_reasons = @item_reasons
        return false if _item_reasons.is_a?(Array) && !OpenApi::ArrayValidator.valid?(array: _item_reasons)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] item_reasons Object to be assigned
    def item_reasons=(item_reasons : Array(Stripe::InvoiceItemThresholdReason)?)
      if item_reasons.nil?
        raise ArgumentError.new("\"item_reasons\" is required and cannot be null")
      end
      _item_reasons = item_reasons.not_nil!
      OpenApi::ArrayValidator.validate(array: _item_reasons) if _item_reasons.is_a?(Array)
      @item_reasons = _item_reasons
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount_gte Object to be assigned
    def amount_gte=(amount_gte : Int64?)
      if amount_gte.nil?
        return @amount_gte = nil
      end
      _amount_gte = amount_gte.not_nil!
      @amount_gte = _amount_gte
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@item_reasons, @amount_gte, @amount_gte_present)
  end
end
