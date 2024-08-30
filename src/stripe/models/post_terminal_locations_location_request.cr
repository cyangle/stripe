#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./optional_fields_address"
require "./post_accounts_request_metadata"

module Stripe
  class PostTerminalLocationsLocationRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "address", type: Stripe::OptionalFieldsAddress?, default: nil, required: false, nullable: false, emit_null: false)]
    getter address : Stripe::OptionalFieldsAddress? = nil

    @[JSON::Field(key: "configuration_overrides", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter configuration_overrides : String? = nil
    ERROR_MESSAGE_FOR_CONFIGURATION_OVERRIDES = "invalid value for \"configuration_overrides\", must be one of []."
    VALID_VALUES_FOR_CONFIGURATION_OVERRIDES  = String.static_array("")

    # A name for the location.
    @[JSON::Field(key: "display_name", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter display_name : String? = nil
    MAX_LENGTH_FOR_DISPLAY_NAME = 1000

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    @[JSON::Field(key: "metadata", type: Stripe::PostAccountsRequestMetadata?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Stripe::PostAccountsRequestMetadata? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @address : Stripe::OptionalFieldsAddress? = nil,
      @configuration_overrides : String? = nil,
      @display_name : String? = nil,
      @expand : Array(String)? = nil,
      @metadata : Stripe::PostAccountsRequestMetadata? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_address = @address).nil?
        invalid_properties.concat(_address.list_invalid_properties_for("address")) if _address.is_a?(OpenApi::Validatable)
      end
      unless (_configuration_overrides = @configuration_overrides).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_CONFIGURATION_OVERRIDES) unless OpenApi::EnumValidator.valid?(_configuration_overrides, VALID_VALUES_FOR_CONFIGURATION_OVERRIDES)
      end
      unless (_display_name = @display_name).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("display_name", _display_name.to_s.size, MAX_LENGTH_FOR_DISPLAY_NAME)
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
      unless (_address = @address).nil?
        return false if _address.is_a?(OpenApi::Validatable) && !_address.valid?
      end

      unless (_configuration_overrides = @configuration_overrides).nil?
        return false unless OpenApi::EnumValidator.valid?(_configuration_overrides, VALID_VALUES_FOR_CONFIGURATION_OVERRIDES)
      end

      unless (_display_name = @display_name).nil?
        return false if _display_name.to_s.size > MAX_LENGTH_FOR_DISPLAY_NAME
      end

      unless (_metadata = @metadata).nil?
        return false if _metadata.is_a?(OpenApi::Validatable) && !_metadata.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address Object to be assigned
    def address=(new_value : Stripe::OptionalFieldsAddress?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @address = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] configuration_overrides Object to be assigned
    def configuration_overrides=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("configuration_overrides", new_value, VALID_VALUES_FOR_CONFIGURATION_OVERRIDES)
      end

      @configuration_overrides = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] display_name Object to be assigned
    def display_name=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("display_name", new_value.to_s.size, MAX_LENGTH_FOR_DISPLAY_NAME)
      end

      @display_name = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expand Object to be assigned
    def expand=(new_value : Array(String)?)
      @expand = new_value
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
    def_equals_and_hash(@address, @configuration_overrides, @display_name, @expand, @metadata)
  end
end
