#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-08-27
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module Stripe
  # A portal configuration describes the functionality and behavior of a portal session.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class BillingPortalConfiguration
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # Whether the configuration is active and can be used to create portal sessions.
    @[JSON::Field(key: "active", type: Bool)]
    property active : Bool

    @[JSON::Field(key: "business_profile", type: PortalBusinessProfile)]
    property business_profile : PortalBusinessProfile

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64)]
    property created : Int64

    @[JSON::Field(key: "features", type: PortalFeatures)]
    property features : PortalFeatures

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String)]
    getter id : String

    # Whether the configuration is the default. If `true`, this configuration can be managed in the Dashboard and portal sessions will use this configuration unless it is overriden when creating the session.
    @[JSON::Field(key: "is_default", type: Bool)]
    property is_default : Bool

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool)]
    property livemode : Bool

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String)]
    getter object : String

    ENUM_VALIDATOR_FOR_OBJECT = EnumValidator.new("object", "String", ["billing_portal.configuration"])

    # Time at which the object was last updated. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "updated", type: Int64)]
    property updated : Int64

    # Optional properties

    @[JSON::Field(key: "application", type: BillingPortalConfigurationApplication?, presence: true, ignore_serialize: application.nil? && !application_present?)]
    property application : BillingPortalConfigurationApplication?

    @[JSON::Field(ignore: true)]
    property? application_present : Bool = false

    # The default URL to redirect customers to when they click on the portal's link to return to your website. This can be [overriden](https://stripe.com/docs/api/customer_portal/sessions/create#create_portal_session-return_url) when creating the session.
    @[JSON::Field(key: "default_return_url", type: String?, presence: true, ignore_serialize: default_return_url.nil? && !default_return_url_present?)]
    getter default_return_url : String?

    @[JSON::Field(ignore: true)]
    property? default_return_url_present : Bool = false

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    @[JSON::Field(key: "metadata", type: Hash(String, String)?, presence: true, ignore_serialize: metadata.nil? && !metadata_present?)]
    property metadata : Hash(String, String)?

    @[JSON::Field(ignore: true)]
    property? metadata_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @active : Bool,
      @business_profile : PortalBusinessProfile,
      @created : Int64,
      @features : PortalFeatures,
      @id : String,
      @is_default : Bool,
      @livemode : Bool,
      @object : String,
      @updated : Int64,
      # Optional properties
      @application : BillingPortalConfigurationApplication? = nil,
      @default_return_url : String? = nil,
      @metadata : Hash(String, String)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if @id.to_s.size > 5000
        invalid_properties.push("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_OBJECT.error_message) unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)

      if !@default_return_url.nil? && @default_return_url.to_s.size > 5000
        invalid_properties.push("invalid value for \"default_return_url\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.to_s.size > 5000
      return false unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      return false if !@default_return_url.nil? && @default_return_url.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] id Value to be assigned
    def id=(id)
      if id.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      @id = id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object)
      ENUM_VALIDATOR_FOR_OBJECT.valid!(object, false)
      @object = object
    end

    # Custom attribute writer method with validation
    # @param [Object] default_return_url Value to be assigned
    def default_return_url=(default_return_url)
      if !default_return_url.nil? && default_return_url.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"default_return_url\", the character length must be smaller than or equal to 5000.")
      end

      @default_return_url = default_return_url
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@active, @business_profile, @created, @features, @id, @is_default, @livemode, @object, @updated, @application, @default_return_url, @metadata)
  end
end
