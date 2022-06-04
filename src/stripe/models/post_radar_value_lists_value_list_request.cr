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
  class PostRadarValueListsValueListRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped


    # Optional properties

    # The name of the value list for use in rules.
    @[JSON::Field(key: "alias", type: String?, presence: true, ignore_serialize: _alias.nil? && !_alias_present?)]
    getter _alias : String?

    @[JSON::Field(ignore: true)]
    property? _alias_present : Bool = false

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, presence: true, ignore_serialize: expand.nil? && !expand_present?)]
    property expand : Array(String)?

    @[JSON::Field(ignore: true)]
    property? expand_present : Bool = false

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    @[JSON::Field(key: "metadata", type: Hash(String, String)?, presence: true, ignore_serialize: metadata.nil? && !metadata_present?)]
    property metadata : Hash(String, String)?

    @[JSON::Field(ignore: true)]
    property? metadata_present : Bool = false

    # The human-readable name of the value list.
    @[JSON::Field(key: "name", type: String?, presence: true, ignore_serialize: name.nil? && !name_present?)]
    getter name : String?

    @[JSON::Field(ignore: true)]
    property? name_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *, 
      # Optional properties
      @_alias : String? = nil, 
      @expand : Array(String)? = nil, 
      @metadata : Hash(String, String)? = nil, 
      @name : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if !@_alias.nil? && @_alias.to_s.size > 100
        invalid_properties.push("invalid value for \"_alias\", the character length must be smaller than or equal to 100.")
      end

      if !@name.nil? && @name.to_s.size > 100
        invalid_properties.push("invalid value for \"name\", the character length must be smaller than or equal to 100.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@_alias.nil? && @_alias.to_s.size > 100
      return false if !@name.nil? && @name.to_s.size > 100

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] _alias Value to be assigned
    def _alias=(_alias)
      if !_alias.nil? && _alias.to_s.size > 100
        raise ArgumentError.new("invalid value for \"_alias\", the character length must be smaller than or equal to 100.")
      end

      @_alias = _alias
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if !name.nil? && name.to_s.size > 100
        raise ArgumentError.new("invalid value for \"name\", the character length must be smaller than or equal to 100.")
      end

      @name = name
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
    def_equals_and_hash(@_alias, @expand, @metadata, @name)
  end
end
