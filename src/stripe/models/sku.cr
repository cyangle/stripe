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
  # Stores representations of [stock keeping units](http://en.wikipedia.org/wiki/Stock_keeping_unit). SKUs describe specific product variations, taking into account any combination of: attributes, currency, and cost. For example, a product may be a T-shirt, whereas a specific SKU represents the `size: large`, `color: red` version of that shirt.  Can also be used to manage inventory.  Related guide: [Tax, Shipping, and Inventory](https://stripe.com/docs/orders).
  class Sku
    include NASON::Serializable

    # Required properties
    # Whether the SKU is available for purchase.
    @[NASON::Field(key: "active", type: Bool)]
    property active : Bool

    # A dictionary of attributes and values for the attributes defined by the product. If, for example, a product's attributes are `[\"size\", \"gender\"]`, a valid SKU has the following dictionary of attributes: `{\"size\": \"Medium\", \"gender\": \"Unisex\"}`.
    @[NASON::Field(key: "attributes", type: Hash(String, String))]
    property attributes : Hash(String, String)

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[NASON::Field(key: "created", type: Int64)]
    property created : Int64

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[NASON::Field(key: "currency", type: String)]
    property currency : String

    # Unique identifier for the object.
    @[NASON::Field(key: "id", type: String)]
    property id : String

    @[NASON::Field(key: "inventory", type: SkuInventory)]
    property inventory : SkuInventory

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[NASON::Field(key: "livemode", type: Bool)]
    property livemode : Bool

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    @[NASON::Field(key: "metadata", type: Hash(String, String))]
    property metadata : Hash(String, String)

    # String representing the object's type. Objects of the same type share the same value.
    @[NASON::Field(key: "object", type: String)]
    property object : String

    # The cost of the item as a positive integer in the smallest currency unit (that is, 100 cents to charge $1.00, or 100 to charge ¥100, Japanese Yen being a zero-decimal currency).
    @[NASON::Field(key: "price", type: Int64)]
    property price : Int64

    # The ID of the product this SKU is associated with. The product must be currently active.
    @[NASON::Field(key: "product", type: String | Product | Null, nillable: false)]
    property product : String | Product | Null

    # Time at which the object was last updated. Measured in seconds since the Unix epoch.
    @[NASON::Field(key: "updated", type: Int64)]
    property updated : Int64

    # Optional properties
    # The URL of an image for this SKU, meant to be displayable to the customer.
    @[NASON::Field(key: "image", type: String? | Null, nillable: true)]
    property image : String? | Null

    # The dimensions of this SKU for shipping purposes.
    @[NASON::Field(key: "package_dimensions", type: PackageDimensions? | Null, nillable: true)]
    property package_dimensions : PackageDimensions? | Null

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
    def initialize(*, @active : Bool, @attributes : Hash(String, String), @created : Int64, @currency : String, @id : String, @inventory : SkuInventory, @livemode : Bool, @metadata : Hash(String, String), @object : String, @price : Int64, @product : String | Product | Null, @updated : Int64, @image : String? | Null = nil, @package_dimensions : PackageDimensions? | Null = nil)
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      if @id.to_s.size > 5000
        invalid_properties.push("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      if !@image.nil? && !@image.null? && @image.to_s.size > 2048
        invalid_properties.push("invalid value for \"image\", the character length must be smaller than or equal to 2048.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.to_s.size > 5000
      return false if !@image.nil? && !@image.null? && @image.to_s.size > 2048
      object_validator = EnumAttributeValidator.new("String", ["sku"])
      return false unless object_validator.valid?(@object)
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

    # Custom attribute writer method with validation
    # @param [Object] image Value to be assigned
    def image=(image)
      if !image.nil? && !@image.null? && image.to_s.size > 2048
        raise ArgumentError.new("invalid value for \"image\", the character length must be smaller than or equal to 2048.")
      end

      @image = image
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object)
      validator = EnumAttributeValidator.new("String", ["sku"])
      unless validator.valid?(object)
        raise ArgumentError.new("invalid value for \"object\", must be one of #{validator.allowable_values}.")
      end
      @object = object
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.same?(o)
      self.class == o.class &&
        active == o.active &&
        attributes == o.attributes &&
        created == o.created &&
        currency == o.currency &&
        id == o.id &&
        image == o.image &&
        inventory == o.inventory &&
        livemode == o.livemode &&
        metadata == o.metadata &&
        object == o.object &&
        package_dimensions == o.package_dimensions &&
        price == o.price &&
        product == o.product &&
        updated == o.updated
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [active, attributes, created, currency, id, image, inventory, livemode, metadata, object, package_dimensions, price, product, updated].hash
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
