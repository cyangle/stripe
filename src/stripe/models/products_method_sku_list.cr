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
  class ProductsMethodSKUList
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Required properties

    @[JSON::Field(key: "data", type: Array(Stripe::Sku)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter data : Array(Stripe::Sku)? = nil

    # True if this list has another page of items after this one that can be fetched.
    @[JSON::Field(key: "has_more", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter has_more : Bool? = nil

    # String representing the object's type. Objects of the same type share the same value. Always has the value `list`.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter object : String? = nil

    ENUM_VALIDATOR_FOR_OBJECT = EnumValidator.new("object", "String", ["list"])

    # The URL where this list can be accessed.
    @[JSON::Field(key: "url", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter url : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @data : Array(Stripe::Sku)? = nil,
      @has_more : Bool? = nil,
      @object : String? = nil,
      @url : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      invalid_properties.push("\"data\" is required and cannot be null") if @data.nil?
      # Container data array has values of Stripe::Sku
      invalid_properties.push("\"has_more\" is required and cannot be null") if @has_more.nil?

      invalid_properties.push(ENUM_VALIDATOR_FOR_OBJECT.error_message) unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      invalid_properties.push("\"url\" is required and cannot be null") if @url.nil?
      if _url = @url
        if _url.to_s.size > 5000
          invalid_properties.push("invalid value for \"url\", the character length must be smaller than or equal to 5000.")
        end

        pattern = /^\/v1\/skus/
        if _url !~ pattern
          invalid_properties.push("invalid value for \"url\", must conform to the pattern #{pattern}.")
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @data.nil?
      return false if @has_more.nil?
      return false unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      return false if @url.nil?
      if _url = @url
        return false if _url.to_s.size > 5000
        return false if _url !~ /^\/v1\/skus/
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] data Object to be assigned
    def data=(data : Array(Stripe::Sku)?)
      if data.nil?
        raise ArgumentError.new("\"data\" is required and cannot be null")
      end
      @data = data
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] has_more Object to be assigned
    def has_more=(has_more : Bool?)
      if has_more.nil?
        raise ArgumentError.new("\"has_more\" is required and cannot be null")
      end
      @has_more = has_more
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
    # @param [Object] url Object to be assigned
    def url=(url : String?)
      if url.nil?
        raise ArgumentError.new("\"url\" is required and cannot be null")
      end
      _url = url.not_nil!
      if _url.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"url\", the character length must be smaller than or equal to 5000.")
      end

      pattern = /^\/v1\/skus/
      if _url !~ pattern
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
