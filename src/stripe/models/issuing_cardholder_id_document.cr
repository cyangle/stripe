#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./issuing_cardholder_id_document_back"
require "./issuing_cardholder_id_document_front"

module Stripe
  #
  class IssuingCardholderIdDocument
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "back", type: Stripe::IssuingCardholderIdDocumentBack?, default: nil, required: true, nullable: true, emit_null: true)]
    getter back : Stripe::IssuingCardholderIdDocumentBack? = nil

    @[JSON::Field(key: "front", type: Stripe::IssuingCardholderIdDocumentFront?, default: nil, required: true, nullable: true, emit_null: true)]
    getter front : Stripe::IssuingCardholderIdDocumentFront? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @back : Stripe::IssuingCardholderIdDocumentBack? = nil,
      @front : Stripe::IssuingCardholderIdDocumentFront? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_back = @back).nil?
        invalid_properties.concat(_back.list_invalid_properties_for("back")) if _back.is_a?(OpenApi::Validatable)
      end
      unless (_front = @front).nil?
        invalid_properties.concat(_front.list_invalid_properties_for("front")) if _front.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_back = @back).nil?
        return false if _back.is_a?(OpenApi::Validatable) && !_back.valid?
      end

      unless (_front = @front).nil?
        return false if _front.is_a?(OpenApi::Validatable) && !_front.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] back Object to be assigned
    def back=(new_value : Stripe::IssuingCardholderIdDocumentBack?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @back = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] front Object to be assigned
    def front=(new_value : Stripe::IssuingCardholderIdDocumentFront?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @front = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@back, @front)
  end
end
