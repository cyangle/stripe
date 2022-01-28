#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-08-27
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "nason"
require "time"
require "log"

module Stripe
  # A Reader represents a physical device for accepting payment details.  Related guide: [Connecting to a Reader](https://stripe.com/docs/terminal/payments/connect-reader).
  class TerminalReader
    include NASON::Serializable

    # Required properties
    # Type of reader, one of `bbpos_chipper2x`, `bbpos_wisepos_e`, or `verifone_P400`.
    @[NASON::Field(key: "device_type", type: String)]
    property device_type : String

    # Unique identifier for the object.
    @[NASON::Field(key: "id", type: String)]
    property id : String

    # Custom label given to the reader for easier identification.
    @[NASON::Field(key: "label", type: String)]
    property label : String

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[NASON::Field(key: "livemode", type: Bool)]
    property livemode : Bool

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    @[NASON::Field(key: "metadata", type: Hash(String, String))]
    property metadata : Hash(String, String)

    # String representing the object's type. Objects of the same type share the same value.
    @[NASON::Field(key: "object", type: String)]
    property object : String

    # Serial number of the reader.
    @[NASON::Field(key: "serial_number", type: String)]
    property serial_number : String

    # Optional properties
    # The current software version of the reader.
    @[NASON::Field(key: "device_sw_version", type: String? | Null, nillable: true)]
    property device_sw_version : String? | Null

    # The local IP address of the reader.
    @[NASON::Field(key: "ip_address", type: String? | Null, nillable: true)]
    property ip_address : String? | Null

    # The location identifier of the reader.
    @[NASON::Field(key: "location", type: String | TerminalLocation? | Null, nillable: true)]
    property location : String | TerminalLocation? | Null

    # The networking status of the reader.
    @[NASON::Field(key: "status", type: String? | Null, nillable: true)]
    property status : String? | Null

    class EnumAttributeValidator
      getter datatype : String
      getter allowable_values : Array(String | Int64 | Float64)

      def initialize(datatype, allowable_values)
        @datatype = datatype
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        value.nil? || value.null? || allowable_values.includes?(value)
      end
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(*, @device_type : String, @id : String, @label : String, @livemode : Bool, @metadata : Hash(String, String), @object : String, @serial_number : String, @device_sw_version : String? | Null = nil, @ip_address : String? | Null = nil, @location : String | TerminalLocation? | Null = nil, @status : String? | Null = nil)
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      if !@device_sw_version.nil? && !@device_sw_version.null? && @device_sw_version.to_s.size > 5000
        invalid_properties.push("invalid value for \"device_sw_version\", the character length must be smaller than or equal to 5000.")
      end

      if @id.to_s.size > 5000
        invalid_properties.push("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      if !@ip_address.nil? && !@ip_address.null? && @ip_address.to_s.size > 5000
        invalid_properties.push("invalid value for \"ip_address\", the character length must be smaller than or equal to 5000.")
      end

      if @label.to_s.size > 5000
        invalid_properties.push("invalid value for \"label\", the character length must be smaller than or equal to 5000.")
      end

      if @serial_number.to_s.size > 5000
        invalid_properties.push("invalid value for \"serial_number\", the character length must be smaller than or equal to 5000.")
      end

      if !@status.nil? && !@status.null? && @status.to_s.size > 5000
        invalid_properties.push("invalid value for \"status\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@device_sw_version.nil? && !@device_sw_version.null? && @device_sw_version.to_s.size > 5000
      device_type_validator = EnumAttributeValidator.new("String", ["bbpos_chipper2x", "bbpos_wisepos_e", "verifone_P400"])
      return false unless device_type_validator.valid?(@device_type)
      return false if @id.to_s.size > 5000
      return false if !@ip_address.nil? && !@ip_address.null? && @ip_address.to_s.size > 5000
      return false if @label.to_s.size > 5000
      object_validator = EnumAttributeValidator.new("String", ["terminal.reader"])
      return false unless object_validator.valid?(@object)
      return false if @serial_number.to_s.size > 5000
      return false if !@status.nil? && !@status.null? && @status.to_s.size > 5000
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] device_sw_version Value to be assigned
    def device_sw_version=(device_sw_version)
      if !device_sw_version.nil? && !@device_sw_version.null? && device_sw_version.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"device_sw_version\", the character length must be smaller than or equal to 5000.")
      end

      @device_sw_version = device_sw_version
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] device_type Object to be assigned
    def device_type=(device_type)
      validator = EnumAttributeValidator.new("String", ["bbpos_chipper2x", "bbpos_wisepos_e", "verifone_P400"])
      unless validator.valid?(device_type)
        raise ArgumentError.new("invalid value for \"device_type\", must be one of #{validator.allowable_values}.")
      end
      @device_type = device_type
    end

    # Custom attribute writer method with validation
    # @param [Object] id Value to be assigned
    def id=(id)
      if id.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      @id = id
    end

    # Custom attribute writer method with validation
    # @param [Object] ip_address Value to be assigned
    def ip_address=(ip_address)
      if !ip_address.nil? && !@ip_address.null? && ip_address.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"ip_address\", the character length must be smaller than or equal to 5000.")
      end

      @ip_address = ip_address
    end

    # Custom attribute writer method with validation
    # @param [Object] label Value to be assigned
    def label=(label)
      if label.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"label\", the character length must be smaller than or equal to 5000.")
      end

      @label = label
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object)
      validator = EnumAttributeValidator.new("String", ["terminal.reader"])
      unless validator.valid?(object)
        raise ArgumentError.new("invalid value for \"object\", must be one of #{validator.allowable_values}.")
      end
      @object = object
    end

    # Custom attribute writer method with validation
    # @param [Object] serial_number Value to be assigned
    def serial_number=(serial_number)
      if serial_number.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"serial_number\", the character length must be smaller than or equal to 5000.")
      end

      @serial_number = serial_number
    end

    # Custom attribute writer method with validation
    # @param [Object] status Value to be assigned
    def status=(status)
      if !status.nil? && !@status.null? && status.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"status\", the character length must be smaller than or equal to 5000.")
      end

      @status = status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.same?(o)
      self.class == o.class &&
        device_sw_version == o.device_sw_version &&
        device_type == o.device_type &&
        id == o.id &&
        ip_address == o.ip_address &&
        label == o.label &&
        livemode == o.livemode &&
        location == o.location &&
        metadata == o.metadata &&
        object == o.object &&
        serial_number == o.serial_number &&
        status == o.status
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [device_sw_version, device_type, id, ip_address, label, livemode, location, metadata, object, serial_number, status].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if !attributes[self.class.attribute_map[key]]? && self.class.openapi_nullable.includes?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        ({} of String => String).tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = Stripe.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {} of String => String
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.includes?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        ({} of String => String).tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
