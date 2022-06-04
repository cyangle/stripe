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
  class PostAppsSecretsRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # A name for the secret that's unique within the scope.
    @[JSON::Field(key: "name", type: String)]
    getter name : String

    # The plaintext secret value to be stored.
    @[JSON::Field(key: "payload", type: String)]
    getter payload : String

    @[JSON::Field(key: "scope", type: ScopeParam1)]
    property scope : ScopeParam1

    # Optional properties

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, presence: true, ignore_serialize: expand.nil? && !expand_present?)]
    property expand : Array(String)?

    @[JSON::Field(ignore: true)]
    property? expand_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @name : String,
      @payload : String,
      @scope : ScopeParam1,
      # Optional properties
      @expand : Array(String)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if @name.to_s.size > 5000
        invalid_properties.push("invalid value for \"name\", the character length must be smaller than or equal to 5000.")
      end

      if @payload.to_s.size > 5000
        invalid_properties.push("invalid value for \"payload\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.to_s.size > 5000
      return false if @payload.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if name.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"name\", the character length must be smaller than or equal to 5000.")
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] payload Value to be assigned
    def payload=(payload)
      if payload.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"payload\", the character length must be smaller than or equal to 5000.")
      end

      @payload = payload
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
    def_equals_and_hash(@name, @payload, @scope, @expand)
  end
end