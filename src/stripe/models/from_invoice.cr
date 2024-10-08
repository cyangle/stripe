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
  class FromInvoice
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The relation between the new invoice and the original invoice. Currently, only 'revision' is permitted
    @[JSON::Field(key: "action", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter action : String? = nil
    MAX_LENGTH_FOR_ACTION    = 5000
    ERROR_MESSAGE_FOR_ACTION = "invalid value for \"action\", must be one of [revision]."
    VALID_VALUES_FOR_ACTION  = String.static_array("revision")

    # The `id` of the invoice that will be cloned.
    @[JSON::Field(key: "invoice", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter invoice : String? = nil
    MAX_LENGTH_FOR_INVOICE = 5000

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @action : String? = nil,
      @invoice : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"action\" is required and cannot be null") if @action.nil?

      unless (_action = @action).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_ACTION) unless OpenApi::EnumValidator.valid?(_action, VALID_VALUES_FOR_ACTION)
      end
      invalid_properties.push("\"invoice\" is required and cannot be null") if @invoice.nil?

      unless (_invoice = @invoice).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("invoice", _invoice.to_s.size, MAX_LENGTH_FOR_INVOICE)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @action.nil?
      unless (_action = @action).nil?
        return false unless OpenApi::EnumValidator.valid?(_action, VALID_VALUES_FOR_ACTION)
      end

      return false if @invoice.nil?
      unless (_invoice = @invoice).nil?
        return false if _invoice.to_s.size > MAX_LENGTH_FOR_INVOICE
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] action Object to be assigned
    def action=(new_value : String?)
      raise ArgumentError.new("\"action\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::EnumValidator.validate("action", new_value, VALID_VALUES_FOR_ACTION)
      end

      @action = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] invoice Object to be assigned
    def invoice=(new_value : String?)
      raise ArgumentError.new("\"invoice\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("invoice", new_value.to_s.size, MAX_LENGTH_FOR_INVOICE)
      end

      @invoice = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@action, @invoice)
  end
end
