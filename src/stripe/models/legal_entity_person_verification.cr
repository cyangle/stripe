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
  class LegalEntityPersonVerification
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Required properties

    # The state of verification for the person. Possible values are `unverified`, `pending`, or `verified`.
    @[JSON::Field(key: "status", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter status : String? = nil

    # Optional properties

    @[JSON::Field(key: "additional_document", type: Stripe::LegalEntityPersonVerificationAdditionalDocument?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: additional_document.nil? && !additional_document_present?)]
    getter additional_document : Stripe::LegalEntityPersonVerificationAdditionalDocument? = nil

    @[JSON::Field(ignore: true)]
    property? additional_document_present : Bool = false

    # A user-displayable string describing the verification state for the person. For example, this may say \"Provided identity information could not be verified\".
    @[JSON::Field(key: "details", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: details.nil? && !details_present?)]
    getter details : String? = nil

    @[JSON::Field(ignore: true)]
    property? details_present : Bool = false

    # One of `document_address_mismatch`, `document_dob_mismatch`, `document_duplicate_type`, `document_id_number_mismatch`, `document_name_mismatch`, `document_nationality_mismatch`, `failed_keyed_identity`, or `failed_other`. A machine-readable code specifying the verification state for the person.
    @[JSON::Field(key: "details_code", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: details_code.nil? && !details_code_present?)]
    getter details_code : String? = nil

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
    def list_invalid_properties
      invalid_properties = Array(String).new
      invalid_properties.push("\"status\" is required and cannot be null") if @status.nil?
      if _status = @status
        if _status.to_s.size > 5000
          invalid_properties.push("invalid value for \"status\", the character length must be smaller than or equal to 5000.")
        end
      end
      # This is a model additional_document : Stripe::LegalEntityPersonVerificationAdditionalDocument?
      if _details = @details
        if _details.to_s.size > 5000
          invalid_properties.push("invalid value for \"details\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _details_code = @details_code
        if _details_code.to_s.size > 5000
          invalid_properties.push("invalid value for \"details_code\", the character length must be smaller than or equal to 5000.")
        end
      end
      # This is a model document : Stripe::LegalEntityPersonVerificationDocument?

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @status.nil?
      if _status = @status
        return false if _status.to_s.size > 5000
      end
      if _details = @details
        return false if _details.to_s.size > 5000
      end
      if _details_code = @details_code
        return false if _details_code.to_s.size > 5000
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status : String?)
      if status.nil?
        raise ArgumentError.new("\"status\" is required and cannot be null")
      end
      _status = status.not_nil!
      if _status.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"status\", the character length must be smaller than or equal to 5000.")
      end

      @status = status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] additional_document Object to be assigned
    def additional_document=(additional_document : Stripe::LegalEntityPersonVerificationAdditionalDocument?)
      if additional_document.nil?
        return @additional_document = nil
      end
      @additional_document = additional_document
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] details Object to be assigned
    def details=(details : String?)
      if details.nil?
        return @details = nil
      end
      _details = details.not_nil!
      if _details.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"details\", the character length must be smaller than or equal to 5000.")
      end

      @details = details
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] details_code Object to be assigned
    def details_code=(details_code : String?)
      if details_code.nil?
        return @details_code = nil
      end
      _details_code = details_code.not_nil!
      if _details_code.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"details_code\", the character length must be smaller than or equal to 5000.")
      end

      @details_code = details_code
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] document Object to be assigned
    def document=(document : Stripe::LegalEntityPersonVerificationDocument?)
      if document.nil?
        return @document = nil
      end
      @document = document
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
    def_equals_and_hash(@status, @additional_document, @additional_document_present, @details, @details_present, @details_code, @details_code_present, @document)
  end
end
