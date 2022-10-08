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
  class ExternalAccountList
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The list contains all external accounts that have been attached to the Stripe account. These may be bank accounts or cards.
    @[JSON::Field(key: "data", type: Array(Stripe::Polymorphic)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter data : Array(Stripe::Polymorphic)? = nil

    # True if this list has another page of items after this one that can be fetched.
    @[JSON::Field(key: "has_more", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter has_more : Bool? = nil

    # String representing the object's type. Objects of the same type share the same value. Always has the value `list`.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter object : String? = nil
    ERROR_MESSAGE_FOR_OBJECT = "invalid value for \"object\", must be one of [list]."
    VALID_VALUES_FOR_OBJECT  = String.static_array("list")

    # The URL where this list can be accessed.
    @[JSON::Field(key: "url", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter url : String? = nil
    MAX_LENGTH_FOR_URL = 5000

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @data : Array(Stripe::Polymorphic)? = nil,
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

      unless (_data = @data).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "data", container: _data)) if _data.is_a?(Array)
      end
      invalid_properties.push("\"has_more\" is required and cannot be null") if @has_more.nil?

      invalid_properties.push("\"object\" is required and cannot be null") if @object.nil?

      unless (_object = @object).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_OBJECT) unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end
      invalid_properties.push("\"url\" is required and cannot be null") if @url.nil?

      unless (_url = @url).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("url", _url.to_s.size, MAX_LENGTH_FOR_URL)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @data.nil?
      unless (_data = @data).nil?
        return false if _data.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _data)
      end

      return false if @has_more.nil?

      return false if @object.nil?
      unless (_object = @object).nil?
        return false unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end

      return false if @url.nil?
      unless (_url = @url).nil?
        return false if _url.to_s.size > MAX_LENGTH_FOR_URL
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] data Object to be assigned
    def data=(data : Array(Stripe::Polymorphic)?)
      if data.nil?
        raise ArgumentError.new("\"data\" is required and cannot be null")
      end
      _data = data.not_nil!
      OpenApi::ContainerValidator.validate(container: _data) if _data.is_a?(Array)
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
      OpenApi::EnumValidator.validate("object", _object, VALID_VALUES_FOR_OBJECT)
      @object = _object
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] url Object to be assigned
    def url=(url : String?)
      if url.nil?
        raise ArgumentError.new("\"url\" is required and cannot be null")
      end
      _url = url.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("url", _url.to_s.size, MAX_LENGTH_FOR_URL)
      @url = _url
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@data, @has_more, @object, @url)
  end
end
