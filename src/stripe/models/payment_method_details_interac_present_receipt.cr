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
  class PaymentMethodDetailsInteracPresentReceipt
    include NASON::Serializable

    # Optional properties
    # The type of account being debited or credited
    @[NASON::Field(key: "account_type", type: String?, nillable: true)]
    property account_type : String?

    # EMV tag 9F26, cryptogram generated by the integrated circuit chip.
    @[NASON::Field(key: "application_cryptogram", type: String? | Null, nillable: true)]
    property application_cryptogram : String? | Null

    # Mnenomic of the Application Identifier.
    @[NASON::Field(key: "application_preferred_name", type: String? | Null, nillable: true)]
    property application_preferred_name : String? | Null

    # Identifier for this transaction.
    @[NASON::Field(key: "authorization_code", type: String? | Null, nillable: true)]
    property authorization_code : String? | Null

    # EMV tag 8A. A code returned by the card issuer.
    @[NASON::Field(key: "authorization_response_code", type: String? | Null, nillable: true)]
    property authorization_response_code : String? | Null

    # How the cardholder verified ownership of the card.
    @[NASON::Field(key: "cardholder_verification_method", type: String? | Null, nillable: true)]
    property cardholder_verification_method : String? | Null

    # EMV tag 84. Similar to the application identifier stored on the integrated circuit chip.
    @[NASON::Field(key: "dedicated_file_name", type: String? | Null, nillable: true)]
    property dedicated_file_name : String? | Null

    # The outcome of a series of EMV functions performed by the card reader.
    @[NASON::Field(key: "terminal_verification_results", type: String? | Null, nillable: true)]
    property terminal_verification_results : String? | Null

    # An indication of various EMV functions performed during the transaction.
    @[NASON::Field(key: "transaction_status_information", type: String? | Null, nillable: true)]
    property transaction_status_information : String? | Null

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
    def initialize(*, @account_type : String? = nil, @application_cryptogram : String? | Null = nil, @application_preferred_name : String? | Null = nil, @authorization_code : String? | Null = nil, @authorization_response_code : String? | Null = nil, @cardholder_verification_method : String? | Null = nil, @dedicated_file_name : String? | Null = nil, @terminal_verification_results : String? | Null = nil, @transaction_status_information : String? | Null = nil)
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      if !@application_cryptogram.nil? && !@application_cryptogram.null? && @application_cryptogram.to_s.size > 5000
        invalid_properties.push("invalid value for \"application_cryptogram\", the character length must be smaller than or equal to 5000.")
      end

      if !@application_preferred_name.nil? && !@application_preferred_name.null? && @application_preferred_name.to_s.size > 5000
        invalid_properties.push("invalid value for \"application_preferred_name\", the character length must be smaller than or equal to 5000.")
      end

      if !@authorization_code.nil? && !@authorization_code.null? && @authorization_code.to_s.size > 5000
        invalid_properties.push("invalid value for \"authorization_code\", the character length must be smaller than or equal to 5000.")
      end

      if !@authorization_response_code.nil? && !@authorization_response_code.null? && @authorization_response_code.to_s.size > 5000
        invalid_properties.push("invalid value for \"authorization_response_code\", the character length must be smaller than or equal to 5000.")
      end

      if !@cardholder_verification_method.nil? && !@cardholder_verification_method.null? && @cardholder_verification_method.to_s.size > 5000
        invalid_properties.push("invalid value for \"cardholder_verification_method\", the character length must be smaller than or equal to 5000.")
      end

      if !@dedicated_file_name.nil? && !@dedicated_file_name.null? && @dedicated_file_name.to_s.size > 5000
        invalid_properties.push("invalid value for \"dedicated_file_name\", the character length must be smaller than or equal to 5000.")
      end

      if !@terminal_verification_results.nil? && !@terminal_verification_results.null? && @terminal_verification_results.to_s.size > 5000
        invalid_properties.push("invalid value for \"terminal_verification_results\", the character length must be smaller than or equal to 5000.")
      end

      if !@transaction_status_information.nil? && !@transaction_status_information.null? && @transaction_status_information.to_s.size > 5000
        invalid_properties.push("invalid value for \"transaction_status_information\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      account_type_validator = EnumAttributeValidator.new("String", ["checking", "savings", "unknown"])
      return false unless account_type_validator.valid?(@account_type)
      return false if !@application_cryptogram.nil? && !@application_cryptogram.null? && @application_cryptogram.to_s.size > 5000
      return false if !@application_preferred_name.nil? && !@application_preferred_name.null? && @application_preferred_name.to_s.size > 5000
      return false if !@authorization_code.nil? && !@authorization_code.null? && @authorization_code.to_s.size > 5000
      return false if !@authorization_response_code.nil? && !@authorization_response_code.null? && @authorization_response_code.to_s.size > 5000
      return false if !@cardholder_verification_method.nil? && !@cardholder_verification_method.null? && @cardholder_verification_method.to_s.size > 5000
      return false if !@dedicated_file_name.nil? && !@dedicated_file_name.null? && @dedicated_file_name.to_s.size > 5000
      return false if !@terminal_verification_results.nil? && !@terminal_verification_results.null? && @terminal_verification_results.to_s.size > 5000
      return false if !@transaction_status_information.nil? && !@transaction_status_information.null? && @transaction_status_information.to_s.size > 5000
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account_type Object to be assigned
    def account_type=(account_type)
      validator = EnumAttributeValidator.new("String", ["checking", "savings", "unknown"])
      unless validator.valid?(account_type)
        raise ArgumentError.new("invalid value for \"account_type\", must be one of #{validator.allowable_values}.")
      end
      @account_type = account_type
    end

    # Custom attribute writer method with validation
    # @param [Object] application_cryptogram Value to be assigned
    def application_cryptogram=(application_cryptogram)
      if !application_cryptogram.nil? && !@application_cryptogram.null? && application_cryptogram.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"application_cryptogram\", the character length must be smaller than or equal to 5000.")
      end

      @application_cryptogram = application_cryptogram
    end

    # Custom attribute writer method with validation
    # @param [Object] application_preferred_name Value to be assigned
    def application_preferred_name=(application_preferred_name)
      if !application_preferred_name.nil? && !@application_preferred_name.null? && application_preferred_name.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"application_preferred_name\", the character length must be smaller than or equal to 5000.")
      end

      @application_preferred_name = application_preferred_name
    end

    # Custom attribute writer method with validation
    # @param [Object] authorization_code Value to be assigned
    def authorization_code=(authorization_code)
      if !authorization_code.nil? && !@authorization_code.null? && authorization_code.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"authorization_code\", the character length must be smaller than or equal to 5000.")
      end

      @authorization_code = authorization_code
    end

    # Custom attribute writer method with validation
    # @param [Object] authorization_response_code Value to be assigned
    def authorization_response_code=(authorization_response_code)
      if !authorization_response_code.nil? && !@authorization_response_code.null? && authorization_response_code.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"authorization_response_code\", the character length must be smaller than or equal to 5000.")
      end

      @authorization_response_code = authorization_response_code
    end

    # Custom attribute writer method with validation
    # @param [Object] cardholder_verification_method Value to be assigned
    def cardholder_verification_method=(cardholder_verification_method)
      if !cardholder_verification_method.nil? && !@cardholder_verification_method.null? && cardholder_verification_method.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"cardholder_verification_method\", the character length must be smaller than or equal to 5000.")
      end

      @cardholder_verification_method = cardholder_verification_method
    end

    # Custom attribute writer method with validation
    # @param [Object] dedicated_file_name Value to be assigned
    def dedicated_file_name=(dedicated_file_name)
      if !dedicated_file_name.nil? && !@dedicated_file_name.null? && dedicated_file_name.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"dedicated_file_name\", the character length must be smaller than or equal to 5000.")
      end

      @dedicated_file_name = dedicated_file_name
    end

    # Custom attribute writer method with validation
    # @param [Object] terminal_verification_results Value to be assigned
    def terminal_verification_results=(terminal_verification_results)
      if !terminal_verification_results.nil? && !@terminal_verification_results.null? && terminal_verification_results.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"terminal_verification_results\", the character length must be smaller than or equal to 5000.")
      end

      @terminal_verification_results = terminal_verification_results
    end

    # Custom attribute writer method with validation
    # @param [Object] transaction_status_information Value to be assigned
    def transaction_status_information=(transaction_status_information)
      if !transaction_status_information.nil? && !@transaction_status_information.null? && transaction_status_information.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"transaction_status_information\", the character length must be smaller than or equal to 5000.")
      end

      @transaction_status_information = transaction_status_information
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.same?(o)
      self.class == o.class &&
        account_type == o.account_type &&
        application_cryptogram == o.application_cryptogram &&
        application_preferred_name == o.application_preferred_name &&
        authorization_code == o.authorization_code &&
        authorization_response_code == o.authorization_response_code &&
        cardholder_verification_method == o.cardholder_verification_method &&
        dedicated_file_name == o.dedicated_file_name &&
        terminal_verification_results == o.terminal_verification_results &&
        transaction_status_information == o.transaction_status_information
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [account_type, application_cryptogram, application_preferred_name, authorization_code, authorization_response_code, cardholder_verification_method, dedicated_file_name, terminal_verification_results, transaction_status_information].hash
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
