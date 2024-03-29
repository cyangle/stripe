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
  class PostProductsIdRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # Whether the product is available for purchase.
    @[JSON::Field(key: "active", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter active : Bool? = nil

    # The ID of the [Price](https://stripe.com/docs/api/prices) object that is the default price for this product.
    @[JSON::Field(key: "default_price", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter default_price : String? = nil
    MAX_LENGTH_FOR_DEFAULT_PRICE = 5000

    # The product's description, meant to be displayable to the customer. Use this field to optionally store a long form explanation of the product being sold for your own rendering purposes.
    @[JSON::Field(key: "description", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter description : String? = nil
    MAX_LENGTH_FOR_DESCRIPTION = 40000

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    @[JSON::Field(key: "images", type: Stripe::PostProductsIdRequestImages?, default: nil, required: false, nullable: false, emit_null: false)]
    getter images : Stripe::PostProductsIdRequestImages? = nil

    @[JSON::Field(key: "metadata", type: Stripe::PostAccountsRequestMetadata?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Stripe::PostAccountsRequestMetadata? = nil

    # The product's name, meant to be displayable to the customer.
    @[JSON::Field(key: "name", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter name : String? = nil
    MAX_LENGTH_FOR_NAME = 5000

    @[JSON::Field(key: "package_dimensions", type: Stripe::PostProductsIdRequestPackageDimensions?, default: nil, required: false, nullable: false, emit_null: false)]
    getter package_dimensions : Stripe::PostProductsIdRequestPackageDimensions? = nil

    # Whether this product is shipped (i.e., physical goods).
    @[JSON::Field(key: "shippable", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter shippable : Bool? = nil

    # An arbitrary string to be displayed on your customer's credit card or bank statement. While most banks display this information consistently, some may display it incorrectly or not at all.  This may be up to 22 characters. The statement description may not include `<`, `>`, `\\`, `\"`, `'` characters, and will appear on your customer's statement in capital letters. Non-ASCII characters are automatically stripped.  It must contain at least one letter. May only be set if `type=service`.
    @[JSON::Field(key: "statement_descriptor", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter statement_descriptor : String? = nil
    MAX_LENGTH_FOR_STATEMENT_DESCRIPTOR = 22

    @[JSON::Field(key: "tax_code", type: Stripe::PostInvoiceitemsRequestTaxCode?, default: nil, required: false, nullable: false, emit_null: false)]
    getter tax_code : Stripe::PostInvoiceitemsRequestTaxCode? = nil

    # A label that represents units of this product in Stripe and on customers’ receipts and invoices. When set, this will be included in associated invoice line item descriptions. May only be set if `type=service`.
    @[JSON::Field(key: "unit_label", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter unit_label : String? = nil
    MAX_LENGTH_FOR_UNIT_LABEL = 12

    @[JSON::Field(key: "url", type: Stripe::PostProductsIdRequestUrl?, default: nil, required: false, nullable: false, emit_null: false)]
    getter url : Stripe::PostProductsIdRequestUrl? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @active : Bool? = nil,
      @default_price : String? = nil,
      @description : String? = nil,
      @expand : Array(String)? = nil,
      @images : Stripe::PostProductsIdRequestImages? = nil,
      @metadata : Stripe::PostAccountsRequestMetadata? = nil,
      @name : String? = nil,
      @package_dimensions : Stripe::PostProductsIdRequestPackageDimensions? = nil,
      @shippable : Bool? = nil,
      @statement_descriptor : String? = nil,
      @tax_code : Stripe::PostInvoiceitemsRequestTaxCode? = nil,
      @unit_label : String? = nil,
      @url : Stripe::PostProductsIdRequestUrl? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_default_price = @default_price).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("default_price", _default_price.to_s.size, MAX_LENGTH_FOR_DEFAULT_PRICE)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_description = @description).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("description", _description.to_s.size, MAX_LENGTH_FOR_DESCRIPTION)
          invalid_properties.push(max_length_error)
        end
      end

      unless (_images = @images).nil?
        invalid_properties.concat(_images.list_invalid_properties_for("images")) if _images.is_a?(OpenApi::Validatable)
      end
      unless (_metadata = @metadata).nil?
        invalid_properties.concat(_metadata.list_invalid_properties_for("metadata")) if _metadata.is_a?(OpenApi::Validatable)
      end
      unless (_name = @name).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("name", _name.to_s.size, MAX_LENGTH_FOR_NAME)
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
        invalid_properties.concat(_url.list_invalid_properties_for("url")) if _url.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_default_price = @default_price).nil?
        return false if _default_price.to_s.size > MAX_LENGTH_FOR_DEFAULT_PRICE
      end

      unless (_description = @description).nil?
        return false if _description.to_s.size > MAX_LENGTH_FOR_DESCRIPTION
      end

      unless (_images = @images).nil?
        return false if _images.is_a?(OpenApi::Validatable) && !_images.valid?
      end

      unless (_metadata = @metadata).nil?
        return false if _metadata.is_a?(OpenApi::Validatable) && !_metadata.valid?
      end

      unless (_name = @name).nil?
        return false if _name.to_s.size > MAX_LENGTH_FOR_NAME
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
        return false if _url.is_a?(OpenApi::Validatable) && !_url.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] active Object to be assigned
    def active=(new_value : Bool?)
      @active = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] default_price Object to be assigned
    def default_price=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("default_price", new_value.to_s.size, MAX_LENGTH_FOR_DEFAULT_PRICE)
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
    # @param [Object] expand Object to be assigned
    def expand=(new_value : Array(String)?)
      @expand = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] images Object to be assigned
    def images=(new_value : Stripe::PostProductsIdRequestImages?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @images = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(new_value : Stripe::PostAccountsRequestMetadata?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @metadata = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] name Object to be assigned
    def name=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("name", new_value.to_s.size, MAX_LENGTH_FOR_NAME)
      end

      @name = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] package_dimensions Object to be assigned
    def package_dimensions=(new_value : Stripe::PostProductsIdRequestPackageDimensions?)
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
    def tax_code=(new_value : Stripe::PostInvoiceitemsRequestTaxCode?)
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
    def url=(new_value : Stripe::PostProductsIdRequestUrl?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @url = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@active, @default_price, @description, @expand, @images, @metadata, @name, @package_dimensions, @shippable, @statement_descriptor, @tax_code, @unit_label, @url)
  end
end
