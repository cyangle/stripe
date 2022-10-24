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
  class PostBillingPortalConfigurationsRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "business_profile", type: Stripe::BusinessProfileCreateParam?, default: nil, required: true, nullable: false, emit_null: false)]
    getter business_profile : Stripe::BusinessProfileCreateParam? = nil

    @[JSON::Field(key: "features", type: Stripe::FeaturesCreationParam?, default: nil, required: true, nullable: false, emit_null: false)]
    getter features : Stripe::FeaturesCreationParam? = nil

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "default_return_url", type: Stripe::PostBillingPortalConfigurationsRequestDefaultReturnUrl?, default: nil, required: false, nullable: false, emit_null: false)]
    getter default_return_url : Stripe::PostBillingPortalConfigurationsRequestDefaultReturnUrl? = nil

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    @[JSON::Field(key: "login_page", type: Stripe::LoginPageCreateParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter login_page : Stripe::LoginPageCreateParam? = nil

    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Hash(String, String)? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @business_profile : Stripe::BusinessProfileCreateParam? = nil,
      @features : Stripe::FeaturesCreationParam? = nil,
      # Optional properties
      @default_return_url : Stripe::PostBillingPortalConfigurationsRequestDefaultReturnUrl? = nil,
      @expand : Array(String)? = nil,
      @login_page : Stripe::LoginPageCreateParam? = nil,
      @metadata : Hash(String, String)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"business_profile\" is required and cannot be null") if @business_profile.nil?

      unless (_business_profile = @business_profile).nil?
        invalid_properties.concat(_business_profile.list_invalid_properties_for("business_profile")) if _business_profile.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"features\" is required and cannot be null") if @features.nil?

      unless (_features = @features).nil?
        invalid_properties.concat(_features.list_invalid_properties_for("features")) if _features.is_a?(OpenApi::Validatable)
      end
      unless (_default_return_url = @default_return_url).nil?
        invalid_properties.concat(_default_return_url.list_invalid_properties_for("default_return_url")) if _default_return_url.is_a?(OpenApi::Validatable)
      end

      unless (_login_page = @login_page).nil?
        invalid_properties.concat(_login_page.list_invalid_properties_for("login_page")) if _login_page.is_a?(OpenApi::Validatable)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @business_profile.nil?
      unless (_business_profile = @business_profile).nil?
        return false if _business_profile.is_a?(OpenApi::Validatable) && !_business_profile.valid?
      end

      return false if @features.nil?
      unless (_features = @features).nil?
        return false if _features.is_a?(OpenApi::Validatable) && !_features.valid?
      end

      unless (_default_return_url = @default_return_url).nil?
        return false if _default_return_url.is_a?(OpenApi::Validatable) && !_default_return_url.valid?
      end

      unless (_login_page = @login_page).nil?
        return false if _login_page.is_a?(OpenApi::Validatable) && !_login_page.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] business_profile Object to be assigned
    def business_profile=(business_profile : Stripe::BusinessProfileCreateParam?)
      if business_profile.nil?
        raise ArgumentError.new("\"business_profile\" is required and cannot be null")
      end
      _business_profile = business_profile.not_nil!
      _business_profile.validate if _business_profile.is_a?(OpenApi::Validatable)
      @business_profile = _business_profile
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] features Object to be assigned
    def features=(features : Stripe::FeaturesCreationParam?)
      if features.nil?
        raise ArgumentError.new("\"features\" is required and cannot be null")
      end
      _features = features.not_nil!
      _features.validate if _features.is_a?(OpenApi::Validatable)
      @features = _features
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] default_return_url Object to be assigned
    def default_return_url=(default_return_url : Stripe::PostBillingPortalConfigurationsRequestDefaultReturnUrl?)
      if default_return_url.nil?
        return @default_return_url = nil
      end
      _default_return_url = default_return_url.not_nil!
      _default_return_url.validate if _default_return_url.is_a?(OpenApi::Validatable)
      @default_return_url = _default_return_url
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
    # @param [Object] login_page Object to be assigned
    def login_page=(login_page : Stripe::LoginPageCreateParam?)
      if login_page.nil?
        return @login_page = nil
      end
      _login_page = login_page.not_nil!
      _login_page.validate if _login_page.is_a?(OpenApi::Validatable)
      @login_page = _login_page
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
    def_equals_and_hash(@business_profile, @features, @default_return_url, @expand, @login_page, @metadata)
  end
end
