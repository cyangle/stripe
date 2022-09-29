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
  class PaymentLinksResourceTransferData
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    @[JSON::Field(key: "destination", type: Stripe::PaymentLinksResourceTransferDataDestination?, default: nil, required: true, nullable: false, emit_null: false)]
    getter destination : Stripe::PaymentLinksResourceTransferDataDestination? = nil

    # Optional properties

    # The amount in %s that will be transferred to the destination account. By default, the entire amount is transferred to the destination.
    @[JSON::Field(key: "amount", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: amount.nil? && !amount_present?)]
    getter amount : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? amount_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @destination : Stripe::PaymentLinksResourceTransferDataDestination? = nil,
      # Optional properties
      @amount : Int64? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      invalid_properties.push("\"destination\" is required and cannot be null") if @destination.nil?
      if _destination = @destination
        invalid_properties.concat(_destination.list_invalid_properties_for("destination")) if _destination.is_a?(OpenApi::Validatable)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @destination.nil?
      if _destination = @destination
        return false if _destination.is_a?(OpenApi::Validatable) && !_destination.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] destination Object to be assigned
    def destination=(destination : Stripe::PaymentLinksResourceTransferDataDestination?)
      if destination.nil?
        raise ArgumentError.new("\"destination\" is required and cannot be null")
      end
      _destination = destination.not_nil!
      _destination.validate if _destination.is_a?(OpenApi::Validatable)
      @destination = _destination
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount Object to be assigned
    def amount=(amount : Int64?)
      if amount.nil?
        return @amount = nil
      end
      _amount = amount.not_nil!
      @amount = _amount
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@destination, @amount, @amount_present)
  end
end
