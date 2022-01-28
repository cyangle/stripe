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
  class ApiErrors
    include NASON::Serializable

    # Required properties
    # The type of error returned. One of `api_error`, `card_error`, `idempotency_error`, or `invalid_request_error`
    @[NASON::Field(key: "type", type: String)]
    property _type : String

    # Optional properties
    # For card errors, the ID of the failed charge.
    @[NASON::Field(key: "charge", type: String?, nillable: true)]
    property charge : String?

    # For some errors that could be handled programmatically, a short string indicating the [error code](https://stripe.com/docs/error-codes) reported.
    @[NASON::Field(key: "code", type: String?, nillable: true)]
    property code : String?

    # For card errors resulting from a card issuer decline, a short string indicating the [card issuer's reason for the decline](https://stripe.com/docs/declines#issuer-declines) if they provide one.
    @[NASON::Field(key: "decline_code", type: String?, nillable: true)]
    property decline_code : String?

    # A URL to more information about the [error code](https://stripe.com/docs/error-codes) reported.
    @[NASON::Field(key: "doc_url", type: String?, nillable: true)]
    property doc_url : String?

    # A human-readable message providing more details about the error. For card errors, these messages can be shown to your users.
    @[NASON::Field(key: "message", type: String?, nillable: true)]
    property message : String?

    # If the error is parameter-specific, the parameter related to the error. For example, you can use this to display a message near the correct form field.
    @[NASON::Field(key: "param", type: String?, nillable: true)]
    property param : String?

    @[NASON::Field(key: "payment_intent", type: PaymentIntent?, nillable: true)]
    property payment_intent : PaymentIntent?

    @[NASON::Field(key: "payment_method", type: PaymentMethod?, nillable: true)]
    property payment_method : PaymentMethod?

    # If the error is specific to the type of payment method, the payment method type that had a problem. This field is only populated for invoice-related errors.
    @[NASON::Field(key: "payment_method_type", type: String?, nillable: true)]
    property payment_method_type : String?

    @[NASON::Field(key: "setup_intent", type: SetupIntent?, nillable: true)]
    property setup_intent : SetupIntent?

    # The source object for errors returned on a request involving a source.
    @[NASON::Field(key: "source", type: BankAccount | Card | Source? | Null, nillable: true)]
    property source : BankAccount | Card | Source? | Null

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
    def initialize(*, @_type : String, @charge : String? = nil, @code : String? = nil, @decline_code : String? = nil, @doc_url : String? = nil, @message : String? = nil, @param : String? = nil, @payment_intent : PaymentIntent? = nil, @payment_method : PaymentMethod? = nil, @payment_method_type : String? = nil, @setup_intent : SetupIntent? = nil, @source : BankAccount | Card | Source? | Null = nil)
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      if !@charge.nil? && @charge.to_s.size > 5000
        invalid_properties.push("invalid value for \"charge\", the character length must be smaller than or equal to 5000.")
      end

      if !@code.nil? && @code.to_s.size > 5000
        invalid_properties.push("invalid value for \"code\", the character length must be smaller than or equal to 5000.")
      end

      if !@decline_code.nil? && @decline_code.to_s.size > 5000
        invalid_properties.push("invalid value for \"decline_code\", the character length must be smaller than or equal to 5000.")
      end

      if !@doc_url.nil? && @doc_url.to_s.size > 5000
        invalid_properties.push("invalid value for \"doc_url\", the character length must be smaller than or equal to 5000.")
      end

      if !@message.nil? && @message.to_s.size > 40000
        invalid_properties.push("invalid value for \"message\", the character length must be smaller than or equal to 40000.")
      end

      if !@param.nil? && @param.to_s.size > 5000
        invalid_properties.push("invalid value for \"param\", the character length must be smaller than or equal to 5000.")
      end

      if !@payment_method_type.nil? && @payment_method_type.to_s.size > 5000
        invalid_properties.push("invalid value for \"payment_method_type\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@charge.nil? && @charge.to_s.size > 5000
      return false if !@code.nil? && @code.to_s.size > 5000
      return false if !@decline_code.nil? && @decline_code.to_s.size > 5000
      return false if !@doc_url.nil? && @doc_url.to_s.size > 5000
      return false if !@message.nil? && @message.to_s.size > 40000
      return false if !@param.nil? && @param.to_s.size > 5000
      return false if !@payment_method_type.nil? && @payment_method_type.to_s.size > 5000
      _type_validator = EnumAttributeValidator.new("String", ["api_error", "card_error", "idempotency_error", "invalid_request_error"])
      return false unless _type_validator.valid?(@_type)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] charge Value to be assigned
    def charge=(charge)
      if !charge.nil? && charge.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"charge\", the character length must be smaller than or equal to 5000.")
      end

      @charge = charge
    end

    # Custom attribute writer method with validation
    # @param [Object] code Value to be assigned
    def code=(code)
      if !code.nil? && code.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"code\", the character length must be smaller than or equal to 5000.")
      end

      @code = code
    end

    # Custom attribute writer method with validation
    # @param [Object] decline_code Value to be assigned
    def decline_code=(decline_code)
      if !decline_code.nil? && decline_code.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"decline_code\", the character length must be smaller than or equal to 5000.")
      end

      @decline_code = decline_code
    end

    # Custom attribute writer method with validation
    # @param [Object] doc_url Value to be assigned
    def doc_url=(doc_url)
      if !doc_url.nil? && doc_url.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"doc_url\", the character length must be smaller than or equal to 5000.")
      end

      @doc_url = doc_url
    end

    # Custom attribute writer method with validation
    # @param [Object] message Value to be assigned
    def message=(message)
      if !message.nil? && message.to_s.size > 40000
        raise ArgumentError.new("invalid value for \"message\", the character length must be smaller than or equal to 40000.")
      end

      @message = message
    end

    # Custom attribute writer method with validation
    # @param [Object] param Value to be assigned
    def param=(param)
      if !param.nil? && param.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"param\", the character length must be smaller than or equal to 5000.")
      end

      @param = param
    end

    # Custom attribute writer method with validation
    # @param [Object] payment_method_type Value to be assigned
    def payment_method_type=(payment_method_type)
      if !payment_method_type.nil? && payment_method_type.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"payment_method_type\", the character length must be smaller than or equal to 5000.")
      end

      @payment_method_type = payment_method_type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(_type)
      validator = EnumAttributeValidator.new("String", ["api_error", "card_error", "idempotency_error", "invalid_request_error"])
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
        charge == o.charge &&
        code == o.code &&
        decline_code == o.decline_code &&
        doc_url == o.doc_url &&
        message == o.message &&
        param == o.param &&
        payment_intent == o.payment_intent &&
        payment_method == o.payment_method &&
        payment_method_type == o.payment_method_type &&
        setup_intent == o.setup_intent &&
        source == o.source &&
        _type == o._type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [charge, code, decline_code, doc_url, message, param, payment_intent, payment_method, payment_method_type, setup_intent, source, _type].hash
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