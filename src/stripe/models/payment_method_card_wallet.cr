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
  class PaymentMethodCardWallet
    include NASON::Serializable

    # Required properties
    # The type of the card wallet, one of `amex_express_checkout`, `apple_pay`, `google_pay`, `masterpass`, `samsung_pay`, or `visa_checkout`. An additional hash is included on the Wallet subhash with a name matching this value. It contains additional information specific to the card wallet type.
    @[NASON::Field(key: "type", type: String)]
    property _type : String

    # Optional properties
    @[NASON::Field(key: "amex_express_checkout", type: NASON::Any?, nillable: true)]
    property amex_express_checkout : NASON::Any?

    @[NASON::Field(key: "apple_pay", type: NASON::Any?, nillable: true)]
    property apple_pay : NASON::Any?

    # (For tokenized numbers only.) The last four digits of the device account number.
    @[NASON::Field(key: "dynamic_last4", type: String? | Null, nillable: true)]
    property dynamic_last4 : String? | Null

    @[NASON::Field(key: "google_pay", type: NASON::Any?, nillable: true)]
    property google_pay : NASON::Any?

    @[NASON::Field(key: "masterpass", type: PaymentMethodCardWalletMasterpass?, nillable: true)]
    property masterpass : PaymentMethodCardWalletMasterpass?

    @[NASON::Field(key: "samsung_pay", type: NASON::Any?, nillable: true)]
    property samsung_pay : NASON::Any?

    @[NASON::Field(key: "visa_checkout", type: PaymentMethodCardWalletVisaCheckout?, nillable: true)]
    property visa_checkout : PaymentMethodCardWalletVisaCheckout?

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
    def initialize(*, @_type : String, @amex_express_checkout : NASON::Any? = nil, @apple_pay : NASON::Any? = nil, @dynamic_last4 : String? | Null = nil, @google_pay : NASON::Any? = nil, @masterpass : PaymentMethodCardWalletMasterpass? = nil, @samsung_pay : NASON::Any? = nil, @visa_checkout : PaymentMethodCardWalletVisaCheckout? = nil)
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      if !@dynamic_last4.nil? && !@dynamic_last4.null? && @dynamic_last4.to_s.size > 5000
        invalid_properties.push("invalid value for \"dynamic_last4\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@dynamic_last4.nil? && !@dynamic_last4.null? && @dynamic_last4.to_s.size > 5000
      _type_validator = EnumAttributeValidator.new("String", ["amex_express_checkout", "apple_pay", "google_pay", "masterpass", "samsung_pay", "visa_checkout"])
      return false unless _type_validator.valid?(@_type)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] dynamic_last4 Value to be assigned
    def dynamic_last4=(dynamic_last4)
      if !dynamic_last4.nil? && !@dynamic_last4.null? && dynamic_last4.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"dynamic_last4\", the character length must be smaller than or equal to 5000.")
      end

      @dynamic_last4 = dynamic_last4
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(_type)
      validator = EnumAttributeValidator.new("String", ["amex_express_checkout", "apple_pay", "google_pay", "masterpass", "samsung_pay", "visa_checkout"])
      unless validator.valid?(_type)
        raise ArgumentError.new("invalid value for \"_type\", must be one of #{validator.allowable_values}.")
      end
      @_type = _type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.same?(o)
      self.class == o.class &&
        amex_express_checkout == o.amex_express_checkout &&
        apple_pay == o.apple_pay &&
        dynamic_last4 == o.dynamic_last4 &&
        google_pay == o.google_pay &&
        masterpass == o.masterpass &&
        samsung_pay == o.samsung_pay &&
        _type == o._type &&
        visa_checkout == o.visa_checkout
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [amex_express_checkout, apple_pay, dynamic_last4, google_pay, masterpass, samsung_pay, _type, visa_checkout].hash
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