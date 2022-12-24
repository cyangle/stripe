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
  class PaymentPagesCheckoutSessionInvoiceCreation
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Indicates whether invoice creation is enabled for the Checkout Session.
    @[JSON::Field(key: "enabled", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter enabled : Bool? = nil

    @[JSON::Field(key: "invoice_data", type: Stripe::PaymentPagesCheckoutSessionInvoiceSettings?, default: nil, required: true, nullable: false, emit_null: false)]
    getter invoice_data : Stripe::PaymentPagesCheckoutSessionInvoiceSettings? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @enabled : Bool? = nil,
      @invoice_data : Stripe::PaymentPagesCheckoutSessionInvoiceSettings? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"enabled\" is required and cannot be null") if @enabled.nil?

      invalid_properties.push("\"invoice_data\" is required and cannot be null") if @invoice_data.nil?

      unless (_invoice_data = @invoice_data).nil?
        invalid_properties.concat(_invoice_data.list_invalid_properties_for("invoice_data")) if _invoice_data.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @enabled.nil?

      return false if @invoice_data.nil?
      unless (_invoice_data = @invoice_data).nil?
        return false if _invoice_data.is_a?(OpenApi::Validatable) && !_invoice_data.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] enabled Object to be assigned
    def enabled=(new_value : Bool?)
      raise ArgumentError.new("\"enabled\" is required and cannot be null") if new_value.nil?

      @enabled = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] invoice_data Object to be assigned
    def invoice_data=(new_value : Stripe::PaymentPagesCheckoutSessionInvoiceSettings?)
      raise ArgumentError.new("\"invoice_data\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @invoice_data = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@enabled, @invoice_data)
  end
end
