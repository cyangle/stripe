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
  class InvoiceCreationParams
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "enabled", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter enabled : Bool? = nil

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "invoice_data", type: Stripe::InvoiceDataParams?, default: nil, required: false, nullable: false, emit_null: false)]
    getter invoice_data : Stripe::InvoiceDataParams? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @enabled : Bool? = nil,
      # Optional properties
      @invoice_data : Stripe::InvoiceDataParams? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"enabled\" is required and cannot be null") if @enabled.nil?

      unless (_invoice_data = @invoice_data).nil?
        invalid_properties.concat(_invoice_data.list_invalid_properties_for("invoice_data")) if _invoice_data.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @enabled.nil?

      unless (_invoice_data = @invoice_data).nil?
        return false if _invoice_data.is_a?(OpenApi::Validatable) && !_invoice_data.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] enabled Object to be assigned
    def enabled=(enabled : Bool?)
      if enabled.nil?
        raise ArgumentError.new("\"enabled\" is required and cannot be null")
      end
      _enabled = enabled.not_nil!
      @enabled = _enabled
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] invoice_data Object to be assigned
    def invoice_data=(invoice_data : Stripe::InvoiceDataParams?)
      if invoice_data.nil?
        return @invoice_data = nil
      end
      _invoice_data = invoice_data.not_nil!
      _invoice_data.validate if _invoice_data.is_a?(OpenApi::Validatable)
      @invoice_data = _invoice_data
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@enabled, @invoice_data)
  end
end