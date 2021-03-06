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
  class PostSkusIdRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Optional properties

    # Whether this SKU is available for purchase.
    @[JSON::Field(key: "active", type: Bool?, presence: true, ignore_serialize: active.nil? && !active_present?)]
    property active : Bool?

    @[JSON::Field(ignore: true)]
    property? active_present : Bool = false

    # A dictionary of attributes and values for the attributes defined by the product. When specified, `attributes` will partially update the existing attributes dictionary on the product, with the postcondition that a value must be present for each attribute key on the product.
    @[JSON::Field(key: "attributes", type: Hash(String, String)?, presence: true, ignore_serialize: attributes.nil? && !attributes_present?)]
    property attributes : Hash(String, String)?

    @[JSON::Field(ignore: true)]
    property? attributes_present : Bool = false

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[JSON::Field(key: "currency", type: String?, presence: true, ignore_serialize: currency.nil? && !currency_present?)]
    property currency : String?

    @[JSON::Field(ignore: true)]
    property? currency_present : Bool = false

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, presence: true, ignore_serialize: expand.nil? && !expand_present?)]
    property expand : Array(String)?

    @[JSON::Field(ignore: true)]
    property? expand_present : Bool = false

    # The URL of an image for this SKU, meant to be displayable to the customer.
    @[JSON::Field(key: "image", type: String?, presence: true, ignore_serialize: image.nil? && !image_present?)]
    getter image : String?

    @[JSON::Field(ignore: true)]
    property? image_present : Bool = false

    @[JSON::Field(key: "inventory", type: InventoryUpdateSpecs?, presence: true, ignore_serialize: inventory.nil? && !inventory_present?)]
    property inventory : InventoryUpdateSpecs?

    @[JSON::Field(ignore: true)]
    property? inventory_present : Bool = false

    @[JSON::Field(key: "metadata", type: PostAccountRequestMetadata?, presence: true, ignore_serialize: metadata.nil? && !metadata_present?)]
    property metadata : PostAccountRequestMetadata?

    @[JSON::Field(ignore: true)]
    property? metadata_present : Bool = false

    @[JSON::Field(key: "package_dimensions", type: PostSkusIdRequestPackageDimensions?, presence: true, ignore_serialize: package_dimensions.nil? && !package_dimensions_present?)]
    property package_dimensions : PostSkusIdRequestPackageDimensions?

    @[JSON::Field(ignore: true)]
    property? package_dimensions_present : Bool = false

    # The cost of the item as a positive integer in the smallest currency unit (that is, 100 cents to charge $1.00, or 100 to charge ??100, Japanese Yen being a zero-decimal currency).
    @[JSON::Field(key: "price", type: Int64?, presence: true, ignore_serialize: price.nil? && !price_present?)]
    property price : Int64?

    @[JSON::Field(ignore: true)]
    property? price_present : Bool = false

    # The ID of the product that this SKU should belong to. The product must exist, have the same set of attribute names as the SKU's current product, and be of type `good`.
    @[JSON::Field(key: "product", type: String?, presence: true, ignore_serialize: product.nil? && !product_present?)]
    getter product : String?

    @[JSON::Field(ignore: true)]
    property? product_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @active : Bool? = nil,
      @attributes : Hash(String, String)? = nil,
      @currency : String? = nil,
      @expand : Array(String)? = nil,
      @image : String? = nil,
      @inventory : InventoryUpdateSpecs? = nil,
      @metadata : PostAccountRequestMetadata? = nil,
      @package_dimensions : PostSkusIdRequestPackageDimensions? = nil,
      @price : Int64? = nil,
      @product : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if !@image.nil? && @image.to_s.size > 5000
        invalid_properties.push("invalid value for \"image\", the character length must be smaller than or equal to 5000.")
      end

      if !@product.nil? && @product.to_s.size > 5000
        invalid_properties.push("invalid value for \"product\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@image.nil? && @image.to_s.size > 5000
      return false if !@product.nil? && @product.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] image Value to be assigned
    def image=(image : String?)
      if !image.nil? && image.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"image\", the character length must be smaller than or equal to 5000.")
      end

      @image = image
    end

    # Custom attribute writer method with validation
    # @param [Object] product Value to be assigned
    def product=(product : String?)
      if !product.nil? && product.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"product\", the character length must be smaller than or equal to 5000.")
      end

      @product = product
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
    def_equals_and_hash(@active, @active_present, @attributes, @attributes_present, @currency, @currency_present, @expand, @expand_present, @image, @image_present, @inventory, @inventory_present, @metadata, @metadata_present, @package_dimensions, @package_dimensions_present, @price, @price_present, @product, @product_present)
  end
end
