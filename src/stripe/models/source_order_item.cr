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
  #
  class SourceOrderItem
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # The amount (price) for this order item.
    @[JSON::Field(key: "amount", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: amount.nil? && !amount_present?)]
    getter amount : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? amount_present : Bool = false

    # This currency of this order item. Required when `amount` is present.
    @[JSON::Field(key: "currency", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: currency.nil? && !currency_present?)]
    getter currency : String? = nil
    MAX_LENGTH_FOR_CURRENCY = 5000

    @[JSON::Field(ignore: true)]
    property? currency_present : Bool = false

    # Human-readable description for this order item.
    @[JSON::Field(key: "description", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: description.nil? && !description_present?)]
    getter description : String? = nil
    MAX_LENGTH_FOR_DESCRIPTION = 5000

    @[JSON::Field(ignore: true)]
    property? description_present : Bool = false

    # The ID of the associated object for this line item. Expandable if not null (e.g., expandable to a SKU).
    @[JSON::Field(key: "parent", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: parent.nil? && !parent_present?)]
    getter parent : String? = nil
    MAX_LENGTH_FOR_PARENT = 5000

    @[JSON::Field(ignore: true)]
    property? parent_present : Bool = false

    # The quantity of this order item. When type is `sku`, this is the number of instances of the SKU to be ordered.
    @[JSON::Field(key: "quantity", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter quantity : Int64? = nil

    # The type of this order item. Must be `sku`, `tax`, or `shipping`.
    @[JSON::Field(key: "type", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: _type.nil? && !_type_present?)]
    getter _type : String? = nil
    MAX_LENGTH_FOR__TYPE = 5000

    @[JSON::Field(ignore: true)]
    property? _type_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @amount : Int64? = nil,
      @currency : String? = nil,
      @description : String? = nil,
      @parent : String? = nil,
      @quantity : Int64? = nil,
      @_type : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_currency = @currency).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("currency", _currency.to_s.size, MAX_LENGTH_FOR_CURRENCY)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_description = @description).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("description", _description.to_s.size, MAX_LENGTH_FOR_DESCRIPTION)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_parent = @parent).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("parent", _parent.to_s.size, MAX_LENGTH_FOR_PARENT)
          invalid_properties.push(max_length_error)
        end
      end

      unless (__type = @_type).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("_type", __type.to_s.size, MAX_LENGTH_FOR__TYPE)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_currency = @currency).nil?
        return false if _currency.to_s.size > MAX_LENGTH_FOR_CURRENCY
      end

      unless (_description = @description).nil?
        return false if _description.to_s.size > MAX_LENGTH_FOR_DESCRIPTION
      end

      unless (_parent = @parent).nil?
        return false if _parent.to_s.size > MAX_LENGTH_FOR_PARENT
      end

      unless (__type = @_type).nil?
        return false if __type.to_s.size > MAX_LENGTH_FOR__TYPE
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount Object to be assigned
    def amount=(new_value : Int64?)
      @amount = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] currency Object to be assigned
    def currency=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("currency", new_value.to_s.size, MAX_LENGTH_FOR_CURRENCY)
      end

      @currency = new_value
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
    # @param [Object] parent Object to be assigned
    def parent=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("parent", new_value.to_s.size, MAX_LENGTH_FOR_PARENT)
      end

      @parent = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] quantity Object to be assigned
    def quantity=(new_value : Int64?)
      @quantity = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("_type", new_value.to_s.size, MAX_LENGTH_FOR__TYPE)
      end

      @_type = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@amount, @amount_present, @currency, @currency_present, @description, @description_present, @parent, @parent_present, @quantity, @_type, @_type_present)
  end
end
