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
  # Optional parameters to automatically create a [file link](https://stripe.com/docs/api#file_links) for the newly created file.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class FileLinkCreationParams
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    @[JSON::Field(key: "create", type: Bool)]
    property create : Bool

    # Optional properties

    @[JSON::Field(key: "expires_at", type: Int64?, presence: true, ignore_serialize: expires_at.nil? && !expires_at_present?)]
    property expires_at : Int64?

    @[JSON::Field(ignore: true)]
    property? expires_at_present : Bool = false

    @[JSON::Field(key: "metadata", type: IndividualSpecsMetadata?, presence: true, ignore_serialize: metadata.nil? && !metadata_present?)]
    property metadata : IndividualSpecsMetadata?

    @[JSON::Field(ignore: true)]
    property? metadata_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @create : Bool,
      # Optional properties
      @expires_at : Int64? = nil,
      @metadata : IndividualSpecsMetadata? = nil
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
    def_equals_and_hash(@create, @expires_at, @metadata)
  end
end