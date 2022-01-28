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
  class AccountRequirements
    include NASON::Serializable

    # Optional properties
    # Fields that are due and can be satisfied by providing the corresponding alternative fields instead.
    @[NASON::Field(key: "alternatives", type: Array(AccountRequirementsAlternative)? | Null, nillable: true)]
    property alternatives : Array(AccountRequirementsAlternative)? | Null

    # Date by which the fields in `currently_due` must be collected to keep the account enabled. These fields may disable the account sooner if the next threshold is reached before they are collected.
    @[NASON::Field(key: "current_deadline", type: Int64? | Null, nillable: true)]
    property current_deadline : Int64? | Null

    # Fields that need to be collected to keep the account enabled. If not collected by `current_deadline`, these fields appear in `past_due` as well, and the account is disabled.
    @[NASON::Field(key: "currently_due", type: Array(String)? | Null, nillable: true)]
    property currently_due : Array(String)? | Null

    # If the account is disabled, this string describes why. Can be `requirements.past_due`, `requirements.pending_verification`, `listed`, `platform_paused`, `rejected.fraud`, `rejected.listed`, `rejected.terms_of_service`, `rejected.other`, `under_review`, or `other`.
    @[NASON::Field(key: "disabled_reason", type: String? | Null, nillable: true)]
    property disabled_reason : String? | Null

    # Fields that are `currently_due` and need to be collected again because validation or verification failed.
    @[NASON::Field(key: "errors", type: Array(AccountRequirementsError)? | Null, nillable: true)]
    property errors : Array(AccountRequirementsError)? | Null

    # Fields that need to be collected assuming all volume thresholds are reached. As they become required, they appear in `currently_due` as well, and `current_deadline` becomes set.
    @[NASON::Field(key: "eventually_due", type: Array(String)? | Null, nillable: true)]
    property eventually_due : Array(String)? | Null

    # Fields that weren't collected by `current_deadline`. These fields need to be collected to enable the account.
    @[NASON::Field(key: "past_due", type: Array(String)? | Null, nillable: true)]
    property past_due : Array(String)? | Null

    # Fields that may become required depending on the results of verification or review. Will be an empty array unless an asynchronous verification is pending. If verification fails, these fields move to `eventually_due`, `currently_due`, or `past_due`.
    @[NASON::Field(key: "pending_verification", type: Array(String)? | Null, nillable: true)]
    property pending_verification : Array(String)? | Null

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(*, @alternatives : Array(AccountRequirementsAlternative)? | Null = nil, @current_deadline : Int64? | Null = nil, @currently_due : Array(String)? | Null = nil, @disabled_reason : String? | Null = nil, @errors : Array(AccountRequirementsError)? | Null = nil, @eventually_due : Array(String)? | Null = nil, @past_due : Array(String)? | Null = nil, @pending_verification : Array(String)? | Null = nil)
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      if !@disabled_reason.nil? && !@disabled_reason.null? && @disabled_reason.to_s.size > 5000
        invalid_properties.push("invalid value for \"disabled_reason\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@disabled_reason.nil? && !@disabled_reason.null? && @disabled_reason.to_s.size > 5000
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] disabled_reason Value to be assigned
    def disabled_reason=(disabled_reason)
      if !disabled_reason.nil? && !@disabled_reason.null? && disabled_reason.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"disabled_reason\", the character length must be smaller than or equal to 5000.")
      end

      @disabled_reason = disabled_reason
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.same?(o)
      self.class == o.class &&
        alternatives == o.alternatives &&
        current_deadline == o.current_deadline &&
        currently_due == o.currently_due &&
        disabled_reason == o.disabled_reason &&
        errors == o.errors &&
        eventually_due == o.eventually_due &&
        past_due == o.past_due &&
        pending_verification == o.pending_verification
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [alternatives, current_deadline, currently_due, disabled_reason, errors, eventually_due, past_due, pending_verification].hash
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
