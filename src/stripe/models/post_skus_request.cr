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
  class PostSkusRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[JSON::Field(key: "currency", type: String)]
    property currency : String

    @[JSON::Field(key: "inventory", type: InventoryCreateSpecs)]
    property inventory : InventoryCreateSpecs

    # The cost of the item as a nonnegative integer in the smallest currency unit (that is, 100 cents to charge $1.00, or 100 to charge ¥100, Japanese Yen being a zero-decimal currency).
    @[JSON::Field(key: "price", type: Int64)]
    property price : Int64

    # The ID of the product this SKU is associated with. Must be a product with type `good`.
    @[JSON::Field(key: "product", type: String)]
    getter product : String

    # Optional properties

    # Whether the SKU is available for purchase. Default to `true`.
    @[JSON::Field(key: "active", type: Bool?, presence: true, ignore_serialize: active.nil? && !active_present?)]
    property active : Bool?

    @[JSON::Field(ignore: true)]
    property? active_present : Bool = false

    # A dictionary of attributes and values for the attributes defined by the product. If, for example, a product's attributes are `[\"size\", \"gender\"]`, a valid SKU has the following dictionary of attributes: `{\"size\": \"Medium\", \"gender\": \"Unisex\"}`.
    @[JSON::Field(key: "attributes", type: Hash(String, String)?, presence: true, ignore_serialize: attributes.nil? && !attributes_present?)]
    property attributes : Hash(String, String)?

    @[JSON::Field(ignore: true)]
    property? attributes_present : Bool = false

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, presence: true, ignore_serialize: expand.nil? && !expand_present?)]
    property expand : Array(String)?

    @[JSON::Field(ignore: true)]
    property? expand_present : Bool = false

    # The identifier for the SKU. Must be unique. If not provided, an identifier will be randomly generated.
    @[JSON::Field(key: "id", type: String?, presence: true, ignore_serialize: id.nil? && !id_present?)]
    property id : String?

    @[JSON::Field(ignore: true)]
    property? id_present : Bool = false

    # The URL of an image for this SKU, meant to be displayable to the customer.
    @[JSON::Field(key: "image", type: String?, presence: true, ignore_serialize: image.nil? && !image_present?)]
    getter image : String?

    @[JSON::Field(ignore: true)]
    property? image_present : Bool = false

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    @[JSON::Field(key: "metadata", type: Hash(String, String)?, presence: true, ignore_serialize: metadata.nil? && !metadata_present?)]
    property metadata : Hash(String, String)?

    @[JSON::Field(ignore: true)]
    property? metadata_present : Bool = false

    @[JSON::Field(key: "package_dimensions", type: PackageDimensionsSpecs2?, presence: true, ignore_serialize: package_dimensions.nil? && !package_dimensions_present?)]
    property package_dimensions : PackageDimensionsSpecs2?

    @[JSON::Field(ignore: true)]
    property? package_dimensions_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @currency : String,
      @inventory : InventoryCreateSpecs,
      @price : Int64,
      @product : String,
      # Optional properties
      @active : Bool? = nil,
      @attributes : Hash(String, String)? = nil,
      @expand : Array(String)? = nil,
      @id : String? = nil,
      @image : String? = nil,
      @metadata : Hash(String, String)? = nil,
      @package_dimensions : PackageDimensionsSpecs2? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if @product.to_s.size > 5000
        invalid_properties.push("invalid value for \"product\", the character length must be smaller than or equal to 5000.")
      end

      if !@image.nil? && @image.to_s.size > 5000
        invalid_properties.push("invalid value for \"image\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @product.to_s.size > 5000
      return false if !@image.nil? && @image.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] product Value to be assigned
    def product=(product : String)
      if product.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"product\", the character length must be smaller than or equal to 5000.")
      end

      @product = product
    end

    # Custom attribute writer method with validation
    # @param [Object] image Value to be assigned
    def image=(image : String?)
      if !image.nil? && image.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"image\", the character length must be smaller than or equal to 5000.")
      end

      @image = image
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
    def_equals_and_hash(@currency, @inventory, @price, @product, @active, @active_present, @attributes, @attributes_present, @expand, @expand_present, @id, @id_present, @image, @image_present, @metadata, @metadata_present, @package_dimensions, @package_dimensions_present)
  end
end
