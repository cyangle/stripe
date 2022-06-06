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
  #
  @[JSON::Serializable::Options(emit_nulls: true)]
  class ProductList
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # Details about each object.
    @[JSON::Field(key: "data", type: Array(Product))]
    property data : Array(Product)

    # True if this list has another page of items after this one that can be fetched.
    @[JSON::Field(key: "has_more", type: Bool)]
    property has_more : Bool

    # String representing the object's type. Objects of the same type share the same value. Always has the value `list`.
    @[JSON::Field(key: "object", type: String)]
    getter object : String

    ENUM_VALIDATOR_FOR_OBJECT = EnumValidator.new("object", "String", ["list"])

    # The URL where this list can be accessed.
    @[JSON::Field(key: "url", type: String)]
    getter url : String

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @data : Array(Product),
      @has_more : Bool,
      @object : String,
      @url : String
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_OBJECT.error_message) unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)

      if @url.to_s.size > 5000
        invalid_properties.push("invalid value for \"url\", the character length must be smaller than or equal to 5000.")
      end

      pattern = /^\/v1\/products/
      if @url !~ pattern
        invalid_properties.push("invalid value for \"url\", must conform to the pattern #{pattern}.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      return false if @url.to_s.size > 5000
      return false if @url !~ /^\/v1\/products/

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object : String)
      ENUM_VALIDATOR_FOR_OBJECT.valid!(object, false)
      @object = object
    end

    # Custom attribute writer method with validation
    # @param [Object] url Value to be assigned
    def url=(url : String)
      if url.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"url\", the character length must be smaller than or equal to 5000.")
      end

      pattern = /^\/v1\/products/
      if url !~ pattern
        raise ArgumentError.new("invalid value for \"url\", must conform to the pattern #{pattern}.")
      end

      @url = url
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
    def_equals_and_hash(@data, @has_more, @object, @url)
  end
end
