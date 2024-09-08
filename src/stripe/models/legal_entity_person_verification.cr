#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./legal_entity_person_verification_additional_document"
require "./legal_entity_person_verification_document"

module Stripe
  #
  class LegalEntityPersonVerification
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The state of verification for the person. Possible values are `unverified`, `pending`, or `verified`.
    @[JSON::Field(key: "status", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter status : String? = nil
    MAX_LENGTH_FOR_STATUS = 5000

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "additional_document", type: Stripe::LegalEntityPersonVerificationAdditionalDocument?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: additional_document.nil? && !additional_document_present?)]
    getter additional_document : Stripe::LegalEntityPersonVerificationAdditionalDocument? = nil

    @[JSON::Field(ignore: true)]
    property? additional_document_present : Bool = false

    # A user-displayable string describing the verification state for the person. For example, this may say \"Provided identity information could not be verified\".
    @[JSON::Field(key: "details", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: details.nil? && !details_present?)]
    getter details : String? = nil
    MAX_LENGTH_FOR_DETAILS = 5000

    @[JSON::Field(ignore: true)]
    property? details_present : Bool = false

    # One of `document_address_mismatch`, `document_dob_mismatch`, `document_duplicate_type`, `document_id_number_mismatch`, `document_name_mismatch`, `document_nationality_mismatch`, `failed_keyed_identity`, or `failed_other`. A machine-readable code specifying the verification state for the person.
    @[JSON::Field(key: "details_code", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: details_code.nil? && !details_code_present?)]
    getter details_code : String? = nil
    MAX_LENGTH_FOR_DETAILS_CODE = 5000

    @[JSON::Field(ignore: true)]
    property? details_code_present : Bool = false

    @[JSON::Field(key: "document", type: Stripe::LegalEntityPersonVerificationDocument?, default: nil, required: false, nullable: false, emit_null: false)]
    getter document : Stripe::LegalEntityPersonVerificationDocument? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @status : String? = nil,
      # Optional properties
      @additional_document : Stripe::LegalEntityPersonVerificationAdditionalDocument? = nil,
      @details : String? = nil,
      @details_code : String? = nil,
      @document : Stripe::LegalEntityPersonVerificationDocument? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"status\" is required and cannot be null") if @status.nil?

      unless (_status = @status).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("status", _status.to_s.size, MAX_LENGTH_FOR_STATUS)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_additional_document = @additional_document).nil?
        invalid_properties.concat(_additional_document.list_invalid_properties_for("additional_document")) if _additional_document.is_a?(OpenApi::Validatable)
      end
      unless (_details = @details).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("details", _details.to_s.size, MAX_LENGTH_FOR_DETAILS)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_details_code = @details_code).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("details_code", _details_code.to_s.size, MAX_LENGTH_FOR_DETAILS_CODE)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_document = @document).nil?
        invalid_properties.concat(_document.list_invalid_properties_for("document")) if _document.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @status.nil?
      unless (_status = @status).nil?
        return false if _status.to_s.size > MAX_LENGTH_FOR_STATUS
      end

      unless (_additional_document = @additional_document).nil?
        return false if _additional_document.is_a?(OpenApi::Validatable) && !_additional_document.valid?
      end

      unless (_details = @details).nil?
        return false if _details.to_s.size > MAX_LENGTH_FOR_DETAILS
      end

      unless (_details_code = @details_code).nil?
        return false if _details_code.to_s.size > MAX_LENGTH_FOR_DETAILS_CODE
      end

      unless (_document = @document).nil?
        return false if _document.is_a?(OpenApi::Validatable) && !_document.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(new_value : String?)
      raise ArgumentError.new("\"status\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("status", new_value.to_s.size, MAX_LENGTH_FOR_STATUS)
      end

      @status = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] additional_document Object to be assigned
    def additional_document=(new_value : Stripe::LegalEntityPersonVerificationAdditionalDocument?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @additional_document = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] details Object to be assigned
    def details=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("details", new_value.to_s.size, MAX_LENGTH_FOR_DETAILS)
      end

      @details = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] details_code Object to be assigned
    def details_code=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("details_code", new_value.to_s.size, MAX_LENGTH_FOR_DETAILS_CODE)
      end

      @details_code = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] document Object to be assigned
    def document=(new_value : Stripe::LegalEntityPersonVerificationDocument?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @document = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@status, @additional_document, @additional_document_present, @details, @details_present, @details_code, @details_code_present, @document)
  end
end
