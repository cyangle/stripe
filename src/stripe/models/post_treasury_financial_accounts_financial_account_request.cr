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
  class PostTreasuryFinancialAccountsFinancialAccountRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped


    # Optional properties

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, presence: true, ignore_serialize: expand.nil? && !expand_present?)]
    property expand : Array(String)?

    @[JSON::Field(ignore: true)]
    property? expand_present : Bool = false

    @[JSON::Field(key: "features", type: FeatureAccess1?, presence: true, ignore_serialize: features.nil? && !features_present?)]
    property features : FeatureAccess1?

    @[JSON::Field(ignore: true)]
    property? features_present : Bool = false

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    @[JSON::Field(key: "metadata", type: Hash(String, String)?, presence: true, ignore_serialize: metadata.nil? && !metadata_present?)]
    property metadata : Hash(String, String)?

    @[JSON::Field(ignore: true)]
    property? metadata_present : Bool = false

    @[JSON::Field(key: "platform_restrictions", type: PlatformRestrictions?, presence: true, ignore_serialize: platform_restrictions.nil? && !platform_restrictions_present?)]
    property platform_restrictions : PlatformRestrictions?

    @[JSON::Field(ignore: true)]
    property? platform_restrictions_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *, 
      # Optional properties
      @expand : Array(String)? = nil, 
      @features : FeatureAccess1? = nil, 
      @metadata : Hash(String, String)? = nil, 
      @platform_restrictions : PlatformRestrictions? = nil
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
    def_equals_and_hash(@expand, @features, @metadata, @platform_restrictions)
  end
end
