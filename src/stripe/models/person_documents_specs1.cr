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
  class PersonDocumentsSpecs1
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
    def company_authorization=(company_authorization : Stripe::DocumentsParam?)
      if company_authorization.nil?
        return @company_authorization = nil
      end
      _company_authorization = company_authorization.not_nil!
      _company_authorization.validate if _company_authorization.is_a?(OpenApi::Validatable)
      @company_authorization = _company_authorization
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] passport Object to be assigned
    def passport=(passport : Stripe::DocumentsParam?)
      if passport.nil?
        return @passport = nil
      end
      _passport = passport.not_nil!
      _passport.validate if _passport.is_a?(OpenApi::Validatable)
      @passport = _passport
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] visa Object to be assigned
    def visa=(visa : Stripe::DocumentsParam?)
      if visa.nil?
        return @visa = nil
      end
      _visa = visa.not_nil!
      _visa.validate if _visa.is_a?(OpenApi::Validatable)
      @visa = _visa
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@company_authorization, @passport, @visa)
  end
end
