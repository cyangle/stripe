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
  # A Reader represents a physical device for accepting payment details.  Related guide: [Connecting to a Reader](https://stripe.com/docs/terminal/payments/connect-reader).
  class TerminalReader
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Required properties

    # Type of reader, one of `bbpos_wisepad3`, `stripe_m2`, `bbpos_chipper2x`, `bbpos_wisepos_e`, `verifone_P400`, or `simulated_wisepos_e`.
    @[JSON::Field(key: "device_type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter device_type : String? = nil

    ENUM_VALIDATOR_FOR_DEVICE_TYPE = EnumValidator.new("device_type", "String", ["bbpos_chipper2x", "bbpos_wisepad3", "bbpos_wisepos_e", "simulated_wisepos_e", "stripe_m2", "verifone_P400"])

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil

    # Custom label given to the reader for easier identification.
    @[JSON::Field(key: "label", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter label : String? = nil

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter livemode : Bool? = nil

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter metadata : Hash(String, String)? = nil

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter object : String? = nil

    ENUM_VALIDATOR_FOR_OBJECT = EnumValidator.new("object", "String", ["terminal.reader"])

    # Serial number of the reader.
    @[JSON::Field(key: "serial_number", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter serial_number : String? = nil

    # Optional properties

    @[JSON::Field(key: "action", type: Stripe::TerminalReaderAction?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: action.nil? && !action_present?)]
    getter action : Stripe::TerminalReaderAction? = nil

    @[JSON::Field(ignore: true)]
    property? action_present : Bool = false

    # The current software version of the reader.
    @[JSON::Field(key: "device_sw_version", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: device_sw_version.nil? && !device_sw_version_present?)]
    getter device_sw_version : String? = nil

    @[JSON::Field(ignore: true)]
    property? device_sw_version_present : Bool = false

    # The local IP address of the reader.
    @[JSON::Field(key: "ip_address", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: ip_address.nil? && !ip_address_present?)]
    getter ip_address : String? = nil

    @[JSON::Field(ignore: true)]
    property? ip_address_present : Bool = false

    @[JSON::Field(key: "location", type: Stripe::TerminalReaderLocation?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: location.nil? && !location_present?)]
    getter location : Stripe::TerminalReaderLocation? = nil

    @[JSON::Field(ignore: true)]
    property? location_present : Bool = false

    # The networking status of the reader.
    @[JSON::Field(key: "status", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: status.nil? && !status_present?)]
    getter status : String? = nil

    @[JSON::Field(ignore: true)]
    property? status_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @device_type : String? = nil,
      @id : String? = nil,
      @label : String? = nil,
      @livemode : Bool? = nil,
      @metadata : Hash(String, String)? = nil,
      @object : String? = nil,
      @serial_number : String? = nil,
      # Optional properties
      @action : Stripe::TerminalReaderAction? = nil,
      @device_sw_version : String? = nil,
      @ip_address : String? = nil,
      @location : Stripe::TerminalReaderLocation? = nil,
      @status : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      invalid_properties.push(ENUM_VALIDATOR_FOR_DEVICE_TYPE.error_message) unless ENUM_VALIDATOR_FOR_DEVICE_TYPE.valid?(@device_type, false)
      invalid_properties.push("\"id\" is required and cannot be null") if @id.nil?
      if _id = @id
        if _id.to_s.size > 5000
          invalid_properties.push("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
        end
      end
      invalid_properties.push("\"label\" is required and cannot be null") if @label.nil?
      if _label = @label
        if _label.to_s.size > 5000
          invalid_properties.push("invalid value for \"label\", the character length must be smaller than or equal to 5000.")
        end
      end
      invalid_properties.push("\"livemode\" is required and cannot be null") if @livemode.nil?
      invalid_properties.push("\"metadata\" is required and cannot be null") if @metadata.nil?

      invalid_properties.push(ENUM_VALIDATOR_FOR_OBJECT.error_message) unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      invalid_properties.push("\"serial_number\" is required and cannot be null") if @serial_number.nil?
      if _serial_number = @serial_number
        if _serial_number.to_s.size > 5000
          invalid_properties.push("invalid value for \"serial_number\", the character length must be smaller than or equal to 5000.")
        end
      end
      # This is a model action : Stripe::TerminalReaderAction?
      if _device_sw_version = @device_sw_version
        if _device_sw_version.to_s.size > 5000
          invalid_properties.push("invalid value for \"device_sw_version\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _ip_address = @ip_address
        if _ip_address.to_s.size > 5000
          invalid_properties.push("invalid value for \"ip_address\", the character length must be smaller than or equal to 5000.")
        end
      end
      # This is a model location : Stripe::TerminalReaderLocation?
      if _status = @status
        if _status.to_s.size > 5000
          invalid_properties.push("invalid value for \"status\", the character length must be smaller than or equal to 5000.")
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false unless ENUM_VALIDATOR_FOR_DEVICE_TYPE.valid?(@device_type, false)
      return false if @id.nil?
      if _id = @id
        return false if _id.to_s.size > 5000
      end
      return false if @label.nil?
      if _label = @label
        return false if _label.to_s.size > 5000
      end
      return false if @livemode.nil?
      return false if @metadata.nil?
      return false unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      return false if @serial_number.nil?
      if _serial_number = @serial_number
        return false if _serial_number.to_s.size > 5000
      end
      if _device_sw_version = @device_sw_version
        return false if _device_sw_version.to_s.size > 5000
      end
      if _ip_address = @ip_address
        return false if _ip_address.to_s.size > 5000
      end
      if _status = @status
        return false if _status.to_s.size > 5000
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] device_type Object to be assigned
    def device_type=(device_type : String?)
      if device_type.nil?
        raise ArgumentError.new("\"device_type\" is required and cannot be null")
      end
      _device_type = device_type.not_nil!
      ENUM_VALIDATOR_FOR_DEVICE_TYPE.valid!(_device_type)
      @device_type = device_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] id Object to be assigned
    def id=(id : String?)
      if id.nil?
        raise ArgumentError.new("\"id\" is required and cannot be null")
      end
      _id = id.not_nil!
      if _id.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      @id = id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] label Object to be assigned
    def label=(label : String?)
      if label.nil?
        raise ArgumentError.new("\"label\" is required and cannot be null")
      end
      _label = label.not_nil!
      if _label.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"label\", the character length must be smaller than or equal to 5000.")
      end

      @label = label
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] livemode Object to be assigned
    def livemode=(livemode : Bool?)
      if livemode.nil?
        raise ArgumentError.new("\"livemode\" is required and cannot be null")
      end
      @livemode = livemode
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(metadata : Hash(String, String)?)
      if metadata.nil?
        raise ArgumentError.new("\"metadata\" is required and cannot be null")
      end
      @metadata = metadata
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object : String?)
      if object.nil?
        raise ArgumentError.new("\"object\" is required and cannot be null")
      end
      _object = object.not_nil!
      ENUM_VALIDATOR_FOR_OBJECT.valid!(_object)
      @object = object
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] serial_number Object to be assigned
    def serial_number=(serial_number : String?)
      if serial_number.nil?
        raise ArgumentError.new("\"serial_number\" is required and cannot be null")
      end
      _serial_number = serial_number.not_nil!
      if _serial_number.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"serial_number\", the character length must be smaller than or equal to 5000.")
      end

      @serial_number = serial_number
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] action Object to be assigned
    def action=(action : Stripe::TerminalReaderAction?)
      if action.nil?
        return @action = nil
      end
      @action = action
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] device_sw_version Object to be assigned
    def device_sw_version=(device_sw_version : String?)
      if device_sw_version.nil?
        return @device_sw_version = nil
      end
      _device_sw_version = device_sw_version.not_nil!
      if _device_sw_version.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"device_sw_version\", the character length must be smaller than or equal to 5000.")
      end

      @device_sw_version = device_sw_version
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] ip_address Object to be assigned
    def ip_address=(ip_address : String?)
      if ip_address.nil?
        return @ip_address = nil
      end
      _ip_address = ip_address.not_nil!
      if _ip_address.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"ip_address\", the character length must be smaller than or equal to 5000.")
      end

      @ip_address = ip_address
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] location Object to be assigned
    def location=(location : Stripe::TerminalReaderLocation?)
      if location.nil?
        return @location = nil
      end
      @location = location
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status : String?)
      if status.nil?
        return @status = nil
      end
      _status = status.not_nil!
      if _status.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"status\", the character length must be smaller than or equal to 5000.")
      end

      @status = status
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
    def_equals_and_hash(@device_type, @id, @label, @livemode, @metadata, @object, @serial_number, @action, @action_present, @device_sw_version, @device_sw_version_present, @ip_address, @ip_address_present, @location, @location_present, @status, @status_present)
  end
end
