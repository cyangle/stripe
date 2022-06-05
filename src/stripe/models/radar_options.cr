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
  # Options to configure Radar. See [Radar Session](https://stripe.com/docs/radar/radar-session) for more information.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class RadarOptions
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    @[JSON::Field(key: "session", type: String?, presence: true, ignore_serialize: session.nil? && !session_present?)]
    getter session : String?

    @[JSON::Field(ignore: true)]
    property? session_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @session : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if !@session.nil? && @session.to_s.size > 5000
        invalid_properties.push("invalid value for \"session\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@session.nil? && @session.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] session Value to be assigned
    def session=(session)
      if !session.nil? && session.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"session\", the character length must be smaller than or equal to 5000.")
      end

      @session = session
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
    def_equals_and_hash(@session)
  end
end
