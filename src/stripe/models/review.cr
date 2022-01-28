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
  # Reviews can be used to supplement automated fraud detection with human expertise.  Learn more about [Radar](/radar) and reviewing payments [here](https://stripe.com/docs/radar/reviews).
  class Review
    include NASON::Serializable

    # Required properties
    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[NASON::Field(key: "created", type: Int64)]
    property created : Int64

    # Unique identifier for the object.
    @[NASON::Field(key: "id", type: String)]
    property id : String

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[NASON::Field(key: "livemode", type: Bool)]
    property livemode : Bool

    # String representing the object's type. Objects of the same type share the same value.
    @[NASON::Field(key: "object", type: String)]
    property object : String

    # If `true`, the review needs action.
    @[NASON::Field(key: "open", type: Bool)]
    property open : Bool

    # The reason the review was opened. One of `rule` or `manual`.
    @[NASON::Field(key: "opened_reason", type: String)]
    property opened_reason : String

    # The reason the review is currently open or closed. One of `rule`, `manual`, `approved`, `refunded`, `refunded_as_fraud`, `disputed`, or `redacted`.
    @[NASON::Field(key: "reason", type: String)]
    property reason : String

    # Optional properties
    # The ZIP or postal code of the card used, if applicable.
    @[NASON::Field(key: "billing_zip", type: String? | Null, nillable: true)]
    property billing_zip : String? | Null

    # The charge associated with this review.
    @[NASON::Field(key: "charge", type: String | Charge? | Null, nillable: true)]
    property charge : String | Charge? | Null

    # The reason the review was closed, or null if it has not yet been closed. One of `approved`, `refunded`, `refunded_as_fraud`, `disputed`, or `redacted`.
    @[NASON::Field(key: "closed_reason", type: String? | Null, nillable: true)]
    property closed_reason : String? | Null

    # The IP address where the payment originated.
    @[NASON::Field(key: "ip_address", type: String? | Null, nillable: true)]
    property ip_address : String? | Null

    # Information related to the location of the payment. Note that this information is an approximation and attempts to locate the nearest population center - it should not be used to determine a specific address.
    @[NASON::Field(key: "ip_address_location", type: RadarReviewResourceLocation? | Null, nillable: true)]
    property ip_address_location : RadarReviewResourceLocation? | Null

    # The PaymentIntent ID associated with this review, if one exists.
    @[NASON::Field(key: "payment_intent", type: String | PaymentIntent? | Null, nillable: true)]
    property payment_intent : String | PaymentIntent? | Null

    # Information related to the browsing session of the user who initiated the payment.
    @[NASON::Field(key: "session", type: RadarReviewResourceSession? | Null, nillable: true)]
    property session : RadarReviewResourceSession? | Null

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
    def initialize(*, @created : Int64, @id : String, @livemode : Bool, @object : String, @open : Bool, @opened_reason : String, @reason : String, @billing_zip : String? | Null = nil, @charge : String | Charge? | Null = nil, @closed_reason : String? | Null = nil, @ip_address : String? | Null = nil, @ip_address_location : RadarReviewResourceLocation? | Null = nil, @payment_intent : String | PaymentIntent? | Null = nil, @session : RadarReviewResourceSession? | Null = nil)
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      if !@billing_zip.nil? && !@billing_zip.null? && @billing_zip.to_s.size > 5000
        invalid_properties.push("invalid value for \"billing_zip\", the character length must be smaller than or equal to 5000.")
      end

      if @id.to_s.size > 5000
        invalid_properties.push("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      if !@ip_address.nil? && !@ip_address.null? && @ip_address.to_s.size > 5000
        invalid_properties.push("invalid value for \"ip_address\", the character length must be smaller than or equal to 5000.")
      end

      if @reason.to_s.size > 5000
        invalid_properties.push("invalid value for \"reason\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@billing_zip.nil? && !@billing_zip.null? && @billing_zip.to_s.size > 5000
      closed_reason_validator = EnumAttributeValidator.new("String", ["approved", "disputed", "redacted", "refunded", "refunded_as_fraud"])
      return false unless closed_reason_validator.valid?(@closed_reason)
      return false if @id.to_s.size > 5000
      return false if !@ip_address.nil? && !@ip_address.null? && @ip_address.to_s.size > 5000
      object_validator = EnumAttributeValidator.new("String", ["review"])
      return false unless object_validator.valid?(@object)
      opened_reason_validator = EnumAttributeValidator.new("String", ["manual", "rule"])
      return false unless opened_reason_validator.valid?(@opened_reason)
      return false if @reason.to_s.size > 5000
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] billing_zip Value to be assigned
    def billing_zip=(billing_zip)
      if !billing_zip.nil? && !@billing_zip.null? && billing_zip.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"billing_zip\", the character length must be smaller than or equal to 5000.")
      end

      @billing_zip = billing_zip
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] closed_reason Object to be assigned
    def closed_reason=(closed_reason)
      validator = EnumAttributeValidator.new("String", ["approved", "disputed", "redacted", "refunded", "refunded_as_fraud"])
      unless validator.valid?(closed_reason)
        raise ArgumentError.new("invalid value for \"closed_reason\", must be one of #{validator.allowable_values}.")
      end
      @closed_reason = closed_reason
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

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object)
      validator = EnumAttributeValidator.new("String", ["review"])
      unless validator.valid?(object)
        raise ArgumentError.new("invalid value for \"object\", must be one of #{validator.allowable_values}.")
      end
      @object = object
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] opened_reason Object to be assigned
    def opened_reason=(opened_reason)
      validator = EnumAttributeValidator.new("String", ["manual", "rule"])
      unless validator.valid?(opened_reason)
        raise ArgumentError.new("invalid value for \"opened_reason\", must be one of #{validator.allowable_values}.")
      end
      @opened_reason = opened_reason
    end

    # Custom attribute writer method with validation
    # @param [Object] reason Value to be assigned
    def reason=(reason)
      if reason.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"reason\", the character length must be smaller than or equal to 5000.")
      end

      @reason = reason
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.same?(o)
      self.class == o.class &&
        billing_zip == o.billing_zip &&
        charge == o.charge &&
        closed_reason == o.closed_reason &&
        created == o.created &&
        id == o.id &&
        ip_address == o.ip_address &&
        ip_address_location == o.ip_address_location &&
        livemode == o.livemode &&
        object == o.object &&
        open == o.open &&
        opened_reason == o.opened_reason &&
        payment_intent == o.payment_intent &&
        reason == o.reason &&
        session == o.session
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [billing_zip, charge, closed_reason, created, id, ip_address, ip_address_location, livemode, object, open, opened_reason, payment_intent, reason, session].hash
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