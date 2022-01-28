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
  # Some payment methods have no required amount that a customer must send. Customers can be instructed to send any amount, and it can be made up of multiple transactions. As such, sources can have multiple associated transactions.
  class SourceTransaction
    include NASON::Serializable

    # Required properties
    # A positive integer in the smallest currency unit (that is, 100 cents for $1.00, or 1 for ¥1, Japanese Yen being a zero-decimal currency) representing the amount your customer has pushed to the receiver.
    @[NASON::Field(key: "amount", type: Int64)]
    property amount : Int64

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[NASON::Field(key: "created", type: Int64)]
    property created : Int64

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[NASON::Field(key: "currency", type: String)]
    property currency : String

    # Unique identifier for the object.
    @[NASON::Field(key: "id", type: String)]
    property id : String

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[NASON::Field(key: "livemode", type: Bool)]
    property livemode : Bool

    # String representing the object's type. Objects of the same type share the same value.
    @[NASON::Field(key: "object", type: String)]
    property object : String

    # The ID of the source this transaction is attached to.
    @[NASON::Field(key: "source", type: String)]
    property source : String

    # The status of the transaction, one of `succeeded`, `pending`, or `failed`.
    @[NASON::Field(key: "status", type: String)]
    property status : String

    # The type of source this transaction is attached to.
    @[NASON::Field(key: "type", type: String)]
    property _type : String

    # Optional properties
    @[NASON::Field(key: "ach_credit_transfer", type: SourceTransactionAchCreditTransferData?, nillable: true)]
    property ach_credit_transfer : SourceTransactionAchCreditTransferData?

    @[NASON::Field(key: "chf_credit_transfer", type: SourceTransactionChfCreditTransferData?, nillable: true)]
    property chf_credit_transfer : SourceTransactionChfCreditTransferData?

    @[NASON::Field(key: "gbp_credit_transfer", type: SourceTransactionGbpCreditTransferData?, nillable: true)]
    property gbp_credit_transfer : SourceTransactionGbpCreditTransferData?

    @[NASON::Field(key: "paper_check", type: SourceTransactionPaperCheckData?, nillable: true)]
    property paper_check : SourceTransactionPaperCheckData?

    @[NASON::Field(key: "sepa_credit_transfer", type: SourceTransactionSepaCreditTransferData?, nillable: true)]
    property sepa_credit_transfer : SourceTransactionSepaCreditTransferData?

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
    def initialize(*, @amount : Int64, @created : Int64, @currency : String, @id : String, @livemode : Bool, @object : String, @source : String, @status : String, @_type : String, @ach_credit_transfer : SourceTransactionAchCreditTransferData? = nil, @chf_credit_transfer : SourceTransactionChfCreditTransferData? = nil, @gbp_credit_transfer : SourceTransactionGbpCreditTransferData? = nil, @paper_check : SourceTransactionPaperCheckData? = nil, @sepa_credit_transfer : SourceTransactionSepaCreditTransferData? = nil)
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      if @id.to_s.size > 5000
        invalid_properties.push("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      if @source.to_s.size > 5000
        invalid_properties.push("invalid value for \"source\", the character length must be smaller than or equal to 5000.")
      end

      if @status.to_s.size > 5000
        invalid_properties.push("invalid value for \"status\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.to_s.size > 5000
      object_validator = EnumAttributeValidator.new("String", ["source_transaction"])
      return false unless object_validator.valid?(@object)
      return false if @source.to_s.size > 5000
      return false if @status.to_s.size > 5000
      _type_validator = EnumAttributeValidator.new("String", ["ach_credit_transfer", "ach_debit", "alipay", "bancontact", "card", "card_present", "eps", "giropay", "ideal", "klarna", "multibanco", "p24", "sepa_debit", "sofort", "three_d_secure", "wechat"])
      return false unless _type_validator.valid?(@_type)
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] id Value to be assigned
    def id=(id)
      if id.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      @id = id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object)
      validator = EnumAttributeValidator.new("String", ["source_transaction"])
      unless validator.valid?(object)
        raise ArgumentError.new("invalid value for \"object\", must be one of #{validator.allowable_values}.")
      end
      @object = object
    end

    # Custom attribute writer method with validation
    # @param [Object] source Value to be assigned
    def source=(source)
      if source.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"source\", the character length must be smaller than or equal to 5000.")
      end

      @source = source
    end

    # Custom attribute writer method with validation
    # @param [Object] status Value to be assigned
    def status=(status)
      if status.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"status\", the character length must be smaller than or equal to 5000.")
      end

      @status = status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(_type)
      validator = EnumAttributeValidator.new("String", ["ach_credit_transfer", "ach_debit", "alipay", "bancontact", "card", "card_present", "eps", "giropay", "ideal", "klarna", "multibanco", "p24", "sepa_debit", "sofort", "three_d_secure", "wechat"])
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
        ach_credit_transfer == o.ach_credit_transfer &&
        amount == o.amount &&
        chf_credit_transfer == o.chf_credit_transfer &&
        created == o.created &&
        currency == o.currency &&
        gbp_credit_transfer == o.gbp_credit_transfer &&
        id == o.id &&
        livemode == o.livemode &&
        object == o.object &&
        paper_check == o.paper_check &&
        sepa_credit_transfer == o.sepa_credit_transfer &&
        source == o.source &&
        status == o.status &&
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
      [ach_credit_transfer, amount, chf_credit_transfer, created, currency, gbp_credit_transfer, id, livemode, object, paper_check, sepa_credit_transfer, source, status, _type].hash
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