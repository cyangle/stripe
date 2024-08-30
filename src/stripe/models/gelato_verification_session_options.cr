#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./gelato_session_document_options"
require "./gelato_session_email_options"
require "./gelato_session_phone_options"

module Stripe
  #
  class GelatoVerificationSessionOptions
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "document", type: Stripe::GelatoSessionDocumentOptions?, default: nil, required: false, nullable: false, emit_null: false)]
    getter document : Stripe::GelatoSessionDocumentOptions? = nil

    @[JSON::Field(key: "email", type: Stripe::GelatoSessionEmailOptions?, default: nil, required: false, nullable: false, emit_null: false)]
    getter email : Stripe::GelatoSessionEmailOptions? = nil

    #
    @[JSON::Field(key: "id_number", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter id_number : JSON::Any? = nil

    @[JSON::Field(key: "phone", type: Stripe::GelatoSessionPhoneOptions?, default: nil, required: false, nullable: false, emit_null: false)]
    getter phone : Stripe::GelatoSessionPhoneOptions? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @document : Stripe::GelatoSessionDocumentOptions? = nil,
      @email : Stripe::GelatoSessionEmailOptions? = nil,
      @id_number : JSON::Any? = nil,
      @phone : Stripe::GelatoSessionPhoneOptions? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_document = @document).nil?
        invalid_properties.concat(_document.list_invalid_properties_for("document")) if _document.is_a?(OpenApi::Validatable)
      end
      unless (_email = @email).nil?
        invalid_properties.concat(_email.list_invalid_properties_for("email")) if _email.is_a?(OpenApi::Validatable)
      end

      unless (_phone = @phone).nil?
        invalid_properties.concat(_phone.list_invalid_properties_for("phone")) if _phone.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_document = @document).nil?
        return false if _document.is_a?(OpenApi::Validatable) && !_document.valid?
      end

      unless (_email = @email).nil?
        return false if _email.is_a?(OpenApi::Validatable) && !_email.valid?
      end

      unless (_phone = @phone).nil?
        return false if _phone.is_a?(OpenApi::Validatable) && !_phone.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] document Object to be assigned
    def document=(new_value : Stripe::GelatoSessionDocumentOptions?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @document = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] email Object to be assigned
    def email=(new_value : Stripe::GelatoSessionEmailOptions?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @email = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] id_number Object to be assigned
    def id_number=(new_value : JSON::Any?)
      @id_number = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] phone Object to be assigned
    def phone=(new_value : Stripe::GelatoSessionPhoneOptions?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @phone = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@document, @email, @id_number, @phone)
  end
end
