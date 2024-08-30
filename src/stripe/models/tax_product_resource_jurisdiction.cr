#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

module Stripe
  #
  class TaxProductResourceJurisdiction
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
    @[JSON::Field(key: "country", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter country : String? = nil
    MAX_LENGTH_FOR_COUNTRY = 5000

    # A human-readable name for the jurisdiction imposing the tax.
    @[JSON::Field(key: "display_name", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter display_name : String? = nil
    MAX_LENGTH_FOR_DISPLAY_NAME = 5000

    # Indicates the level of the jurisdiction imposing the tax.
    @[JSON::Field(key: "level", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter level : String? = nil
    ERROR_MESSAGE_FOR_LEVEL = "invalid value for \"level\", must be one of [city, country, county, district, state]."
    VALID_VALUES_FOR_LEVEL  = String.static_array("city", "country", "county", "district", "state")

    # [ISO 3166-2 subdivision code](https://en.wikipedia.org/wiki/ISO_3166-2:US), without country prefix. For example, \"NY\" for New York, United States.
    @[JSON::Field(key: "state", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter state : String? = nil
    MAX_LENGTH_FOR_STATE = 5000

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @country : String? = nil,
      @display_name : String? = nil,
      @level : String? = nil,
      @state : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"country\" is required and cannot be null") if @country.nil?

      unless (_country = @country).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("country", _country.to_s.size, MAX_LENGTH_FOR_COUNTRY)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"display_name\" is required and cannot be null") if @display_name.nil?

      unless (_display_name = @display_name).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("display_name", _display_name.to_s.size, MAX_LENGTH_FOR_DISPLAY_NAME)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"level\" is required and cannot be null") if @level.nil?

      unless (_level = @level).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_LEVEL) unless OpenApi::EnumValidator.valid?(_level, VALID_VALUES_FOR_LEVEL)
      end
      unless (_state = @state).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("state", _state.to_s.size, MAX_LENGTH_FOR_STATE)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @country.nil?
      unless (_country = @country).nil?
        return false if _country.to_s.size > MAX_LENGTH_FOR_COUNTRY
      end

      return false if @display_name.nil?
      unless (_display_name = @display_name).nil?
        return false if _display_name.to_s.size > MAX_LENGTH_FOR_DISPLAY_NAME
      end

      return false if @level.nil?
      unless (_level = @level).nil?
        return false unless OpenApi::EnumValidator.valid?(_level, VALID_VALUES_FOR_LEVEL)
      end

      unless (_state = @state).nil?
        return false if _state.to_s.size > MAX_LENGTH_FOR_STATE
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] country Object to be assigned
    def country=(new_value : String?)
      raise ArgumentError.new("\"country\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("country", new_value.to_s.size, MAX_LENGTH_FOR_COUNTRY)
      end

      @country = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] display_name Object to be assigned
    def display_name=(new_value : String?)
      raise ArgumentError.new("\"display_name\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("display_name", new_value.to_s.size, MAX_LENGTH_FOR_DISPLAY_NAME)
      end

      @display_name = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] level Object to be assigned
    def level=(new_value : String?)
      raise ArgumentError.new("\"level\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::EnumValidator.validate("level", new_value, VALID_VALUES_FOR_LEVEL)
      end

      @level = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] state Object to be assigned
    def state=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("state", new_value.to_s.size, MAX_LENGTH_FOR_STATE)
      end

      @state = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@country, @display_name, @level, @state)
  end
end
