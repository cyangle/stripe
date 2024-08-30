#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

module Stripe
  class DocumentOptions
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # Array of strings of allowed identity document types. If the provided identity document isn’t one of the allowed types, the verification check will fail with a document_type_not_allowed error code.
    @[JSON::Field(key: "allowed_types", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter allowed_types : Array(String)? = nil
    ERROR_MESSAGE_FOR_ALLOWED_TYPES = "invalid value for \"allowed_types\", must be one of [driving_license, id_card, passport]."
    VALID_VALUES_FOR_ALLOWED_TYPES  = String.static_array("driving_license", "id_card", "passport")

    # Collect an ID number and perform an [ID number check](https://stripe.com/docs/identity/verification-checks?type=id-number) with the document’s extracted name and date of birth.
    @[JSON::Field(key: "require_id_number", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter require_id_number : Bool? = nil

    # Disable image uploads, identity document images have to be captured using the device’s camera.
    @[JSON::Field(key: "require_live_capture", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter require_live_capture : Bool? = nil

    # Capture a face image and perform a [selfie check](https://stripe.com/docs/identity/verification-checks?type=selfie) comparing a photo ID and a picture of your user’s face. [Learn more](https://stripe.com/docs/identity/selfie).
    @[JSON::Field(key: "require_matching_selfie", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter require_matching_selfie : Bool? = nil

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
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_allowed_types = @allowed_types).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_ALLOWED_TYPES) unless OpenApi::EnumValidator.valid?(_allowed_types, VALID_VALUES_FOR_ALLOWED_TYPES)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_allowed_types = @allowed_types).nil?
        return false unless OpenApi::EnumValidator.valid?(_allowed_types, VALID_VALUES_FOR_ALLOWED_TYPES)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] allowed_types Object to be assigned
    def allowed_types=(new_value : Array(String)?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("allowed_types", new_value, VALID_VALUES_FOR_ALLOWED_TYPES)
      end

      @allowed_types = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] require_id_number Object to be assigned
    def require_id_number=(new_value : Bool?)
      @require_id_number = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] require_live_capture Object to be assigned
    def require_live_capture=(new_value : Bool?)
      @require_live_capture = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] require_matching_selfie Object to be assigned
    def require_matching_selfie=(new_value : Bool?)
      @require_matching_selfie = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@allowed_types, @require_id_number, @require_live_capture, @require_matching_selfie)
  end
end
