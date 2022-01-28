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
  # These bank accounts are payment methods on `Customer` objects.  On the other hand [External Accounts](https://stripe.com/docs/api#external_accounts) are transfer destinations on `Account` objects for [Custom accounts](https://stripe.com/docs/connect/custom-accounts). They can be bank accounts or debit cards as well, and are documented in the links above.  Related guide: [Bank Debits and Transfers](https://stripe.com/docs/payments/bank-debits-transfers).
  class BankAccount
    include NASON::Serializable

    # Required properties
    # Two-letter ISO code representing the country the bank account is located in.
    @[NASON::Field(key: "country", type: String)]
    property country : String

    # Three-letter [ISO code for the currency](https://stripe.com/docs/payouts) paid out to the bank account.
    @[NASON::Field(key: "currency", type: String)]
    property currency : String

    # Unique identifier for the object.
    @[NASON::Field(key: "id", type: String)]
    property id : String

    # The last four digits of the bank account number.
    @[NASON::Field(key: "last4", type: String)]
    property last4 : String

    # String representing the object's type. Objects of the same type share the same value.
    @[NASON::Field(key: "object", type: String)]
    property object : String

    # For bank accounts, possible values are `new`, `validated`, `verified`, `verification_failed`, or `errored`. A bank account that hasn't had any activity or validation performed is `new`. If Stripe can determine that the bank account exists, its status will be `validated`. Note that there often isn’t enough information to know (e.g., for smaller credit unions), and the validation is not always run. If customer bank account verification has succeeded, the bank account status will be `verified`. If the verification failed for any reason, such as microdeposit failure, the status will be `verification_failed`. If a transfer sent to this bank account fails, we'll set the status to `errored` and will not continue to send transfers until the bank details are updated.  For external accounts, possible values are `new` and `errored`. Validations aren't run against external accounts because they're only used for payouts. This means the other statuses don't apply. If a transfer fails, the status is set to `errored` and transfers are stopped until account details are updated.
    @[NASON::Field(key: "status", type: String)]
    property status : String

    # Optional properties
    # The ID of the account that the bank account is associated with.
    @[NASON::Field(key: "account", type: String | Account? | Null, nillable: true)]
    property account : String | Account? | Null

    # The name of the person or business that owns the bank account.
    @[NASON::Field(key: "account_holder_name", type: String? | Null, nillable: true)]
    property account_holder_name : String? | Null

    # The type of entity that holds the account. This can be either `individual` or `company`.
    @[NASON::Field(key: "account_holder_type", type: String? | Null, nillable: true)]
    property account_holder_type : String? | Null

    # The bank account type. This can only be `checking` or `savings` in most countries. In Japan, this can only be `futsu` or `toza`.
    @[NASON::Field(key: "account_type", type: String? | Null, nillable: true)]
    property account_type : String? | Null

    # A set of available payout methods for this bank account. Only values from this set should be passed as the `method` when creating a payout.
    @[NASON::Field(key: "available_payout_methods", type: Array(String)? | Null, nillable: true)]
    property available_payout_methods : Array(String)? | Null

    # Name of the bank associated with the routing number (e.g., `WELLS FARGO`).
    @[NASON::Field(key: "bank_name", type: String? | Null, nillable: true)]
    property bank_name : String? | Null

    # The ID of the customer that the bank account is associated with.
    @[NASON::Field(key: "customer", type: String | Customer | Nil | Null, nillable: true)]
    property customer : String | Customer | Nil | Null

    # Whether this bank account is the default external account for its currency.
    @[NASON::Field(key: "default_for_currency", type: Bool? | Null, nillable: true)]
    property default_for_currency : Bool? | Null

    # Uniquely identifies this particular bank account. You can use this attribute to check whether two bank accounts are the same.
    @[NASON::Field(key: "fingerprint", type: String? | Null, nillable: true)]
    property fingerprint : String? | Null

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    @[NASON::Field(key: "metadata", type: Hash(String, String)? | Null, nillable: true)]
    property metadata : Hash(String, String)? | Null

    # The routing transit number for the bank account.
    @[NASON::Field(key: "routing_number", type: String? | Null, nillable: true)]
    property routing_number : String? | Null

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
    def initialize(*, @country : String, @currency : String, @id : String, @last4 : String, @object : String, @status : String, @account : String | Account? | Null = nil, @account_holder_name : String? | Null = nil, @account_holder_type : String? | Null = nil, @account_type : String? | Null = nil, @available_payout_methods : Array(String)? | Null = nil, @bank_name : String? | Null = nil, @customer : String | Customer | Nil | Null = nil, @default_for_currency : Bool? | Null = nil, @fingerprint : String? | Null = nil, @metadata : Hash(String, String)? | Null = nil, @routing_number : String? | Null = nil)
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      if !@account_holder_name.nil? && !@account_holder_name.null? && @account_holder_name.to_s.size > 5000
        invalid_properties.push("invalid value for \"account_holder_name\", the character length must be smaller than or equal to 5000.")
      end

      if !@account_holder_type.nil? && !@account_holder_type.null? && @account_holder_type.to_s.size > 5000
        invalid_properties.push("invalid value for \"account_holder_type\", the character length must be smaller than or equal to 5000.")
      end

      if !@account_type.nil? && !@account_type.null? && @account_type.to_s.size > 5000
        invalid_properties.push("invalid value for \"account_type\", the character length must be smaller than or equal to 5000.")
      end

      if !@bank_name.nil? && !@bank_name.null? && @bank_name.to_s.size > 5000
        invalid_properties.push("invalid value for \"bank_name\", the character length must be smaller than or equal to 5000.")
      end

      if @country.to_s.size > 5000
        invalid_properties.push("invalid value for \"country\", the character length must be smaller than or equal to 5000.")
      end

      if !@fingerprint.nil? && !@fingerprint.null? && @fingerprint.to_s.size > 5000
        invalid_properties.push("invalid value for \"fingerprint\", the character length must be smaller than or equal to 5000.")
      end

      if @id.to_s.size > 5000
        invalid_properties.push("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      if @last4.to_s.size > 5000
        invalid_properties.push("invalid value for \"last4\", the character length must be smaller than or equal to 5000.")
      end

      if !@routing_number.nil? && !@routing_number.null? && @routing_number.to_s.size > 5000
        invalid_properties.push("invalid value for \"routing_number\", the character length must be smaller than or equal to 5000.")
      end

      if @status.to_s.size > 5000
        invalid_properties.push("invalid value for \"status\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@account_holder_name.nil? && !@account_holder_name.null? && @account_holder_name.to_s.size > 5000
      return false if !@account_holder_type.nil? && !@account_holder_type.null? && @account_holder_type.to_s.size > 5000
      return false if !@account_type.nil? && !@account_type.null? && @account_type.to_s.size > 5000
      return false if !@bank_name.nil? && !@bank_name.null? && @bank_name.to_s.size > 5000
      return false if @country.to_s.size > 5000
      return false if !@fingerprint.nil? && !@fingerprint.null? && @fingerprint.to_s.size > 5000
      return false if @id.to_s.size > 5000
      return false if @last4.to_s.size > 5000
      object_validator = EnumAttributeValidator.new("String", ["bank_account"])
      return false unless object_validator.valid?(@object)
      return false if !@routing_number.nil? && !@routing_number.null? && @routing_number.to_s.size > 5000
      return false if @status.to_s.size > 5000
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] account_holder_name Value to be assigned
    def account_holder_name=(account_holder_name)
      if !account_holder_name.nil? && !@account_holder_name.null? && account_holder_name.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"account_holder_name\", the character length must be smaller than or equal to 5000.")
      end

      @account_holder_name = account_holder_name
    end

    # Custom attribute writer method with validation
    # @param [Object] account_holder_type Value to be assigned
    def account_holder_type=(account_holder_type)
      if !account_holder_type.nil? && !@account_holder_type.null? && account_holder_type.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"account_holder_type\", the character length must be smaller than or equal to 5000.")
      end

      @account_holder_type = account_holder_type
    end

    # Custom attribute writer method with validation
    # @param [Object] account_type Value to be assigned
    def account_type=(account_type)
      if !account_type.nil? && !@account_type.null? && account_type.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"account_type\", the character length must be smaller than or equal to 5000.")
      end

      @account_type = account_type
    end

    # Custom attribute writer method with validation
    # @param [Object] bank_name Value to be assigned
    def bank_name=(bank_name)
      if !bank_name.nil? && !@bank_name.null? && bank_name.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"bank_name\", the character length must be smaller than or equal to 5000.")
      end

      @bank_name = bank_name
    end

    # Custom attribute writer method with validation
    # @param [Object] country Value to be assigned
    def country=(country)
      if country.to_s.size > 5000
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

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object)
      validator = EnumAttributeValidator.new("String", ["bank_account"])
      unless validator.valid?(object)
        raise ArgumentError.new("invalid value for \"object\", must be one of #{validator.allowable_values}.")
      end
      @object = object
    end

    # Custom attribute writer method with validation
    # @param [Object] routing_number Value to be assigned
    def routing_number=(routing_number)
      if !routing_number.nil? && !@routing_number.null? && routing_number.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"routing_number\", the character length must be smaller than or equal to 5000.")
      end

      @routing_number = routing_number
    end

    # Custom attribute writer method with validation
    # @param [Object] status Value to be assigned
    def status=(status)
      if status.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"status\", the character length must be smaller than or equal to 5000.")
      end

      @status = status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.same?(o)
      self.class == o.class &&
        account == o.account &&
        account_holder_name == o.account_holder_name &&
        account_holder_type == o.account_holder_type &&
        account_type == o.account_type &&
        available_payout_methods == o.available_payout_methods &&
        bank_name == o.bank_name &&
        country == o.country &&
        currency == o.currency &&
        customer == o.customer &&
        default_for_currency == o.default_for_currency &&
        fingerprint == o.fingerprint &&
        id == o.id &&
        last4 == o.last4 &&
        metadata == o.metadata &&
        object == o.object &&
        routing_number == o.routing_number &&
        status == o.status
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [account, account_holder_name, account_holder_type, account_type, available_payout_methods, bank_name, country, currency, customer, default_for_currency, fingerprint, id, last4, metadata, object, routing_number, status].hash
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