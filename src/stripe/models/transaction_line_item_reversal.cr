#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

module Stripe
  class TransactionLineItemReversal
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The amount to reverse, in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) in negative.
    @[JSON::Field(key: "amount", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter amount : Int64? = nil

    # The amount of tax to reverse, in the [smallest currency unit](https://stripe.com/docs/currencies#zero-decimal) in negative.
    @[JSON::Field(key: "amount_tax", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter amount_tax : Int64? = nil

    # The `id` of the line item to reverse in the original transaction.
    @[JSON::Field(key: "original_line_item", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter original_line_item : String? = nil
    MAX_LENGTH_FOR_ORIGINAL_LINE_ITEM = 5000

    # A custom identifier for this line item in the reversal transaction, such as 'L1-refund'.
    @[JSON::Field(key: "reference", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter reference : String? = nil
    MAX_LENGTH_FOR_REFERENCE = 500

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Hash(String, String)? = nil

    # The quantity reversed. Appears in [tax exports](https://stripe.com/docs/tax/reports), but does not affect the amount of tax reversed.
    @[JSON::Field(key: "quantity", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter quantity : Int64? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @amount : Int64? = nil,
      @amount_tax : Int64? = nil,
      @original_line_item : String? = nil,
      @reference : String? = nil,
      # Optional properties
      @metadata : Hash(String, String)? = nil,
      @quantity : Int64? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"amount\" is required and cannot be null") if @amount.nil?

      invalid_properties.push("\"amount_tax\" is required and cannot be null") if @amount_tax.nil?

      invalid_properties.push("\"original_line_item\" is required and cannot be null") if @original_line_item.nil?

      unless (_original_line_item = @original_line_item).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("original_line_item", _original_line_item.to_s.size, MAX_LENGTH_FOR_ORIGINAL_LINE_ITEM)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"reference\" is required and cannot be null") if @reference.nil?

      unless (_reference = @reference).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("reference", _reference.to_s.size, MAX_LENGTH_FOR_REFERENCE)
          invalid_properties.push(max_length_error)
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @amount.nil?

      return false if @amount_tax.nil?

      return false if @original_line_item.nil?
      unless (_original_line_item = @original_line_item).nil?
        return false if _original_line_item.to_s.size > MAX_LENGTH_FOR_ORIGINAL_LINE_ITEM
      end

      return false if @reference.nil?
      unless (_reference = @reference).nil?
        return false if _reference.to_s.size > MAX_LENGTH_FOR_REFERENCE
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount Object to be assigned
    def amount=(new_value : Int64?)
      raise ArgumentError.new("\"amount\" is required and cannot be null") if new_value.nil?

      @amount = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount_tax Object to be assigned
    def amount_tax=(new_value : Int64?)
      raise ArgumentError.new("\"amount_tax\" is required and cannot be null") if new_value.nil?

      @amount_tax = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] original_line_item Object to be assigned
    def original_line_item=(new_value : String?)
      raise ArgumentError.new("\"original_line_item\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("original_line_item", new_value.to_s.size, MAX_LENGTH_FOR_ORIGINAL_LINE_ITEM)
      end

      @original_line_item = new_value
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
    # @param [Object] metadata Object to be assigned
    def metadata=(new_value : Hash(String, String)?)
      @metadata = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] quantity Object to be assigned
    def quantity=(new_value : Int64?)
      @quantity = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@amount, @amount_tax, @original_line_item, @reference, @metadata, @quantity)
  end
end
