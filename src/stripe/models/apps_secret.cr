#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./secret_service_resource_scope"

module Stripe
  # Secret Store is an API that allows Stripe Apps developers to securely persist secrets for use by UI Extensions and app backends.  The primary resource in Secret Store is a `secret`. Other apps can't view secrets created by an app. Additionally, secrets are scoped to provide further permission control.  All Dashboard users and the app backend share `account` scoped secrets. Use the `account` scope for secrets that don't change per-user, like a third-party API key.  A `user` scoped secret is accessible by the app backend and one specific Dashboard user. Use the `user` scope for per-user secrets like per-user OAuth tokens, where different users might have different permissions.  Related guide: [Store data between page reloads](https://stripe.com/docs/stripe-apps/store-auth-data-custom-objects)
  class AppsSecret
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter created : Int64? = nil

    # The Unix timestamp for the expiry time of the secret, after which the secret deletes.
    @[JSON::Field(key: "expires_at", type: Int64?, default: nil, required: true, nullable: true, emit_null: true)]
    getter expires_at : Int64? = nil

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil
    MAX_LENGTH_FOR_ID = 5000

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter livemode : Bool? = nil

    # A name for the secret that's unique within the scope.
    @[JSON::Field(key: "name", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter name : String? = nil
    MAX_LENGTH_FOR_NAME = 5000

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter object : String? = nil
    ERROR_MESSAGE_FOR_OBJECT = "invalid value for \"object\", must be one of [apps.secret]."
    VALID_VALUES_FOR_OBJECT  = String.static_array("apps.secret")

    @[JSON::Field(key: "scope", type: Stripe::SecretServiceResourceScope?, default: nil, required: true, nullable: false, emit_null: false)]
    getter scope : Stripe::SecretServiceResourceScope? = nil

    # End of Required Properties

    # Optional Properties

    # If true, indicates that this secret has been deleted
    @[JSON::Field(key: "deleted", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter deleted : Bool? = nil

    # The plaintext secret value to be stored.
    @[JSON::Field(key: "payload", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: payload.nil? && !payload_present?)]
    getter payload : String? = nil
    MAX_LENGTH_FOR_PAYLOAD = 5000

    @[JSON::Field(ignore: true)]
    property? payload_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @created : Int64? = nil,
      @expires_at : Int64? = nil,
      @id : String? = nil,
      @livemode : Bool? = nil,
      @name : String? = nil,
      @object : String? = nil,
      @scope : Stripe::SecretServiceResourceScope? = nil,
      # Optional properties
      @deleted : Bool? = nil,
      @payload : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"created\" is required and cannot be null") if @created.nil?

      invalid_properties.push("\"id\" is required and cannot be null") if @id.nil?

      unless (_id = @id).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("id", _id.to_s.size, MAX_LENGTH_FOR_ID)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"livemode\" is required and cannot be null") if @livemode.nil?

      invalid_properties.push("\"name\" is required and cannot be null") if @name.nil?

      unless (_name = @name).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("name", _name.to_s.size, MAX_LENGTH_FOR_NAME)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"object\" is required and cannot be null") if @object.nil?

      unless (_object = @object).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_OBJECT) unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end
      invalid_properties.push("\"scope\" is required and cannot be null") if @scope.nil?

      unless (_scope = @scope).nil?
        invalid_properties.concat(_scope.list_invalid_properties_for("scope")) if _scope.is_a?(OpenApi::Validatable)
      end

      unless (_payload = @payload).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("payload", _payload.to_s.size, MAX_LENGTH_FOR_PAYLOAD)
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
      unless (_id = @id).nil?
        return false if _id.to_s.size > MAX_LENGTH_FOR_ID
      end

      return false if @livemode.nil?

      return false if @name.nil?
      unless (_name = @name).nil?
        return false if _name.to_s.size > MAX_LENGTH_FOR_NAME
      end

      return false if @object.nil?
      unless (_object = @object).nil?
        return false unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end

      return false if @scope.nil?
      unless (_scope = @scope).nil?
        return false if _scope.is_a?(OpenApi::Validatable) && !_scope.valid?
      end

      unless (_payload = @payload).nil?
        return false if _payload.to_s.size > MAX_LENGTH_FOR_PAYLOAD
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
    # @param [Object] expires_at Object to be assigned
    def expires_at=(new_value : Int64?)
      @expires_at = new_value
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
    # @param [Object] name Object to be assigned
    def name=(new_value : String?)
      raise ArgumentError.new("\"name\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("name", new_value.to_s.size, MAX_LENGTH_FOR_NAME)
      end

      @name = new_value
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
    # @param [Object] scope Object to be assigned
    def scope=(new_value : Stripe::SecretServiceResourceScope?)
      raise ArgumentError.new("\"scope\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @scope = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] deleted Object to be assigned
    def deleted=(new_value : Bool?)
      @deleted = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payload Object to be assigned
    def payload=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("payload", new_value.to_s.size, MAX_LENGTH_FOR_PAYLOAD)
      end

      @payload = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@created, @expires_at, @id, @livemode, @name, @object, @scope, @deleted, @payload, @payload_present)
  end
end
