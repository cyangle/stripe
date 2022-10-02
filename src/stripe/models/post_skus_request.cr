#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-08-01
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module Stripe
  class PostSkusRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[JSON::Field(key: "currency", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter currency : String? = nil

    @[JSON::Field(key: "inventory", type: Stripe::InventoryCreateSpecs?, default: nil, required: true, nullable: false, emit_null: false)]
    getter inventory : Stripe::InventoryCreateSpecs? = nil

    # The cost of the item as a nonnegative integer in the smallest currency unit (that is, 100 cents to charge $1.00, or 100 to charge ¥100, Japanese Yen being a zero-decimal currency).
    @[JSON::Field(key: "price", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter price : Int64? = nil

    # The ID of the product this SKU is associated with. Must be a product with type `good`.
    @[JSON::Field(key: "product", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter product : String? = nil
    MAX_LENGTH_FOR_PRODUCT = 5000

    # Optional properties

    # Whether the SKU is available for purchase. Default to `true`.
    @[JSON::Field(key: "active", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter active : Bool? = nil

    # A dictionary of attributes and values for the attributes defined by the product. If, for example, a product's attributes are `[\"size\", \"gender\"]`, a valid SKU has the following dictionary of attributes: `{\"size\": \"Medium\", \"gender\": \"Unisex\"}`.
    @[JSON::Field(key: "attributes", type: Hash(String, String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter attributes : Hash(String, String)? = nil

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    # The identifier for the SKU. Must be unique. If not provided, an identifier will be randomly generated.
    @[JSON::Field(key: "id", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter id : String? = nil

    # The URL of an image for this SKU, meant to be displayable to the customer.
    @[JSON::Field(key: "image", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter image : String? = nil
    MAX_LENGTH_FOR_IMAGE = 5000

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Hash(String, String)? = nil

    @[JSON::Field(key: "package_dimensions", type: Stripe::PackageDimensionsSpecs2?, default: nil, required: false, nullable: false, emit_null: false)]
    getter package_dimensions : Stripe::PackageDimensionsSpecs2? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @currency : String? = nil,
      @inventory : Stripe::InventoryCreateSpecs? = nil,
      @price : Int64? = nil,
      @product : String? = nil,
      # Optional properties
      @active : Bool? = nil,
      @attributes : Hash(String, String)? = nil,
      @expand : Array(String)? = nil,
      @id : String? = nil,
      @image : String? = nil,
      @metadata : Hash(String, String)? = nil,
      @package_dimensions : Stripe::PackageDimensionsSpecs2? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"currency\" is required and cannot be null") if @currency.nil?

      invalid_properties.push("\"inventory\" is required and cannot be null") if @inventory.nil?

      if _inventory = @inventory
        invalid_properties.concat(_inventory.list_invalid_properties_for("inventory")) if _inventory.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"price\" is required and cannot be null") if @price.nil?

      invalid_properties.push("\"product\" is required and cannot be null") if @product.nil?

      if _product = @product
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("product", _product.to_s.size, MAX_LENGTH_FOR_PRODUCT)
          invalid_properties.push(max_length_error)
        end
      end

      if _image = @image
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("image", _image.to_s.size, MAX_LENGTH_FOR_IMAGE)
          invalid_properties.push(max_length_error)
        end
      end

      if _package_dimensions = @package_dimensions
        invalid_properties.concat(_package_dimensions.list_invalid_properties_for("package_dimensions")) if _package_dimensions.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @currency.nil?

      return false if @inventory.nil?
      if _inventory = @inventory
        return false if _inventory.is_a?(OpenApi::Validatable) && !_inventory.valid?
      end

      return false if @price.nil?

      return false if @product.nil?
      if _product = @product
        return false if _product.to_s.size > MAX_LENGTH_FOR_PRODUCT
      end

      if _image = @image
        return false if _image.to_s.size > MAX_LENGTH_FOR_IMAGE
      end

      if _package_dimensions = @package_dimensions
        return false if _package_dimensions.is_a?(OpenApi::Validatable) && !_package_dimensions.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] currency Object to be assigned
    def currency=(currency : String?)
      if currency.nil?
        raise ArgumentError.new("\"currency\" is required and cannot be null")
      end
      _currency = currency.not_nil!
      @currency = _currency
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] inventory Object to be assigned
    def inventory=(inventory : Stripe::InventoryCreateSpecs?)
      if inventory.nil?
        raise ArgumentError.new("\"inventory\" is required and cannot be null")
      end
      _inventory = inventory.not_nil!
      _inventory.validate if _inventory.is_a?(OpenApi::Validatable)
      @inventory = _inventory
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] price Object to be assigned
    def price=(price : Int64?)
      if price.nil?
        raise ArgumentError.new("\"price\" is required and cannot be null")
      end
      _price = price.not_nil!
      @price = _price
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] product Object to be assigned
    def product=(product : String?)
      if product.nil?
        raise ArgumentError.new("\"product\" is required and cannot be null")
      end
      _product = product.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("product", _product.to_s.size, MAX_LENGTH_FOR_PRODUCT)
      @product = _product
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] active Object to be assigned
    def active=(active : Bool?)
      if active.nil?
        return @active = nil
      end
      _active = active.not_nil!
      @active = _active
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] attributes Object to be assigned
    def attributes=(attributes : Hash(String, String)?)
      if attributes.nil?
        return @attributes = nil
      end
      _attributes = attributes.not_nil!
      @attributes = _attributes
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expand Object to be assigned
    def expand=(expand : Array(String)?)
      if expand.nil?
        return @expand = nil
      end
      _expand = expand.not_nil!
      @expand = _expand
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] id Object to be assigned
    def id=(id : String?)
      if id.nil?
        return @id = nil
      end
      _id = id.not_nil!
      @id = _id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] image Object to be assigned
    def image=(image : String?)
      if image.nil?
        return @image = nil
      end
      _image = image.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("image", _image.to_s.size, MAX_LENGTH_FOR_IMAGE)
      @image = _image
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(metadata : Hash(String, String)?)
      if metadata.nil?
        return @metadata = nil
      end
      _metadata = metadata.not_nil!
      @metadata = _metadata
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] package_dimensions Object to be assigned
    def package_dimensions=(package_dimensions : Stripe::PackageDimensionsSpecs2?)
      if package_dimensions.nil?
        return @package_dimensions = nil
      end
      _package_dimensions = package_dimensions.not_nil!
      _package_dimensions.validate if _package_dimensions.is_a?(OpenApi::Validatable)
      @package_dimensions = _package_dimensions
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@currency, @inventory, @price, @product, @active, @attributes, @expand, @id, @image, @metadata, @package_dimensions)
  end
end
