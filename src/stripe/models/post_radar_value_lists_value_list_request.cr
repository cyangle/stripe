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
  class PostRadarValueListsValueListRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    # The name of the value list for use in rules.
    @[JSON::Field(key: "alias", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter _alias : String? = nil

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Hash(String, String)? = nil

    # The human-readable name of the value list.
    @[JSON::Field(key: "name", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter name : String? = nil

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
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      if __alias = @_alias
        if __alias.to_s.size > 100
          invalid_properties.push("invalid value for \"_alias\", the character length must be smaller than or equal to 100.")
        end
      end

      if _name = @name
        if _name.to_s.size > 100
          invalid_properties.push("invalid value for \"name\", the character length must be smaller than or equal to 100.")
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if __alias = @_alias
        return false if __alias.to_s.size > 100
      end

      if _name = @name
        return false if _name.to_s.size > 100
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _alias Object to be assigned
    def _alias=(_alias : String?)
      if _alias.nil?
        return @_alias = nil
      end
      __alias = _alias.not_nil!
      if __alias.to_s.size > 100
        raise ArgumentError.new("invalid value for \"_alias\", the character length must be smaller than or equal to 100.")
      end

      @_alias = __alias
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
    # @param [Object] metadata Object to be assigned
    def metadata=(metadata : Hash(String, String)?)
      if metadata.nil?
        return @metadata = nil
      end
      _metadata = metadata.not_nil!
      @metadata = _metadata
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] name Object to be assigned
    def name=(name : String?)
      if name.nil?
        return @name = nil
      end
      _name = name.not_nil!
      if _name.to_s.size > 100
        raise ArgumentError.new("invalid value for \"name\", the character length must be smaller than or equal to 100.")
      end

      @name = _name
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@_alias, @expand, @metadata, @name)
  end
end
