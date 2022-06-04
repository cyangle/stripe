#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-08-27
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module Stripe
  # The ID of the product this price is associated with.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class PriceProduct
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # Whether the product is currently available for purchase.
    @[JSON::Field(key: "active", type: Bool?)]
    property active : Bool?

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64?)]
    property created : Int64?

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String?)]
    getter id : String?

    # A list of up to 8 URLs of images for this product, meant to be displayable to the customer.
    @[JSON::Field(key: "images", type: Array(String)?)]
    property images : Array(String)?

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool?)]
    property livemode : Bool?

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    @[JSON::Field(key: "metadata", type: Hash(String, String)?)]
    property metadata : Hash(String, String)?

    # The product's name, meant to be displayable to the customer.
    @[JSON::Field(key: "name", type: String?)]
    getter name : String?

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?)]
    getter object : String?

    ENUM_VALIDATOR_FOR_OBJECT = EnumValidator.new("object", "String", ["product"])

    # Time at which the object was last updated. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "updated", type: Int64?)]
    property updated : Int64?

    # Always true for a deleted object
    @[JSON::Field(key: "deleted", type: Bool?)]
    getter deleted : Bool?

    ENUM_VALIDATOR_FOR_DELETED = EnumValidator.new("deleted", "Bool", ["true"])

    # Optional properties

    @[JSON::Field(key: "default_price", type: ProductDefaultPrice?, presence: true, ignore_serialize: default_price.nil? && !default_price_present?)]
    property default_price : ProductDefaultPrice?

    @[JSON::Field(ignore: true)]
    property? default_price_present : Bool = false

    # The product's description, meant to be displayable to the customer. Use this field to optionally store a long form explanation of the product being sold for your own rendering purposes.
    @[JSON::Field(key: "description", type: String?, presence: true, ignore_serialize: description.nil? && !description_present?)]
    getter description : String?

    @[JSON::Field(ignore: true)]
    property? description_present : Bool = false

    @[JSON::Field(key: "package_dimensions", type: ProductPackageDimensions?, presence: true, ignore_serialize: package_dimensions.nil? && !package_dimensions_present?)]
    property package_dimensions : ProductPackageDimensions?

    @[JSON::Field(ignore: true)]
    property? package_dimensions_present : Bool = false

    # Whether this product is shipped (i.e., physical goods).
    @[JSON::Field(key: "shippable", type: Bool?, presence: true, ignore_serialize: shippable.nil? && !shippable_present?)]
    property shippable : Bool?

    @[JSON::Field(ignore: true)]
    property? shippable_present : Bool = false

    # Extra information about a product which will appear on your customer's credit card statement. In the case that multiple products are billed at once, the first statement descriptor will be used.
    @[JSON::Field(key: "statement_descriptor", type: String?, presence: true, ignore_serialize: statement_descriptor.nil? && !statement_descriptor_present?)]
    getter statement_descriptor : String?

    @[JSON::Field(ignore: true)]
    property? statement_descriptor_present : Bool = false

    @[JSON::Field(key: "tax_code", type: ProductTaxCode?, presence: true, ignore_serialize: tax_code.nil? && !tax_code_present?)]
    property tax_code : ProductTaxCode?

    @[JSON::Field(ignore: true)]
    property? tax_code_present : Bool = false

    # A label that represents units of this product in Stripe and on customers’ receipts and invoices. When set, this will be included in associated invoice line item descriptions.
    @[JSON::Field(key: "unit_label", type: String?, presence: true, ignore_serialize: unit_label.nil? && !unit_label_present?)]
    getter unit_label : String?

    @[JSON::Field(ignore: true)]
    property? unit_label_present : Bool = false

    # A URL of a publicly-accessible webpage for this product.
    @[JSON::Field(key: "url", type: String?, presence: true, ignore_serialize: url.nil? && !url_present?)]
    getter url : String?

    @[JSON::Field(ignore: true)]
    property? url_present : Bool = false

    # List of class defined in anyOf (OpenAPI v3)
    def self.openapi_any_of
      [
        Stripe::DeletedProduct,
        Stripe::Product,
        String,
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @active : Bool? = nil,
      @created : Int64? = nil,
      @id : String? = nil,
      @images : Array(String)? = nil,
      @livemode : Bool? = nil,
      @metadata : Hash(String, String)? = nil,
      @name : String? = nil,
      @object : String? = nil,
      @updated : Int64? = nil,
      @deleted : Bool? = nil,
      # Optional properties
      @default_price : ProductDefaultPrice? = nil,
      @description : String? = nil,
      @package_dimensions : ProductPackageDimensions? = nil,
      @shippable : Bool? = nil,
      @statement_descriptor : String? = nil,
      @tax_code : ProductTaxCode? = nil,
      @unit_label : String? = nil,
      @url : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if @id.to_s.size > 5000
        invalid_properties.push("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      if @name.to_s.size > 5000
        invalid_properties.push("invalid value for \"name\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_OBJECT.error_message) unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)

      invalid_properties.push(ENUM_VALIDATOR_FOR_DELETED.error_message) unless ENUM_VALIDATOR_FOR_DELETED.valid?(@deleted, false)

      if !@description.nil? && @description.to_s.size > 5000
        invalid_properties.push("invalid value for \"description\", the character length must be smaller than or equal to 5000.")
      end

      if !@statement_descriptor.nil? && @statement_descriptor.to_s.size > 5000
        invalid_properties.push("invalid value for \"statement_descriptor\", the character length must be smaller than or equal to 5000.")
      end

      if !@unit_label.nil? && @unit_label.to_s.size > 5000
        invalid_properties.push("invalid value for \"unit_label\", the character length must be smaller than or equal to 5000.")
      end

      if !@url.nil? && @url.to_s.size > 2048
        invalid_properties.push("invalid value for \"url\", the character length must be smaller than or equal to 2048.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.to_s.size > 5000
      return false if @name.to_s.size > 5000
      return false unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      return false unless ENUM_VALIDATOR_FOR_DELETED.valid?(@deleted, false)
      return false if !@description.nil? && @description.to_s.size > 5000
      return false if !@statement_descriptor.nil? && @statement_descriptor.to_s.size > 5000
      return false if !@unit_label.nil? && @unit_label.to_s.size > 5000
      return false if !@url.nil? && @url.to_s.size > 2048

      _any_of_found = false
      json_string : String = self.to_json
      _any_of_found = self.class.openapi_any_of.any? do |_class|
        _any_of = begin
          _class.from_json(json_string)
        rescue
          nil
        end

        !_any_of.nil? && _any_of.not_nil!.valid?
      end
      return false if !_any_of_found

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
    # @param [Object] name Value to be assigned
    def name=(name)
      if name.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"name\", the character length must be smaller than or equal to 5000.")
      end

      @name = name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object)
      ENUM_VALIDATOR_FOR_OBJECT.valid!(object, false)
      @object = object
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] deleted Object to be assigned
    def deleted=(deleted)
      ENUM_VALIDATOR_FOR_DELETED.valid!(deleted, false)
      @deleted = deleted
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description)
      if !description.nil? && description.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"description\", the character length must be smaller than or equal to 5000.")
      end

      @description = description
    end

    # Custom attribute writer method with validation
    # @param [Object] statement_descriptor Value to be assigned
    def statement_descriptor=(statement_descriptor)
      if !statement_descriptor.nil? && statement_descriptor.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"statement_descriptor\", the character length must be smaller than or equal to 5000.")
      end

      @statement_descriptor = statement_descriptor
    end

    # Custom attribute writer method with validation
    # @param [Object] unit_label Value to be assigned
    def unit_label=(unit_label)
      if !unit_label.nil? && unit_label.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"unit_label\", the character length must be smaller than or equal to 5000.")
      end

      @unit_label = unit_label
    end

    # Custom attribute writer method with validation
    # @param [Object] url Value to be assigned
    def url=(url)
      if !url.nil? && url.to_s.size > 2048
        raise ArgumentError.new("invalid value for \"url\", the character length must be smaller than or equal to 2048.")
      end

      @url = url
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@active, @created, @id, @images, @livemode, @metadata, @name, @object, @updated, @deleted, @default_price, @description, @package_dimensions, @shippable, @statement_descriptor, @tax_code, @unit_label, @url)
  end
end