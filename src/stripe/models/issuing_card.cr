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
  # You can [create physical or virtual cards](https://stripe.com/docs/issuing/cards) that are issued to cardholders.
  class IssuingCard
    include NASON::Serializable

    # Required properties
    # The brand of the card.
    @[NASON::Field(key: "brand", type: String)]
    property brand : String

    @[NASON::Field(key: "cardholder", type: IssuingCardholder)]
    property cardholder : IssuingCardholder

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[NASON::Field(key: "created", type: Int64)]
    property created : Int64

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[NASON::Field(key: "currency", type: String)]
    property currency : String

    # The expiration month of the card.
    @[NASON::Field(key: "exp_month", type: Int64)]
    property exp_month : Int64

    # The expiration year of the card.
    @[NASON::Field(key: "exp_year", type: Int64)]
    property exp_year : Int64

    # Unique identifier for the object.
    @[NASON::Field(key: "id", type: String)]
    property id : String

    # The last 4 digits of the card number.
    @[NASON::Field(key: "last4", type: String)]
    property last4 : String

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[NASON::Field(key: "livemode", type: Bool)]
    property livemode : Bool

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    @[NASON::Field(key: "metadata", type: Hash(String, String))]
    property metadata : Hash(String, String)

    # String representing the object's type. Objects of the same type share the same value.
    @[NASON::Field(key: "object", type: String)]
    property object : String

    @[NASON::Field(key: "spending_controls", type: IssuingCardAuthorizationControls)]
    property spending_controls : IssuingCardAuthorizationControls

    # Whether authorizations can be approved on this card.
    @[NASON::Field(key: "status", type: String)]
    property status : String

    # The type of the card.
    @[NASON::Field(key: "type", type: String)]
    property _type : String

    # Optional properties
    # The reason why the card was canceled.
    @[NASON::Field(key: "cancellation_reason", type: String? | Null, nillable: true)]
    property cancellation_reason : String? | Null

    # The card's CVC. For security reasons, this is only available for virtual cards, and will be omitted unless you explicitly request it with [the `expand` parameter](https://stripe.com/docs/api/expanding_objects). Additionally, it's only available via the [\"Retrieve a card\" endpoint](https://stripe.com/docs/api/issuing/cards/retrieve), not via \"List all cards\" or any other endpoint.
    @[NASON::Field(key: "cvc", type: String?, nillable: true)]
    property cvc : String?

    # The full unredacted card number. For security reasons, this is only available for virtual cards, and will be omitted unless you explicitly request it with [the `expand` parameter](https://stripe.com/docs/api/expanding_objects). Additionally, it's only available via the [\"Retrieve a card\" endpoint](https://stripe.com/docs/api/issuing/cards/retrieve), not via \"List all cards\" or any other endpoint.
    @[NASON::Field(key: "number", type: String?, nillable: true)]
    property number : String?

    # The latest card that replaces this card, if any.
    @[NASON::Field(key: "replaced_by", type: String | IssuingCard? | Null, nillable: true)]
    property replaced_by : String | IssuingCard? | Null

    # The card this card replaces, if any.
    @[NASON::Field(key: "replacement_for", type: String | IssuingCard? | Null, nillable: true)]
    property replacement_for : String | IssuingCard? | Null

    # The reason why the previous card needed to be replaced.
    @[NASON::Field(key: "replacement_reason", type: String? | Null, nillable: true)]
    property replacement_reason : String? | Null

    # Where and how the card will be shipped.
    @[NASON::Field(key: "shipping", type: IssuingCardShipping? | Null, nillable: true)]
    property shipping : IssuingCardShipping? | Null

    # Information relating to digital wallets (like Apple Pay and Google Pay).
    @[NASON::Field(key: "wallets", type: IssuingCardWallets? | Null, nillable: true)]
    property wallets : IssuingCardWallets? | Null

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
    def initialize(*, @brand : String, @cardholder : IssuingCardholder, @created : Int64, @currency : String, @exp_month : Int64, @exp_year : Int64, @id : String, @last4 : String, @livemode : Bool, @metadata : Hash(String, String), @object : String, @spending_controls : IssuingCardAuthorizationControls, @status : String, @_type : String, @cancellation_reason : String? | Null = nil, @cvc : String? = nil, @number : String? = nil, @replaced_by : String | IssuingCard? | Null = nil, @replacement_for : String | IssuingCard? | Null = nil, @replacement_reason : String? | Null = nil, @shipping : IssuingCardShipping? | Null = nil, @wallets : IssuingCardWallets? | Null = nil)
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      if @brand.to_s.size > 5000
        invalid_properties.push("invalid value for \"brand\", the character length must be smaller than or equal to 5000.")
      end

      if !@cvc.nil? && @cvc.to_s.size > 5000
        invalid_properties.push("invalid value for \"cvc\", the character length must be smaller than or equal to 5000.")
      end

      if @id.to_s.size > 5000
        invalid_properties.push("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      if @last4.to_s.size > 5000
        invalid_properties.push("invalid value for \"last4\", the character length must be smaller than or equal to 5000.")
      end

      if !@number.nil? && @number.to_s.size > 5000
        invalid_properties.push("invalid value for \"number\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @brand.to_s.size > 5000
      cancellation_reason_validator = EnumAttributeValidator.new("String", ["lost", "stolen"])
      return false unless cancellation_reason_validator.valid?(@cancellation_reason)
      return false if !@cvc.nil? && @cvc.to_s.size > 5000
      return false if @id.to_s.size > 5000
      return false if @last4.to_s.size > 5000
      return false if !@number.nil? && @number.to_s.size > 5000
      object_validator = EnumAttributeValidator.new("String", ["issuing.card"])
      return false unless object_validator.valid?(@object)
      replacement_reason_validator = EnumAttributeValidator.new("String", ["damaged", "expired", "lost", "stolen"])
      return false unless replacement_reason_validator.valid?(@replacement_reason)
      status_validator = EnumAttributeValidator.new("String", ["active", "canceled", "inactive"])
      return false unless status_validator.valid?(@status)
      _type_validator = EnumAttributeValidator.new("String", ["physical", "virtual"])
      return false unless _type_validator.valid?(@_type)
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

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cancellation_reason Object to be assigned
    def cancellation_reason=(cancellation_reason)
      validator = EnumAttributeValidator.new("String", ["lost", "stolen"])
      unless validator.valid?(cancellation_reason)
        raise ArgumentError.new("invalid value for \"cancellation_reason\", must be one of #{validator.allowable_values}.")
      end
      @cancellation_reason = cancellation_reason
    end

    # Custom attribute writer method with validation
    # @param [Object] cvc Value to be assigned
    def cvc=(cvc)
      if !cvc.nil? && cvc.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"cvc\", the character length must be smaller than or equal to 5000.")
      end

      @cvc = cvc
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
    # @param [Object] last4 Value to be assigned
    def last4=(last4)
      if last4.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"last4\", the character length must be smaller than or equal to 5000.")
      end

      @last4 = last4
    end

    # Custom attribute writer method with validation
    # @param [Object] number Value to be assigned
    def number=(number)
      if !number.nil? && number.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"number\", the character length must be smaller than or equal to 5000.")
      end

      @number = number
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object)
      validator = EnumAttributeValidator.new("String", ["issuing.card"])
      unless validator.valid?(object)
        raise ArgumentError.new("invalid value for \"object\", must be one of #{validator.allowable_values}.")
      end
      @object = object
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] replacement_reason Object to be assigned
    def replacement_reason=(replacement_reason)
      validator = EnumAttributeValidator.new("String", ["damaged", "expired", "lost", "stolen"])
      unless validator.valid?(replacement_reason)
        raise ArgumentError.new("invalid value for \"replacement_reason\", must be one of #{validator.allowable_values}.")
      end
      @replacement_reason = replacement_reason
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new("String", ["active", "canceled", "inactive"])
      unless validator.valid?(status)
        raise ArgumentError.new("invalid value for \"status\", must be one of #{validator.allowable_values}.")
      end
      @status = status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(_type)
      validator = EnumAttributeValidator.new("String", ["physical", "virtual"])
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
        brand == o.brand &&
        cancellation_reason == o.cancellation_reason &&
        cardholder == o.cardholder &&
        created == o.created &&
        currency == o.currency &&
        cvc == o.cvc &&
        exp_month == o.exp_month &&
        exp_year == o.exp_year &&
        id == o.id &&
        last4 == o.last4 &&
        livemode == o.livemode &&
        metadata == o.metadata &&
        number == o.number &&
        object == o.object &&
        replaced_by == o.replaced_by &&
        replacement_for == o.replacement_for &&
        replacement_reason == o.replacement_reason &&
        shipping == o.shipping &&
        spending_controls == o.spending_controls &&
        status == o.status &&
        _type == o._type &&
        wallets == o.wallets
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [brand, cancellation_reason, cardholder, created, currency, cvc, exp_month, exp_year, id, last4, livemode, metadata, number, object, replaced_by, replacement_for, replacement_reason, shipping, spending_controls, status, _type, wallets].hash
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
