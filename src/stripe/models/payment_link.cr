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
  # A payment link allows you create payment pages through a url you can share with customers.
  class PaymentLink
    include NASON::Serializable

    # Required properties
    # Whether the payment link's `url` is active. If `false`, customers visiting the url will be redirected.
    @[NASON::Field(key: "active", type: Bool)]
    property active : Bool

    @[NASON::Field(key: "after_completion", type: PaymentLinksResourceAfterCompletion)]
    property after_completion : PaymentLinksResourceAfterCompletion

    # Whether user redeemable promotion codes are enabled.
    @[NASON::Field(key: "allow_promotion_codes", type: Bool)]
    property allow_promotion_codes : Bool

    @[NASON::Field(key: "automatic_tax", type: PaymentLinksResourceAutomaticTax)]
    property automatic_tax : PaymentLinksResourceAutomaticTax

    # Configuration for collecting the customer's billing address.
    @[NASON::Field(key: "billing_address_collection", type: String)]
    property billing_address_collection : String

    # Unique identifier for the object.
    @[NASON::Field(key: "id", type: String)]
    property id : String

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[NASON::Field(key: "livemode", type: Bool)]
    property livemode : Bool

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    @[NASON::Field(key: "metadata", type: Hash(String, String))]
    property metadata : Hash(String, String)

    # String representing the object's type. Objects of the same type share the same value.
    @[NASON::Field(key: "object", type: String)]
    property object : String

    # The public url that can be shared with customers.
    @[NASON::Field(key: "url", type: String)]
    property url : String

    # Optional properties
    # The amount of the application fee (if any) that will be requested to be applied to the payment and transferred to the application owner's Stripe account.
    @[NASON::Field(key: "application_fee_amount", type: Int64? | Null, nillable: true)]
    property application_fee_amount : Int64? | Null

    # This represents the percentage of the subscription invoice subtotal that will be transferred to the application owner's Stripe account.
    @[NASON::Field(key: "application_fee_percent", type: Float64? | Null, nillable: true)]
    property application_fee_percent : Float64? | Null

    @[NASON::Field(key: "line_items", type: PaymentLinksResourceListLineItems1?, nillable: true)]
    property line_items : PaymentLinksResourceListLineItems1?

    # The account on behalf of which to charge. See the [Connect documentation](https://support.stripe.com/questions/sending-invoices-on-behalf-of-connected-accounts) for details.
    @[NASON::Field(key: "on_behalf_of", type: String | Account? | Null, nillable: true)]
    property on_behalf_of : String | Account? | Null

    # The list of payment method types that customers can use. When `null`, your [payment methods settings](https://dashboard.stripe.com/settings/payment_methods) will be used.
    @[NASON::Field(key: "payment_method_types", type: Array(String)? | Null, nillable: true)]
    property payment_method_types : Array(String)? | Null

    # Configuration for collecting the customer's shipping address.
    @[NASON::Field(key: "shipping_address_collection", type: PaymentLinksResourceShippingAddressCollection? | Null, nillable: true)]
    property shipping_address_collection : PaymentLinksResourceShippingAddressCollection? | Null

    # When creating a subscription, the specified configuration data will be used. There must be at least one line item with a recurring price to use `subscription_data`.
    @[NASON::Field(key: "subscription_data", type: PaymentLinksResourceSubscriptionData? | Null, nillable: true)]
    property subscription_data : PaymentLinksResourceSubscriptionData? | Null

    # The account (if any) the payments will be attributed to for tax reporting, and where funds from each payment will be transferred to.
    @[NASON::Field(key: "transfer_data", type: PaymentLinksResourceTransferData? | Null, nillable: true)]
    property transfer_data : PaymentLinksResourceTransferData? | Null

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
    def initialize(*, @active : Bool, @after_completion : PaymentLinksResourceAfterCompletion, @allow_promotion_codes : Bool, @automatic_tax : PaymentLinksResourceAutomaticTax, @billing_address_collection : String, @id : String, @livemode : Bool, @metadata : Hash(String, String), @object : String, @url : String, @application_fee_amount : Int64? | Null = nil, @application_fee_percent : Float64? | Null = nil, @line_items : PaymentLinksResourceListLineItems1? = nil, @on_behalf_of : String | Account? | Null = nil, @payment_method_types : Array(String)? | Null = nil, @shipping_address_collection : PaymentLinksResourceShippingAddressCollection? | Null = nil, @subscription_data : PaymentLinksResourceSubscriptionData? | Null = nil, @transfer_data : PaymentLinksResourceTransferData? | Null = nil)
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      if @id.to_s.size > 5000
        invalid_properties.push("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      if @url.to_s.size > 5000
        invalid_properties.push("invalid value for \"url\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      billing_address_collection_validator = EnumAttributeValidator.new("String", ["auto", "required"])
      return false unless billing_address_collection_validator.valid?(@billing_address_collection)
      return false if @id.to_s.size > 5000
      object_validator = EnumAttributeValidator.new("String", ["payment_link"])
      return false unless object_validator.valid?(@object)
      return false if @url.to_s.size > 5000
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] billing_address_collection Object to be assigned
    def billing_address_collection=(billing_address_collection)
      validator = EnumAttributeValidator.new("String", ["auto", "required"])
      unless validator.valid?(billing_address_collection)
        raise ArgumentError.new("invalid value for \"billing_address_collection\", must be one of #{validator.allowable_values}.")
      end
      @billing_address_collection = billing_address_collection
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
      validator = EnumAttributeValidator.new("String", ["payment_link"])
      unless validator.valid?(object)
        raise ArgumentError.new("invalid value for \"object\", must be one of #{validator.allowable_values}.")
      end
      @object = object
    end

    # Custom attribute writer method with validation
    # @param [Object] url Value to be assigned
    def url=(url)
      if url.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"url\", the character length must be smaller than or equal to 5000.")
      end

      @url = url
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.same?(o)
      self.class == o.class &&
        active == o.active &&
        after_completion == o.after_completion &&
        allow_promotion_codes == o.allow_promotion_codes &&
        application_fee_amount == o.application_fee_amount &&
        application_fee_percent == o.application_fee_percent &&
        automatic_tax == o.automatic_tax &&
        billing_address_collection == o.billing_address_collection &&
        id == o.id &&
        line_items == o.line_items &&
        livemode == o.livemode &&
        metadata == o.metadata &&
        object == o.object &&
        on_behalf_of == o.on_behalf_of &&
        payment_method_types == o.payment_method_types &&
        shipping_address_collection == o.shipping_address_collection &&
        subscription_data == o.subscription_data &&
        transfer_data == o.transfer_data &&
        url == o.url
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [active, after_completion, allow_promotion_codes, application_fee_amount, application_fee_percent, automatic_tax, billing_address_collection, id, line_items, livemode, metadata, object, on_behalf_of, payment_method_types, shipping_address_collection, subscription_data, transfer_data, url].hash
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
