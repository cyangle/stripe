#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./documents_param"

module Stripe
  class PersonDocumentsSpecs
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "company_authorization", type: Stripe::DocumentsParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter company_authorization : Stripe::DocumentsParam? = nil

    @[JSON::Field(key: "passport", type: Stripe::DocumentsParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter passport : Stripe::DocumentsParam? = nil

    @[JSON::Field(key: "visa", type: Stripe::DocumentsParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter visa : Stripe::DocumentsParam? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @company_authorization : Stripe::DocumentsParam? = nil,
      @passport : Stripe::DocumentsParam? = nil,
      @visa : Stripe::DocumentsParam? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_company_authorization = @company_authorization).nil?
        invalid_properties.concat(_company_authorization.list_invalid_properties_for("company_authorization")) if _company_authorization.is_a?(OpenApi::Validatable)
      end
      unless (_passport = @passport).nil?
        invalid_properties.concat(_passport.list_invalid_properties_for("passport")) if _passport.is_a?(OpenApi::Validatable)
      end
      unless (_visa = @visa).nil?
        invalid_properties.concat(_visa.list_invalid_properties_for("visa")) if _visa.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_company_authorization = @company_authorization).nil?
        return false if _company_authorization.is_a?(OpenApi::Validatable) && !_company_authorization.valid?
      end

      unless (_passport = @passport).nil?
        return false if _passport.is_a?(OpenApi::Validatable) && !_passport.valid?
      end

      unless (_visa = @visa).nil?
        return false if _visa.is_a?(OpenApi::Validatable) && !_visa.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] company_authorization Object to be assigned
    def company_authorization=(new_value : Stripe::DocumentsParam?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @company_authorization = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] passport Object to be assigned
    def passport=(new_value : Stripe::DocumentsParam?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @passport = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] visa Object to be assigned
    def visa=(new_value : Stripe::DocumentsParam?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @visa = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@company_authorization, @passport, @visa)
  end
end
