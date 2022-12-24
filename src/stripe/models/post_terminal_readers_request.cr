#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-11-15
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

    # Required Properties

    # A code generated by the reader used for registering to an account.
    @[JSON::Field(key: "registration_code", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter registration_code : String? = nil
    MAX_LENGTH_FOR_REGISTRATION_CODE = 5000

    # End of Required Properties

    # Optional Properties

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    # Custom label given to the reader for easier identification. If no label is specified, the registration code will be used.
    @[JSON::Field(key: "label", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter label : String? = nil
    MAX_LENGTH_FOR_LABEL = 5000

    # The location to assign the reader to.
    @[JSON::Field(key: "location", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter location : String? = nil
    MAX_LENGTH_FOR_LOCATION = 5000

    @[JSON::Field(key: "metadata", type: Stripe::PostAccountsRequestMetadata?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Stripe::PostAccountsRequestMetadata? = nil

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
      @metadata : Stripe::PostAccountsRequestMetadata? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"registration_code\" is required and cannot be null") if @registration_code.nil?

      unless (_registration_code = @registration_code).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("registration_code", _registration_code.to_s.size, MAX_LENGTH_FOR_REGISTRATION_CODE)
          invalid_properties.push(max_length_error)
        end
      end

      unless (_label = @label).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("label", _label.to_s.size, MAX_LENGTH_FOR_LABEL)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_location = @location).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("location", _location.to_s.size, MAX_LENGTH_FOR_LOCATION)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_metadata = @metadata).nil?
        invalid_properties.concat(_metadata.list_invalid_properties_for("metadata")) if _metadata.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @registration_code.nil?
      unless (_registration_code = @registration_code).nil?
        return false if _registration_code.to_s.size > MAX_LENGTH_FOR_REGISTRATION_CODE
      end

      unless (_label = @label).nil?
        return false if _label.to_s.size > MAX_LENGTH_FOR_LABEL
      end

      unless (_location = @location).nil?
        return false if _location.to_s.size > MAX_LENGTH_FOR_LOCATION
      end

      unless (_metadata = @metadata).nil?
        return false if _metadata.is_a?(OpenApi::Validatable) && !_metadata.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] registration_code Object to be assigned
    def registration_code=(new_value : String?)
      raise ArgumentError.new("\"registration_code\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("registration_code", new_value.to_s.size, MAX_LENGTH_FOR_REGISTRATION_CODE)
      end

      @registration_code = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expand Object to be assigned
    def expand=(new_value : Array(String)?)
      @expand = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] label Object to be assigned
    def label=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("label", new_value.to_s.size, MAX_LENGTH_FOR_LABEL)
      end

      @label = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] location Object to be assigned
    def location=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("location", new_value.to_s.size, MAX_LENGTH_FOR_LOCATION)
      end

      @location = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(new_value : Stripe::PostAccountsRequestMetadata?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @metadata = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@registration_code, @expand, @label, @location, @metadata)
  end
end
