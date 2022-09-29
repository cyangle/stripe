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
  # Secret Store is an API that allows Stripe Apps developers to securely persist secrets for use by UI Extensions and app backends.  The primary resource in Secret Store is a `secret`. Other apps can't view secrets created by an app. Additionally, secrets are scoped to provide further permission control.  All Dashboard users and the app backend share `account` scoped secrets. Use the `account` scope for secrets that don't change per-user, like a third-party API key.  A `user` scoped secret is accessible by the app backend and one specific Dashboard user. Use the `user` scope for per-user secrets like per-user OAuth tokens, where different users might have different permissions.  Related guide: [Store data between page reloads](https://stripe.com/docs/stripe-apps/store-auth-data-custom-objects).
  class AppsSecret
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter created : Int64? = nil

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter livemode : Bool? = nil

    # A name for the secret that's unique within the scope.
    @[JSON::Field(key: "name", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter name : String? = nil

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter object : String? = nil

    ENUM_VALIDATOR_FOR_OBJECT = OpenApi::EnumValidator.new("object", "String", ["apps.secret"])

    @[JSON::Field(key: "scope", type: Stripe::SecretServiceResourceScope?, default: nil, required: true, nullable: false, emit_null: false)]
    getter scope : Stripe::SecretServiceResourceScope? = nil

    # Optional properties

    # If true, indicates that this secret has been deleted
    @[JSON::Field(key: "deleted", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter deleted : Bool? = nil

    # The Unix timestamp for the expiry time of the secret, after which the secret deletes.
    @[JSON::Field(key: "expires_at", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: expires_at.nil? && !expires_at_present?)]
    getter expires_at : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? expires_at_present : Bool = false

    # The plaintext secret value to be stored.
    @[JSON::Field(key: "payload", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: payload.nil? && !payload_present?)]
    getter payload : String? = nil

    @[JSON::Field(ignore: true)]
    property? payload_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @created : Int64? = nil,
      @id : String? = nil,
      @livemode : Bool? = nil,
      @name : String? = nil,
      @object : String? = nil,
      @scope : Stripe::SecretServiceResourceScope? = nil,
      # Optional properties
      @deleted : Bool? = nil,
      @expires_at : Int64? = nil,
      @payload : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      invalid_properties.push("\"created\" is required and cannot be null") if @created.nil?

      invalid_properties.push("\"id\" is required and cannot be null") if @id.nil?
      if _id = @id
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("id", _id.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"livemode\" is required and cannot be null") if @livemode.nil?

      invalid_properties.push("\"name\" is required and cannot be null") if @name.nil?
      if _name = @name
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("name", _name.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_OBJECT.error_message) unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      invalid_properties.push("\"scope\" is required and cannot be null") if @scope.nil?
      if _scope = @scope
        invalid_properties.concat(_scope.list_invalid_properties_for("scope")) if _scope.is_a?(OpenApi::Validatable)
      end

      if _payload = @payload
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("payload", _payload.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @created.nil?

      return false if @id.nil?
      if _id = @id
        return false if _id.to_s.size > 5000
      end
      return false if @livemode.nil?

      return false if @name.nil?
      if _name = @name
        return false if _name.to_s.size > 5000
      end
      return false unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      return false if @scope.nil?
      if _scope = @scope
        return false if _scope.is_a?(OpenApi::Validatable) && !_scope.valid?
      end

      if _payload = @payload
        return false if _payload.to_s.size > 5000
      end

      true
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
    # @param [Object] livemode Object to be assigned
    def livemode=(livemode : Bool?)
      if livemode.nil?
        raise ArgumentError.new("\"livemode\" is required and cannot be null")
      end
      _livemode = livemode.not_nil!
      @livemode = _livemode
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] name Object to be assigned
    def name=(name : String?)
      if name.nil?
        raise ArgumentError.new("\"name\" is required and cannot be null")
      end
      _name = name.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("name", _name.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @name = _name
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
    # @param [Object] scope Object to be assigned
    def scope=(scope : Stripe::SecretServiceResourceScope?)
      if scope.nil?
        raise ArgumentError.new("\"scope\" is required and cannot be null")
      end
      _scope = scope.not_nil!
      _scope.validate if _scope.is_a?(OpenApi::Validatable)
      @scope = _scope
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] deleted Object to be assigned
    def deleted=(deleted : Bool?)
      if deleted.nil?
        return @deleted = nil
      end
      _deleted = deleted.not_nil!
      @deleted = _deleted
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

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payload Object to be assigned
    def payload=(payload : String?)
      if payload.nil?
        return @payload = nil
      end
      _payload = payload.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("payload", _payload.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @payload = _payload
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@created, @id, @livemode, @name, @object, @scope, @deleted, @expires_at, @expires_at_present, @payload, @payload_present)
  end
end
