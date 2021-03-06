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
  # The business information shown to customers in the portal.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class BusinessProfileUpdateParam
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    @[JSON::Field(key: "headline", type: String?, presence: true, ignore_serialize: headline.nil? && !headline_present?)]
    getter headline : String?

    @[JSON::Field(ignore: true)]
    property? headline_present : Bool = false

    @[JSON::Field(key: "privacy_policy_url", type: BusinessProfileSpecsSupportUrl?, presence: true, ignore_serialize: privacy_policy_url.nil? && !privacy_policy_url_present?)]
    property privacy_policy_url : BusinessProfileSpecsSupportUrl?

    @[JSON::Field(ignore: true)]
    property? privacy_policy_url_present : Bool = false

    @[JSON::Field(key: "terms_of_service_url", type: BusinessProfileSpecsSupportUrl?, presence: true, ignore_serialize: terms_of_service_url.nil? && !terms_of_service_url_present?)]
    property terms_of_service_url : BusinessProfileSpecsSupportUrl?

    @[JSON::Field(ignore: true)]
    property? terms_of_service_url_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @headline : String? = nil,
      @privacy_policy_url : BusinessProfileSpecsSupportUrl? = nil,
      @terms_of_service_url : BusinessProfileSpecsSupportUrl? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if !@headline.nil? && @headline.to_s.size > 60
        invalid_properties.push("invalid value for \"headline\", the character length must be smaller than or equal to 60.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@headline.nil? && @headline.to_s.size > 60

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] headline Value to be assigned
    def headline=(headline : String?)
      if !headline.nil? && headline.to_s.size > 60
        raise ArgumentError.new("invalid value for \"headline\", the character length must be smaller than or equal to 60.")
      end

      @headline = headline
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
    def_equals_and_hash(@headline, @headline_present, @privacy_policy_url, @privacy_policy_url_present, @terms_of_service_url, @terms_of_service_url_present)
  end
end
