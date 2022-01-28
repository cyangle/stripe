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
  class PaymentMethodDetailsGiropay
    include NASON::Serializable

    # Optional properties
    # Bank code of bank associated with the bank account.
    @[NASON::Field(key: "bank_code", type: String? | Null, nillable: true)]
    property bank_code : String? | Null

    # Name of the bank associated with the bank account.
    @[NASON::Field(key: "bank_name", type: String? | Null, nillable: true)]
    property bank_name : String? | Null

    # Bank Identifier Code of the bank associated with the bank account.
    @[NASON::Field(key: "bic", type: String? | Null, nillable: true)]
    property bic : String? | Null

    # Owner's verified full name. Values are verified or provided by Giropay directly (if supported) at the time of authorization or settlement. They cannot be set or mutated. Giropay rarely provides this information so the attribute is usually empty.
    @[NASON::Field(key: "verified_name", type: String? | Null, nillable: true)]
    property verified_name : String? | Null

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(*, @bank_code : String? | Null = nil, @bank_name : String? | Null = nil, @bic : String? | Null = nil, @verified_name : String? | Null = nil)
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      if !@bank_code.nil? && !@bank_code.null? && @bank_code.to_s.size > 5000
        invalid_properties.push("invalid value for \"bank_code\", the character length must be smaller than or equal to 5000.")
      end

      if !@bank_name.nil? && !@bank_name.null? && @bank_name.to_s.size > 5000
        invalid_properties.push("invalid value for \"bank_name\", the character length must be smaller than or equal to 5000.")
      end

      if !@bic.nil? && !@bic.null? && @bic.to_s.size > 5000
        invalid_properties.push("invalid value for \"bic\", the character length must be smaller than or equal to 5000.")
      end

      if !@verified_name.nil? && !@verified_name.null? && @verified_name.to_s.size > 5000
        invalid_properties.push("invalid value for \"verified_name\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@bank_code.nil? && !@bank_code.null? && @bank_code.to_s.size > 5000
      return false if !@bank_name.nil? && !@bank_name.null? && @bank_name.to_s.size > 5000
      return false if !@bic.nil? && !@bic.null? && @bic.to_s.size > 5000
      return false if !@verified_name.nil? && !@verified_name.null? && @verified_name.to_s.size > 5000
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] bank_code Value to be assigned
    def bank_code=(bank_code)
      if !bank_code.nil? && !@bank_code.null? && bank_code.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"bank_code\", the character length must be smaller than or equal to 5000.")
      end

      @bank_code = bank_code
    end

    # Custom attribute writer method with validation
    # @param [Object] bank_name Value to be assigned
    def bank_name=(bank_name)
      if !bank_name.nil? && !@bank_name.null? && bank_name.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"bank_name\", the character length must be smaller than or equal to 5000.")
      end

      @bank_name = bank_name
    end

    # Custom attribute writer method with validation
    # @param [Object] bic Value to be assigned
    def bic=(bic)
      if !bic.nil? && !@bic.null? && bic.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"bic\", the character length must be smaller than or equal to 5000.")
      end

      @bic = bic
    end

    # Custom attribute writer method with validation
    # @param [Object] verified_name Value to be assigned
    def verified_name=(verified_name)
      if !verified_name.nil? && !@verified_name.null? && verified_name.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"verified_name\", the character length must be smaller than or equal to 5000.")
      end

      @verified_name = verified_name
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.same?(o)
      self.class == o.class &&
        bank_code == o.bank_code &&
        bank_name == o.bank_name &&
        bic == o.bic &&
        verified_name == o.verified_name
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [bank_code, bank_name, bic, verified_name].hash
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
