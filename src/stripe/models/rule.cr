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
  #
  class Rule
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The action taken on the payment.
    @[JSON::Field(key: "action", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter action : String? = nil
    MAX_LENGTH_FOR_ACTION = 5000

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil
    MAX_LENGTH_FOR_ID = 5000

    # The predicate to evaluate the payment against.
    @[JSON::Field(key: "predicate", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter predicate : String? = nil
    MAX_LENGTH_FOR_PREDICATE = 5000

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @action : String? = nil,
      @id : String? = nil,
      @predicate : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"action\" is required and cannot be null") if @action.nil?

      unless (_action = @action).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("action", _action.to_s.size, MAX_LENGTH_FOR_ACTION)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"id\" is required and cannot be null") if @id.nil?

      unless (_id = @id).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("id", _id.to_s.size, MAX_LENGTH_FOR_ID)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"predicate\" is required and cannot be null") if @predicate.nil?

      unless (_predicate = @predicate).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("predicate", _predicate.to_s.size, MAX_LENGTH_FOR_PREDICATE)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @action.nil?
      unless (_action = @action).nil?
        return false if _action.to_s.size > MAX_LENGTH_FOR_ACTION
      end

      return false if @id.nil?
      unless (_id = @id).nil?
        return false if _id.to_s.size > MAX_LENGTH_FOR_ID
      end

      return false if @predicate.nil?
      unless (_predicate = @predicate).nil?
        return false if _predicate.to_s.size > MAX_LENGTH_FOR_PREDICATE
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] action Object to be assigned
    def action=(new_value : String?)
      raise ArgumentError.new("\"action\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("action", new_value.to_s.size, MAX_LENGTH_FOR_ACTION)
      end

      @action = new_value
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
    # @param [Object] predicate Object to be assigned
    def predicate=(new_value : String?)
      raise ArgumentError.new("\"predicate\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("predicate", new_value.to_s.size, MAX_LENGTH_FOR_PREDICATE)
      end

      @predicate = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@action, @id, @predicate)
  end
end
