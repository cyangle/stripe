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
  class Rule
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    # The action taken on the payment.
    @[JSON::Field(key: "action", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter action : String? = nil

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil

    # The predicate to evaluate the payment against.
    @[JSON::Field(key: "predicate", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter predicate : String? = nil

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
      if _action = @action
        if _action.to_s.size > 5000
          invalid_properties.push("invalid value for \"action\", the character length must be smaller than or equal to 5000.")
        end
      end
      invalid_properties.push("\"id\" is required and cannot be null") if @id.nil?
      if _id = @id
        if _id.to_s.size > 5000
          invalid_properties.push("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
        end
      end
      invalid_properties.push("\"predicate\" is required and cannot be null") if @predicate.nil?
      if _predicate = @predicate
        if _predicate.to_s.size > 5000
          invalid_properties.push("invalid value for \"predicate\", the character length must be smaller than or equal to 5000.")
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @action.nil?
      if _action = @action
        return false if _action.to_s.size > 5000
      end
      return false if @id.nil?
      if _id = @id
        return false if _id.to_s.size > 5000
      end
      return false if @predicate.nil?
      if _predicate = @predicate
        return false if _predicate.to_s.size > 5000
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] action Object to be assigned
    def action=(action : String?)
      if action.nil?
        raise ArgumentError.new("\"action\" is required and cannot be null")
      end
      _action = action.not_nil!
      if _action.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"action\", the character length must be smaller than or equal to 5000.")
      end

      @action = _action
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] id Object to be assigned
    def id=(id : String?)
      if id.nil?
        raise ArgumentError.new("\"id\" is required and cannot be null")
      end
      _id = id.not_nil!
      if _id.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      @id = _id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] predicate Object to be assigned
    def predicate=(predicate : String?)
      if predicate.nil?
        raise ArgumentError.new("\"predicate\" is required and cannot be null")
      end
      _predicate = predicate.not_nil!
      if _predicate.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"predicate\", the character length must be smaller than or equal to 5000.")
      end

      @predicate = _predicate
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@action, @id, @predicate)
  end
end
