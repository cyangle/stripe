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
  class IssuingDisputeMerchandiseNotAsDescribedEvidence
    include NASON::Serializable

    # Optional properties
    # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) Additional documentation supporting the dispute.
    @[NASON::Field(key: "additional_documentation", type: String | File? | Null, nillable: true)]
    property additional_documentation : String | File? | Null

    # Explanation of why the cardholder is disputing this transaction.
    @[NASON::Field(key: "explanation", type: String? | Null, nillable: true)]
    property explanation : String? | Null

    # Date when the product was received.
    @[NASON::Field(key: "received_at", type: Int64? | Null, nillable: true)]
    property received_at : Int64? | Null

    # Description of the cardholder's attempt to return the product.
    @[NASON::Field(key: "return_description", type: String? | Null, nillable: true)]
    property return_description : String? | Null

    # Result of cardholder's attempt to return the product.
    @[NASON::Field(key: "return_status", type: String? | Null, nillable: true)]
    property return_status : String? | Null

    # Date when the product was returned or attempted to be returned.
    @[NASON::Field(key: "returned_at", type: Int64? | Null, nillable: true)]
    property returned_at : Int64? | Null

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
    def initialize(*, @additional_documentation : String | File? | Null = nil, @explanation : String? | Null = nil, @received_at : Int64? | Null = nil, @return_description : String? | Null = nil, @return_status : String? | Null = nil, @returned_at : Int64? | Null = nil)
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      if !@explanation.nil? && !@explanation.null? && @explanation.to_s.size > 5000
        invalid_properties.push("invalid value for \"explanation\", the character length must be smaller than or equal to 5000.")
      end

      if !@return_description.nil? && !@return_description.null? && @return_description.to_s.size > 5000
        invalid_properties.push("invalid value for \"return_description\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@explanation.nil? && !@explanation.null? && @explanation.to_s.size > 5000
      return false if !@return_description.nil? && !@return_description.null? && @return_description.to_s.size > 5000
      return_status_validator = EnumAttributeValidator.new("String", ["merchant_rejected", "successful"])
      return false unless return_status_validator.valid?(@return_status)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] explanation Value to be assigned
    def explanation=(explanation)
      if !explanation.nil? && !@explanation.null? && explanation.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"explanation\", the character length must be smaller than or equal to 5000.")
      end

      @explanation = explanation
    end

    # Custom attribute writer method with validation
    # @param [Object] return_description Value to be assigned
    def return_description=(return_description)
      if !return_description.nil? && !@return_description.null? && return_description.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"return_description\", the character length must be smaller than or equal to 5000.")
      end

      @return_description = return_description
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] return_status Object to be assigned
    def return_status=(return_status)
      validator = EnumAttributeValidator.new("String", ["merchant_rejected", "successful"])
      unless validator.valid?(return_status)
        raise ArgumentError.new("invalid value for \"return_status\", must be one of #{validator.allowable_values}.")
      end
      @return_status = return_status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.same?(o)
      self.class == o.class &&
        additional_documentation == o.additional_documentation &&
        explanation == o.explanation &&
        received_at == o.received_at &&
        return_description == o.return_description &&
        return_status == o.return_status &&
        returned_at == o.returned_at
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [additional_documentation, explanation, received_at, return_description, return_status, returned_at].hash
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