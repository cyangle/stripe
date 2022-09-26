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
  # A Connection Token is used by the Stripe Terminal SDK to connect to a reader.  Related guide: [Fleet Management](https://stripe.com/docs/terminal/fleet/locations).
  class TerminalConnectionToken
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Required properties

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter object : String? = nil

    ENUM_VALIDATOR_FOR_OBJECT = EnumValidator.new("object", "String", ["terminal.connection_token"])

    # Your application should pass this token to the Stripe Terminal SDK.
    @[JSON::Field(key: "secret", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter secret : String? = nil

    # Optional properties

    # The id of the location that this connection token is scoped to. Note that location scoping only applies to internet-connected readers. For more details, see [the docs on scoping connection tokens](https://stripe.com/docs/terminal/fleet/locations#connection-tokens).
    @[JSON::Field(key: "location", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter location : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @object : String? = nil,
      @secret : String? = nil,
      # Optional properties
      @location : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_OBJECT.error_message) unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      invalid_properties.push("\"secret\" is required and cannot be null") if @secret.nil?
      if _secret = @secret
        if _secret.to_s.size > 5000
          invalid_properties.push("invalid value for \"secret\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _location = @location
        if _location.to_s.size > 5000
          invalid_properties.push("invalid value for \"location\", the character length must be smaller than or equal to 5000.")
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      return false if @secret.nil?
      if _secret = @secret
        return false if _secret.to_s.size > 5000
      end
      if _location = @location
        return false if _location.to_s.size > 5000
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object : String?)
      if object.nil?
        raise ArgumentError.new("\"object\" is required and cannot be null")
      end
      _object = object.not_nil!
      ENUM_VALIDATOR_FOR_OBJECT.valid!(_object)
      @object = object
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] secret Object to be assigned
    def secret=(secret : String?)
      if secret.nil?
        raise ArgumentError.new("\"secret\" is required and cannot be null")
      end
      _secret = secret.not_nil!
      if _secret.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"secret\", the character length must be smaller than or equal to 5000.")
      end

      @secret = secret
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] location Object to be assigned
    def location=(location : String?)
      if location.nil?
        return @location = nil
      end
      _location = location.not_nil!
      if _location.to_s.size > 5000
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
    def_equals_and_hash(@object, @secret, @location)
  end
end
