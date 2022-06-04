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
  class PostRadarValueListsRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # The name of the value list for use in rules.
    @[JSON::Field(key: "alias", type: String)]
    getter _alias : String

    # The human-readable name of the value list.
    @[JSON::Field(key: "name", type: String)]
    getter name : String

    # Optional properties

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, presence: true, ignore_serialize: expand.nil? && !expand_present?)]
    property expand : Array(String)?

    @[JSON::Field(ignore: true)]
    property? expand_present : Bool = false

    # Type of the items in the value list. One of `card_fingerprint`, `card_bin`, `email`, `ip_address`, `country`, `string`, `case_sensitive_string`, or `customer_id`. Use `string` if the item type is unknown or mixed.
    @[JSON::Field(key: "item_type", type: String?, presence: true, ignore_serialize: item_type.nil? && !item_type_present?)]
    getter item_type : String?

    @[JSON::Field(ignore: true)]
    property? item_type_present : Bool = false

    ENUM_VALIDATOR_FOR_ITEM_TYPE = EnumValidator.new("item_type", "String", ["card_bin", "card_fingerprint", "case_sensitive_string", "country", "customer_id", "email", "ip_address", "string"])

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    @[JSON::Field(key: "metadata", type: Hash(String, String)?, presence: true, ignore_serialize: metadata.nil? && !metadata_present?)]
    property metadata : Hash(String, String)?

    @[JSON::Field(ignore: true)]
    property? metadata_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @_alias : String,
      @name : String,
      # Optional properties
      @expand : Array(String)? = nil,
      @item_type : String? = nil,
      @metadata : Hash(String, String)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if @_alias.to_s.size > 100
        invalid_properties.push("invalid value for \"_alias\", the character length must be smaller than or equal to 100.")
      end

      if @name.to_s.size > 100
        invalid_properties.push("invalid value for \"name\", the character length must be smaller than or equal to 100.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_ITEM_TYPE.error_message) unless ENUM_VALIDATOR_FOR_ITEM_TYPE.valid?(@item_type)

      if !@item_type.nil? && @item_type.to_s.size > 5000
        invalid_properties.push("invalid value for \"item_type\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @_alias.to_s.size > 100
      return false if @name.to_s.size > 100
      return false unless ENUM_VALIDATOR_FOR_ITEM_TYPE.valid?(@item_type)
      return false if !@item_type.nil? && @item_type.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] _alias Value to be assigned
    def _alias=(_alias)
      if _alias.to_s.size > 100
        raise ArgumentError.new("invalid value for \"_alias\", the character length must be smaller than or equal to 100.")
      end

      @_alias = _alias
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if name.to_s.size > 100
        raise ArgumentError.new("invalid value for \"name\", the character length must be smaller than or equal to 100.")
      end

      @name = name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] item_type Object to be assigned
    def item_type=(item_type)
      ENUM_VALIDATOR_FOR_ITEM_TYPE.valid!(item_type)
      @item_type = item_type
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
    def_equals_and_hash(@_alias, @name, @expand, @item_type, @metadata)
  end
end