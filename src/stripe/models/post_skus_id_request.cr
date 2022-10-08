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
  class PostSkusIdRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # Whether this SKU is available for purchase.
    @[JSON::Field(key: "active", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter active : Bool? = nil

    # A dictionary of attributes and values for the attributes defined by the product. When specified, `attributes` will partially update the existing attributes dictionary on the product, with the postcondition that a value must be present for each attribute key on the product.
    @[JSON::Field(key: "attributes", type: Hash(String, String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter attributes : Hash(String, String)? = nil

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[JSON::Field(key: "currency", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter currency : String? = nil

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    # The URL of an image for this SKU, meant to be displayable to the customer.
    @[JSON::Field(key: "image", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter image : String? = nil
    MAX_LENGTH_FOR_IMAGE = 5000

    @[JSON::Field(key: "inventory", type: Stripe::InventoryUpdateSpecs?, default: nil, required: false, nullable: false, emit_null: false)]
    getter inventory : Stripe::InventoryUpdateSpecs? = nil

    @[JSON::Field(key: "metadata", type: Stripe::PostAccountsRequestMetadata?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Stripe::PostAccountsRequestMetadata? = nil

    @[JSON::Field(key: "package_dimensions", type: Stripe::PostSkusIdRequestPackageDimensions?, default: nil, required: false, nullable: false, emit_null: false)]
    getter package_dimensions : Stripe::PostSkusIdRequestPackageDimensions? = nil

    # The cost of the item as a positive integer in the smallest currency unit (that is, 100 cents to charge $1.00, or 100 to charge ¥100, Japanese Yen being a zero-decimal currency).
    @[JSON::Field(key: "price", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter price : Int64? = nil

    # The ID of the product that this SKU should belong to. The product must exist, have the same set of attribute names as the SKU's current product, and be of type `good`.
    @[JSON::Field(key: "product", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter product : String? = nil
    MAX_LENGTH_FOR_PRODUCT = 5000

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
      @inventory : Stripe::InventoryUpdateSpecs? = nil,
      @metadata : Stripe::PostAccountsRequestMetadata? = nil,
      @package_dimensions : Stripe::PostSkusIdRequestPackageDimensions? = nil,
      @price : Int64? = nil,
      @product : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_image = @image).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("image", _image.to_s.size, MAX_LENGTH_FOR_IMAGE)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_inventory = @inventory).nil?
        invalid_properties.concat(_inventory.list_invalid_properties_for("inventory")) if _inventory.is_a?(OpenApi::Validatable)
      end
      unless (_metadata = @metadata).nil?
        invalid_properties.concat(_metadata.list_invalid_properties_for("metadata")) if _metadata.is_a?(OpenApi::Validatable)
      end
      unless (_package_dimensions = @package_dimensions).nil?
        invalid_properties.concat(_package_dimensions.list_invalid_properties_for("package_dimensions")) if _package_dimensions.is_a?(OpenApi::Validatable)
      end

      unless (_product = @product).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("product", _product.to_s.size, MAX_LENGTH_FOR_PRODUCT)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_image = @image).nil?
        return false if _image.to_s.size > MAX_LENGTH_FOR_IMAGE
      end

      unless (_inventory = @inventory).nil?
        return false if _inventory.is_a?(OpenApi::Validatable) && !_inventory.valid?
      end

      unless (_metadata = @metadata).nil?
        return false if _metadata.is_a?(OpenApi::Validatable) && !_metadata.valid?
      end

      unless (_package_dimensions = @package_dimensions).nil?
        return false if _package_dimensions.is_a?(OpenApi::Validatable) && !_package_dimensions.valid?
      end

      unless (_product = @product).nil?
        return false if _product.to_s.size > MAX_LENGTH_FOR_PRODUCT
      end

      true
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
    # @param [Object] currency Object to be assigned
    def currency=(currency : String?)
      if currency.nil?
        return @currency = nil
      end
      _currency = currency.not_nil!
      @currency = _currency
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
    # @param [Object] inventory Object to be assigned
    def inventory=(inventory : Stripe::InventoryUpdateSpecs?)
      if inventory.nil?
        return @inventory = nil
      end
      _inventory = inventory.not_nil!
      _inventory.validate if _inventory.is_a?(OpenApi::Validatable)
      @inventory = _inventory
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(metadata : Stripe::PostAccountsRequestMetadata?)
      if metadata.nil?
        return @metadata = nil
      end
      _metadata = metadata.not_nil!
      _metadata.validate if _metadata.is_a?(OpenApi::Validatable)
      @metadata = _metadata
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] package_dimensions Object to be assigned
    def package_dimensions=(package_dimensions : Stripe::PostSkusIdRequestPackageDimensions?)
      if package_dimensions.nil?
        return @package_dimensions = nil
      end
      _package_dimensions = package_dimensions.not_nil!
      _package_dimensions.validate if _package_dimensions.is_a?(OpenApi::Validatable)
      @package_dimensions = _package_dimensions
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] price Object to be assigned
    def price=(price : Int64?)
      if price.nil?
        return @price = nil
      end
      _price = price.not_nil!
      @price = _price
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] product Object to be assigned
    def product=(product : String?)
      if product.nil?
        return @product = nil
      end
      _product = product.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("product", _product.to_s.size, MAX_LENGTH_FOR_PRODUCT)
      @product = _product
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@active, @attributes, @currency, @expand, @image, @inventory, @metadata, @package_dimensions, @price, @product)
  end
end
