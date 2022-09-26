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
  class AccountBrandingSettings
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "icon", type: Stripe::AccountBrandingSettingsIcon?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: icon.nil? && !icon_present?)]
    getter icon : Stripe::AccountBrandingSettingsIcon? = nil

    @[JSON::Field(ignore: true)]
    property? icon_present : Bool = false

    @[JSON::Field(key: "logo", type: Stripe::AccountBrandingSettingsLogo?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: logo.nil? && !logo_present?)]
    getter logo : Stripe::AccountBrandingSettingsLogo? = nil

    @[JSON::Field(ignore: true)]
    property? logo_present : Bool = false

    # A CSS hex color value representing the primary branding color for this account
    @[JSON::Field(key: "primary_color", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: primary_color.nil? && !primary_color_present?)]
    getter primary_color : String? = nil

    @[JSON::Field(ignore: true)]
    property? primary_color_present : Bool = false

    # A CSS hex color value representing the secondary branding color for this account
    @[JSON::Field(key: "secondary_color", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: secondary_color.nil? && !secondary_color_present?)]
    getter secondary_color : String? = nil

    @[JSON::Field(ignore: true)]
    property? secondary_color_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @icon : Stripe::AccountBrandingSettingsIcon? = nil,
      @logo : Stripe::AccountBrandingSettingsLogo? = nil,
      @primary_color : String? = nil,
      @secondary_color : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      # This is a model icon : Stripe::AccountBrandingSettingsIcon?
      # This is a model logo : Stripe::AccountBrandingSettingsLogo?
      if _primary_color = @primary_color
        if _primary_color.to_s.size > 5000
          invalid_properties.push("invalid value for \"primary_color\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _secondary_color = @secondary_color
        if _secondary_color.to_s.size > 5000
          invalid_properties.push("invalid value for \"secondary_color\", the character length must be smaller than or equal to 5000.")
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      if _primary_color = @primary_color
        return false if _primary_color.to_s.size > 5000
      end
      if _secondary_color = @secondary_color
        return false if _secondary_color.to_s.size > 5000
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] icon Object to be assigned
    def icon=(icon : Stripe::AccountBrandingSettingsIcon?)
      if icon.nil?
        return @icon = nil
      end
      @icon = icon
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] logo Object to be assigned
    def logo=(logo : Stripe::AccountBrandingSettingsLogo?)
      if logo.nil?
        return @logo = nil
      end
      @logo = logo
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] primary_color Object to be assigned
    def primary_color=(primary_color : String?)
      if primary_color.nil?
        return @primary_color = nil
      end
      _primary_color = primary_color.not_nil!
      if _primary_color.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"primary_color\", the character length must be smaller than or equal to 5000.")
      end

      @primary_color = primary_color
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] secondary_color Object to be assigned
    def secondary_color=(secondary_color : String?)
      if secondary_color.nil?
        return @secondary_color = nil
      end
      _secondary_color = secondary_color.not_nil!
      if _secondary_color.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"secondary_color\", the character length must be smaller than or equal to 5000.")
      end

      @secondary_color = secondary_color
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
    def_equals_and_hash(@icon, @icon_present, @logo, @logo_present, @primary_color, @primary_color_present, @secondary_color, @secondary_color_present)
  end
end
