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
  #
  class IssuingTransactionReceiptData
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    # The description of the item. The maximum length of this field is 26 characters.
    @[JSON::Field(key: "description", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: description.nil? && !description_present?)]
    getter description : String? = nil

    @[JSON::Field(ignore: true)]
    property? description_present : Bool = false

    # The quantity of the item.
    @[JSON::Field(key: "quantity", type: Float64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: quantity.nil? && !quantity_present?)]
    getter quantity : Float64? = nil

    @[JSON::Field(ignore: true)]
    property? quantity_present : Bool = false

    # The total for this line item in cents.
    @[JSON::Field(key: "total", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: total.nil? && !total_present?)]
    getter total : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? total_present : Bool = false

    # The unit cost of the item in cents.
    @[JSON::Field(key: "unit_cost", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: unit_cost.nil? && !unit_cost_present?)]
    getter unit_cost : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? unit_cost_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @description : String? = nil,
      @quantity : Float64? = nil,
      @total : Int64? = nil,
      @unit_cost : Int64? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      if _description = @description
        if _description.to_s.size > 5000
          invalid_properties.push("invalid value for \"description\", the character length must be smaller than or equal to 5000.")
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _description = @description
        return false if _description.to_s.size > 5000
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] description Object to be assigned
    def description=(description : String?)
      if description.nil?
        return @description = nil
      end
      _description = description.not_nil!
      if _description.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"description\", the character length must be smaller than or equal to 5000.")
      end

      @description = _description
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] quantity Object to be assigned
    def quantity=(quantity : Float64?)
      if quantity.nil?
        return @quantity = nil
      end
      _quantity = quantity.not_nil!
      @quantity = _quantity
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] total Object to be assigned
    def total=(total : Int64?)
      if total.nil?
        return @total = nil
      end
      _total = total.not_nil!
      @total = _total
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] unit_cost Object to be assigned
    def unit_cost=(unit_cost : Int64?)
      if unit_cost.nil?
        return @unit_cost = nil
      end
      _unit_cost = unit_cost.not_nil!
      @unit_cost = _unit_cost
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@description, @description_present, @quantity, @quantity_present, @total, @total_present, @unit_cost, @unit_cost_present)
  end
end
