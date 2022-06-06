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
  # A Connection Token is used by the Stripe Terminal SDK to connect to a reader.  Related guide: [Fleet Management](https://stripe.com/docs/terminal/fleet/locations).
  @[JSON::Serializable::Options(emit_nulls: true)]
  class TerminalConnectionToken
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String)]
    getter object : String

    ENUM_VALIDATOR_FOR_OBJECT = EnumValidator.new("object", "String", ["terminal.connection_token"])

    # Your application should pass this token to the Stripe Terminal SDK.
    @[JSON::Field(key: "secret", type: String)]
    getter secret : String

    # Optional properties

    # The id of the location that this connection token is scoped to. Note that location scoping only applies to internet-connected readers. For more details, see [the docs on scoping connection tokens](https://stripe.com/docs/terminal/fleet/locations#connection-tokens).
    @[JSON::Field(key: "location", type: String?, presence: true, ignore_serialize: location.nil? && !location_present?)]
    getter location : String?

    @[JSON::Field(ignore: true)]
    property? location_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @object : String,
      @secret : String,
      # Optional properties
      @location : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_OBJECT.error_message) unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)

      if @secret.to_s.size > 5000
        invalid_properties.push("invalid value for \"secret\", the character length must be smaller than or equal to 5000.")
      end

      if !@location.nil? && @location.to_s.size > 5000
        invalid_properties.push("invalid value for \"location\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      return false if @secret.to_s.size > 5000
      return false if !@location.nil? && @location.to_s.size > 5000

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object : String)
      ENUM_VALIDATOR_FOR_OBJECT.valid!(object, false)
      @object = object
    end

    # Custom attribute writer method with validation
    # @param [Object] secret Value to be assigned
    def secret=(secret : String)
      if secret.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"secret\", the character length must be smaller than or equal to 5000.")
      end

      @secret = secret
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
    def_equals_and_hash(@object, @secret, @location, @location_present)
  end
end
