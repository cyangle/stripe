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
  # Products describe the specific goods or services you offer to your customers. For example, you might offer a Standard and Premium version of your goods or service; each version would be a separate Product. They can be used in conjunction with [Prices](https://stripe.com/docs/api#prices) to configure pricing in Payment Links, Checkout, and Subscriptions.  Related guides: [Set up a subscription](https://stripe.com/docs/billing/subscriptions/set-up-subscription), [share a Payment Link](https://stripe.com/docs/payments/payment-links/overview), [accept payments with Checkout](https://stripe.com/docs/payments/accept-a-payment#create-product-prices-upfront), and more about [Products and Prices](https://stripe.com/docs/products-prices/overview)
  class Product
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    # Whether the product is currently available for purchase.
    @[JSON::Field(key: "active", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter active : Bool? = nil

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter created : Int64? = nil

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil

    # A list of up to 8 URLs of images for this product, meant to be displayable to the customer.
    @[JSON::Field(key: "images", type: Array(String)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter images : Array(String)? = nil

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter livemode : Bool? = nil

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter metadata : Hash(String, String)? = nil

    # The product's name, meant to be displayable to the customer.
    @[JSON::Field(key: "name", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter name : String? = nil

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter object : String? = nil

    ENUM_VALIDATOR_FOR_OBJECT = OpenApi::EnumValidator.new("object", "String", ["product"])

    # Time at which the object was last updated. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "updated", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter updated : Int64? = nil

    # Optional properties

    @[JSON::Field(key: "default_price", type: Stripe::ProductDefaultPrice?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: default_price.nil? && !default_price_present?)]
    getter default_price : Stripe::ProductDefaultPrice? = nil

    @[JSON::Field(ignore: true)]
    property? default_price_present : Bool = false

    # The product's description, meant to be displayable to the customer. Use this field to optionally store a long form explanation of the product being sold for your own rendering purposes.
    @[JSON::Field(key: "description", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: description.nil? && !description_present?)]
    getter description : String? = nil

    @[JSON::Field(ignore: true)]
    property? description_present : Bool = false

    @[JSON::Field(key: "package_dimensions", type: Stripe::ProductPackageDimensions?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: package_dimensions.nil? && !package_dimensions_present?)]
    getter package_dimensions : Stripe::ProductPackageDimensions? = nil

    @[JSON::Field(ignore: true)]
    property? package_dimensions_present : Bool = false

    # Whether this product is shipped (i.e., physical goods).
    @[JSON::Field(key: "shippable", type: Bool?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: shippable.nil? && !shippable_present?)]
    getter shippable : Bool? = nil

    @[JSON::Field(ignore: true)]
    property? shippable_present : Bool = false

    # Extra information about a product which will appear on your customer's credit card statement. In the case that multiple products are billed at once, the first statement descriptor will be used.
    @[JSON::Field(key: "statement_descriptor", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: statement_descriptor.nil? && !statement_descriptor_present?)]
    getter statement_descriptor : String? = nil

    @[JSON::Field(ignore: true)]
    property? statement_descriptor_present : Bool = false

    @[JSON::Field(key: "tax_code", type: Stripe::ProductTaxCode?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: tax_code.nil? && !tax_code_present?)]
    getter tax_code : Stripe::ProductTaxCode? = nil

    @[JSON::Field(ignore: true)]
    property? tax_code_present : Bool = false

    # A label that represents units of this product in Stripe and on customers’ receipts and invoices. When set, this will be included in associated invoice line item descriptions.
    @[JSON::Field(key: "unit_label", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: unit_label.nil? && !unit_label_present?)]
    getter unit_label : String? = nil

    @[JSON::Field(ignore: true)]
    property? unit_label_present : Bool = false

    # A URL of a publicly-accessible webpage for this product.
    @[JSON::Field(key: "url", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: url.nil? && !url_present?)]
    getter url : String? = nil

    @[JSON::Field(ignore: true)]
    property? url_present : Bool = false

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
      # Optional properties
      @default_price : Stripe::ProductDefaultPrice? = nil,
      @description : String? = nil,
      @package_dimensions : Stripe::ProductPackageDimensions? = nil,
      @shippable : Bool? = nil,
      @statement_descriptor : String? = nil,
      @tax_code : Stripe::ProductTaxCode? = nil,
      @unit_label : String? = nil,
      @url : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      invalid_properties.push("\"active\" is required and cannot be null") if @active.nil?

      invalid_properties.push("\"created\" is required and cannot be null") if @created.nil?

      invalid_properties.push("\"id\" is required and cannot be null") if @id.nil?
      if _id = @id
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("id", _id.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"images\" is required and cannot be null") if @images.nil?

      invalid_properties.push("\"livemode\" is required and cannot be null") if @livemode.nil?

      invalid_properties.push("\"metadata\" is required and cannot be null") if @metadata.nil?

      invalid_properties.push("\"name\" is required and cannot be null") if @name.nil?
      if _name = @name
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("name", _name.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_OBJECT.error_message) unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      invalid_properties.push("\"updated\" is required and cannot be null") if @updated.nil?

      if _default_price = @default_price
        invalid_properties.concat(_default_price.list_invalid_properties_for("default_price")) if _default_price.is_a?(OpenApi::Validatable)
      end
      if _description = @description
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("description", _description.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _package_dimensions = @package_dimensions
        invalid_properties.concat(_package_dimensions.list_invalid_properties_for("package_dimensions")) if _package_dimensions.is_a?(OpenApi::Validatable)
      end

      if _statement_descriptor = @statement_descriptor
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("statement_descriptor", _statement_descriptor.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _tax_code = @tax_code
        invalid_properties.concat(_tax_code.list_invalid_properties_for("tax_code")) if _tax_code.is_a?(OpenApi::Validatable)
      end
      if _unit_label = @unit_label
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("unit_label", _unit_label.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _url = @url
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("url", _url.to_s.size, 2048)
          invalid_properties.push(max_length_error)
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @active.nil?

      return false if @created.nil?

      return false if @id.nil?
      if _id = @id
        return false if _id.to_s.size > 5000
      end
      return false if @images.nil?

      return false if @livemode.nil?

      return false if @metadata.nil?

      return false if @name.nil?
      if _name = @name
        return false if _name.to_s.size > 5000
      end
      return false unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      return false if @updated.nil?

      if _default_price = @default_price
        return false if _default_price.is_a?(OpenApi::Validatable) && !_default_price.valid?
      end
      if _description = @description
        return false if _description.to_s.size > 5000
      end
      if _package_dimensions = @package_dimensions
        return false if _package_dimensions.is_a?(OpenApi::Validatable) && !_package_dimensions.valid?
      end

      if _statement_descriptor = @statement_descriptor
        return false if _statement_descriptor.to_s.size > 5000
      end
      if _tax_code = @tax_code
        return false if _tax_code.is_a?(OpenApi::Validatable) && !_tax_code.valid?
      end
      if _unit_label = @unit_label
        return false if _unit_label.to_s.size > 5000
      end
      if _url = @url
        return false if _url.to_s.size > 2048
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] active Object to be assigned
    def active=(active : Bool?)
      if active.nil?
        raise ArgumentError.new("\"active\" is required and cannot be null")
      end
      _active = active.not_nil!
      @active = _active
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] created Object to be assigned
    def created=(created : Int64?)
      if created.nil?
        raise ArgumentError.new("\"created\" is required and cannot be null")
      end
      _created = created.not_nil!
      @created = _created
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] id Object to be assigned
    def id=(id : String?)
      if id.nil?
        raise ArgumentError.new("\"id\" is required and cannot be null")
      end
      _id = id.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("id", _id.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @id = _id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] images Object to be assigned
    def images=(images : Array(String)?)
      if images.nil?
        raise ArgumentError.new("\"images\" is required and cannot be null")
      end
      _images = images.not_nil!
      @images = _images
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] livemode Object to be assigned
    def livemode=(livemode : Bool?)
      if livemode.nil?
        raise ArgumentError.new("\"livemode\" is required and cannot be null")
      end
      _livemode = livemode.not_nil!
      @livemode = _livemode
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(metadata : Hash(String, String)?)
      if metadata.nil?
        raise ArgumentError.new("\"metadata\" is required and cannot be null")
      end
      _metadata = metadata.not_nil!
      @metadata = _metadata
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] name Object to be assigned
    def name=(name : String?)
      if name.nil?
        raise ArgumentError.new("\"name\" is required and cannot be null")
      end
      _name = name.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("name", _name.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @name = _name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object : String?)
      if object.nil?
        raise ArgumentError.new("\"object\" is required and cannot be null")
      end
      _object = object.not_nil!
      ENUM_VALIDATOR_FOR_OBJECT.valid!(_object)
      @object = _object
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] updated Object to be assigned
    def updated=(updated : Int64?)
      if updated.nil?
        raise ArgumentError.new("\"updated\" is required and cannot be null")
      end
      _updated = updated.not_nil!
      @updated = _updated
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] default_price Object to be assigned
    def default_price=(default_price : Stripe::ProductDefaultPrice?)
      if default_price.nil?
        return @default_price = nil
      end
      _default_price = default_price.not_nil!
      _default_price.validate if _default_price.is_a?(OpenApi::Validatable)
      @default_price = _default_price
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] description Object to be assigned
    def description=(description : String?)
      if description.nil?
        return @description = nil
      end
      _description = description.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("description", _description.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @description = _description
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] package_dimensions Object to be assigned
    def package_dimensions=(package_dimensions : Stripe::ProductPackageDimensions?)
      if package_dimensions.nil?
        return @package_dimensions = nil
      end
      _package_dimensions = package_dimensions.not_nil!
      _package_dimensions.validate if _package_dimensions.is_a?(OpenApi::Validatable)
      @package_dimensions = _package_dimensions
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] shippable Object to be assigned
    def shippable=(shippable : Bool?)
      if shippable.nil?
        return @shippable = nil
      end
      _shippable = shippable.not_nil!
      @shippable = _shippable
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] statement_descriptor Object to be assigned
    def statement_descriptor=(statement_descriptor : String?)
      if statement_descriptor.nil?
        return @statement_descriptor = nil
      end
      _statement_descriptor = statement_descriptor.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("statement_descriptor", _statement_descriptor.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @statement_descriptor = _statement_descriptor
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tax_code Object to be assigned
    def tax_code=(tax_code : Stripe::ProductTaxCode?)
      if tax_code.nil?
        return @tax_code = nil
      end
      _tax_code = tax_code.not_nil!
      _tax_code.validate if _tax_code.is_a?(OpenApi::Validatable)
      @tax_code = _tax_code
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] unit_label Object to be assigned
    def unit_label=(unit_label : String?)
      if unit_label.nil?
        return @unit_label = nil
      end
      _unit_label = unit_label.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("unit_label", _unit_label.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @unit_label = _unit_label
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] url Object to be assigned
    def url=(url : String?)
      if url.nil?
        return @url = nil
      end
      _url = url.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("url", _url.to_s.size, 2048)
        raise ArgumentError.new(max_length_error)
      end

      @url = _url
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@active, @created, @id, @images, @livemode, @metadata, @name, @object, @updated, @default_price, @default_price_present, @description, @description_present, @package_dimensions, @package_dimensions_present, @shippable, @shippable_present, @statement_descriptor, @statement_descriptor_present, @tax_code, @tax_code_present, @unit_label, @unit_label_present, @url, @url_present)
  end
end
