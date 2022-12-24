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
  class IssuingCardholderCompany
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Whether the company's business ID number was provided.
    @[JSON::Field(key: "tax_id_provided", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter tax_id_provided : Bool? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @tax_id_provided : Bool? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"tax_id_provided\" is required and cannot be null") if @tax_id_provided.nil?

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @tax_id_provided.nil?

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tax_id_provided Object to be assigned
    def tax_id_provided=(new_value : Bool?)
      raise ArgumentError.new("\"tax_id_provided\" is required and cannot be null") if new_value.nil?

      @tax_id_provided = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@tax_id_provided)
  end
end
