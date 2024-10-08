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
  class PaymentMethodDetailsBoleto
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The tax ID of the customer (CPF for individuals consumers or CNPJ for businesses consumers)
    @[JSON::Field(key: "tax_id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter tax_id : String? = nil
    MAX_LENGTH_FOR_TAX_ID = 5000

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @tax_id : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"tax_id\" is required and cannot be null") if @tax_id.nil?

      unless (_tax_id = @tax_id).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("tax_id", _tax_id.to_s.size, MAX_LENGTH_FOR_TAX_ID)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @tax_id.nil?
      unless (_tax_id = @tax_id).nil?
        return false if _tax_id.to_s.size > MAX_LENGTH_FOR_TAX_ID
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tax_id Object to be assigned
    def tax_id=(new_value : String?)
      raise ArgumentError.new("\"tax_id\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("tax_id", new_value.to_s.size, MAX_LENGTH_FOR_TAX_ID)
      end

      @tax_id = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@tax_id)
  end
end
