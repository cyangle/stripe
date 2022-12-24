#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-11-15
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

    # Required Properties

    # Whether the product is currently available for purchase.
    @[JSON::Field(key: "active", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter active : Bool? = nil

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter created : Int64? = nil

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil
    MAX_LENGTH_FOR_ID = 5000

    # A list of up to 8 URLs of images for this product, meant to be displayable to the customer.
    @[JSON::Field(key: "images", type: Array(String)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter images : Array(String)? = nil

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter livemode : Bool? = nil

    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter metadata : Hash(String, String)? = nil

    # The product's name, meant to be displayable to the customer.
    @[JSON::Field(key: "name", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter name : String? = nil
    MAX_LENGTH_FOR_NAME = 5000

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter object : String? = nil
    ERROR_MESSAGE_FOR_OBJECT = "invalid value for \"object\", must be one of [product]."
    VALID_VALUES_FOR_OBJECT  = String.static_array("product")

    # Time at which the object was last updated. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "updated", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter updated : Int64? = nil

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "default_price", type: Stripe::ProductDefaultPrice?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: default_price.nil? && !default_price_present?)]
    getter default_price : Stripe::ProductDefaultPrice? = nil

    @[JSON::Field(ignore: true)]
    property? default_price_present : Bool = false

    # The product's description, meant to be displayable to the customer. Use this field to optionally store a long form explanation of the product being sold for your own rendering purposes.
    @[JSON::Field(key: "description", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: description.nil? && !description_present?)]
    getter description : String? = nil
    MAX_LENGTH_FOR_DESCRIPTION = 5000

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
    MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR = 5000

    @[JSON::Field(ignore: true)]
    property? statement_descriptor_present : Bool = false

    @[JSON::Field(key: "tax_code", type: Stripe::ProductTaxCode?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: tax_code.nil? && !tax_code_present?)]
    getter tax_code : Stripe::ProductTaxCode? = nil

    @[JSON::Field(ignore: true)]
    property? tax_code_present : Bool = false

    # A label that represents units of this product in Stripe and on customers’ receipts and invoices. When set, this will be included in associated invoice line item descriptions.
    @[JSON::Field(key: "unit_label", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: unit_label.nil? && !unit_label_present?)]
    getter unit_label : String? = nil
    MAX_LENGTH_FOR_UNIT_LABEL = 5000

    @[JSON::Field(ignore: true)]
    property? unit_label_present : Bool = false

    # A URL of a publicly-accessible webpage for this product.
    @[JSON::Field(key: "url", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: url.nil? && !url_present?)]
    getter url : String? = nil
    MAX_LENGTH_FOR_URL = 2048

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

      unless (_id = @id).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("id", _id.to_s.size, MAX_LENGTH_FOR_ID)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"images\" is required and cannot be null") if @images.nil?

      invalid_properties.push("\"livemode\" is required and cannot be null") if @livemode.nil?

      invalid_properties.push("\"metadata\" is required and cannot be null") if @metadata.nil?

      invalid_properties.push("\"name\" is required and cannot be null") if @name.nil?

      unless (_name = @name).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("name", _name.to_s.size, MAX_LENGTH_FOR_NAME)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"object\" is required and cannot be null") if @object.nil?

      unless (_object = @object).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_OBJECT) unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end
      invalid_properties.push("\"updated\" is required and cannot be null") if @updated.nil?

      unless (_default_price = @default_price).nil?
        invalid_properties.concat(_default_price.list_invalid_properties_for("default_price")) if _default_price.is_a?(OpenApi::Validatable)
      end
      unless (_description = @description).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("description", _description.to_s.size, MAX_LENGTH_FOR_DESCRIPTION)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_package_dimensions = @package_dimensions).nil?
        invalid_properties.concat(_package_dimensions.list_invalid_properties_for("package_dimensions")) if _package_dimensions.is_a?(OpenApi::Validatable)
      end

      unless (_statement_descriptor = @statement_descriptor).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("statement_descriptor", _statement_descriptor.to_s.size, MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_tax_code = @tax_code).nil?
        invalid_properties.concat(_tax_code.list_invalid_properties_for("tax_code")) if _tax_code.is_a?(OpenApi::Validatable)
      end
      unless (_unit_label = @unit_label).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("unit_label", _unit_label.to_s.size, MAX_LENGTH_FOR_UNIT_LABEL)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_url = @url).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("url", _url.to_s.size, MAX_LENGTH_FOR_URL)
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
      unless (_id = @id).nil?
        return false if _id.to_s.size > MAX_LENGTH_FOR_ID
      end

      return false if @images.nil?

      return false if @livemode.nil?

      return false if @metadata.nil?

      return false if @name.nil?
      unless (_name = @name).nil?
        return false if _name.to_s.size > MAX_LENGTH_FOR_NAME
      end

      return false if @object.nil?
      unless (_object = @object).nil?
        return false unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end

      return false if @updated.nil?

      unless (_default_price = @default_price).nil?
        return false if _default_price.is_a?(OpenApi::Validatable) && !_default_price.valid?
      end

      unless (_description = @description).nil?
        return false if _description.to_s.size > MAX_LENGTH_FOR_DESCRIPTION
      end

      unless (_package_dimensions = @package_dimensions).nil?
        return false if _package_dimensions.is_a?(OpenApi::Validatable) && !_package_dimensions.valid?
      end

      unless (_statement_descriptor = @statement_descriptor).nil?
        return false if _statement_descriptor.to_s.size > MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR
      end

      unless (_tax_code = @tax_code).nil?
        return false if _tax_code.is_a?(OpenApi::Validatable) && !_tax_code.valid?
      end

      unless (_unit_label = @unit_label).nil?
        return false if _unit_label.to_s.size > MAX_LENGTH_FOR_UNIT_LABEL
      end

      unless (_url = @url).nil?
        return false if _url.to_s.size > MAX_LENGTH_FOR_URL
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] active Object to be assigned
    def active=(new_value : Bool?)
      raise ArgumentError.new("\"active\" is required and cannot be null") if new_value.nil?

      @active = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] created Object to be assigned
    def created=(new_value : Int64?)
      raise ArgumentError.new("\"created\" is required and cannot be null") if new_value.nil?

      @created = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] id Object to be assigned
    def id=(new_value : String?)
      raise ArgumentError.new("\"id\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("id", new_value.to_s.size, MAX_LENGTH_FOR_ID)
      end

      @id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] images Object to be assigned
    def images=(new_value : Array(String)?)
      raise ArgumentError.new("\"images\" is required and cannot be null") if new_value.nil?

      @images = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] livemode Object to be assigned
    def livemode=(new_value : Bool?)
      raise ArgumentError.new("\"livemode\" is required and cannot be null") if new_value.nil?

      @livemode = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(new_value : Hash(String, String)?)
      raise ArgumentError.new("\"metadata\" is required and cannot be null") if new_value.nil?

      @metadata = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] name Object to be assigned
    def name=(new_value : String?)
      raise ArgumentError.new("\"name\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("name", new_value.to_s.size, MAX_LENGTH_FOR_NAME)
      end

      @name = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(new_value : String?)
      raise ArgumentError.new("\"object\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::EnumValidator.validate("object", new_value, VALID_VALUES_FOR_OBJECT)
      end

      @object = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] updated Object to be assigned
    def updated=(new_value : Int64?)
      raise ArgumentError.new("\"updated\" is required and cannot be null") if new_value.nil?

      @updated = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] default_price Object to be assigned
    def default_price=(new_value : Stripe::ProductDefaultPrice?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @default_price = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] description Object to be assigned
    def description=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("description", new_value.to_s.size, MAX_LENGTH_FOR_DESCRIPTION)
      end

      @description = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] package_dimensions Object to be assigned
    def package_dimensions=(new_value : Stripe::ProductPackageDimensions?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @package_dimensions = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] shippable Object to be assigned
    def shippable=(new_value : Bool?)
      @shippable = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] statement_descriptor Object to be assigned
    def statement_descriptor=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("statement_descriptor", new_value.to_s.size, MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR)
      end

      @statement_descriptor = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tax_code Object to be assigned
    def tax_code=(new_value : Stripe::ProductTaxCode?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @tax_code = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] unit_label Object to be assigned
    def unit_label=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("unit_label", new_value.to_s.size, MAX_LENGTH_FOR_UNIT_LABEL)
      end

      @unit_label = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] url Object to be assigned
    def url=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("url", new_value.to_s.size, MAX_LENGTH_FOR_URL)
      end

      @url = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@active, @created, @id, @images, @livemode, @metadata, @name, @object, @updated, @default_price, @default_price_present, @description, @description_present, @package_dimensions, @package_dimensions_present, @shippable, @shippable_present, @statement_descriptor, @statement_descriptor_present, @tax_code, @tax_code_present, @unit_label, @unit_label_present, @url, @url_present)
  end
end
