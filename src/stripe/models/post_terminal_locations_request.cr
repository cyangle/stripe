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
  class PostTerminalLocationsRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    @[JSON::Field(key: "address", type: CreateLocationAddressParam)]
    property address : CreateLocationAddressParam

    # A name for the location.
    @[JSON::Field(key: "display_name", type: String)]
    getter display_name : String

    # Optional properties

    # The ID of a configuration that will be used to customize all readers in this location.
    @[JSON::Field(key: "configuration_overrides", type: String?, presence: true, ignore_serialize: configuration_overrides.nil? && !configuration_overrides_present?)]
    getter configuration_overrides : String?

    @[JSON::Field(ignore: true)]
    property? configuration_overrides_present : Bool = false

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, presence: true, ignore_serialize: expand.nil? && !expand_present?)]
    property expand : Array(String)?

    @[JSON::Field(ignore: true)]
    property? expand_present : Bool = false

    @[JSON::Field(key: "metadata", type: PostAccountRequestMetadata?, presence: true, ignore_serialize: metadata.nil? && !metadata_present?)]
    property metadata : PostAccountRequestMetadata?

    @[JSON::Field(ignore: true)]
    property? metadata_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @address : CreateLocationAddressParam,
      @display_name : String,
      # Optional properties
      @configuration_overrides : String? = nil,
      @expand : Array(String)? = nil,
      @metadata : PostAccountRequestMetadata? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if @display_name.to_s.size > 1000
        invalid_properties.push("invalid value for \"display_name\", the character length must be smaller than or equal to 1000.")
      end

      if !@configuration_overrides.nil? && @configuration_overrides.to_s.size > 1000
        invalid_properties.push("invalid value for \"configuration_overrides\", the character length must be smaller than or equal to 1000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @display_name.to_s.size > 1000
      return false if !@configuration_overrides.nil? && @configuration_overrides.to_s.size > 1000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] display_name Value to be assigned
    def display_name=(display_name)
      if display_name.to_s.size > 1000
        raise ArgumentError.new("invalid value for \"display_name\", the character length must be smaller than or equal to 1000.")
      end

      @display_name = display_name
    end

    # Custom attribute writer method with validation
    # @param [Object] configuration_overrides Value to be assigned
    def configuration_overrides=(configuration_overrides)
      if !configuration_overrides.nil? && configuration_overrides.to_s.size > 1000
        raise ArgumentError.new("invalid value for \"configuration_overrides\", the character length must be smaller than or equal to 1000.")
      end

      @configuration_overrides = configuration_overrides
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
    def_equals_and_hash(@address, @display_name, @configuration_overrides, @expand, @metadata)
  end
end
