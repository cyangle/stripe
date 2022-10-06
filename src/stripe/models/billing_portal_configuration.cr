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
  # A portal configuration describes the functionality and behavior of a portal session.
  class BillingPortalConfiguration
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # Whether the configuration is active and can be used to create portal sessions.
    @[JSON::Field(key: "active", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter active : Bool? = nil

    @[JSON::Field(key: "business_profile", type: Stripe::PortalBusinessProfile?, default: nil, required: true, nullable: false, emit_null: false)]
    getter business_profile : Stripe::PortalBusinessProfile? = nil

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter created : Int64? = nil

    @[JSON::Field(key: "features", type: Stripe::PortalFeatures?, default: nil, required: true, nullable: false, emit_null: false)]
    getter features : Stripe::PortalFeatures? = nil

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil
    MAX_LENGTH_FOR_ID = 5000

    # Whether the configuration is the default. If `true`, this configuration can be managed in the Dashboard and portal sessions will use this configuration unless it is overriden when creating the session.
    @[JSON::Field(key: "is_default", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter is_default : Bool? = nil

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter livemode : Bool? = nil

    @[JSON::Field(key: "login_page", type: Stripe::PortalLoginPage?, default: nil, required: true, nullable: false, emit_null: false)]
    getter login_page : Stripe::PortalLoginPage? = nil

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter object : String? = nil
    ERROR_MESSAGE_FOR_OBJECT = "invalid value for \"object\", must be one of [billing_portal.configuration]."
    VALID_VALUES_FOR_OBJECT  = String.static_array("billing_portal.configuration")

    # Time at which the object was last updated. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "updated", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter updated : Int64? = nil

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "application", type: Stripe::BillingPortalConfigurationApplication?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: application.nil? && !application_present?)]
    getter application : Stripe::BillingPortalConfigurationApplication? = nil

    @[JSON::Field(ignore: true)]
    property? application_present : Bool = false

    # The default URL to redirect customers to when they click on the portal's link to return to your website. This can be [overriden](https://stripe.com/docs/api/customer_portal/sessions/create#create_portal_session-return_url) when creating the session.
    @[JSON::Field(key: "default_return_url", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: default_return_url.nil? && !default_return_url_present?)]
    getter default_return_url : String? = nil
    MAX_LENGTH_FOR_DEFAULT_RETURN_URL = 5000

    @[JSON::Field(ignore: true)]
    property? default_return_url_present : Bool = false

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: metadata.nil? && !metadata_present?)]
    getter metadata : Hash(String, String)? = nil

    @[JSON::Field(ignore: true)]
    property? metadata_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @active : Bool? = nil,
      @business_profile : Stripe::PortalBusinessProfile? = nil,
      @created : Int64? = nil,
      @features : Stripe::PortalFeatures? = nil,
      @id : String? = nil,
      @is_default : Bool? = nil,
      @livemode : Bool? = nil,
      @login_page : Stripe::PortalLoginPage? = nil,
      @object : String? = nil,
      @updated : Int64? = nil,
      # Optional properties
      @application : Stripe::BillingPortalConfigurationApplication? = nil,
      @default_return_url : String? = nil,
      @metadata : Hash(String, String)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"active\" is required and cannot be null") if @active.nil?

      invalid_properties.push("\"business_profile\" is required and cannot be null") if @business_profile.nil?

      unless (_business_profile = @business_profile).nil?
        invalid_properties.concat(_business_profile.list_invalid_properties_for("business_profile")) if _business_profile.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"created\" is required and cannot be null") if @created.nil?

      invalid_properties.push("\"features\" is required and cannot be null") if @features.nil?

      unless (_features = @features).nil?
        invalid_properties.concat(_features.list_invalid_properties_for("features")) if _features.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"id\" is required and cannot be null") if @id.nil?

      unless (_id = @id).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("id", _id.to_s.size, MAX_LENGTH_FOR_ID)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"is_default\" is required and cannot be null") if @is_default.nil?

      invalid_properties.push("\"livemode\" is required and cannot be null") if @livemode.nil?

      invalid_properties.push("\"login_page\" is required and cannot be null") if @login_page.nil?

      unless (_login_page = @login_page).nil?
        invalid_properties.concat(_login_page.list_invalid_properties_for("login_page")) if _login_page.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"object\" is required and cannot be null") if @object.nil?

      unless (_object = @object).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_OBJECT) unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end
      invalid_properties.push("\"updated\" is required and cannot be null") if @updated.nil?

      unless (_application = @application).nil?
        invalid_properties.concat(_application.list_invalid_properties_for("application")) if _application.is_a?(OpenApi::Validatable)
      end
      unless (_default_return_url = @default_return_url).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("default_return_url", _default_return_url.to_s.size, MAX_LENGTH_FOR_DEFAULT_RETURN_URL)
          invalid_properties.push(max_length_error)
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @active.nil?

      return false if @business_profile.nil?
      unless (_business_profile = @business_profile).nil?
        return false if _business_profile.is_a?(OpenApi::Validatable) && !_business_profile.valid?
      end

      return false if @created.nil?

      return false if @features.nil?
      unless (_features = @features).nil?
        return false if _features.is_a?(OpenApi::Validatable) && !_features.valid?
      end

      return false if @id.nil?
      unless (_id = @id).nil?
        return false if _id.to_s.size > MAX_LENGTH_FOR_ID
      end

      return false if @is_default.nil?

      return false if @livemode.nil?

      return false if @login_page.nil?
      unless (_login_page = @login_page).nil?
        return false if _login_page.is_a?(OpenApi::Validatable) && !_login_page.valid?
      end

      return false if @object.nil?
      unless (_object = @object).nil?
        return false unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end

      return false if @updated.nil?

      unless (_application = @application).nil?
        return false if _application.is_a?(OpenApi::Validatable) && !_application.valid?
      end

      unless (_default_return_url = @default_return_url).nil?
        return false if _default_return_url.to_s.size > MAX_LENGTH_FOR_DEFAULT_RETURN_URL
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] active Object to be assigned
    def active=(active : Bool?)
      if active.nil?
        raise ArgumentError.new("\"active\" is required and cannot be null")
      end
      _active = active.not_nil!
      @active = _active
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] business_profile Object to be assigned
    def business_profile=(business_profile : Stripe::PortalBusinessProfile?)
      if business_profile.nil?
        raise ArgumentError.new("\"business_profile\" is required and cannot be null")
      end
      _business_profile = business_profile.not_nil!
      _business_profile.validate if _business_profile.is_a?(OpenApi::Validatable)
      @business_profile = _business_profile
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
    # @param [Object] features Object to be assigned
    def features=(features : Stripe::PortalFeatures?)
      if features.nil?
        raise ArgumentError.new("\"features\" is required and cannot be null")
      end
      _features = features.not_nil!
      _features.validate if _features.is_a?(OpenApi::Validatable)
      @features = _features
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] id Object to be assigned
    def id=(id : String?)
      if id.nil?
        raise ArgumentError.new("\"id\" is required and cannot be null")
      end
      _id = id.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("id", _id.to_s.size, MAX_LENGTH_FOR_ID)
      @id = _id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] is_default Object to be assigned
    def is_default=(is_default : Bool?)
      if is_default.nil?
        raise ArgumentError.new("\"is_default\" is required and cannot be null")
      end
      _is_default = is_default.not_nil!
      @is_default = _is_default
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
    # @param [Object] login_page Object to be assigned
    def login_page=(login_page : Stripe::PortalLoginPage?)
      if login_page.nil?
        raise ArgumentError.new("\"login_page\" is required and cannot be null")
      end
      _login_page = login_page.not_nil!
      _login_page.validate if _login_page.is_a?(OpenApi::Validatable)
      @login_page = _login_page
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object : String?)
      if object.nil?
        raise ArgumentError.new("\"object\" is required and cannot be null")
      end
      _object = object.not_nil!
      OpenApi::EnumValidator.validate("object", _object, VALID_VALUES_FOR_OBJECT)
      @object = _object
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] updated Object to be assigned
    def updated=(updated : Int64?)
      if updated.nil?
        raise ArgumentError.new("\"updated\" is required and cannot be null")
      end
      _updated = updated.not_nil!
      @updated = _updated
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] application Object to be assigned
    def application=(application : Stripe::BillingPortalConfigurationApplication?)
      if application.nil?
        return @application = nil
      end
      _application = application.not_nil!
      _application.validate if _application.is_a?(OpenApi::Validatable)
      @application = _application
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] default_return_url Object to be assigned
    def default_return_url=(default_return_url : String?)
      if default_return_url.nil?
        return @default_return_url = nil
      end
      _default_return_url = default_return_url.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("default_return_url", _default_return_url.to_s.size, MAX_LENGTH_FOR_DEFAULT_RETURN_URL)
      @default_return_url = _default_return_url
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(metadata : Hash(String, String)?)
      if metadata.nil?
        return @metadata = nil
      end
      _metadata = metadata.not_nil!
      @metadata = _metadata
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@active, @business_profile, @created, @features, @id, @is_default, @livemode, @login_page, @object, @updated, @application, @application_present, @default_return_url, @default_return_url_present, @metadata, @metadata_present)
  end
end
