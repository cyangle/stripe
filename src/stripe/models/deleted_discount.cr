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
  class DeletedDiscount
    include NASON::Serializable

    # Required properties
    @[NASON::Field(key: "coupon", type: Coupon)]
    property coupon : Coupon

    # Always true for a deleted object
    @[NASON::Field(key: "deleted", type: Bool)]
    property deleted : Bool

    # The ID of the discount object. Discounts cannot be fetched by ID. Use `expand[]=discounts` in API calls to expand discount IDs in an array.
    @[NASON::Field(key: "id", type: String)]
    property id : String

    # String representing the object's type. Objects of the same type share the same value.
    @[NASON::Field(key: "object", type: String)]
    property object : String

    # Date that the coupon was applied.
    @[NASON::Field(key: "start", type: Int64)]
    property start : Int64

    # Optional properties
    # The Checkout session that this coupon is applied to, if it is applied to a particular session in payment mode. Will not be present for subscription mode.
    @[NASON::Field(key: "checkout_session", type: String? | Null, nillable: true)]
    property checkout_session : String? | Null

    # The ID of the customer associated with this discount.
    @[NASON::Field(key: "customer", type: String | Customer | Nil | Null, nillable: true)]
    property customer : String | Customer | Nil | Null

    # The invoice that the discount's coupon was applied to, if it was applied directly to a particular invoice.
    @[NASON::Field(key: "invoice", type: String? | Null, nillable: true)]
    property invoice : String? | Null

    # The invoice item `id` (or invoice line item `id` for invoice line items of type='subscription') that the discount's coupon was applied to, if it was applied directly to a particular invoice item or invoice line item.
    @[NASON::Field(key: "invoice_item", type: String? | Null, nillable: true)]
    property invoice_item : String? | Null

    # The promotion code applied to create this discount.
    @[NASON::Field(key: "promotion_code", type: String | PromotionCode? | Null, nillable: true)]
    property promotion_code : String | PromotionCode? | Null

    # The subscription that this coupon is applied to, if it is applied to a particular subscription.
    @[NASON::Field(key: "subscription", type: String? | Null, nillable: true)]
    property subscription : String? | Null

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
    def initialize(*, @coupon : Coupon, @deleted : Bool, @id : String, @object : String, @start : Int64, @checkout_session : String? | Null = nil, @customer : String | Customer | Nil | Null = nil, @invoice : String? | Null = nil, @invoice_item : String? | Null = nil, @promotion_code : String | PromotionCode? | Null = nil, @subscription : String? | Null = nil)
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      if !@checkout_session.nil? && !@checkout_session.null? && @checkout_session.to_s.size > 5000
        invalid_properties.push("invalid value for \"checkout_session\", the character length must be smaller than or equal to 5000.")
      end

      if @id.to_s.size > 5000
        invalid_properties.push("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      if !@invoice.nil? && !@invoice.null? && @invoice.to_s.size > 5000
        invalid_properties.push("invalid value for \"invoice\", the character length must be smaller than or equal to 5000.")
      end

      if !@invoice_item.nil? && !@invoice_item.null? && @invoice_item.to_s.size > 5000
        invalid_properties.push("invalid value for \"invoice_item\", the character length must be smaller than or equal to 5000.")
      end

      if !@subscription.nil? && !@subscription.null? && @subscription.to_s.size > 5000
        invalid_properties.push("invalid value for \"subscription\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@checkout_session.nil? && !@checkout_session.null? && @checkout_session.to_s.size > 5000
      deleted_validator = EnumAttributeValidator.new("Bool", ["true"])
      return false unless deleted_validator.valid?(@deleted)
      return false if @id.to_s.size > 5000
      return false if !@invoice.nil? && !@invoice.null? && @invoice.to_s.size > 5000
      return false if !@invoice_item.nil? && !@invoice_item.null? && @invoice_item.to_s.size > 5000
      object_validator = EnumAttributeValidator.new("String", ["discount"])
      return false unless object_validator.valid?(@object)
      return false if !@subscription.nil? && !@subscription.null? && @subscription.to_s.size > 5000
      true
    end

    # Custom attribute writer method with validation
    # @param [Object] checkout_session Value to be assigned
    def checkout_session=(checkout_session)
      if !checkout_session.nil? && !@checkout_session.null? && checkout_session.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"checkout_session\", the character length must be smaller than or equal to 5000.")
      end

      @checkout_session = checkout_session
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] deleted Object to be assigned
    def deleted=(deleted)
      validator = EnumAttributeValidator.new("Bool", ["true"])
      unless validator.valid?(deleted)
        raise ArgumentError.new("invalid value for \"deleted\", must be one of #{validator.allowable_values}.")
      end
      @deleted = deleted
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
    # @param [Object] invoice Value to be assigned
    def invoice=(invoice)
      if !invoice.nil? && !@invoice.null? && invoice.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"invoice\", the character length must be smaller than or equal to 5000.")
      end

      @invoice = invoice
    end

    # Custom attribute writer method with validation
    # @param [Object] invoice_item Value to be assigned
    def invoice_item=(invoice_item)
      if !invoice_item.nil? && !@invoice_item.null? && invoice_item.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"invoice_item\", the character length must be smaller than or equal to 5000.")
      end

      @invoice_item = invoice_item
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object)
      validator = EnumAttributeValidator.new("String", ["discount"])
      unless validator.valid?(object)
        raise ArgumentError.new("invalid value for \"object\", must be one of #{validator.allowable_values}.")
      end
      @object = object
    end

    # Custom attribute writer method with validation
    # @param [Object] subscription Value to be assigned
    def subscription=(subscription)
      if !subscription.nil? && !@subscription.null? && subscription.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"subscription\", the character length must be smaller than or equal to 5000.")
      end

      @subscription = subscription
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.same?(o)
      self.class == o.class &&
        checkout_session == o.checkout_session &&
        coupon == o.coupon &&
        customer == o.customer &&
        deleted == o.deleted &&
        id == o.id &&
        invoice == o.invoice &&
        invoice_item == o.invoice_item &&
        object == o.object &&
        promotion_code == o.promotion_code &&
        start == o.start &&
        subscription == o.subscription
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [checkout_session, coupon, customer, deleted, id, invoice, invoice_item, object, promotion_code, start, subscription].hash
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
