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
  class PaymentMethodDetailsBoleto
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    # The tax ID of the customer (CPF for individuals consumers or CNPJ for businesses consumers)
    @[JSON::Field(key: "tax_id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter tax_id : String? = nil

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
      if _tax_id = @tax_id
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("tax_id", _tax_id.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @tax_id.nil?
      if _tax_id = @tax_id
        return false if _tax_id.to_s.size > 5000
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tax_id Object to be assigned
    def tax_id=(tax_id : String?)
      if tax_id.nil?
        raise ArgumentError.new("\"tax_id\" is required and cannot be null")
      end
      _tax_id = tax_id.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("tax_id", _tax_id.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @tax_id = _tax_id
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@tax_id)
  end
end
