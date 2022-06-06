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
  class PostTerminalConnectionTokensRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, presence: true, ignore_serialize: expand.nil? && !expand_present?)]
    property expand : Array(String)?

    @[JSON::Field(ignore: true)]
    property? expand_present : Bool = false

    # The id of the location that this connection token is scoped to. If specified the connection token will only be usable with readers assigned to that location, otherwise the connection token will be usable with all readers. Note that location scoping only applies to internet-connected readers. For more details, see [the docs on scoping connection tokens](https://stripe.com/docs/terminal/fleet/locations#connection-tokens).
    @[JSON::Field(key: "location", type: String?, presence: true, ignore_serialize: location.nil? && !location_present?)]
    getter location : String?

    @[JSON::Field(ignore: true)]
    property? location_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @expand : Array(String)? = nil,
      @location : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if !@location.nil? && @location.to_s.size > 5000
        invalid_properties.push("invalid value for \"location\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@location.nil? && @location.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] location Value to be assigned
    def location=(location : String?)
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
    def_equals_and_hash(@expand, @expand_present, @location, @location_present)
  end
end
