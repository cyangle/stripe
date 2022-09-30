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
  # Tax rates can be applied to [invoices](https://stripe.com/docs/billing/invoices/tax-rates), [subscriptions](https://stripe.com/docs/billing/subscriptions/taxes) and [Checkout Sessions](https://stripe.com/docs/payments/checkout/set-up-a-subscription#tax-rates) to collect tax.  Related guide: [Tax Rates](https://stripe.com/docs/billing/taxes/tax-rates).
  class TaxRate
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    # Defaults to `true`. When set to `false`, this tax rate cannot be used with new applications or Checkout Sessions, but will still work for subscriptions and invoices that already have it set.
    @[JSON::Field(key: "active", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter active : Bool? = nil

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter created : Int64? = nil

    # The display name of the tax rates as it will appear to your customer on their receipt email, PDF, and the hosted invoice page.
    @[JSON::Field(key: "display_name", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter display_name : String? = nil

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil

    # This specifies if the tax rate is inclusive or exclusive.
    @[JSON::Field(key: "inclusive", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter inclusive : Bool? = nil

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter livemode : Bool? = nil

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter object : String? = nil

    VALID_VALUES_FOR_OBJECT = StaticArray["tax_rate"]

    # This represents the tax rate percent out of 100.
    @[JSON::Field(key: "percentage", type: Float64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter percentage : Float64? = nil

    # Optional properties

    # Two-letter country code ([ISO 3166-1 alpha-2](https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2)).
    @[JSON::Field(key: "country", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: country.nil? && !country_present?)]
    getter country : String? = nil

    @[JSON::Field(ignore: true)]
    property? country_present : Bool = false

    # An arbitrary string attached to the tax rate for your internal use only. It will not be visible to your customers.
    @[JSON::Field(key: "description", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: description.nil? && !description_present?)]
    getter description : String? = nil

    @[JSON::Field(ignore: true)]
    property? description_present : Bool = false

    # The jurisdiction for the tax rate. You can use this label field for tax reporting purposes. It also appears on your customer’s invoice.
    @[JSON::Field(key: "jurisdiction", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: jurisdiction.nil? && !jurisdiction_present?)]
    getter jurisdiction : String? = nil

    @[JSON::Field(ignore: true)]
    property? jurisdiction_present : Bool = false

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: metadata.nil? && !metadata_present?)]
    getter metadata : Hash(String, String)? = nil

    @[JSON::Field(ignore: true)]
    property? metadata_present : Bool = false

    # [ISO 3166-2 subdivision code](https://en.wikipedia.org/wiki/ISO_3166-2:US), without country prefix. For example, \"NY\" for New York, United States.
    @[JSON::Field(key: "state", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: state.nil? && !state_present?)]
    getter state : String? = nil

    @[JSON::Field(ignore: true)]
    property? state_present : Bool = false

    # The high-level tax type, such as `vat` or `sales_tax`.
    @[JSON::Field(key: "tax_type", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: tax_type.nil? && !tax_type_present?)]
    getter tax_type : String? = nil

    @[JSON::Field(ignore: true)]
    property? tax_type_present : Bool = false
    VALID_VALUES_FOR_TAX_TYPE = StaticArray["gst", "hst", "jct", "pst", "qst", "rst", "sales_tax", "vat"]

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @active : Bool? = nil,
      @created : Int64? = nil,
      @display_name : String? = nil,
      @id : String? = nil,
      @inclusive : Bool? = nil,
      @livemode : Bool? = nil,
      @object : String? = nil,
      @percentage : Float64? = nil,
      # Optional properties
      @country : String? = nil,
      @description : String? = nil,
      @jurisdiction : String? = nil,
      @metadata : Hash(String, String)? = nil,
      @state : String? = nil,
      @tax_type : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"active\" is required and cannot be null") if @active.nil?

      invalid_properties.push("\"created\" is required and cannot be null") if @created.nil?

      invalid_properties.push("\"display_name\" is required and cannot be null") if @display_name.nil?

      if _display_name = @display_name
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("display_name", _display_name.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"id\" is required and cannot be null") if @id.nil?

      if _id = @id
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("id", _id.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"inclusive\" is required and cannot be null") if @inclusive.nil?

      invalid_properties.push("\"livemode\" is required and cannot be null") if @livemode.nil?

      invalid_properties.push("\"object\" is required and cannot be null") if @object.nil?

      if _object = @object
        invalid_properties.push(OpenApi::EnumValidator.error_message("object", VALID_VALUES_FOR_OBJECT)) unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end
      invalid_properties.push("\"percentage\" is required and cannot be null") if @percentage.nil?

      if _country = @country
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("country", _country.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _description = @description
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("description", _description.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _jurisdiction = @jurisdiction
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("jurisdiction", _jurisdiction.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end

      if _state = @state
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("state", _state.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      if _tax_type = @tax_type
        invalid_properties.push(OpenApi::EnumValidator.error_message("tax_type", VALID_VALUES_FOR_TAX_TYPE)) unless OpenApi::EnumValidator.valid?(_tax_type, VALID_VALUES_FOR_TAX_TYPE)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @active.nil?

      return false if @created.nil?

      return false if @display_name.nil?
      if _display_name = @display_name
        return false if _display_name.to_s.size > 5000
      end

      return false if @id.nil?
      if _id = @id
        return false if _id.to_s.size > 5000
      end

      return false if @inclusive.nil?

      return false if @livemode.nil?

      return false if @object.nil?
      if _object = @object
        return false unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end

      return false if @percentage.nil?

      if _country = @country
        return false if _country.to_s.size > 5000
      end

      if _description = @description
        return false if _description.to_s.size > 5000
      end

      if _jurisdiction = @jurisdiction
        return false if _jurisdiction.to_s.size > 5000
      end

      if _state = @state
        return false if _state.to_s.size > 5000
      end

      if _tax_type = @tax_type
        return false unless OpenApi::EnumValidator.valid?(_tax_type, VALID_VALUES_FOR_TAX_TYPE)
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
    # @param [Object] display_name Object to be assigned
    def display_name=(display_name : String?)
      if display_name.nil?
        raise ArgumentError.new("\"display_name\" is required and cannot be null")
      end
      _display_name = display_name.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("display_name", _display_name.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @display_name = _display_name
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
    # @param [Object] inclusive Object to be assigned
    def inclusive=(inclusive : Bool?)
      if inclusive.nil?
        raise ArgumentError.new("\"inclusive\" is required and cannot be null")
      end
      _inclusive = inclusive.not_nil!
      @inclusive = _inclusive
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
    # @param [Object] object Object to be assigned
    def object=(object : String?)
      if object.nil?
        raise ArgumentError.new("\"object\" is required and cannot be null")
      end
      _object = object.not_nil!
      OpenApi::EnumValidator.validate("object", _object, VALID_VALUES_FOR_OBJECT)
      @object = _object
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] percentage Object to be assigned
    def percentage=(percentage : Float64?)
      if percentage.nil?
        raise ArgumentError.new("\"percentage\" is required and cannot be null")
      end
      _percentage = percentage.not_nil!
      @percentage = _percentage
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] country Object to be assigned
    def country=(country : String?)
      if country.nil?
        return @country = nil
      end
      _country = country.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("country", _country.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @country = _country
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
    # @param [Object] jurisdiction Object to be assigned
    def jurisdiction=(jurisdiction : String?)
      if jurisdiction.nil?
        return @jurisdiction = nil
      end
      _jurisdiction = jurisdiction.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("jurisdiction", _jurisdiction.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @jurisdiction = _jurisdiction
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
    # @param [Object] state Object to be assigned
    def state=(state : String?)
      if state.nil?
        return @state = nil
      end
      _state = state.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("state", _state.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @state = _state
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tax_type Object to be assigned
    def tax_type=(tax_type : String?)
      if tax_type.nil?
        return @tax_type = nil
      end
      _tax_type = tax_type.not_nil!
      OpenApi::EnumValidator.validate("tax_type", _tax_type, VALID_VALUES_FOR_TAX_TYPE)
      @tax_type = _tax_type
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@active, @created, @display_name, @id, @inclusive, @livemode, @object, @percentage, @country, @country_present, @description, @description_present, @jurisdiction, @jurisdiction_present, @metadata, @metadata_present, @state, @state_present, @tax_type, @tax_type_present)
  end
end
