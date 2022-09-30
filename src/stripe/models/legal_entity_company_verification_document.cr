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
  class LegalEntityCompanyVerificationDocument
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "back", type: Stripe::LegalEntityCompanyVerificationDocumentBack?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: back.nil? && !back_present?)]
    getter back : Stripe::LegalEntityCompanyVerificationDocumentBack? = nil

    @[JSON::Field(ignore: true)]
    property? back_present : Bool = false

    # A user-displayable string describing the verification state of this document.
    @[JSON::Field(key: "details", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: details.nil? && !details_present?)]
    getter details : String? = nil

    @[JSON::Field(ignore: true)]
    property? details_present : Bool = false

    # One of `document_corrupt`, `document_expired`, `document_failed_copy`, `document_failed_greyscale`, `document_failed_other`, `document_failed_test_mode`, `document_fraudulent`, `document_incomplete`, `document_invalid`, `document_manipulated`, `document_not_readable`, `document_not_uploaded`, `document_type_not_supported`, or `document_too_large`. A machine-readable code specifying the verification state for this document.
    @[JSON::Field(key: "details_code", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: details_code.nil? && !details_code_present?)]
    getter details_code : String? = nil

    @[JSON::Field(ignore: true)]
    property? details_code_present : Bool = false

    @[JSON::Field(key: "front", type: Stripe::LegalEntityCompanyVerificationDocumentFront?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: front.nil? && !front_present?)]
    getter front : Stripe::LegalEntityCompanyVerificationDocumentFront? = nil

    @[JSON::Field(ignore: true)]
    property? front_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @back : Stripe::LegalEntityCompanyVerificationDocumentBack? = nil,
      @details : String? = nil,
      @details_code : String? = nil,
      @front : Stripe::LegalEntityCompanyVerificationDocumentFront? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      if _back = @back
        invalid_properties.concat(_back.list_invalid_properties_for("back")) if _back.is_a?(OpenApi::Validatable)
      end
      if _details = @details
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("details", _details.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _details_code = @details_code
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("details_code", _details_code.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _front = @front
        invalid_properties.concat(_front.list_invalid_properties_for("front")) if _front.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _back = @back
        return false if _back.is_a?(OpenApi::Validatable) && !_back.valid?
      end

      if _details = @details
        return false if _details.to_s.size > 5000
      end

      if _details_code = @details_code
        return false if _details_code.to_s.size > 5000
      end

      if _front = @front
        return false if _front.is_a?(OpenApi::Validatable) && !_front.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] back Object to be assigned
    def back=(back : Stripe::LegalEntityCompanyVerificationDocumentBack?)
      if back.nil?
        return @back = nil
      end
      _back = back.not_nil!
      _back.validate if _back.is_a?(OpenApi::Validatable)
      @back = _back
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] details Object to be assigned
    def details=(details : String?)
      if details.nil?
        return @details = nil
      end
      _details = details.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("details", _details.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @details = _details
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] details_code Object to be assigned
    def details_code=(details_code : String?)
      if details_code.nil?
        return @details_code = nil
      end
      _details_code = details_code.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("details_code", _details_code.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @details_code = _details_code
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] front Object to be assigned
    def front=(front : Stripe::LegalEntityCompanyVerificationDocumentFront?)
      if front.nil?
        return @front = nil
      end
      _front = front.not_nil!
      _front.validate if _front.is_a?(OpenApi::Validatable)
      @front = _front
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@back, @back_present, @details, @details_present, @details_code, @details_code_present, @front, @front_present)
  end
end
