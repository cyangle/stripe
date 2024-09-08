#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./tax_calculation_ship_from_details"
require "./tax_product_resource_customer_details"
require "./tax_product_resource_tax_transaction_line_item_list"
require "./tax_transaction_reversal"
require "./tax_transaction_shipping_cost"

module Stripe
  # A Tax Transaction records the tax collected from or refunded to your customer.  Related guide: [Calculate tax in your custom payment flow](https://stripe.com/docs/tax/custom#tax-transaction)
  class TaxTransaction
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter created : Int64? = nil

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[JSON::Field(key: "currency", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter currency : String? = nil
    MAX_LENGTH_FOR_CURRENCY = 5000

    # The ID of an existing [Customer](https://stripe.com/docs/api/customers/object) used for the resource.
    @[JSON::Field(key: "customer", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter customer : String? = nil
    MAX_LENGTH_FOR_CUSTOMER = 5000

    @[JSON::Field(key: "customer_details", type: Stripe::TaxProductResourceCustomerDetails?, default: nil, required: true, nullable: false, emit_null: false)]
    getter customer_details : Stripe::TaxProductResourceCustomerDetails? = nil

    # Unique identifier for the transaction.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil
    MAX_LENGTH_FOR_ID = 5000

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter livemode : Bool? = nil

    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: true, nullable: true, emit_null: true)]
    getter metadata : Hash(String, String)? = nil

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter object : String? = nil
    ERROR_MESSAGE_FOR_OBJECT = "invalid value for \"object\", must be one of [tax.transaction]."
    VALID_VALUES_FOR_OBJECT  = String.static_array("tax.transaction")

    # The Unix timestamp representing when the tax liability is assumed or reduced.
    @[JSON::Field(key: "posted_at", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter posted_at : Int64? = nil

    # A custom unique identifier, such as 'myOrder_123'.
    @[JSON::Field(key: "reference", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter reference : String? = nil
    MAX_LENGTH_FOR_REFERENCE = 5000

    @[JSON::Field(key: "reversal", type: Stripe::TaxTransactionReversal?, default: nil, required: true, nullable: true, emit_null: true)]
    getter reversal : Stripe::TaxTransactionReversal? = nil

    @[JSON::Field(key: "ship_from_details", type: Stripe::TaxCalculationShipFromDetails?, default: nil, required: true, nullable: true, emit_null: true)]
    getter ship_from_details : Stripe::TaxCalculationShipFromDetails? = nil

    @[JSON::Field(key: "shipping_cost", type: Stripe::TaxTransactionShippingCost?, default: nil, required: true, nullable: true, emit_null: true)]
    getter shipping_cost : Stripe::TaxTransactionShippingCost? = nil

    # Timestamp of date at which the tax rules and rates in effect applies for the calculation.
    @[JSON::Field(key: "tax_date", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter tax_date : Int64? = nil

    # If `reversal`, this transaction reverses an earlier transaction.
    @[JSON::Field(key: "type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter _type : String? = nil
    ERROR_MESSAGE_FOR__TYPE = "invalid value for \"_type\", must be one of [reversal, transaction]."
    VALID_VALUES_FOR__TYPE  = String.static_array("reversal", "transaction")

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "line_items", type: Stripe::TaxProductResourceTaxTransactionLineItemList?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: line_items.nil? && !line_items_present?)]
    getter line_items : Stripe::TaxProductResourceTaxTransactionLineItemList? = nil

    @[JSON::Field(ignore: true)]
    property? line_items_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @created : Int64? = nil,
      @currency : String? = nil,
      @customer : String? = nil,
      @customer_details : Stripe::TaxProductResourceCustomerDetails? = nil,
      @id : String? = nil,
      @livemode : Bool? = nil,
      @metadata : Hash(String, String)? = nil,
      @object : String? = nil,
      @posted_at : Int64? = nil,
      @reference : String? = nil,
      @reversal : Stripe::TaxTransactionReversal? = nil,
      @ship_from_details : Stripe::TaxCalculationShipFromDetails? = nil,
      @shipping_cost : Stripe::TaxTransactionShippingCost? = nil,
      @tax_date : Int64? = nil,
      @_type : String? = nil,
      # Optional properties
      @line_items : Stripe::TaxProductResourceTaxTransactionLineItemList? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"created\" is required and cannot be null") if @created.nil?

      invalid_properties.push("\"currency\" is required and cannot be null") if @currency.nil?

      unless (_currency = @currency).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("currency", _currency.to_s.size, MAX_LENGTH_FOR_CURRENCY)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_customer = @customer).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("customer", _customer.to_s.size, MAX_LENGTH_FOR_CUSTOMER)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"customer_details\" is required and cannot be null") if @customer_details.nil?

      unless (_customer_details = @customer_details).nil?
        invalid_properties.concat(_customer_details.list_invalid_properties_for("customer_details")) if _customer_details.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"id\" is required and cannot be null") if @id.nil?

      unless (_id = @id).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("id", _id.to_s.size, MAX_LENGTH_FOR_ID)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"livemode\" is required and cannot be null") if @livemode.nil?

      invalid_properties.push("\"object\" is required and cannot be null") if @object.nil?

      unless (_object = @object).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_OBJECT) unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end
      invalid_properties.push("\"posted_at\" is required and cannot be null") if @posted_at.nil?

      invalid_properties.push("\"reference\" is required and cannot be null") if @reference.nil?

      unless (_reference = @reference).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("reference", _reference.to_s.size, MAX_LENGTH_FOR_REFERENCE)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_reversal = @reversal).nil?
        invalid_properties.concat(_reversal.list_invalid_properties_for("reversal")) if _reversal.is_a?(OpenApi::Validatable)
      end
      unless (_ship_from_details = @ship_from_details).nil?
        invalid_properties.concat(_ship_from_details.list_invalid_properties_for("ship_from_details")) if _ship_from_details.is_a?(OpenApi::Validatable)
      end
      unless (_shipping_cost = @shipping_cost).nil?
        invalid_properties.concat(_shipping_cost.list_invalid_properties_for("shipping_cost")) if _shipping_cost.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"tax_date\" is required and cannot be null") if @tax_date.nil?

      invalid_properties.push("\"_type\" is required and cannot be null") if @_type.nil?

      unless (__type = @_type).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR__TYPE) unless OpenApi::EnumValidator.valid?(__type, VALID_VALUES_FOR__TYPE)
      end
      unless (_line_items = @line_items).nil?
        invalid_properties.concat(_line_items.list_invalid_properties_for("line_items")) if _line_items.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @created.nil?

      return false if @currency.nil?
      unless (_currency = @currency).nil?
        return false if _currency.to_s.size > MAX_LENGTH_FOR_CURRENCY
      end

      unless (_customer = @customer).nil?
        return false if _customer.to_s.size > MAX_LENGTH_FOR_CUSTOMER
      end

      return false if @customer_details.nil?
      unless (_customer_details = @customer_details).nil?
        return false if _customer_details.is_a?(OpenApi::Validatable) && !_customer_details.valid?
      end

      return false if @id.nil?
      unless (_id = @id).nil?
        return false if _id.to_s.size > MAX_LENGTH_FOR_ID
      end

      return false if @livemode.nil?

      return false if @object.nil?
      unless (_object = @object).nil?
        return false unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end

      return false if @posted_at.nil?

      return false if @reference.nil?
      unless (_reference = @reference).nil?
        return false if _reference.to_s.size > MAX_LENGTH_FOR_REFERENCE
      end

      unless (_reversal = @reversal).nil?
        return false if _reversal.is_a?(OpenApi::Validatable) && !_reversal.valid?
      end

      unless (_ship_from_details = @ship_from_details).nil?
        return false if _ship_from_details.is_a?(OpenApi::Validatable) && !_ship_from_details.valid?
      end

      unless (_shipping_cost = @shipping_cost).nil?
        return false if _shipping_cost.is_a?(OpenApi::Validatable) && !_shipping_cost.valid?
      end

      return false if @tax_date.nil?

      return false if @_type.nil?
      unless (__type = @_type).nil?
        return false unless OpenApi::EnumValidator.valid?(__type, VALID_VALUES_FOR__TYPE)
      end

      unless (_line_items = @line_items).nil?
        return false if _line_items.is_a?(OpenApi::Validatable) && !_line_items.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] created Object to be assigned
    def created=(new_value : Int64?)
      raise ArgumentError.new("\"created\" is required and cannot be null") if new_value.nil?

      @created = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] currency Object to be assigned
    def currency=(new_value : String?)
      raise ArgumentError.new("\"currency\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("currency", new_value.to_s.size, MAX_LENGTH_FOR_CURRENCY)
      end

      @currency = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] customer Object to be assigned
    def customer=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("customer", new_value.to_s.size, MAX_LENGTH_FOR_CUSTOMER)
      end

      @customer = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] customer_details Object to be assigned
    def customer_details=(new_value : Stripe::TaxProductResourceCustomerDetails?)
      raise ArgumentError.new("\"customer_details\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @customer_details = new_value
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
    # @param [Object] livemode Object to be assigned
    def livemode=(new_value : Bool?)
      raise ArgumentError.new("\"livemode\" is required and cannot be null") if new_value.nil?

      @livemode = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(new_value : Hash(String, String)?)
      @metadata = new_value
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
    # @param [Object] posted_at Object to be assigned
    def posted_at=(new_value : Int64?)
      raise ArgumentError.new("\"posted_at\" is required and cannot be null") if new_value.nil?

      @posted_at = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] reference Object to be assigned
    def reference=(new_value : String?)
      raise ArgumentError.new("\"reference\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("reference", new_value.to_s.size, MAX_LENGTH_FOR_REFERENCE)
      end

      @reference = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] reversal Object to be assigned
    def reversal=(new_value : Stripe::TaxTransactionReversal?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @reversal = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] ship_from_details Object to be assigned
    def ship_from_details=(new_value : Stripe::TaxCalculationShipFromDetails?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @ship_from_details = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] shipping_cost Object to be assigned
    def shipping_cost=(new_value : Stripe::TaxTransactionShippingCost?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @shipping_cost = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tax_date Object to be assigned
    def tax_date=(new_value : Int64?)
      raise ArgumentError.new("\"tax_date\" is required and cannot be null") if new_value.nil?

      @tax_date = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(new_value : String?)
      raise ArgumentError.new("\"_type\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::EnumValidator.validate("_type", new_value, VALID_VALUES_FOR__TYPE)
      end

      @_type = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] line_items Object to be assigned
    def line_items=(new_value : Stripe::TaxProductResourceTaxTransactionLineItemList?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @line_items = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@created, @currency, @customer, @customer_details, @id, @livemode, @metadata, @object, @posted_at, @reference, @reversal, @ship_from_details, @shipping_cost, @tax_date, @_type, @line_items, @line_items_present)
  end
end
