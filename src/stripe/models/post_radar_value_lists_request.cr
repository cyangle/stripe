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
  class PostRadarValueListsRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    # The name of the value list for use in rules.
    @[JSON::Field(key: "alias", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter _alias : String? = nil

    # The human-readable name of the value list.
    @[JSON::Field(key: "name", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter name : String? = nil

    # Optional properties

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    # Type of the items in the value list. One of `card_fingerprint`, `card_bin`, `email`, `ip_address`, `country`, `string`, `case_sensitive_string`, or `customer_id`. Use `string` if the item type is unknown or mixed.
    @[JSON::Field(key: "item_type", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter item_type : String? = nil

    VALID_VALUES_FOR_ITEM_TYPE = StaticArray["card_bin", "card_fingerprint", "case_sensitive_string", "country", "customer_id", "email", "ip_address", "string"]

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Hash(String, String)? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @_alias : String? = nil,
      @name : String? = nil,
      # Optional properties
      @expand : Array(String)? = nil,
      @item_type : String? = nil,
      @metadata : Hash(String, String)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"_alias\" is required and cannot be null") if @_alias.nil?

      if __alias = @_alias
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("_alias", __alias.to_s.size, 100)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"name\" is required and cannot be null") if @name.nil?

      if _name = @name
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("name", _name.to_s.size, 100)
          invalid_properties.push(max_length_error)
        end
      end

      if _item_type = @item_type
        invalid_properties.push(OpenApi::EnumValidator.error_message("item_type", VALID_VALUES_FOR_ITEM_TYPE)) unless OpenApi::EnumValidator.valid?(_item_type, VALID_VALUES_FOR_ITEM_TYPE)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @_alias.nil?
      if __alias = @_alias
        return false if __alias.to_s.size > 100
      end

      return false if @name.nil?
      if _name = @name
        return false if _name.to_s.size > 100
      end

      if _item_type = @item_type
        return false unless OpenApi::EnumValidator.valid?(_item_type, VALID_VALUES_FOR_ITEM_TYPE)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _alias Object to be assigned
    def _alias=(_alias : String?)
      if _alias.nil?
        raise ArgumentError.new("\"_alias\" is required and cannot be null")
      end
      __alias = _alias.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("_alias", __alias.to_s.size, 100)
        raise ArgumentError.new(max_length_error)
      end

      @_alias = __alias
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] name Object to be assigned
    def name=(name : String?)
      if name.nil?
        raise ArgumentError.new("\"name\" is required and cannot be null")
      end
      _name = name.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("name", _name.to_s.size, 100)
        raise ArgumentError.new(max_length_error)
      end

      @name = _name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expand Object to be assigned
    def expand=(expand : Array(String)?)
      if expand.nil?
        return @expand = nil
      end
      _expand = expand.not_nil!
      @expand = _expand
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] item_type Object to be assigned
    def item_type=(item_type : String?)
      if item_type.nil?
        return @item_type = nil
      end
      _item_type = item_type.not_nil!
      OpenApi::EnumValidator.validate("item_type", _item_type, VALID_VALUES_FOR_ITEM_TYPE)
      @item_type = _item_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(metadata : Hash(String, String)?)
      if metadata.nil?
        return @metadata = nil
      end
      _metadata = metadata.not_nil!
      @metadata = _metadata
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@_alias, @name, @expand, @item_type, @metadata)
  end
end
