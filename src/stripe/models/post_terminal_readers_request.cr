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
  class PostTerminalReadersRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # A code generated by the reader used for registering to an account.
    @[JSON::Field(key: "registration_code", type: String)]
    getter registration_code : String

    # Optional properties

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, presence: true, ignore_serialize: expand.nil? && !expand_present?)]
    property expand : Array(String)?

    @[JSON::Field(ignore: true)]
    property? expand_present : Bool = false

    # Custom label given to the reader for easier identification. If no label is specified, the registration code will be used.
    @[JSON::Field(key: "label", type: String?, presence: true, ignore_serialize: label.nil? && !label_present?)]
    getter label : String?

    @[JSON::Field(ignore: true)]
    property? label_present : Bool = false

    # The location to assign the reader to.
    @[JSON::Field(key: "location", type: String?, presence: true, ignore_serialize: location.nil? && !location_present?)]
    getter location : String?

    @[JSON::Field(ignore: true)]
    property? location_present : Bool = false

    @[JSON::Field(key: "metadata", type: PostAccountRequestMetadata?, presence: true, ignore_serialize: metadata.nil? && !metadata_present?)]
    property metadata : PostAccountRequestMetadata?

    @[JSON::Field(ignore: true)]
    property? metadata_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @registration_code : String,
      # Optional properties
      @expand : Array(String)? = nil,
      @label : String? = nil,
      @location : String? = nil,
      @metadata : PostAccountRequestMetadata? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if @registration_code.to_s.size > 5000
        invalid_properties.push("invalid value for \"registration_code\", the character length must be smaller than or equal to 5000.")
      end

      if !@label.nil? && @label.to_s.size > 5000
        invalid_properties.push("invalid value for \"label\", the character length must be smaller than or equal to 5000.")
      end

      if !@location.nil? && @location.to_s.size > 5000
        invalid_properties.push("invalid value for \"location\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @registration_code.to_s.size > 5000
      return false if !@label.nil? && @label.to_s.size > 5000
      return false if !@location.nil? && @location.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] registration_code Value to be assigned
    def registration_code=(registration_code)
      if registration_code.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"registration_code\", the character length must be smaller than or equal to 5000.")
      end

      @registration_code = registration_code
    end

    # Custom attribute writer method with validation
    # @param [Object] label Value to be assigned
    def label=(label)
      if !label.nil? && label.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"label\", the character length must be smaller than or equal to 5000.")
      end

      @label = label
    end

    # Custom attribute writer method with validation
    # @param [Object] location Value to be assigned
    def location=(location)
      if !location.nil? && location.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"location\", the character length must be smaller than or equal to 5000.")
      end

      @location = location
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
    def_equals_and_hash(@registration_code, @expand, @label, @location, @metadata)
  end
end