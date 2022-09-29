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
  # A list of [file links](https://stripe.com/docs/api#file_links) that point at this file.
  class FileFileLinkList1
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    # Details about each object.
    @[JSON::Field(key: "data", type: Array(Stripe::FileLink)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter data : Array(Stripe::FileLink)? = nil

    # True if this list has another page of items after this one that can be fetched.
    @[JSON::Field(key: "has_more", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter has_more : Bool? = nil

    # String representing the object's type. Objects of the same type share the same value. Always has the value `list`.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter object : String? = nil

    ENUM_VALIDATOR_FOR_OBJECT = OpenApi::EnumValidator.new("object", "String", ["list"])

    # The URL where this list can be accessed.
    @[JSON::Field(key: "url", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter url : String? = nil

    PATTERN_FOR_URL = /^\/v1\/file_links/

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @data : Array(Stripe::FileLink)? = nil,
      @has_more : Bool? = nil,
      @object : String? = nil,
      @url : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      invalid_properties.push("\"data\" is required and cannot be null") if @data.nil?
      if _data = @data
        invalid_properties.concat(OpenApi::ArrayValidator.list_invalid_properties_for(key: "data", array: _data)) if _data.is_a?(Array)
      end
      invalid_properties.push("\"has_more\" is required and cannot be null") if @has_more.nil?

      invalid_properties.push(ENUM_VALIDATOR_FOR_OBJECT.error_message) unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      invalid_properties.push("\"url\" is required and cannot be null") if @url.nil?
      if _url = @url
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("url", _url.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end

        if pattern_error = OpenApi::PrimitiveValidator.pattern_error("url", _url, PATTERN_FOR_URL)
          invalid_properties.push(pattern_error)
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @data.nil?
      if _data = @data
        return false if _data.is_a?(Array) && !OpenApi::ArrayValidator.valid?(array: _data)
      end
      return false if @has_more.nil?

      return false unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      return false if @url.nil?
      if _url = @url
        return false if _url.to_s.size > 5000
        return false if _url !~ PATTERN_FOR_URL
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] data Object to be assigned
    def data=(data : Array(Stripe::FileLink)?)
      if data.nil?
        raise ArgumentError.new("\"data\" is required and cannot be null")
      end
      _data = data.not_nil!
      OpenApi::ArrayValidator.validate(array: _data) if _data.is_a?(Array)
      @data = _data
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] has_more Object to be assigned
    def has_more=(has_more : Bool?)
      if has_more.nil?
        raise ArgumentError.new("\"has_more\" is required and cannot be null")
      end
      _has_more = has_more.not_nil!
      @has_more = _has_more
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object : String?)
      if object.nil?
        raise ArgumentError.new("\"object\" is required and cannot be null")
      end
      _object = object.not_nil!
      ENUM_VALIDATOR_FOR_OBJECT.valid!(_object)
      @object = _object
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] url Object to be assigned
    def url=(url : String?)
      if url.nil?
        raise ArgumentError.new("\"url\" is required and cannot be null")
      end
      _url = url.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("url", _url.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      if pattern_error = OpenApi::PrimitiveValidator.pattern_error("url", _url, PATTERN_FOR_URL)
        raise ArgumentError.new(pattern_error)
      end

      @url = _url
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@data, @has_more, @object, @url)
  end
end
