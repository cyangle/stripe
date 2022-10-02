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
  class PortalBusinessProfile
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    # The messaging shown to customers in the portal.
    @[JSON::Field(key: "headline", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: headline.nil? && !headline_present?)]
    getter headline : String? = nil
    MAX_LENGTH_FOR_HEADLINE = 5000

    @[JSON::Field(ignore: true)]
    property? headline_present : Bool = false

    # A link to the business’s publicly available privacy policy.
    @[JSON::Field(key: "privacy_policy_url", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: privacy_policy_url.nil? && !privacy_policy_url_present?)]
    getter privacy_policy_url : String? = nil
    MAX_LENGTH_FOR_PRIVACY_POLICY_URL = 5000

    @[JSON::Field(ignore: true)]
    property? privacy_policy_url_present : Bool = false

    # A link to the business’s publicly available terms of service.
    @[JSON::Field(key: "terms_of_service_url", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: terms_of_service_url.nil? && !terms_of_service_url_present?)]
    getter terms_of_service_url : String? = nil
    MAX_LENGTH_FOR_TERMS_OF_SERVICE_URL = 5000

    @[JSON::Field(ignore: true)]
    property? terms_of_service_url_present : Bool = false

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

      if _headline = @headline
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("headline", _headline.to_s.size, MAX_LENGTH_FOR_HEADLINE)
          invalid_properties.push(max_length_error)
        end
      end
      if _privacy_policy_url = @privacy_policy_url
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("privacy_policy_url", _privacy_policy_url.to_s.size, MAX_LENGTH_FOR_PRIVACY_POLICY_URL)
          invalid_properties.push(max_length_error)
        end
      end
      if _terms_of_service_url = @terms_of_service_url
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("terms_of_service_url", _terms_of_service_url.to_s.size, MAX_LENGTH_FOR_TERMS_OF_SERVICE_URL)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _headline = @headline
        return false if _headline.to_s.size > MAX_LENGTH_FOR_HEADLINE
      end

      if _privacy_policy_url = @privacy_policy_url
        return false if _privacy_policy_url.to_s.size > MAX_LENGTH_FOR_PRIVACY_POLICY_URL
      end

      if _terms_of_service_url = @terms_of_service_url
        return false if _terms_of_service_url.to_s.size > MAX_LENGTH_FOR_TERMS_OF_SERVICE_URL
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] headline Object to be assigned
    def headline=(headline : String?)
      if headline.nil?
        return @headline = nil
      end
      _headline = headline.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("headline", _headline.to_s.size, MAX_LENGTH_FOR_HEADLINE)
      @headline = _headline
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] privacy_policy_url Object to be assigned
    def privacy_policy_url=(privacy_policy_url : String?)
      if privacy_policy_url.nil?
        return @privacy_policy_url = nil
      end
      _privacy_policy_url = privacy_policy_url.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("privacy_policy_url", _privacy_policy_url.to_s.size, MAX_LENGTH_FOR_PRIVACY_POLICY_URL)
      @privacy_policy_url = _privacy_policy_url
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] terms_of_service_url Object to be assigned
    def terms_of_service_url=(terms_of_service_url : String?)
      if terms_of_service_url.nil?
        return @terms_of_service_url = nil
      end
      _terms_of_service_url = terms_of_service_url.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("terms_of_service_url", _terms_of_service_url.to_s.size, MAX_LENGTH_FOR_TERMS_OF_SERVICE_URL)
      @terms_of_service_url = _terms_of_service_url
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@headline, @headline_present, @privacy_policy_url, @privacy_policy_url_present, @terms_of_service_url, @terms_of_service_url_present)
  end
end
