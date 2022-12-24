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
  class PostTaxRatesTaxRateRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # Flag determining whether the tax rate is active or inactive (archived). Inactive tax rates cannot be used with new applications or Checkout Sessions, but will still work for subscriptions and invoices that already have it set.
    @[JSON::Field(key: "active", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter active : Bool? = nil

    # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
    @[JSON::Field(key: "country", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter country : String? = nil
    MAX_LENGTH_FOR_COUNTRY = 5000

    # An arbitrary string attached to the tax rate for your internal use only. It will not be visible to your customers.
    @[JSON::Field(key: "description", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter description : String? = nil
    MAX_LENGTH_FOR_DESCRIPTION = 5000

    # The display name of the tax rate, which will be shown to users.
    @[JSON::Field(key: "display_name", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter display_name : String? = nil
    MAX_LENGTH_FOR_DISPLAY_NAME = 50

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    # The jurisdiction for the tax rate. You can use this label field for tax reporting purposes. It also appears on your customer’s invoice.
    @[JSON::Field(key: "jurisdiction", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter jurisdiction : String? = nil
    MAX_LENGTH_FOR_JURISDICTION = 50

    @[JSON::Field(key: "metadata", type: Stripe::PostAccountsRequestMetadata?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Stripe::PostAccountsRequestMetadata? = nil

    # [ISO 3166-2 subdivision code](https://en.wikipedia.org/wiki/ISO_3166-2:US), without country prefix. For example, \"NY\" for New York, United States.
    @[JSON::Field(key: "state", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter state : String? = nil
    MAX_LENGTH_FOR_STATE = 2

    # The high-level tax type, such as `vat` or `sales_tax`.
    @[JSON::Field(key: "tax_type", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter tax_type : String? = nil
    ERROR_MESSAGE_FOR_TAX_TYPE = "invalid value for \"tax_type\", must be one of [gst, hst, jct, pst, qst, rst, sales_tax, vat]."
    VALID_VALUES_FOR_TAX_TYPE  = String.static_array("gst", "hst", "jct", "pst", "qst", "rst", "sales_tax", "vat")

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @active : Bool? = nil,
      @country : String? = nil,
      @description : String? = nil,
      @display_name : String? = nil,
      @expand : Array(String)? = nil,
      @jurisdiction : String? = nil,
      @metadata : Stripe::PostAccountsRequestMetadata? = nil,
      @state : String? = nil,
      @tax_type : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_country = @country).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("country", _country.to_s.size, MAX_LENGTH_FOR_COUNTRY)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_description = @description).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("description", _description.to_s.size, MAX_LENGTH_FOR_DESCRIPTION)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_display_name = @display_name).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("display_name", _display_name.to_s.size, MAX_LENGTH_FOR_DISPLAY_NAME)
          invalid_properties.push(max_length_error)
        end
      end

      unless (_jurisdiction = @jurisdiction).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("jurisdiction", _jurisdiction.to_s.size, MAX_LENGTH_FOR_JURISDICTION)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_metadata = @metadata).nil?
        invalid_properties.concat(_metadata.list_invalid_properties_for("metadata")) if _metadata.is_a?(OpenApi::Validatable)
      end
      unless (_state = @state).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("state", _state.to_s.size, MAX_LENGTH_FOR_STATE)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_tax_type = @tax_type).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_TAX_TYPE) unless OpenApi::EnumValidator.valid?(_tax_type, VALID_VALUES_FOR_TAX_TYPE)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_country = @country).nil?
        return false if _country.to_s.size > MAX_LENGTH_FOR_COUNTRY
      end

      unless (_description = @description).nil?
        return false if _description.to_s.size > MAX_LENGTH_FOR_DESCRIPTION
      end

      unless (_display_name = @display_name).nil?
        return false if _display_name.to_s.size > MAX_LENGTH_FOR_DISPLAY_NAME
      end

      unless (_jurisdiction = @jurisdiction).nil?
        return false if _jurisdiction.to_s.size > MAX_LENGTH_FOR_JURISDICTION
      end

      unless (_metadata = @metadata).nil?
        return false if _metadata.is_a?(OpenApi::Validatable) && !_metadata.valid?
      end

      unless (_state = @state).nil?
        return false if _state.to_s.size > MAX_LENGTH_FOR_STATE
      end

      unless (_tax_type = @tax_type).nil?
        return false unless OpenApi::EnumValidator.valid?(_tax_type, VALID_VALUES_FOR_TAX_TYPE)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] active Object to be assigned
    def active=(new_value : Bool?)
      @active = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] country Object to be assigned
    def country=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("country", new_value.to_s.size, MAX_LENGTH_FOR_COUNTRY)
      end

      @country = new_value
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
    # @param [Object] display_name Object to be assigned
    def display_name=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("display_name", new_value.to_s.size, MAX_LENGTH_FOR_DISPLAY_NAME)
      end

      @display_name = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expand Object to be assigned
    def expand=(new_value : Array(String)?)
      @expand = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] jurisdiction Object to be assigned
    def jurisdiction=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("jurisdiction", new_value.to_s.size, MAX_LENGTH_FOR_JURISDICTION)
      end

      @jurisdiction = new_value
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
    # @param [Object] state Object to be assigned
    def state=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("state", new_value.to_s.size, MAX_LENGTH_FOR_STATE)
      end

      @state = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tax_type Object to be assigned
    def tax_type=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("tax_type", new_value, VALID_VALUES_FOR_TAX_TYPE)
      end

      @tax_type = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@active, @country, @description, @display_name, @expand, @jurisdiction, @metadata, @state, @tax_type)
  end
end
