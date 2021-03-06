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
  @[JSON::Serializable::Options(emit_nulls: true)]
  class PostBillingPortalConfigurationsConfigurationRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    # Whether the configuration is active and can be used to create portal sessions.
    @[JSON::Field(key: "active", type: Bool?, presence: true, ignore_serialize: active.nil? && !active_present?)]
    property active : Bool?

    @[JSON::Field(ignore: true)]
    property? active_present : Bool = false

    @[JSON::Field(key: "business_profile", type: BusinessProfileUpdateParam?, presence: true, ignore_serialize: business_profile.nil? && !business_profile_present?)]
    property business_profile : BusinessProfileUpdateParam?

    @[JSON::Field(ignore: true)]
    property? business_profile_present : Bool = false

    @[JSON::Field(key: "default_return_url", type: PostBillingPortalConfigurationsRequestDefaultReturnUrl?, presence: true, ignore_serialize: default_return_url.nil? && !default_return_url_present?)]
    property default_return_url : PostBillingPortalConfigurationsRequestDefaultReturnUrl?

    @[JSON::Field(ignore: true)]
    property? default_return_url_present : Bool = false

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, presence: true, ignore_serialize: expand.nil? && !expand_present?)]
    property expand : Array(String)?

    @[JSON::Field(ignore: true)]
    property? expand_present : Bool = false

    @[JSON::Field(key: "features", type: FeaturesUpdatingParam?, presence: true, ignore_serialize: features.nil? && !features_present?)]
    property features : FeaturesUpdatingParam?

    @[JSON::Field(ignore: true)]
    property? features_present : Bool = false

    @[JSON::Field(key: "metadata", type: PostAccountRequestMetadata?, presence: true, ignore_serialize: metadata.nil? && !metadata_present?)]
    property metadata : PostAccountRequestMetadata?

    @[JSON::Field(ignore: true)]
    property? metadata_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @active : Bool? = nil,
      @business_profile : BusinessProfileUpdateParam? = nil,
      @default_return_url : PostBillingPortalConfigurationsRequestDefaultReturnUrl? = nil,
      @expand : Array(String)? = nil,
      @features : FeaturesUpdatingParam? = nil,
      @metadata : PostAccountRequestMetadata? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
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
    def_equals_and_hash(@active, @active_present, @business_profile, @business_profile_present, @default_return_url, @default_return_url_present, @expand, @expand_present, @features, @features_present, @metadata, @metadata_present)
  end
end
