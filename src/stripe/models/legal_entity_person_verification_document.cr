#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-08-27
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module Stripe
  #
  @[JSON::Serializable::Options(emit_nulls: true)]
  class LegalEntityPersonVerificationDocument
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    @[JSON::Field(key: "back", type: LegalEntityPersonVerificationDocumentBack?, presence: true, ignore_serialize: back.nil? && !back_present?)]
    property back : LegalEntityPersonVerificationDocumentBack?

    @[JSON::Field(ignore: true)]
    property? back_present : Bool = false

    # A user-displayable string describing the verification state of this document. For example, if a document is uploaded and the picture is too fuzzy, this may say \"Identity document is too unclear to read\".
    @[JSON::Field(key: "details", type: String?, presence: true, ignore_serialize: details.nil? && !details_present?)]
    getter details : String?

    @[JSON::Field(ignore: true)]
    property? details_present : Bool = false

    # One of `document_corrupt`, `document_country_not_supported`, `document_expired`, `document_failed_copy`, `document_failed_other`, `document_failed_test_mode`, `document_fraudulent`, `document_failed_greyscale`, `document_incomplete`, `document_invalid`, `document_manipulated`, `document_missing_back`, `document_missing_front`, `document_not_readable`, `document_not_uploaded`, `document_photo_mismatch`, `document_too_large`, or `document_type_not_supported`. A machine-readable code specifying the verification state for this document.
    @[JSON::Field(key: "details_code", type: String?, presence: true, ignore_serialize: details_code.nil? && !details_code_present?)]
    getter details_code : String?

    @[JSON::Field(ignore: true)]
    property? details_code_present : Bool = false

    @[JSON::Field(key: "front", type: LegalEntityPersonVerificationDocumentFront?, presence: true, ignore_serialize: front.nil? && !front_present?)]
    property front : LegalEntityPersonVerificationDocumentFront?

    @[JSON::Field(ignore: true)]
    property? front_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @back : LegalEntityPersonVerificationDocumentBack? = nil,
      @details : String? = nil,
      @details_code : String? = nil,
      @front : LegalEntityPersonVerificationDocumentFront? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if !@details.nil? && @details.to_s.size > 5000
        invalid_properties.push("invalid value for \"details\", the character length must be smaller than or equal to 5000.")
      end

      if !@details_code.nil? && @details_code.to_s.size > 5000
        invalid_properties.push("invalid value for \"details_code\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@details.nil? && @details.to_s.size > 5000
      return false if !@details_code.nil? && @details_code.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] details Value to be assigned
    def details=(details : String?)
      if !details.nil? && details.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"details\", the character length must be smaller than or equal to 5000.")
      end

      @details = details
    end

    # Custom attribute writer method with validation
    # @param [Object] details_code Value to be assigned
    def details_code=(details_code : String?)
      if !details_code.nil? && details_code.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"details_code\", the character length must be smaller than or equal to 5000.")
      end

      @details_code = details_code
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
    def_equals_and_hash(@back, @back_present, @details, @details_present, @details_code, @details_code_present, @front, @front_present)
  end
end
