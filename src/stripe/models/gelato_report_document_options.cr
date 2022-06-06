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
  class GelatoReportDocumentOptions
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    # Array of strings of allowed identity document types. If the provided identity document isn’t one of the allowed types, the verification check will fail with a document_type_not_allowed error code.
    @[JSON::Field(key: "allowed_types", type: Array(String)?, presence: true, ignore_serialize: allowed_types.nil? && !allowed_types_present?)]
    getter allowed_types : Array(String)?

    @[JSON::Field(ignore: true)]
    property? allowed_types_present : Bool = false

    ENUM_VALIDATOR_FOR_ALLOWED_TYPES = EnumValidator.new("allowed_types", "String", ["driving_license", "id_card", "passport"])

    # Collect an ID number and perform an [ID number check](https://stripe.com/docs/identity/verification-checks?type=id-number) with the document’s extracted name and date of birth.
    @[JSON::Field(key: "require_id_number", type: Bool?, presence: true, ignore_serialize: require_id_number.nil? && !require_id_number_present?)]
    property require_id_number : Bool?

    @[JSON::Field(ignore: true)]
    property? require_id_number_present : Bool = false

    # Disable image uploads, identity document images have to be captured using the device’s camera.
    @[JSON::Field(key: "require_live_capture", type: Bool?, presence: true, ignore_serialize: require_live_capture.nil? && !require_live_capture_present?)]
    property require_live_capture : Bool?

    @[JSON::Field(ignore: true)]
    property? require_live_capture_present : Bool = false

    # Capture a face image and perform a [selfie check](https://stripe.com/docs/identity/verification-checks?type=selfie) comparing a photo ID and a picture of your user’s face. [Learn more](https://stripe.com/docs/identity/selfie).
    @[JSON::Field(key: "require_matching_selfie", type: Bool?, presence: true, ignore_serialize: require_matching_selfie.nil? && !require_matching_selfie_present?)]
    property require_matching_selfie : Bool?

    @[JSON::Field(ignore: true)]
    property? require_matching_selfie_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @allowed_types : Array(String)? = nil,
      @require_id_number : Bool? = nil,
      @require_live_capture : Bool? = nil,
      @require_matching_selfie : Bool? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_ALLOWED_TYPES.error_message) unless ENUM_VALIDATOR_FOR_ALLOWED_TYPES.all_valid?(@allowed_types)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR_ALLOWED_TYPES.all_valid?(@allowed_types)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] allowed_types Object to be assigned
    def allowed_types=(allowed_types : Array(String)?)
      ENUM_VALIDATOR_FOR_ALLOWED_TYPES.all_valid!(allowed_types)
      @allowed_types = allowed_types
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
    def_equals_and_hash(@allowed_types, @allowed_types_present, @require_id_number, @require_id_number_present, @require_live_capture, @require_live_capture_present, @require_matching_selfie, @require_matching_selfie_present)
  end
end
