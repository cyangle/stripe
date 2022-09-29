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
  class GelatoVerificationSessionOptions
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "document", type: Stripe::GelatoSessionDocumentOptions?, default: nil, required: false, nullable: false, emit_null: false)]
    getter document : Stripe::GelatoSessionDocumentOptions? = nil

    #
    @[JSON::Field(key: "id_number", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter id_number : JSON::Any? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @document : Stripe::GelatoSessionDocumentOptions? = nil,
      @id_number : JSON::Any? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      if _document = @document
        invalid_properties.concat(_document.list_invalid_properties_for("document")) if _document.is_a?(OpenApi::Validatable)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _document = @document
        return false if _document.is_a?(OpenApi::Validatable) && !_document.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] document Object to be assigned
    def document=(document : Stripe::GelatoSessionDocumentOptions?)
      if document.nil?
        return @document = nil
      end
      _document = document.not_nil!
      _document.validate if _document.is_a?(OpenApi::Validatable)
      @document = _document
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] id_number Object to be assigned
    def id_number=(id_number : JSON::Any?)
      if id_number.nil?
        return @id_number = nil
      end
      _id_number = id_number.not_nil!
      @id_number = _id_number
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@document, @id_number)
  end
end
