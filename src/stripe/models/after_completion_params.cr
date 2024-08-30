#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./after_completion_confirmation_page_params"
require "./after_completion_redirect_params"

module Stripe
  class AfterCompletionParams
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The specified behavior after the purchase is complete. Either `redirect` or `hosted_confirmation`.
    @[JSON::Field(key: "type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter _type : String? = nil
    ERROR_MESSAGE_FOR__TYPE = "invalid value for \"_type\", must be one of [hosted_confirmation, redirect]."
    VALID_VALUES_FOR__TYPE  = String.static_array("hosted_confirmation", "redirect")

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "hosted_confirmation", type: Stripe::AfterCompletionConfirmationPageParams?, default: nil, required: false, nullable: false, emit_null: false)]
    getter hosted_confirmation : Stripe::AfterCompletionConfirmationPageParams? = nil

    @[JSON::Field(key: "redirect", type: Stripe::AfterCompletionRedirectParams?, default: nil, required: false, nullable: false, emit_null: false)]
    getter redirect : Stripe::AfterCompletionRedirectParams? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @_type : String? = nil,
      # Optional properties
      @hosted_confirmation : Stripe::AfterCompletionConfirmationPageParams? = nil,
      @redirect : Stripe::AfterCompletionRedirectParams? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"_type\" is required and cannot be null") if @_type.nil?

      unless (__type = @_type).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR__TYPE) unless OpenApi::EnumValidator.valid?(__type, VALID_VALUES_FOR__TYPE)
      end
      unless (_hosted_confirmation = @hosted_confirmation).nil?
        invalid_properties.concat(_hosted_confirmation.list_invalid_properties_for("hosted_confirmation")) if _hosted_confirmation.is_a?(OpenApi::Validatable)
      end
      unless (_redirect = @redirect).nil?
        invalid_properties.concat(_redirect.list_invalid_properties_for("redirect")) if _redirect.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @_type.nil?
      unless (__type = @_type).nil?
        return false unless OpenApi::EnumValidator.valid?(__type, VALID_VALUES_FOR__TYPE)
      end

      unless (_hosted_confirmation = @hosted_confirmation).nil?
        return false if _hosted_confirmation.is_a?(OpenApi::Validatable) && !_hosted_confirmation.valid?
      end

      unless (_redirect = @redirect).nil?
        return false if _redirect.is_a?(OpenApi::Validatable) && !_redirect.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(new_value : String?)
      raise ArgumentError.new("\"_type\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::EnumValidator.validate("_type", new_value, VALID_VALUES_FOR__TYPE)
      end

      @_type = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] hosted_confirmation Object to be assigned
    def hosted_confirmation=(new_value : Stripe::AfterCompletionConfirmationPageParams?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @hosted_confirmation = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] redirect Object to be assigned
    def redirect=(new_value : Stripe::AfterCompletionRedirectParams?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @redirect = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@_type, @hosted_confirmation, @redirect)
  end
end
