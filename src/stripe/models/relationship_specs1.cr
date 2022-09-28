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
  class RelationshipSpecs1
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "director", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter director : Bool? = nil

    @[JSON::Field(key: "executive", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter executive : Bool? = nil

    @[JSON::Field(key: "owner", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter owner : Bool? = nil

    @[JSON::Field(key: "percent_ownership", type: Stripe::RelationshipSpecsPercentOwnership?, default: nil, required: false, nullable: false, emit_null: false)]
    getter percent_ownership : Stripe::RelationshipSpecsPercentOwnership? = nil

    @[JSON::Field(key: "representative", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter representative : Bool? = nil

    @[JSON::Field(key: "title", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter title : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @director : Bool? = nil,
      @executive : Bool? = nil,
      @owner : Bool? = nil,
      @percent_ownership : Stripe::RelationshipSpecsPercentOwnership? = nil,
      @representative : Bool? = nil,
      @title : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      if _percent_ownership = @percent_ownership
        if _percent_ownership.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_percent_ownership.list_invalid_properties_for("percent_ownership"))
        end
      end

      if _title = @title
        if _title.to_s.size > 5000
          invalid_properties.push("invalid value for \"title\", the character length must be smaller than or equal to 5000.")
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _percent_ownership = @percent_ownership
        if _percent_ownership.is_a?(OpenApi::Validatable)
          return false unless _percent_ownership.valid?
        end
      end

      if _title = @title
        return false if _title.to_s.size > 5000
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] director Object to be assigned
    def director=(director : Bool?)
      if director.nil?
        return @director = nil
      end
      _director = director.not_nil!
      @director = _director
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] executive Object to be assigned
    def executive=(executive : Bool?)
      if executive.nil?
        return @executive = nil
      end
      _executive = executive.not_nil!
      @executive = _executive
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] owner Object to be assigned
    def owner=(owner : Bool?)
      if owner.nil?
        return @owner = nil
      end
      _owner = owner.not_nil!
      @owner = _owner
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] percent_ownership Object to be assigned
    def percent_ownership=(percent_ownership : Stripe::RelationshipSpecsPercentOwnership?)
      if percent_ownership.nil?
        return @percent_ownership = nil
      end
      _percent_ownership = percent_ownership.not_nil!
      if _percent_ownership.is_a?(OpenApi::Validatable)
        _percent_ownership.validate
      end
      @percent_ownership = _percent_ownership
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] representative Object to be assigned
    def representative=(representative : Bool?)
      if representative.nil?
        return @representative = nil
      end
      _representative = representative.not_nil!
      @representative = _representative
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] title Object to be assigned
    def title=(title : String?)
      if title.nil?
        return @title = nil
      end
      _title = title.not_nil!
      if _title.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"title\", the character length must be smaller than or equal to 5000.")
      end

      @title = _title
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@director, @executive, @owner, @percent_ownership, @representative, @title)
  end
end
