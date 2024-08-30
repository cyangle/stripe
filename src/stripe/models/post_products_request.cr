#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./features"
require "./package_dimensions_specs"
require "./price_data_without_product"

module Stripe
  class PostProductsRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The product's name, meant to be displayable to the customer.
    @[JSON::Field(key: "name", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter name : String? = nil
    MAX_LENGTH_FOR_NAME = 5000

    # End of Required Properties

    # Optional Properties

    # Whether the product is currently available for purchase. Defaults to `true`.
    @[JSON::Field(key: "active", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter active : Bool? = nil

    @[JSON::Field(key: "default_price_data", type: Stripe::PriceDataWithoutProduct?, default: nil, required: false, nullable: false, emit_null: false)]
    getter default_price_data : Stripe::PriceDataWithoutProduct? = nil

    # The product's description, meant to be displayable to the customer. Use this field to optionally store a long form explanation of the product being sold for your own rendering purposes.
    @[JSON::Field(key: "description", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter description : String? = nil
    MAX_LENGTH_FOR_DESCRIPTION = 40000

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    # An identifier will be randomly generated by Stripe. You can optionally override this ID, but the ID must be unique across all products in your Stripe account.
    @[JSON::Field(key: "id", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter id : String? = nil
    MAX_LENGTH_FOR_ID = 5000

    # A list of up to 8 URLs of images for this product, meant to be displayable to the customer.
    @[JSON::Field(key: "images", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter images : Array(String)? = nil

    # A list of up to 15 marketing features for this product. These are displayed in [pricing tables](https://stripe.com/docs/payments/checkout/pricing-table).
    @[JSON::Field(key: "marketing_features", type: Array(Stripe::Features)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter marketing_features : Array(Stripe::Features)? = nil

    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Hash(String, String)? = nil

    @[JSON::Field(key: "package_dimensions", type: Stripe::PackageDimensionsSpecs?, default: nil, required: false, nullable: false, emit_null: false)]
    getter package_dimensions : Stripe::PackageDimensionsSpecs? = nil

    # Whether this product is shipped (i.e., physical goods).
    @[JSON::Field(key: "shippable", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter shippable : Bool? = nil

    # An arbitrary string to be displayed on your customer's credit card or bank statement. While most banks display this information consistently, some may display it incorrectly or not at all.  This may be up to 22 characters. The statement description may not include `<`, `>`, `\\`, `\"`, `'` characters, and will appear on your customer's statement in capital letters. Non-ASCII characters are automatically stripped.  It must contain at least one letter. Only used for subscription payments.
    @[JSON::Field(key: "statement_descriptor", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter statement_descriptor : String? = nil
    MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR = 22

    # A [tax code](https://stripe.com/docs/tax/tax-categories) ID.
    @[JSON::Field(key: "tax_code", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter tax_code : String? = nil

    # The type of the product. Defaults to `service` if not explicitly specified, enabling use of this product with Subscriptions and Plans. Set this parameter to `good` to use this product with Orders and SKUs. On API versions before `2018-02-05`, this field defaults to `good` for compatibility reasons.
    @[JSON::Field(key: "type", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter _type : String? = nil
    ERROR_MESSAGE_FOR__TYPE = "invalid value for \"_type\", must be one of [good, service]."
    VALID_VALUES_FOR__TYPE  = String.static_array("good", "service")

    # A label that represents units of this product. When set, this will be included in customers' receipts, invoices, Checkout, and the customer portal.
    @[JSON::Field(key: "unit_label", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter unit_label : String? = nil
    MAX_LENGTH_FOR_UNIT_LABEL = 12

    # A URL of a publicly-accessible webpage for this product.
    @[JSON::Field(key: "url", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter url : String? = nil
    MAX_LENGTH_FOR_URL = 5000

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @name : String? = nil,
      # Optional properties
      @active : Bool? = nil,
      @default_price_data : Stripe::PriceDataWithoutProduct? = nil,
      @description : String? = nil,
      @expand : Array(String)? = nil,
      @id : String? = nil,
      @images : Array(String)? = nil,
      @marketing_features : Array(Stripe::Features)? = nil,
      @metadata : Hash(String, String)? = nil,
      @package_dimensions : Stripe::PackageDimensionsSpecs? = nil,
      @shippable : Bool? = nil,
      @statement_descriptor : String? = nil,
      @tax_code : String? = nil,
      @_type : String? = nil,
      @unit_label : String? = nil,
      @url : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"name\" is required and cannot be null") if @name.nil?

      unless (_name = @name).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("name", _name.to_s.size, MAX_LENGTH_FOR_NAME)
          invalid_properties.push(max_length_error)
        end
      end

      unless (_default_price_data = @default_price_data).nil?
        invalid_properties.concat(_default_price_data.list_invalid_properties_for("default_price_data")) if _default_price_data.is_a?(OpenApi::Validatable)
      end
      unless (_description = @description).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("description", _description.to_s.size, MAX_LENGTH_FOR_DESCRIPTION)
          invalid_properties.push(max_length_error)
        end
      end

      unless (_id = @id).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("id", _id.to_s.size, MAX_LENGTH_FOR_ID)
          invalid_properties.push(max_length_error)
        end
      end

      unless (_marketing_features = @marketing_features).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "marketing_features", container: _marketing_features)) if _marketing_features.is_a?(Array)
      end

      unless (_package_dimensions = @package_dimensions).nil?
        invalid_properties.concat(_package_dimensions.list_invalid_properties_for("package_dimensions")) if _package_dimensions.is_a?(OpenApi::Validatable)
      end

      unless (_statement_descriptor = @statement_descriptor).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("statement_descriptor", _statement_descriptor.to_s.size, MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR)
          invalid_properties.push(max_length_error)
        end
      end

      unless (__type = @_type).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR__TYPE) unless OpenApi::EnumValidator.valid?(__type, VALID_VALUES_FOR__TYPE)
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
      return false if @name.nil?
      unless (_name = @name).nil?
        return false if _name.to_s.size > MAX_LENGTH_FOR_NAME
      end

      unless (_default_price_data = @default_price_data).nil?
        return false if _default_price_data.is_a?(OpenApi::Validatable) && !_default_price_data.valid?
      end

      unless (_description = @description).nil?
        return false if _description.to_s.size > MAX_LENGTH_FOR_DESCRIPTION
      end

      unless (_id = @id).nil?
        return false if _id.to_s.size > MAX_LENGTH_FOR_ID
      end

      unless (_marketing_features = @marketing_features).nil?
        return false if _marketing_features.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _marketing_features)
      end

      unless (_package_dimensions = @package_dimensions).nil?
        return false if _package_dimensions.is_a?(OpenApi::Validatable) && !_package_dimensions.valid?
      end

      unless (_statement_descriptor = @statement_descriptor).nil?
        return false if _statement_descriptor.to_s.size > MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR
      end

      unless (__type = @_type).nil?
        return false unless OpenApi::EnumValidator.valid?(__type, VALID_VALUES_FOR__TYPE)
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
    # @param [Object] name Object to be assigned
    def name=(new_value : String?)
      raise ArgumentError.new("\"name\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("name", new_value.to_s.size, MAX_LENGTH_FOR_NAME)
      end

      @name = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] active Object to be assigned
    def active=(new_value : Bool?)
      @active = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] default_price_data Object to be assigned
    def default_price_data=(new_value : Stripe::PriceDataWithoutProduct?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @default_price_data = new_value
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
    # @param [Object] expand Object to be assigned
    def expand=(new_value : Array(String)?)
      @expand = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] id Object to be assigned
    def id=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("id", new_value.to_s.size, MAX_LENGTH_FOR_ID)
      end

      @id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] images Object to be assigned
    def images=(new_value : Array(String)?)
      @images = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] marketing_features Object to be assigned
    def marketing_features=(new_value : Array(Stripe::Features)?)
      unless new_value.nil?
        OpenApi::ContainerValidator.validate(container: new_value) if new_value.is_a?(Array)
      end

      @marketing_features = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(new_value : Hash(String, String)?)
      @metadata = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] package_dimensions Object to be assigned
    def package_dimensions=(new_value : Stripe::PackageDimensionsSpecs?)
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
    def tax_code=(new_value : String?)
      @tax_code = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("_type", new_value, VALID_VALUES_FOR__TYPE)
      end

      @_type = new_value
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
    def_equals_and_hash(@name, @active, @default_price_data, @description, @expand, @id, @images, @marketing_features, @metadata, @package_dimensions, @shippable, @statement_descriptor, @tax_code, @_type, @unit_label, @url)
  end
end
