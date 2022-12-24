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
  class SourceReceiverFlow
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The total amount that was moved to your balance. This is almost always equal to the amount charged. In rare cases when customers deposit excess funds and we are unable to refund those, those funds get moved to your balance and show up in amount_charged as well. The amount charged is expressed in the source's currency.
    @[JSON::Field(key: "amount_charged", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter amount_charged : Int64? = nil

    # The total amount received by the receiver source. `amount_received = amount_returned + amount_charged` should be true for consumed sources unless customers deposit excess funds. The amount received is expressed in the source's currency.
    @[JSON::Field(key: "amount_received", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter amount_received : Int64? = nil

    # The total amount that was returned to the customer. The amount returned is expressed in the source's currency.
    @[JSON::Field(key: "amount_returned", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter amount_returned : Int64? = nil

    # Type of refund attribute method, one of `email`, `manual`, or `none`.
    @[JSON::Field(key: "refund_attributes_method", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter refund_attributes_method : String? = nil
    MAX_LENGTH_FOR_REFUND_ATTRIBUTES_METHOD = 5000

    # Type of refund attribute status, one of `missing`, `requested`, or `available`.
    @[JSON::Field(key: "refund_attributes_status", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter refund_attributes_status : String? = nil
    MAX_LENGTH_FOR_REFUND_ATTRIBUTES_STATUS = 5000

    # End of Required Properties

    # Optional Properties

    # The address of the receiver source. This is the value that should be communicated to the customer to send their funds to.
    @[JSON::Field(key: "address", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: address.nil? && !address_present?)]
    getter address : String? = nil
    MAX_LENGTH_FOR_ADDRESS = 5000

    @[JSON::Field(ignore: true)]
    property? address_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @amount_charged : Int64? = nil,
      @amount_received : Int64? = nil,
      @amount_returned : Int64? = nil,
      @refund_attributes_method : String? = nil,
      @refund_attributes_status : String? = nil,
      # Optional properties
      @address : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"amount_charged\" is required and cannot be null") if @amount_charged.nil?

      invalid_properties.push("\"amount_received\" is required and cannot be null") if @amount_received.nil?

      invalid_properties.push("\"amount_returned\" is required and cannot be null") if @amount_returned.nil?

      invalid_properties.push("\"refund_attributes_method\" is required and cannot be null") if @refund_attributes_method.nil?

      unless (_refund_attributes_method = @refund_attributes_method).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("refund_attributes_method", _refund_attributes_method.to_s.size, MAX_LENGTH_FOR_REFUND_ATTRIBUTES_METHOD)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"refund_attributes_status\" is required and cannot be null") if @refund_attributes_status.nil?

      unless (_refund_attributes_status = @refund_attributes_status).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("refund_attributes_status", _refund_attributes_status.to_s.size, MAX_LENGTH_FOR_REFUND_ATTRIBUTES_STATUS)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_address = @address).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("address", _address.to_s.size, MAX_LENGTH_FOR_ADDRESS)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @amount_charged.nil?

      return false if @amount_received.nil?

      return false if @amount_returned.nil?

      return false if @refund_attributes_method.nil?
      unless (_refund_attributes_method = @refund_attributes_method).nil?
        return false if _refund_attributes_method.to_s.size > MAX_LENGTH_FOR_REFUND_ATTRIBUTES_METHOD
      end

      return false if @refund_attributes_status.nil?
      unless (_refund_attributes_status = @refund_attributes_status).nil?
        return false if _refund_attributes_status.to_s.size > MAX_LENGTH_FOR_REFUND_ATTRIBUTES_STATUS
      end

      unless (_address = @address).nil?
        return false if _address.to_s.size > MAX_LENGTH_FOR_ADDRESS
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount_charged Object to be assigned
    def amount_charged=(new_value : Int64?)
      raise ArgumentError.new("\"amount_charged\" is required and cannot be null") if new_value.nil?

      @amount_charged = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount_received Object to be assigned
    def amount_received=(new_value : Int64?)
      raise ArgumentError.new("\"amount_received\" is required and cannot be null") if new_value.nil?

      @amount_received = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount_returned Object to be assigned
    def amount_returned=(new_value : Int64?)
      raise ArgumentError.new("\"amount_returned\" is required and cannot be null") if new_value.nil?

      @amount_returned = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] refund_attributes_method Object to be assigned
    def refund_attributes_method=(new_value : String?)
      raise ArgumentError.new("\"refund_attributes_method\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("refund_attributes_method", new_value.to_s.size, MAX_LENGTH_FOR_REFUND_ATTRIBUTES_METHOD)
      end

      @refund_attributes_method = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] refund_attributes_status Object to be assigned
    def refund_attributes_status=(new_value : String?)
      raise ArgumentError.new("\"refund_attributes_status\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("refund_attributes_status", new_value.to_s.size, MAX_LENGTH_FOR_REFUND_ATTRIBUTES_STATUS)
      end

      @refund_attributes_status = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address Object to be assigned
    def address=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("address", new_value.to_s.size, MAX_LENGTH_FOR_ADDRESS)
      end

      @address = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@amount_charged, @amount_received, @amount_returned, @refund_attributes_method, @refund_attributes_status, @address, @address_present)
  end
end
