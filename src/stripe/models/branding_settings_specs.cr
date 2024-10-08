#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

module Stripe
  class BrandingSettingsSpecs
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) An icon for the account. Must be square and at least 128px x 128px.
    @[JSON::Field(key: "icon", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter icon : String? = nil
    MAX_LENGTH_FOR_ICON = 5000

    # (ID of a [file upload](https://stripe.com/docs/guides/file-upload)) A logo for the account that will be used in Checkout instead of the icon and without the account's name next to it if provided. Must be at least 128px x 128px.
    @[JSON::Field(key: "logo", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter logo : String? = nil
    MAX_LENGTH_FOR_LOGO = 5000

    # A CSS hex color value representing the primary branding color for this account.
    @[JSON::Field(key: "primary_color", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter primary_color : String? = nil
    MAX_LENGTH_FOR_PRIMARY_COLOR = 5000

    # A CSS hex color value representing the secondary branding color for this account.
    @[JSON::Field(key: "secondary_color", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter secondary_color : String? = nil
    MAX_LENGTH_FOR_SECONDARY_COLOR = 5000

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @icon : String? = nil,
      @logo : String? = nil,
      @primary_color : String? = nil,
      @secondary_color : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_icon = @icon).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("icon", _icon.to_s.size, MAX_LENGTH_FOR_ICON)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_logo = @logo).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("logo", _logo.to_s.size, MAX_LENGTH_FOR_LOGO)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_primary_color = @primary_color).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("primary_color", _primary_color.to_s.size, MAX_LENGTH_FOR_PRIMARY_COLOR)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_secondary_color = @secondary_color).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("secondary_color", _secondary_color.to_s.size, MAX_LENGTH_FOR_SECONDARY_COLOR)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_icon = @icon).nil?
        return false if _icon.to_s.size > MAX_LENGTH_FOR_ICON
      end

      unless (_logo = @logo).nil?
        return false if _logo.to_s.size > MAX_LENGTH_FOR_LOGO
      end

      unless (_primary_color = @primary_color).nil?
        return false if _primary_color.to_s.size > MAX_LENGTH_FOR_PRIMARY_COLOR
      end

      unless (_secondary_color = @secondary_color).nil?
        return false if _secondary_color.to_s.size > MAX_LENGTH_FOR_SECONDARY_COLOR
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] icon Object to be assigned
    def icon=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("icon", new_value.to_s.size, MAX_LENGTH_FOR_ICON)
      end

      @icon = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] logo Object to be assigned
    def logo=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("logo", new_value.to_s.size, MAX_LENGTH_FOR_LOGO)
      end

      @logo = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] primary_color Object to be assigned
    def primary_color=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("primary_color", new_value.to_s.size, MAX_LENGTH_FOR_PRIMARY_COLOR)
      end

      @primary_color = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] secondary_color Object to be assigned
    def secondary_color=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("secondary_color", new_value.to_s.size, MAX_LENGTH_FOR_SECONDARY_COLOR)
      end

      @secondary_color = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@icon, @logo, @primary_color, @secondary_color)
  end
end
