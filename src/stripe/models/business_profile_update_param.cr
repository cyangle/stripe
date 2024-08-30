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
  class BusinessProfileUpdateParam
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "headline", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter headline : String? = nil
    ERROR_MESSAGE_FOR_HEADLINE = "invalid value for \"headline\", must be one of []."
    VALID_VALUES_FOR_HEADLINE  = String.static_array("")

    @[JSON::Field(key: "privacy_policy_url", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter privacy_policy_url : String? = nil
    ERROR_MESSAGE_FOR_PRIVACY_POLICY_URL = "invalid value for \"privacy_policy_url\", must be one of []."
    VALID_VALUES_FOR_PRIVACY_POLICY_URL  = String.static_array("")

    @[JSON::Field(key: "terms_of_service_url", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter terms_of_service_url : String? = nil
    ERROR_MESSAGE_FOR_TERMS_OF_SERVICE_URL = "invalid value for \"terms_of_service_url\", must be one of []."
    VALID_VALUES_FOR_TERMS_OF_SERVICE_URL  = String.static_array("")

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @headline : String? = nil,
      @privacy_policy_url : String? = nil,
      @terms_of_service_url : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_headline = @headline).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_HEADLINE) unless OpenApi::EnumValidator.valid?(_headline, VALID_VALUES_FOR_HEADLINE)
      end
      unless (_privacy_policy_url = @privacy_policy_url).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_PRIVACY_POLICY_URL) unless OpenApi::EnumValidator.valid?(_privacy_policy_url, VALID_VALUES_FOR_PRIVACY_POLICY_URL)
      end
      unless (_terms_of_service_url = @terms_of_service_url).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_TERMS_OF_SERVICE_URL) unless OpenApi::EnumValidator.valid?(_terms_of_service_url, VALID_VALUES_FOR_TERMS_OF_SERVICE_URL)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_headline = @headline).nil?
        return false unless OpenApi::EnumValidator.valid?(_headline, VALID_VALUES_FOR_HEADLINE)
      end

      unless (_privacy_policy_url = @privacy_policy_url).nil?
        return false unless OpenApi::EnumValidator.valid?(_privacy_policy_url, VALID_VALUES_FOR_PRIVACY_POLICY_URL)
      end

      unless (_terms_of_service_url = @terms_of_service_url).nil?
        return false unless OpenApi::EnumValidator.valid?(_terms_of_service_url, VALID_VALUES_FOR_TERMS_OF_SERVICE_URL)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] headline Object to be assigned
    def headline=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("headline", new_value, VALID_VALUES_FOR_HEADLINE)
      end

      @headline = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] privacy_policy_url Object to be assigned
    def privacy_policy_url=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("privacy_policy_url", new_value, VALID_VALUES_FOR_PRIVACY_POLICY_URL)
      end

      @privacy_policy_url = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] terms_of_service_url Object to be assigned
    def terms_of_service_url=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("terms_of_service_url", new_value, VALID_VALUES_FOR_TERMS_OF_SERVICE_URL)
      end

      @terms_of_service_url = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@headline, @privacy_policy_url, @terms_of_service_url)
  end
end
