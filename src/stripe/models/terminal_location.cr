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
  # A Location represents a grouping of readers.  Related guide: [Fleet Management](https://stripe.com/docs/terminal/fleet/locations).
  class TerminalLocation
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "address", type: Stripe::Address?, default: nil, required: true, nullable: false, emit_null: false)]
    getter address : Stripe::Address? = nil

    # The display name of the location.
    @[JSON::Field(key: "display_name", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter display_name : String? = nil
    MAX_LENGTH_FOR_DISPLAY_NAME = 5000

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil
    MAX_LENGTH_FOR_ID = 5000

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter livemode : Bool? = nil

    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter metadata : Hash(String, String)? = nil

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter object : String? = nil
    ERROR_MESSAGE_FOR_OBJECT = "invalid value for \"object\", must be one of [terminal.location]."
    VALID_VALUES_FOR_OBJECT  = String.static_array("terminal.location")

    # End of Required Properties

    # Optional Properties

    # The ID of a configuration that will be used to customize all readers in this location.
    @[JSON::Field(key: "configuration_overrides", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter configuration_overrides : String? = nil
    MAX_LENGTH_FOR_CONFIGURATION_OVERRIDES = 5000

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @address : Stripe::Address? = nil,
      @display_name : String? = nil,
      @id : String? = nil,
      @livemode : Bool? = nil,
      @metadata : Hash(String, String)? = nil,
      @object : String? = nil,
      # Optional properties
      @configuration_overrides : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"address\" is required and cannot be null") if @address.nil?

      unless (_address = @address).nil?
        invalid_properties.concat(_address.list_invalid_properties_for("address")) if _address.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"display_name\" is required and cannot be null") if @display_name.nil?

      unless (_display_name = @display_name).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("display_name", _display_name.to_s.size, MAX_LENGTH_FOR_DISPLAY_NAME)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"id\" is required and cannot be null") if @id.nil?

      unless (_id = @id).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("id", _id.to_s.size, MAX_LENGTH_FOR_ID)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"livemode\" is required and cannot be null") if @livemode.nil?

      invalid_properties.push("\"metadata\" is required and cannot be null") if @metadata.nil?

      invalid_properties.push("\"object\" is required and cannot be null") if @object.nil?

      unless (_object = @object).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_OBJECT) unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end
      unless (_configuration_overrides = @configuration_overrides).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("configuration_overrides", _configuration_overrides.to_s.size, MAX_LENGTH_FOR_CONFIGURATION_OVERRIDES)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @address.nil?
      unless (_address = @address).nil?
        return false if _address.is_a?(OpenApi::Validatable) && !_address.valid?
      end

      return false if @display_name.nil?
      unless (_display_name = @display_name).nil?
        return false if _display_name.to_s.size > MAX_LENGTH_FOR_DISPLAY_NAME
      end

      return false if @id.nil?
      unless (_id = @id).nil?
        return false if _id.to_s.size > MAX_LENGTH_FOR_ID
      end

      return false if @livemode.nil?

      return false if @metadata.nil?

      return false if @object.nil?
      unless (_object = @object).nil?
        return false unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end

      unless (_configuration_overrides = @configuration_overrides).nil?
        return false if _configuration_overrides.to_s.size > MAX_LENGTH_FOR_CONFIGURATION_OVERRIDES
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address Object to be assigned
    def address=(address : Stripe::Address?)
      if address.nil?
        raise ArgumentError.new("\"address\" is required and cannot be null")
      end
      _address = address.not_nil!
      _address.validate if _address.is_a?(OpenApi::Validatable)
      @address = _address
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] display_name Object to be assigned
    def display_name=(display_name : String?)
      if display_name.nil?
        raise ArgumentError.new("\"display_name\" is required and cannot be null")
      end
      _display_name = display_name.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("display_name", _display_name.to_s.size, MAX_LENGTH_FOR_DISPLAY_NAME)
      @display_name = _display_name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] id Object to be assigned
    def id=(id : String?)
      if id.nil?
        raise ArgumentError.new("\"id\" is required and cannot be null")
      end
      _id = id.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("id", _id.to_s.size, MAX_LENGTH_FOR_ID)
      @id = _id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] livemode Object to be assigned
    def livemode=(livemode : Bool?)
      if livemode.nil?
        raise ArgumentError.new("\"livemode\" is required and cannot be null")
      end
      _livemode = livemode.not_nil!
      @livemode = _livemode
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(metadata : Hash(String, String)?)
      if metadata.nil?
        raise ArgumentError.new("\"metadata\" is required and cannot be null")
      end
      _metadata = metadata.not_nil!
      @metadata = _metadata
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
    # @param [Object] configuration_overrides Object to be assigned
    def configuration_overrides=(configuration_overrides : String?)
      if configuration_overrides.nil?
        return @configuration_overrides = nil
      end
      _configuration_overrides = configuration_overrides.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("configuration_overrides", _configuration_overrides.to_s.size, MAX_LENGTH_FOR_CONFIGURATION_OVERRIDES)
      @configuration_overrides = _configuration_overrides
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@address, @display_name, @id, @livemode, @metadata, @object, @configuration_overrides)
  end
end
