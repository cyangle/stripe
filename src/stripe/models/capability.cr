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
  # This is an object representing a capability for a Stripe account.  Related guide: [Account capabilities](https://stripe.com/docs/connect/account-capabilities).
  class Capability
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    @[JSON::Field(key: "account", type: Stripe::CapabilityAccount?, default: nil, required: true, nullable: false, emit_null: false)]
    getter account : Stripe::CapabilityAccount? = nil

    # The identifier for the capability.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter object : String? = nil

    ENUM_VALIDATOR_FOR_OBJECT = EnumValidator.new("object", "String", ["capability"])

    # Whether the capability has been requested.
    @[JSON::Field(key: "requested", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter requested : Bool? = nil

    # The status of the capability. Can be `active`, `inactive`, `pending`, or `unrequested`.
    @[JSON::Field(key: "status", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter status : String? = nil

    ENUM_VALIDATOR_FOR_STATUS = EnumValidator.new("status", "String", ["active", "disabled", "inactive", "pending", "unrequested"])

    # Optional properties

    @[JSON::Field(key: "future_requirements", type: Stripe::AccountCapabilityFutureRequirements?, default: nil, required: false, nullable: false, emit_null: false)]
    getter future_requirements : Stripe::AccountCapabilityFutureRequirements? = nil

    # Time at which the capability was requested. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "requested_at", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: requested_at.nil? && !requested_at_present?)]
    getter requested_at : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? requested_at_present : Bool = false

    @[JSON::Field(key: "requirements", type: Stripe::AccountCapabilityRequirements?, default: nil, required: false, nullable: false, emit_null: false)]
    getter requirements : Stripe::AccountCapabilityRequirements? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @account : Stripe::CapabilityAccount? = nil,
      @id : String? = nil,
      @object : String? = nil,
      @requested : Bool? = nil,
      @status : String? = nil,
      # Optional properties
      @future_requirements : Stripe::AccountCapabilityFutureRequirements? = nil,
      @requested_at : Int64? = nil,
      @requirements : Stripe::AccountCapabilityRequirements? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      invalid_properties.push("\"account\" is required and cannot be null") if @account.nil?
      if _account = @account
        if _account.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_account.list_invalid_properties_for("account"))
        end
      end
      invalid_properties.push("\"id\" is required and cannot be null") if @id.nil?
      if _id = @id
        if _id.to_s.size > 5000
          invalid_properties.push("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
        end
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_OBJECT.error_message) unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      invalid_properties.push("\"requested\" is required and cannot be null") if @requested.nil?

      invalid_properties.push(ENUM_VALIDATOR_FOR_STATUS.error_message) unless ENUM_VALIDATOR_FOR_STATUS.valid?(@status, false)
      if _future_requirements = @future_requirements
        if _future_requirements.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_future_requirements.list_invalid_properties_for("future_requirements"))
        end
      end

      if _requirements = @requirements
        if _requirements.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_requirements.list_invalid_properties_for("requirements"))
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @account.nil?
      if _account = @account
        if _account.is_a?(OpenApi::Validatable)
          return false unless _account.valid?
        end
      end
      return false if @id.nil?
      if _id = @id
        return false if _id.to_s.size > 5000
      end
      return false unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      return false if @requested.nil?

      return false unless ENUM_VALIDATOR_FOR_STATUS.valid?(@status, false)
      if _future_requirements = @future_requirements
        if _future_requirements.is_a?(OpenApi::Validatable)
          return false unless _future_requirements.valid?
        end
      end

      if _requirements = @requirements
        if _requirements.is_a?(OpenApi::Validatable)
          return false unless _requirements.valid?
        end
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account Object to be assigned
    def account=(account : Stripe::CapabilityAccount?)
      if account.nil?
        raise ArgumentError.new("\"account\" is required and cannot be null")
      end
      _account = account.not_nil!
      if _account.is_a?(OpenApi::Validatable)
        _account.validate
      end
      @account = _account
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
    # @param [Object] object Object to be assigned
    def object=(object : String?)
      if object.nil?
        raise ArgumentError.new("\"object\" is required and cannot be null")
      end
      _object = object.not_nil!
      ENUM_VALIDATOR_FOR_OBJECT.valid!(_object)
      @object = _object
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] requested Object to be assigned
    def requested=(requested : Bool?)
      if requested.nil?
        raise ArgumentError.new("\"requested\" is required and cannot be null")
      end
      _requested = requested.not_nil!
      @requested = _requested
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status : String?)
      if status.nil?
        raise ArgumentError.new("\"status\" is required and cannot be null")
      end
      _status = status.not_nil!
      ENUM_VALIDATOR_FOR_STATUS.valid!(_status)
      @status = _status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] future_requirements Object to be assigned
    def future_requirements=(future_requirements : Stripe::AccountCapabilityFutureRequirements?)
      if future_requirements.nil?
        return @future_requirements = nil
      end
      _future_requirements = future_requirements.not_nil!
      if _future_requirements.is_a?(OpenApi::Validatable)
        _future_requirements.validate
      end
      @future_requirements = _future_requirements
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] requested_at Object to be assigned
    def requested_at=(requested_at : Int64?)
      if requested_at.nil?
        return @requested_at = nil
      end
      _requested_at = requested_at.not_nil!
      @requested_at = _requested_at
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] requirements Object to be assigned
    def requirements=(requirements : Stripe::AccountCapabilityRequirements?)
      if requirements.nil?
        return @requirements = nil
      end
      _requirements = requirements.not_nil!
      if _requirements.is_a?(OpenApi::Validatable)
        _requirements.validate
      end
      @requirements = _requirements
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@account, @id, @object, @requested, @status, @future_requirements, @requested_at, @requested_at_present, @requirements)
  end
end
