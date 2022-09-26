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
  # Documents that may be submitted to satisfy various informational requests.
  class DocumentsSpecs
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "bank_account_ownership_verification", type: Stripe::DocumentsParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter bank_account_ownership_verification : Stripe::DocumentsParam? = nil

    @[JSON::Field(key: "company_license", type: Stripe::DocumentsParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter company_license : Stripe::DocumentsParam? = nil

    @[JSON::Field(key: "company_memorandum_of_association", type: Stripe::DocumentsParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter company_memorandum_of_association : Stripe::DocumentsParam? = nil

    @[JSON::Field(key: "company_ministerial_decree", type: Stripe::DocumentsParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter company_ministerial_decree : Stripe::DocumentsParam? = nil

    @[JSON::Field(key: "company_registration_verification", type: Stripe::DocumentsParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter company_registration_verification : Stripe::DocumentsParam? = nil

    @[JSON::Field(key: "company_tax_id_verification", type: Stripe::DocumentsParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter company_tax_id_verification : Stripe::DocumentsParam? = nil

    @[JSON::Field(key: "proof_of_registration", type: Stripe::DocumentsParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter proof_of_registration : Stripe::DocumentsParam? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @bank_account_ownership_verification : Stripe::DocumentsParam? = nil,
      @company_license : Stripe::DocumentsParam? = nil,
      @company_memorandum_of_association : Stripe::DocumentsParam? = nil,
      @company_ministerial_decree : Stripe::DocumentsParam? = nil,
      @company_registration_verification : Stripe::DocumentsParam? = nil,
      @company_tax_id_verification : Stripe::DocumentsParam? = nil,
      @proof_of_registration : Stripe::DocumentsParam? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      # This is a model bank_account_ownership_verification : Stripe::DocumentsParam?
      # This is a model company_license : Stripe::DocumentsParam?
      # This is a model company_memorandum_of_association : Stripe::DocumentsParam?
      # This is a model company_ministerial_decree : Stripe::DocumentsParam?
      # This is a model company_registration_verification : Stripe::DocumentsParam?
      # This is a model company_tax_id_verification : Stripe::DocumentsParam?
      # This is a model proof_of_registration : Stripe::DocumentsParam?

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bank_account_ownership_verification Object to be assigned
    def bank_account_ownership_verification=(bank_account_ownership_verification : Stripe::DocumentsParam?)
      if bank_account_ownership_verification.nil?
        return @bank_account_ownership_verification = nil
      end
      @bank_account_ownership_verification = bank_account_ownership_verification
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] company_license Object to be assigned
    def company_license=(company_license : Stripe::DocumentsParam?)
      if company_license.nil?
        return @company_license = nil
      end
      @company_license = company_license
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] company_memorandum_of_association Object to be assigned
    def company_memorandum_of_association=(company_memorandum_of_association : Stripe::DocumentsParam?)
      if company_memorandum_of_association.nil?
        return @company_memorandum_of_association = nil
      end
      @company_memorandum_of_association = company_memorandum_of_association
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] company_ministerial_decree Object to be assigned
    def company_ministerial_decree=(company_ministerial_decree : Stripe::DocumentsParam?)
      if company_ministerial_decree.nil?
        return @company_ministerial_decree = nil
      end
      @company_ministerial_decree = company_ministerial_decree
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] company_registration_verification Object to be assigned
    def company_registration_verification=(company_registration_verification : Stripe::DocumentsParam?)
      if company_registration_verification.nil?
        return @company_registration_verification = nil
      end
      @company_registration_verification = company_registration_verification
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] company_tax_id_verification Object to be assigned
    def company_tax_id_verification=(company_tax_id_verification : Stripe::DocumentsParam?)
      if company_tax_id_verification.nil?
        return @company_tax_id_verification = nil
      end
      @company_tax_id_verification = company_tax_id_verification
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] proof_of_registration Object to be assigned
    def proof_of_registration=(proof_of_registration : Stripe::DocumentsParam?)
      if proof_of_registration.nil?
        return @proof_of_registration = nil
      end
      @proof_of_registration = proof_of_registration
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@bank_account_ownership_verification, @company_license, @company_memorandum_of_association, @company_ministerial_decree, @company_registration_verification, @company_tax_id_verification, @proof_of_registration)
  end
end
