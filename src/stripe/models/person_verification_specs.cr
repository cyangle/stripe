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
  class PersonVerificationSpecs
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "additional_document", type: Stripe::PersonVerificationDocumentSpecs?, default: nil, required: false, nullable: false, emit_null: false)]
    getter additional_document : Stripe::PersonVerificationDocumentSpecs? = nil

    @[JSON::Field(key: "document", type: Stripe::PersonVerificationDocumentSpecs?, default: nil, required: false, nullable: false, emit_null: false)]
    getter document : Stripe::PersonVerificationDocumentSpecs? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @additional_document : Stripe::PersonVerificationDocumentSpecs? = nil,
      @document : Stripe::PersonVerificationDocumentSpecs? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_additional_document = @additional_document).nil?
        invalid_properties.concat(_additional_document.list_invalid_properties_for("additional_document")) if _additional_document.is_a?(OpenApi::Validatable)
      end
      unless (_document = @document).nil?
        invalid_properties.concat(_document.list_invalid_properties_for("document")) if _document.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_additional_document = @additional_document).nil?
        return false if _additional_document.is_a?(OpenApi::Validatable) && !_additional_document.valid?
      end

      unless (_document = @document).nil?
        return false if _document.is_a?(OpenApi::Validatable) && !_document.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] additional_document Object to be assigned
    def additional_document=(additional_document : Stripe::PersonVerificationDocumentSpecs?)
      if additional_document.nil?
        return @additional_document = nil
      end
      _additional_document = additional_document.not_nil!
      _additional_document.validate if _additional_document.is_a?(OpenApi::Validatable)
      @additional_document = _additional_document
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] document Object to be assigned
    def document=(document : Stripe::PersonVerificationDocumentSpecs?)
      if document.nil?
        return @document = nil
      end
      _document = document.not_nil!
      _document.validate if _document.is_a?(OpenApi::Validatable)
      @document = _document
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@additional_document, @document)
  end
end
