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
  # A portal configuration describes the functionality and behavior of a portal session.
  class BillingPortalConfiguration
    include NASON::Serializable

    # Required properties
    # Whether the configuration is active and can be used to create portal sessions.
    @[NASON::Field(key: "active", type: Bool)]
    property active : Bool

    @[NASON::Field(key: "business_profile", type: PortalBusinessProfile)]
    property business_profile : PortalBusinessProfile

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[NASON::Field(key: "created", type: Int64)]
    property created : Int64

    @[NASON::Field(key: "features", type: PortalFeatures)]
    property features : PortalFeatures

    # Unique identifier for the object.
    @[NASON::Field(key: "id", type: String)]
    property id : String

    # Whether the configuration is the default. If `true`, this configuration can be managed in the Dashboard and portal sessions will use this configuration unless it is overriden when creating the session.
    @[NASON::Field(key: "is_default", type: Bool)]
    property is_default : Bool

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[NASON::Field(key: "livemode", type: Bool)]
    property livemode : Bool

    # String representing the object's type. Objects of the same type share the same value.
    @[NASON::Field(key: "object", type: String)]
    property object : String

    # Time at which the object was last updated. Measured in seconds since the Unix epoch.
    @[NASON::Field(key: "updated", type: Int64)]
    property updated : Int64

    # Optional properties
    # ID of the Connect Application that created the configuration.
    @[NASON::Field(key: "application", type: String? | Null, nillable: true)]
    property application : String? | Null

    # The default URL to redirect customers to when they click on the portal's link to return to your website. This can be [overriden](https://stripe.com/docs/api/customer_portal/sessions/create#create_portal_session-return_url) when creating the session.
    @[NASON::Field(key: "default_return_url", type: String? | Null, nillable: true)]
    property default_return_url : String? | Null

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    @[NASON::Field(key: "metadata", type: Hash(String, String)? | Null, nillable: true)]
    property metadata : Hash(String, String)? | Null

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
    def initialize(*, @active : Bool, @business_profile : PortalBusinessProfile, @created : Int64, @features : PortalFeatures, @id : String, @is_default : Bool, @livemode : Bool, @object : String, @updated : Int64, @application : String? | Null = nil, @default_return_url : String? | Null = nil, @metadata : Hash(String, String)? | Null = nil)
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      if !@application.nil? && !@application.null? && @application.to_s.size > 5000
        invalid_properties.push("invalid value for \"application\", the character length must be smaller than or equal to 5000.")
      end

      if !@default_return_url.nil? && !@default_return_url.null? && @default_return_url.to_s.size > 5000
        invalid_properties.push("invalid value for \"default_return_url\", the character length must be smaller than or equal to 5000.")
      end

      if @id.to_s.size > 5000
        invalid_properties.push("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@application.nil? && !@application.null? && @application.to_s.size > 5000
      return false if !@default_return_url.nil? && !@default_return_url.null? && @default_return_url.to_s.size > 5000
      return false if @id.to_s.size > 5000
      object_validator = EnumAttributeValidator.new("String", ["billing_portal.configuration"])
      return false unless object_validator.valid?(@object)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] application Value to be assigned
    def application=(application)
      if !application.nil? && !@application.null? && application.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"application\", the character length must be smaller than or equal to 5000.")
      end

      @application = application
    end

    # Custom attribute writer method with validation
    # @param [Object] default_return_url Value to be assigned
    def default_return_url=(default_return_url)
      if !default_return_url.nil? && !@default_return_url.null? && default_return_url.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"default_return_url\", the character length must be smaller than or equal to 5000.")
      end

      @default_return_url = default_return_url
    end

    # Custom attribute writer method with validation
    # @param [Object] id Value to be assigned
    def id=(id)
      if id.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      @id = id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object)
      validator = EnumAttributeValidator.new("String", ["billing_portal.configuration"])
      unless validator.valid?(object)
        raise ArgumentError.new("invalid value for \"object\", must be one of #{validator.allowable_values}.")
      end
      @object = object
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.same?(o)
      self.class == o.class &&
        active == o.active &&
        application == o.application &&
        business_profile == o.business_profile &&
        created == o.created &&
        default_return_url == o.default_return_url &&
        features == o.features &&
        id == o.id &&
        is_default == o.is_default &&
        livemode == o.livemode &&
        metadata == o.metadata &&
        object == o.object &&
        updated == o.updated
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [active, application, business_profile, created, default_return_url, features, id, is_default, livemode, metadata, object, updated].hash
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
