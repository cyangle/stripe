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
  #
  class Networks
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Required properties

    # All available networks for the card.
    @[JSON::Field(key: "available", type: Array(String)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter available : Array(String)? = nil

    # Optional properties

    # The preferred network for the card.
    @[JSON::Field(key: "preferred", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: preferred.nil? && !preferred_present?)]
    getter preferred : String? = nil

    @[JSON::Field(ignore: true)]
    property? preferred_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @available : Array(String)? = nil,
      # Optional properties
      @preferred : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      invalid_properties.push("\"available\" is required and cannot be null") if @available.nil?
      if _preferred = @preferred
        if _preferred.to_s.size > 5000
          invalid_properties.push("invalid value for \"preferred\", the character length must be smaller than or equal to 5000.")
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @available.nil?
      if _preferred = @preferred
        return false if _preferred.to_s.size > 5000
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] available Object to be assigned
    def available=(available : Array(String)?)
      if available.nil?
        raise ArgumentError.new("\"available\" is required and cannot be null")
      end
      @available = available
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] preferred Object to be assigned
    def preferred=(preferred : String?)
      if preferred.nil?
        return @preferred = nil
      end
      _preferred = preferred.not_nil!
      if _preferred.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"preferred\", the character length must be smaller than or equal to 5000.")
      end

      @preferred = preferred
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
    def_equals_and_hash(@available, @preferred, @preferred_present)
  end
end
