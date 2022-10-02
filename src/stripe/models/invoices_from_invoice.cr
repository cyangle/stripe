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
  class InvoicesFromInvoice
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    # The relation between this invoice and the cloned invoice
    @[JSON::Field(key: "action", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter action : String? = nil
    MAX_LENGTH_FOR_ACTION = 5000

    @[JSON::Field(key: "invoice", type: Stripe::InvoicesFromInvoiceInvoice?, default: nil, required: true, nullable: false, emit_null: false)]
    getter invoice : Stripe::InvoicesFromInvoiceInvoice? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @action : String? = nil,
      @invoice : Stripe::InvoicesFromInvoiceInvoice? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"action\" is required and cannot be null") if @action.nil?

      if _action = @action
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("action", _action.to_s.size, MAX_LENGTH_FOR_ACTION)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"invoice\" is required and cannot be null") if @invoice.nil?

      if _invoice = @invoice
        invalid_properties.concat(_invoice.list_invalid_properties_for("invoice")) if _invoice.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @action.nil?
      if _action = @action
        return false if _action.to_s.size > MAX_LENGTH_FOR_ACTION
      end

      return false if @invoice.nil?
      if _invoice = @invoice
        return false if _invoice.is_a?(OpenApi::Validatable) && !_invoice.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] action Object to be assigned
    def action=(action : String?)
      if action.nil?
        raise ArgumentError.new("\"action\" is required and cannot be null")
      end
      _action = action.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("action", _action.to_s.size, MAX_LENGTH_FOR_ACTION)
      @action = _action
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] invoice Object to be assigned
    def invoice=(invoice : Stripe::InvoicesFromInvoiceInvoice?)
      if invoice.nil?
        raise ArgumentError.new("\"invoice\" is required and cannot be null")
      end
      _invoice = invoice.not_nil!
      _invoice.validate if _invoice.is_a?(OpenApi::Validatable)
      @invoice = _invoice
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@action, @invoice)
  end
end
