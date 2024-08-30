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
  class InvoiceRenderingPdf
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Page size of invoice pdf. Options include a4, letter, and auto. If set to auto, page size will be switched to a4 or letter based on customer locale.
    @[JSON::Field(key: "page_size", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter page_size : String? = nil
    ERROR_MESSAGE_FOR_PAGE_SIZE = "invalid value for \"page_size\", must be one of [a4, auto, letter]."
    VALID_VALUES_FOR_PAGE_SIZE  = String.static_array("a4", "auto", "letter")

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @page_size : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_page_size = @page_size).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_PAGE_SIZE) unless OpenApi::EnumValidator.valid?(_page_size, VALID_VALUES_FOR_PAGE_SIZE)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_page_size = @page_size).nil?
        return false unless OpenApi::EnumValidator.valid?(_page_size, VALID_VALUES_FOR_PAGE_SIZE)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] page_size Object to be assigned
    def page_size=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("page_size", new_value, VALID_VALUES_FOR_PAGE_SIZE)
      end

      @page_size = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@page_size)
  end
end