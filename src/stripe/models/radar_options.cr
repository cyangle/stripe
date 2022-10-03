#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-08-01
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module Stripe
  # Options to configure Radar. See [Radar Session](https://stripe.com/docs/radar/radar-session) for more information.
  class RadarOptions
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "session", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter session : String? = nil
    MAX_LENGTH_FOR_SESSION = 5000

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
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_session = @session).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("session", _session.to_s.size, MAX_LENGTH_FOR_SESSION)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_session = @session).nil?
        return false if _session.to_s.size > MAX_LENGTH_FOR_SESSION
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] session Object to be assigned
    def session=(session : String?)
      if session.nil?
        return @session = nil
      end
      _session = session.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("session", _session.to_s.size, MAX_LENGTH_FOR_SESSION)
      @session = _session
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@session)
  end
end
