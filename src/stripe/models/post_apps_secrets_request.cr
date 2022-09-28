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
  class PostAppsSecretsRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    # A name for the secret that's unique within the scope.
    @[JSON::Field(key: "name", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter name : String? = nil

    # The plaintext secret value to be stored.
    @[JSON::Field(key: "payload", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter payload : String? = nil

    @[JSON::Field(key: "scope", type: Stripe::ScopeParam1?, default: nil, required: true, nullable: false, emit_null: false)]
    getter scope : Stripe::ScopeParam1? = nil

    # Optional properties

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    # The Unix timestamp for the expiry time of the secret, after which the secret deletes.
    @[JSON::Field(key: "expires_at", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expires_at : Int64? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @name : String? = nil,
      @payload : String? = nil,
      @scope : Stripe::ScopeParam1? = nil,
      # Optional properties
      @expand : Array(String)? = nil,
      @expires_at : Int64? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      invalid_properties.push("\"name\" is required and cannot be null") if @name.nil?
      if _name = @name
        if _name.to_s.size > 5000
          invalid_properties.push("invalid value for \"name\", the character length must be smaller than or equal to 5000.")
        end
      end
      invalid_properties.push("\"payload\" is required and cannot be null") if @payload.nil?
      if _payload = @payload
        if _payload.to_s.size > 5000
          invalid_properties.push("invalid value for \"payload\", the character length must be smaller than or equal to 5000.")
        end
      end
      invalid_properties.push("\"scope\" is required and cannot be null") if @scope.nil?
      if _scope = @scope
        if _scope.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_scope.list_invalid_properties_for("scope"))
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @name.nil?
      if _name = @name
        return false if _name.to_s.size > 5000
      end
      return false if @payload.nil?
      if _payload = @payload
        return false if _payload.to_s.size > 5000
      end
      return false if @scope.nil?
      if _scope = @scope
        if _scope.is_a?(OpenApi::Validatable)
          return false unless _scope.valid?
        end
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] name Object to be assigned
    def name=(name : String?)
      if name.nil?
        raise ArgumentError.new("\"name\" is required and cannot be null")
      end
      _name = name.not_nil!
      if _name.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"name\", the character length must be smaller than or equal to 5000.")
      end

      @name = _name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payload Object to be assigned
    def payload=(payload : String?)
      if payload.nil?
        raise ArgumentError.new("\"payload\" is required and cannot be null")
      end
      _payload = payload.not_nil!
      if _payload.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"payload\", the character length must be smaller than or equal to 5000.")
      end

      @payload = _payload
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] scope Object to be assigned
    def scope=(scope : Stripe::ScopeParam1?)
      if scope.nil?
        raise ArgumentError.new("\"scope\" is required and cannot be null")
      end
      _scope = scope.not_nil!
      if _scope.is_a?(OpenApi::Validatable)
        _scope.validate
      end
      @scope = _scope
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expand Object to be assigned
    def expand=(expand : Array(String)?)
      if expand.nil?
        return @expand = nil
      end
      _expand = expand.not_nil!
      @expand = _expand
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expires_at Object to be assigned
    def expires_at=(expires_at : Int64?)
      if expires_at.nil?
        return @expires_at = nil
      end
      _expires_at = expires_at.not_nil!
      @expires_at = _expires_at
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@name, @payload, @scope, @expand, @expires_at)
  end
end
