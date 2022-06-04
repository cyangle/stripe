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
  class PortalBusinessProfile
    include JSON::Serializable
    include JSON::Serializable::Unmapped


    # Optional properties

    # The messaging shown to customers in the portal.
    @[JSON::Field(key: "headline", type: String?, presence: true, ignore_serialize: headline.nil? && !headline_present?)]
    getter headline : String?

    @[JSON::Field(ignore: true)]
    property? headline_present : Bool = false

    # A link to the business’s publicly available privacy policy.
    @[JSON::Field(key: "privacy_policy_url", type: String?, presence: true, ignore_serialize: privacy_policy_url.nil? && !privacy_policy_url_present?)]
    getter privacy_policy_url : String?

    @[JSON::Field(ignore: true)]
    property? privacy_policy_url_present : Bool = false

    # A link to the business’s publicly available terms of service.
    @[JSON::Field(key: "terms_of_service_url", type: String?, presence: true, ignore_serialize: terms_of_service_url.nil? && !terms_of_service_url_present?)]
    getter terms_of_service_url : String?

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
    def list_invalid_properties
      invalid_properties = Array(String).new

      if !@headline.nil? && @headline.to_s.size > 5000
        invalid_properties.push("invalid value for \"headline\", the character length must be smaller than or equal to 5000.")
      end

      if !@privacy_policy_url.nil? && @privacy_policy_url.to_s.size > 5000
        invalid_properties.push("invalid value for \"privacy_policy_url\", the character length must be smaller than or equal to 5000.")
      end

      if !@terms_of_service_url.nil? && @terms_of_service_url.to_s.size > 5000
        invalid_properties.push("invalid value for \"terms_of_service_url\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@headline.nil? && @headline.to_s.size > 5000
      return false if !@privacy_policy_url.nil? && @privacy_policy_url.to_s.size > 5000
      return false if !@terms_of_service_url.nil? && @terms_of_service_url.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] headline Value to be assigned
    def headline=(headline)
      if !headline.nil? && headline.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"headline\", the character length must be smaller than or equal to 5000.")
      end

      @headline = headline
    end

    # Custom attribute writer method with validation
    # @param [Object] privacy_policy_url Value to be assigned
    def privacy_policy_url=(privacy_policy_url)
      if !privacy_policy_url.nil? && privacy_policy_url.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"privacy_policy_url\", the character length must be smaller than or equal to 5000.")
      end

      @privacy_policy_url = privacy_policy_url
    end

    # Custom attribute writer method with validation
    # @param [Object] terms_of_service_url Value to be assigned
    def terms_of_service_url=(terms_of_service_url)
      if !terms_of_service_url.nil? && terms_of_service_url.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"terms_of_service_url\", the character length must be smaller than or equal to 5000.")
      end

      @terms_of_service_url = terms_of_service_url
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
    def_equals_and_hash(@headline, @privacy_policy_url, @terms_of_service_url)
  end
end
