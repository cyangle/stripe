#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./tax_rate"

module Stripe
  # The tax rate that was applied to get this tax amount.
  class CreditNoteTaxAmountTaxRate
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Defaults to `true`. When set to `false`, this tax rate cannot be used with new applications or Checkout Sessions, but will still work for subscriptions and invoices that already have it set.
    @[JSON::Field(key: "active", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    property active : Bool? = nil

    # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
    @[JSON::Field(key: "country", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    property country : String? = nil
    MAX_LENGTH_FOR_COUNTRY = 5000

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    property created : Int64? = nil

    # An arbitrary string attached to the tax rate for your internal use only. It will not be visible to your customers.
    @[JSON::Field(key: "description", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    property description : String? = nil
    MAX_LENGTH_FOR_DESCRIPTION = 5000

    # The display name of the tax rates as it will appear to your customer on their receipt email, PDF, and the hosted invoice page.
    @[JSON::Field(key: "display_name", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    property display_name : String? = nil
    MAX_LENGTH_FOR_DISPLAY_NAME = 5000

    # Actual/effective tax rate percentage out of 100. For tax calculations with automatic_tax[enabled]=true, this percentage reflects the rate actually used to calculate tax based on the product's taxability and whether the user is registered to collect taxes in the corresponding jurisdiction.
    @[JSON::Field(key: "effective_percentage", type: Float64?, default: nil, required: true, nullable: true, emit_null: true)]
    property effective_percentage : Float64? = nil

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    property id : String? = nil
    MAX_LENGTH_FOR_ID = 5000

    # This specifies if the tax rate is inclusive or exclusive.
    @[JSON::Field(key: "inclusive", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    property inclusive : Bool? = nil

    # The jurisdiction for the tax rate. You can use this label field for tax reporting purposes. It also appears on your customer’s invoice.
    @[JSON::Field(key: "jurisdiction", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    property jurisdiction : String? = nil
    MAX_LENGTH_FOR_JURISDICTION = 5000

    # The level of the jurisdiction that imposes this tax rate. Will be `null` for manually defined tax rates.
    @[JSON::Field(key: "jurisdiction_level", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    property jurisdiction_level : String? = nil
    ERROR_MESSAGE_FOR_JURISDICTION_LEVEL = "invalid value for \"jurisdiction_level\", must be one of [city, country, county, district, multiple, state]."
    VALID_VALUES_FOR_JURISDICTION_LEVEL  = String.static_array("city", "country", "county", "district", "multiple", "state")

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    property livemode : Bool? = nil

    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: true, nullable: true, emit_null: true)]
    property metadata : Hash(String, String)? = nil

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    property object : String? = nil
    ERROR_MESSAGE_FOR_OBJECT = "invalid value for \"object\", must be one of [tax_rate]."
    VALID_VALUES_FOR_OBJECT  = String.static_array("tax_rate")

    # Tax rate percentage out of 100. For tax calculations with automatic_tax[enabled]=true, this percentage includes the statutory tax rate of non-taxable jurisdictions.
    @[JSON::Field(key: "percentage", type: Float64?, default: nil, required: true, nullable: false, emit_null: false)]
    property percentage : Float64? = nil

    # [ISO 3166-2 subdivision code](https://en.wikipedia.org/wiki/ISO_3166-2:US), without country prefix. For example, \"NY\" for New York, United States.
    @[JSON::Field(key: "state", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    property state : String? = nil
    MAX_LENGTH_FOR_STATE = 5000

    # The high-level tax type, such as `vat` or `sales_tax`.
    @[JSON::Field(key: "tax_type", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    property tax_type : String? = nil
    ERROR_MESSAGE_FOR_TAX_TYPE = "invalid value for \"tax_type\", must be one of [amusement_tax, communications_tax, gst, hst, igst, jct, lease_tax, pst, qst, rst, sales_tax, vat]."
    VALID_VALUES_FOR_TAX_TYPE  = String.static_array("amusement_tax", "communications_tax", "gst", "hst", "igst", "jct", "lease_tax", "pst", "qst", "rst", "sales_tax", "vat")

    # End of Required Properties
    # List of class defined in anyOf (OpenAPI v3)
    def self.openapi_any_of
      [
        String,
        Stripe::TaxRate,
      ]
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @active : Bool? = nil,
      @country : String? = nil,
      @created : Int64? = nil,
      @description : String? = nil,
      @display_name : String? = nil,
      @effective_percentage : Float64? = nil,
      @id : String? = nil,
      @inclusive : Bool? = nil,
      @jurisdiction : String? = nil,
      @jurisdiction_level : String? = nil,
      @livemode : Bool? = nil,
      @metadata : Hash(String, String)? = nil,
      @object : String? = nil,
      @percentage : Float64? = nil,
      @state : String? = nil,
      @tax_type : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      _any_of_found = false
      json_string : String = self.to_json
      _any_of_found = self.class.openapi_any_of.any? do |_class|
        _any_of = begin
          _class.from_json(json_string)
        rescue
          nil
        end

        !_any_of.nil? && _any_of.not_nil!.valid?
      end
      return false if !_any_of_found

      true
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@active, @country, @created, @description, @display_name, @effective_percentage, @id, @inclusive, @jurisdiction, @jurisdiction_level, @livemode, @metadata, @object, @percentage, @state, @tax_type)
  end
end
