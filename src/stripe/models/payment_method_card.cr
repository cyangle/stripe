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
  class PaymentMethodCard
    include NASON::Serializable

    # Required properties
    # Card brand. Can be `amex`, `diners`, `discover`, `jcb`, `mastercard`, `unionpay`, `visa`, or `unknown`.
    @[NASON::Field(key: "brand", type: String)]
    property brand : String

    # Two-digit number representing the card's expiration month.
    @[NASON::Field(key: "exp_month", type: Int64)]
    property exp_month : Int64

    # Four-digit number representing the card's expiration year.
    @[NASON::Field(key: "exp_year", type: Int64)]
    property exp_year : Int64

    # Card funding type. Can be `credit`, `debit`, `prepaid`, or `unknown`.
    @[NASON::Field(key: "funding", type: String)]
    property funding : String

    # The last four digits of the card.
    @[NASON::Field(key: "last4", type: String)]
    property last4 : String

    # Optional properties
    # Checks on Card address and CVC if provided.
    @[NASON::Field(key: "checks", type: PaymentMethodCardChecks? | Null, nillable: true)]
    property checks : PaymentMethodCardChecks? | Null

    # Two-letter ISO code representing the country of the card. You could use this attribute to get a sense of the international breakdown of cards you've collected.
    @[NASON::Field(key: "country", type: String? | Null, nillable: true)]
    property country : String? | Null

    # Uniquely identifies this particular card number. You can use this attribute to check whether two customers who’ve signed up with you are using the same card number, for example. For payment methods that tokenize card information (Apple Pay, Google Pay), the tokenized number might be provided instead of the underlying card number.  *Starting May 1, 2021, card fingerprint in India for Connect will change to allow two fingerprints for the same card --- one for India and one for the rest of the world.*
    @[NASON::Field(key: "fingerprint", type: String? | Null, nillable: true)]
    property fingerprint : String? | Null

    # Details of the original PaymentMethod that created this object.
    @[NASON::Field(key: "generated_from", type: PaymentMethodCardGeneratedCard? | Null, nillable: true)]
    property generated_from : PaymentMethodCardGeneratedCard? | Null

    # Contains information about card networks that can be used to process the payment.
    @[NASON::Field(key: "networks", type: Networks? | Null, nillable: true)]
    property networks : Networks? | Null

    # Contains details on how this Card maybe be used for 3D Secure authentication.
    @[NASON::Field(key: "three_d_secure_usage", type: ThreeDSecureUsage? | Null, nillable: true)]
    property three_d_secure_usage : ThreeDSecureUsage? | Null

    # If this Card is part of a card wallet, this contains the details of the card wallet.
    @[NASON::Field(key: "wallet", type: PaymentMethodCardWallet? | Null, nillable: true)]
    property wallet : PaymentMethodCardWallet? | Null

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(*, @brand : String, @exp_month : Int64, @exp_year : Int64, @funding : String, @last4 : String, @checks : PaymentMethodCardChecks? | Null = nil, @country : String? | Null = nil, @fingerprint : String? | Null = nil, @generated_from : PaymentMethodCardGeneratedCard? | Null = nil, @networks : Networks? | Null = nil, @three_d_secure_usage : ThreeDSecureUsage? | Null = nil, @wallet : PaymentMethodCardWallet? | Null = nil)
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      if @brand.to_s.size > 5000
        invalid_properties.push("invalid value for \"brand\", the character length must be smaller than or equal to 5000.")
      end

      if !@country.nil? && !@country.null? && @country.to_s.size > 5000
        invalid_properties.push("invalid value for \"country\", the character length must be smaller than or equal to 5000.")
      end

      if !@fingerprint.nil? && !@fingerprint.null? && @fingerprint.to_s.size > 5000
        invalid_properties.push("invalid value for \"fingerprint\", the character length must be smaller than or equal to 5000.")
      end

      if @funding.to_s.size > 5000
        invalid_properties.push("invalid value for \"funding\", the character length must be smaller than or equal to 5000.")
      end

      if @last4.to_s.size > 5000
        invalid_properties.push("invalid value for \"last4\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @brand.to_s.size > 5000
      return false if !@country.nil? && !@country.null? && @country.to_s.size > 5000
      return false if !@fingerprint.nil? && !@fingerprint.null? && @fingerprint.to_s.size > 5000
      return false if @funding.to_s.size > 5000
      return false if @last4.to_s.size > 5000
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] brand Value to be assigned
    def brand=(brand)
      if brand.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"brand\", the character length must be smaller than or equal to 5000.")
      end

      @brand = brand
    end

    # Custom attribute writer method with validation
    # @param [Object] country Value to be assigned
    def country=(country)
      if !country.nil? && !@country.null? && country.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"country\", the character length must be smaller than or equal to 5000.")
      end

      @country = country
    end

    # Custom attribute writer method with validation
    # @param [Object] fingerprint Value to be assigned
    def fingerprint=(fingerprint)
      if !fingerprint.nil? && !@fingerprint.null? && fingerprint.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"fingerprint\", the character length must be smaller than or equal to 5000.")
      end

      @fingerprint = fingerprint
    end

    # Custom attribute writer method with validation
    # @param [Object] funding Value to be assigned
    def funding=(funding)
      if funding.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"funding\", the character length must be smaller than or equal to 5000.")
      end

      @funding = funding
    end

    # Custom attribute writer method with validation
    # @param [Object] last4 Value to be assigned
    def last4=(last4)
      if last4.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"last4\", the character length must be smaller than or equal to 5000.")
      end

      @last4 = last4
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.same?(o)
      self.class == o.class &&
        brand == o.brand &&
        checks == o.checks &&
        country == o.country &&
        exp_month == o.exp_month &&
        exp_year == o.exp_year &&
        fingerprint == o.fingerprint &&
        funding == o.funding &&
        generated_from == o.generated_from &&
        last4 == o.last4 &&
        networks == o.networks &&
        three_d_secure_usage == o.three_d_secure_usage &&
        wallet == o.wallet
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [brand, checks, country, exp_month, exp_year, fingerprint, funding, generated_from, last4, networks, three_d_secure_usage, wallet].hash
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