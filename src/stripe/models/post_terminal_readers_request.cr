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
  class PostTerminalReadersRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    # A code generated by the reader used for registering to an account.
    @[JSON::Field(key: "registration_code", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter registration_code : String? = nil

    # Optional properties

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    # Custom label given to the reader for easier identification. If no label is specified, the registration code will be used.
    @[JSON::Field(key: "label", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter label : String? = nil

    # The location to assign the reader to.
    @[JSON::Field(key: "location", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter location : String? = nil

    @[JSON::Field(key: "metadata", type: Stripe::PostAccountRequestMetadata?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Stripe::PostAccountRequestMetadata? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @registration_code : String? = nil,
      # Optional properties
      @expand : Array(String)? = nil,
      @label : String? = nil,
      @location : String? = nil,
      @metadata : Stripe::PostAccountRequestMetadata? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      invalid_properties.push("\"registration_code\" is required and cannot be null") if @registration_code.nil?
      if _registration_code = @registration_code
        if _registration_code.to_s.size > 5000
          invalid_properties.push("invalid value for \"registration_code\", the character length must be smaller than or equal to 5000.")
        end
      end

      if _label = @label
        if _label.to_s.size > 5000
          invalid_properties.push("invalid value for \"label\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _location = @location
        if _location.to_s.size > 5000
          invalid_properties.push("invalid value for \"location\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _metadata = @metadata
        if _metadata.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_metadata.list_invalid_properties_for("metadata"))
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @registration_code.nil?
      if _registration_code = @registration_code
        return false if _registration_code.to_s.size > 5000
      end

      if _label = @label
        return false if _label.to_s.size > 5000
      end
      if _location = @location
        return false if _location.to_s.size > 5000
      end
      if _metadata = @metadata
        if _metadata.is_a?(OpenApi::Validatable)
          return false unless _metadata.valid?
        end
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] registration_code Object to be assigned
    def registration_code=(registration_code : String?)
      if registration_code.nil?
        raise ArgumentError.new("\"registration_code\" is required and cannot be null")
      end
      _registration_code = registration_code.not_nil!
      if _registration_code.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"registration_code\", the character length must be smaller than or equal to 5000.")
      end

      @registration_code = _registration_code
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
    # @param [Object] label Object to be assigned
    def label=(label : String?)
      if label.nil?
        return @label = nil
      end
      _label = label.not_nil!
      if _label.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"label\", the character length must be smaller than or equal to 5000.")
      end

      @label = _label
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] location Object to be assigned
    def location=(location : String?)
      if location.nil?
        return @location = nil
      end
      _location = location.not_nil!
      if _location.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"location\", the character length must be smaller than or equal to 5000.")
      end

      @location = _location
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(metadata : Stripe::PostAccountRequestMetadata?)
      if metadata.nil?
        return @metadata = nil
      end
      _metadata = metadata.not_nil!
      if _metadata.is_a?(OpenApi::Validatable)
        _metadata.validate
      end
      @metadata = _metadata
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@registration_code, @expand, @label, @location, @metadata)
  end
end
