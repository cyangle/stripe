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
  #
  class PortalBusinessProfile
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The messaging shown to customers in the portal.
    @[JSON::Field(key: "headline", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter headline : String? = nil
    MAX_LENGTH_FOR_HEADLINE = 5000

    # A link to the business’s publicly available privacy policy.
    @[JSON::Field(key: "privacy_policy_url", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter privacy_policy_url : String? = nil
    MAX_LENGTH_FOR_PRIVACY_POLICY_URL = 5000

    # A link to the business’s publicly available terms of service.
    @[JSON::Field(key: "terms_of_service_url", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter terms_of_service_url : String? = nil
    MAX_LENGTH_FOR_TERMS_OF_SERVICE_URL = 5000

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
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
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("headline", _headline.to_s.size, MAX_LENGTH_FOR_HEADLINE)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_privacy_policy_url = @privacy_policy_url).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("privacy_policy_url", _privacy_policy_url.to_s.size, MAX_LENGTH_FOR_PRIVACY_POLICY_URL)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_terms_of_service_url = @terms_of_service_url).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("terms_of_service_url", _terms_of_service_url.to_s.size, MAX_LENGTH_FOR_TERMS_OF_SERVICE_URL)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_headline = @headline).nil?
        return false if _headline.to_s.size > MAX_LENGTH_FOR_HEADLINE
      end

      unless (_privacy_policy_url = @privacy_policy_url).nil?
        return false if _privacy_policy_url.to_s.size > MAX_LENGTH_FOR_PRIVACY_POLICY_URL
      end

      unless (_terms_of_service_url = @terms_of_service_url).nil?
        return false if _terms_of_service_url.to_s.size > MAX_LENGTH_FOR_TERMS_OF_SERVICE_URL
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] headline Object to be assigned
    def headline=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("headline", new_value.to_s.size, MAX_LENGTH_FOR_HEADLINE)
      end

      @headline = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] privacy_policy_url Object to be assigned
    def privacy_policy_url=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("privacy_policy_url", new_value.to_s.size, MAX_LENGTH_FOR_PRIVACY_POLICY_URL)
      end

      @privacy_policy_url = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] terms_of_service_url Object to be assigned
    def terms_of_service_url=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("terms_of_service_url", new_value.to_s.size, MAX_LENGTH_FOR_TERMS_OF_SERVICE_URL)
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
