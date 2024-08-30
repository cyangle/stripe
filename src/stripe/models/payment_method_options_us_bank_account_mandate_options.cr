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
  class PaymentMethodOptionsUsBankAccountMandateOptions
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # Mandate collection method
    @[JSON::Field(key: "collection_method", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter collection_method : String? = nil
    ERROR_MESSAGE_FOR_COLLECTION_METHOD = "invalid value for \"collection_method\", must be one of [paper]."
    VALID_VALUES_FOR_COLLECTION_METHOD  = String.static_array("paper")

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @collection_method : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_collection_method = @collection_method).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_COLLECTION_METHOD) unless OpenApi::EnumValidator.valid?(_collection_method, VALID_VALUES_FOR_COLLECTION_METHOD)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_collection_method = @collection_method).nil?
        return false unless OpenApi::EnumValidator.valid?(_collection_method, VALID_VALUES_FOR_COLLECTION_METHOD)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] collection_method Object to be assigned
    def collection_method=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("collection_method", new_value, VALID_VALUES_FOR_COLLECTION_METHOD)
      end

      @collection_method = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@collection_method)
  end
end