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
  class PostTreasuryFinancialAccountsFinancialAccountRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    @[JSON::Field(key: "features", type: Stripe::FeatureAccess1?, default: nil, required: false, nullable: false, emit_null: false)]
    getter features : Stripe::FeatureAccess1? = nil

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Hash(String, String)? = nil

    @[JSON::Field(key: "platform_restrictions", type: Stripe::PlatformRestrictions?, default: nil, required: false, nullable: false, emit_null: false)]
    getter platform_restrictions : Stripe::PlatformRestrictions? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @expand : Array(String)? = nil,
      @features : Stripe::FeatureAccess1? = nil,
      @metadata : Hash(String, String)? = nil,
      @platform_restrictions : Stripe::PlatformRestrictions? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_features = @features).nil?
        invalid_properties.concat(_features.list_invalid_properties_for("features")) if _features.is_a?(OpenApi::Validatable)
      end

      unless (_platform_restrictions = @platform_restrictions).nil?
        invalid_properties.concat(_platform_restrictions.list_invalid_properties_for("platform_restrictions")) if _platform_restrictions.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_features = @features).nil?
        return false if _features.is_a?(OpenApi::Validatable) && !_features.valid?
      end

      unless (_platform_restrictions = @platform_restrictions).nil?
        return false if _platform_restrictions.is_a?(OpenApi::Validatable) && !_platform_restrictions.valid?
      end

      true
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
    # @param [Object] features Object to be assigned
    def features=(features : Stripe::FeatureAccess1?)
      if features.nil?
        return @features = nil
      end
      _features = features.not_nil!
      _features.validate if _features.is_a?(OpenApi::Validatable)
      @features = _features
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

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] platform_restrictions Object to be assigned
    def platform_restrictions=(platform_restrictions : Stripe::PlatformRestrictions?)
      if platform_restrictions.nil?
        return @platform_restrictions = nil
      end
      _platform_restrictions = platform_restrictions.not_nil!
      _platform_restrictions.validate if _platform_restrictions.is_a?(OpenApi::Validatable)
      @platform_restrictions = _platform_restrictions
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@expand, @features, @metadata, @platform_restrictions)
  end
end
