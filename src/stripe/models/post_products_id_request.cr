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
  @[JSON::Serializable::Options(emit_nulls: true)]
  class PostProductsIdRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    # Whether the product is available for purchase.
    @[JSON::Field(key: "active", type: Bool?, presence: true, ignore_serialize: active.nil? && !active_present?)]
    property active : Bool?

    @[JSON::Field(ignore: true)]
    property? active_present : Bool = false

    # The ID of the [Price](https://stripe.com/docs/api/prices) object that is the default price for this product.
    @[JSON::Field(key: "default_price", type: String?, presence: true, ignore_serialize: default_price.nil? && !default_price_present?)]
    getter default_price : String?

    @[JSON::Field(ignore: true)]
    property? default_price_present : Bool = false

    # The product's description, meant to be displayable to the customer. Use this field to optionally store a long form explanation of the product being sold for your own rendering purposes.
    @[JSON::Field(key: "description", type: String?, presence: true, ignore_serialize: description.nil? && !description_present?)]
    getter description : String?

    @[JSON::Field(ignore: true)]
    property? description_present : Bool = false

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, presence: true, ignore_serialize: expand.nil? && !expand_present?)]
    property expand : Array(String)?

    @[JSON::Field(ignore: true)]
    property? expand_present : Bool = false

    @[JSON::Field(key: "images", type: PostProductsIdRequestImages?, presence: true, ignore_serialize: images.nil? && !images_present?)]
    property images : PostProductsIdRequestImages?

    @[JSON::Field(ignore: true)]
    property? images_present : Bool = false

    @[JSON::Field(key: "metadata", type: PostAccountRequestMetadata?, presence: true, ignore_serialize: metadata.nil? && !metadata_present?)]
    property metadata : PostAccountRequestMetadata?

    @[JSON::Field(ignore: true)]
    property? metadata_present : Bool = false

    # The product's name, meant to be displayable to the customer.
    @[JSON::Field(key: "name", type: String?, presence: true, ignore_serialize: name.nil? && !name_present?)]
    getter name : String?

    @[JSON::Field(ignore: true)]
    property? name_present : Bool = false

    @[JSON::Field(key: "package_dimensions", type: PostProductsIdRequestPackageDimensions?, presence: true, ignore_serialize: package_dimensions.nil? && !package_dimensions_present?)]
    property package_dimensions : PostProductsIdRequestPackageDimensions?

    @[JSON::Field(ignore: true)]
    property? package_dimensions_present : Bool = false

    # Whether this product is shipped (i.e., physical goods).
    @[JSON::Field(key: "shippable", type: Bool?, presence: true, ignore_serialize: shippable.nil? && !shippable_present?)]
    property shippable : Bool?

    @[JSON::Field(ignore: true)]
    property? shippable_present : Bool = false

    # An arbitrary string to be displayed on your customer's credit card or bank statement. While most banks display this information consistently, some may display it incorrectly or not at all.  This may be up to 22 characters. The statement description may not include `<`, `>`, `\\`, `\"`, `'` characters, and will appear on your customer's statement in capital letters. Non-ASCII characters are automatically stripped.  It must contain at least one letter. May only be set if `type=service`.
    @[JSON::Field(key: "statement_descriptor", type: String?, presence: true, ignore_serialize: statement_descriptor.nil? && !statement_descriptor_present?)]
    getter statement_descriptor : String?

    @[JSON::Field(ignore: true)]
    property? statement_descriptor_present : Bool = false

    @[JSON::Field(key: "tax_code", type: PostProductsIdRequestTaxCode?, presence: true, ignore_serialize: tax_code.nil? && !tax_code_present?)]
    property tax_code : PostProductsIdRequestTaxCode?

    @[JSON::Field(ignore: true)]
    property? tax_code_present : Bool = false

    # A label that represents units of this product in Stripe and on customers’ receipts and invoices. When set, this will be included in associated invoice line item descriptions. May only be set if `type=service`.
    @[JSON::Field(key: "unit_label", type: String?, presence: true, ignore_serialize: unit_label.nil? && !unit_label_present?)]
    getter unit_label : String?

    @[JSON::Field(ignore: true)]
    property? unit_label_present : Bool = false

    @[JSON::Field(key: "url", type: PostProductsIdRequestUrl?, presence: true, ignore_serialize: url.nil? && !url_present?)]
    property url : PostProductsIdRequestUrl?

    @[JSON::Field(ignore: true)]
    property? url_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @active : Bool? = nil,
      @default_price : String? = nil,
      @description : String? = nil,
      @expand : Array(String)? = nil,
      @images : PostProductsIdRequestImages? = nil,
      @metadata : PostAccountRequestMetadata? = nil,
      @name : String? = nil,
      @package_dimensions : PostProductsIdRequestPackageDimensions? = nil,
      @shippable : Bool? = nil,
      @statement_descriptor : String? = nil,
      @tax_code : PostProductsIdRequestTaxCode? = nil,
      @unit_label : String? = nil,
      @url : PostProductsIdRequestUrl? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if !@default_price.nil? && @default_price.to_s.size > 5000
        invalid_properties.push("invalid value for \"default_price\", the character length must be smaller than or equal to 5000.")
      end

      if !@description.nil? && @description.to_s.size > 40000
        invalid_properties.push("invalid value for \"description\", the character length must be smaller than or equal to 40000.")
      end

      if !@name.nil? && @name.to_s.size > 5000
        invalid_properties.push("invalid value for \"name\", the character length must be smaller than or equal to 5000.")
      end

      if !@statement_descriptor.nil? && @statement_descriptor.to_s.size > 22
        invalid_properties.push("invalid value for \"statement_descriptor\", the character length must be smaller than or equal to 22.")
      end

      if !@unit_label.nil? && @unit_label.to_s.size > 12
        invalid_properties.push("invalid value for \"unit_label\", the character length must be smaller than or equal to 12.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@default_price.nil? && @default_price.to_s.size > 5000
      return false if !@description.nil? && @description.to_s.size > 40000
      return false if !@name.nil? && @name.to_s.size > 5000
      return false if !@statement_descriptor.nil? && @statement_descriptor.to_s.size > 22
      return false if !@unit_label.nil? && @unit_label.to_s.size > 12

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] default_price Value to be assigned
    def default_price=(default_price)
      if !default_price.nil? && default_price.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"default_price\", the character length must be smaller than or equal to 5000.")
      end

      @default_price = default_price
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description)
      if !description.nil? && description.to_s.size > 40000
        raise ArgumentError.new("invalid value for \"description\", the character length must be smaller than or equal to 40000.")
      end

      @description = description
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name)
      if !name.nil? && name.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"name\", the character length must be smaller than or equal to 5000.")
      end

      @name = name
    end

    # Custom attribute writer method with validation
    # @param [Object] statement_descriptor Value to be assigned
    def statement_descriptor=(statement_descriptor)
      if !statement_descriptor.nil? && statement_descriptor.to_s.size > 22
        raise ArgumentError.new("invalid value for \"statement_descriptor\", the character length must be smaller than or equal to 22.")
      end

      @statement_descriptor = statement_descriptor
    end

    # Custom attribute writer method with validation
    # @param [Object] unit_label Value to be assigned
    def unit_label=(unit_label)
      if !unit_label.nil? && unit_label.to_s.size > 12
        raise ArgumentError.new("invalid value for \"unit_label\", the character length must be smaller than or equal to 12.")
      end

      @unit_label = unit_label
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
    def_equals_and_hash(@active, @default_price, @description, @expand, @images, @metadata, @name, @package_dimensions, @shippable, @statement_descriptor, @tax_code, @unit_label, @url)
  end
end
