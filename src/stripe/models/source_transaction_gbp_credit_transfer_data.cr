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
  class SourceTransactionGbpCreditTransferData
    include NASON::Serializable

    # Optional properties
    # Bank account fingerprint associated with the Stripe owned bank account receiving the transfer.
    @[NASON::Field(key: "fingerprint", type: String?, nillable: true)]
    property fingerprint : String?

    # The credit transfer rails the sender used to push this transfer. The possible rails are: Faster Payments, BACS, CHAPS, and wire transfers. Currently only Faster Payments is supported.
    @[NASON::Field(key: "funding_method", type: String?, nillable: true)]
    property funding_method : String?

    # Last 4 digits of sender account number associated with the transfer.
    @[NASON::Field(key: "last4", type: String?, nillable: true)]
    property last4 : String?

    # Sender entered arbitrary information about the transfer.
    @[NASON::Field(key: "reference", type: String?, nillable: true)]
    property reference : String?

    # Sender account number associated with the transfer.
    @[NASON::Field(key: "sender_account_number", type: String?, nillable: true)]
    property sender_account_number : String?

    # Sender name associated with the transfer.
    @[NASON::Field(key: "sender_name", type: String?, nillable: true)]
    property sender_name : String?

    # Sender sort code associated with the transfer.
    @[NASON::Field(key: "sender_sort_code", type: String?, nillable: true)]
    property sender_sort_code : String?

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(*, @fingerprint : String? = nil, @funding_method : String? = nil, @last4 : String? = nil, @reference : String? = nil, @sender_account_number : String? = nil, @sender_name : String? = nil, @sender_sort_code : String? = nil)
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      if !@fingerprint.nil? && @fingerprint.to_s.size > 5000
        invalid_properties.push("invalid value for \"fingerprint\", the character length must be smaller than or equal to 5000.")
      end

      if !@funding_method.nil? && @funding_method.to_s.size > 5000
        invalid_properties.push("invalid value for \"funding_method\", the character length must be smaller than or equal to 5000.")
      end

      if !@last4.nil? && @last4.to_s.size > 5000
        invalid_properties.push("invalid value for \"last4\", the character length must be smaller than or equal to 5000.")
      end

      if !@reference.nil? && @reference.to_s.size > 5000
        invalid_properties.push("invalid value for \"reference\", the character length must be smaller than or equal to 5000.")
      end

      if !@sender_account_number.nil? && @sender_account_number.to_s.size > 5000
        invalid_properties.push("invalid value for \"sender_account_number\", the character length must be smaller than or equal to 5000.")
      end

      if !@sender_name.nil? && @sender_name.to_s.size > 5000
        invalid_properties.push("invalid value for \"sender_name\", the character length must be smaller than or equal to 5000.")
      end

      if !@sender_sort_code.nil? && @sender_sort_code.to_s.size > 5000
        invalid_properties.push("invalid value for \"sender_sort_code\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@fingerprint.nil? && @fingerprint.to_s.size > 5000
      return false if !@funding_method.nil? && @funding_method.to_s.size > 5000
      return false if !@last4.nil? && @last4.to_s.size > 5000
      return false if !@reference.nil? && @reference.to_s.size > 5000
      return false if !@sender_account_number.nil? && @sender_account_number.to_s.size > 5000
      return false if !@sender_name.nil? && @sender_name.to_s.size > 5000
      return false if !@sender_sort_code.nil? && @sender_sort_code.to_s.size > 5000
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] fingerprint Value to be assigned
    def fingerprint=(fingerprint)
      if !fingerprint.nil? && fingerprint.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"fingerprint\", the character length must be smaller than or equal to 5000.")
      end

      @fingerprint = fingerprint
    end

    # Custom attribute writer method with validation
    # @param [Object] funding_method Value to be assigned
    def funding_method=(funding_method)
      if !funding_method.nil? && funding_method.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"funding_method\", the character length must be smaller than or equal to 5000.")
      end

      @funding_method = funding_method
    end

    # Custom attribute writer method with validation
    # @param [Object] last4 Value to be assigned
    def last4=(last4)
      if !last4.nil? && last4.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"last4\", the character length must be smaller than or equal to 5000.")
      end

      @last4 = last4
    end

    # Custom attribute writer method with validation
    # @param [Object] reference Value to be assigned
    def reference=(reference)
      if !reference.nil? && reference.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"reference\", the character length must be smaller than or equal to 5000.")
      end

      @reference = reference
    end

    # Custom attribute writer method with validation
    # @param [Object] sender_account_number Value to be assigned
    def sender_account_number=(sender_account_number)
      if !sender_account_number.nil? && sender_account_number.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"sender_account_number\", the character length must be smaller than or equal to 5000.")
      end

      @sender_account_number = sender_account_number
    end

    # Custom attribute writer method with validation
    # @param [Object] sender_name Value to be assigned
    def sender_name=(sender_name)
      if !sender_name.nil? && sender_name.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"sender_name\", the character length must be smaller than or equal to 5000.")
      end

      @sender_name = sender_name
    end

    # Custom attribute writer method with validation
    # @param [Object] sender_sort_code Value to be assigned
    def sender_sort_code=(sender_sort_code)
      if !sender_sort_code.nil? && sender_sort_code.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"sender_sort_code\", the character length must be smaller than or equal to 5000.")
      end

      @sender_sort_code = sender_sort_code
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.same?(o)
      self.class == o.class &&
        fingerprint == o.fingerprint &&
        funding_method == o.funding_method &&
        last4 == o.last4 &&
        reference == o.reference &&
        sender_account_number == o.sender_account_number &&
        sender_name == o.sender_name &&
        sender_sort_code == o.sender_sort_code
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [fingerprint, funding_method, last4, reference, sender_account_number, sender_name, sender_sort_code].hash
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
