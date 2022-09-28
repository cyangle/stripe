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
  class SetupIntentNextAction
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    # Type of the next action to perform, one of `redirect_to_url`, `use_stripe_sdk`, `alipay_handle_redirect`, `oxxo_display_details`, or `verify_with_microdeposits`.
    @[JSON::Field(key: "type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter _type : String? = nil

    # Optional properties

    @[JSON::Field(key: "redirect_to_url", type: Stripe::SetupIntentNextActionRedirectToUrl?, default: nil, required: false, nullable: false, emit_null: false)]
    getter redirect_to_url : Stripe::SetupIntentNextActionRedirectToUrl? = nil

    # When confirming a SetupIntent with Stripe.js, Stripe.js depends on the contents of this dictionary to invoke authentication flows. The shape of the contents is subject to change and is only intended to be used by Stripe.js.
    @[JSON::Field(key: "use_stripe_sdk", type: JSON::Any?, default: nil, required: false, nullable: false, emit_null: false)]
    getter use_stripe_sdk : JSON::Any? = nil

    @[JSON::Field(key: "verify_with_microdeposits", type: Stripe::SetupIntentNextActionVerifyWithMicrodeposits?, default: nil, required: false, nullable: false, emit_null: false)]
    getter verify_with_microdeposits : Stripe::SetupIntentNextActionVerifyWithMicrodeposits? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @_type : String? = nil,
      # Optional properties
      @redirect_to_url : Stripe::SetupIntentNextActionRedirectToUrl? = nil,
      @use_stripe_sdk : JSON::Any? = nil,
      @verify_with_microdeposits : Stripe::SetupIntentNextActionVerifyWithMicrodeposits? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      invalid_properties.push("\"_type\" is required and cannot be null") if @_type.nil?
      if __type = @_type
        if __type.to_s.size > 5000
          invalid_properties.push("invalid value for \"_type\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _redirect_to_url = @redirect_to_url
        if _redirect_to_url.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_redirect_to_url.list_invalid_properties_for("redirect_to_url"))
        end
      end

      if _verify_with_microdeposits = @verify_with_microdeposits
        if _verify_with_microdeposits.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_verify_with_microdeposits.list_invalid_properties_for("verify_with_microdeposits"))
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @_type.nil?
      if __type = @_type
        return false if __type.to_s.size > 5000
      end
      if _redirect_to_url = @redirect_to_url
        if _redirect_to_url.is_a?(OpenApi::Validatable)
          return false unless _redirect_to_url.valid?
        end
      end

      if _verify_with_microdeposits = @verify_with_microdeposits
        if _verify_with_microdeposits.is_a?(OpenApi::Validatable)
          return false unless _verify_with_microdeposits.valid?
        end
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(_type : String?)
      if _type.nil?
        raise ArgumentError.new("\"_type\" is required and cannot be null")
      end
      __type = _type.not_nil!
      if __type.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"_type\", the character length must be smaller than or equal to 5000.")
      end

      @_type = __type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] redirect_to_url Object to be assigned
    def redirect_to_url=(redirect_to_url : Stripe::SetupIntentNextActionRedirectToUrl?)
      if redirect_to_url.nil?
        return @redirect_to_url = nil
      end
      _redirect_to_url = redirect_to_url.not_nil!
      if _redirect_to_url.is_a?(OpenApi::Validatable)
        _redirect_to_url.validate
      end
      @redirect_to_url = _redirect_to_url
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] use_stripe_sdk Object to be assigned
    def use_stripe_sdk=(use_stripe_sdk : JSON::Any?)
      if use_stripe_sdk.nil?
        return @use_stripe_sdk = nil
      end
      _use_stripe_sdk = use_stripe_sdk.not_nil!
      @use_stripe_sdk = _use_stripe_sdk
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] verify_with_microdeposits Object to be assigned
    def verify_with_microdeposits=(verify_with_microdeposits : Stripe::SetupIntentNextActionVerifyWithMicrodeposits?)
      if verify_with_microdeposits.nil?
        return @verify_with_microdeposits = nil
      end
      _verify_with_microdeposits = verify_with_microdeposits.not_nil!
      if _verify_with_microdeposits.is_a?(OpenApi::Validatable)
        _verify_with_microdeposits.validate
      end
      @verify_with_microdeposits = _verify_with_microdeposits
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@_type, @redirect_to_url, @use_stripe_sdk, @verify_with_microdeposits)
  end
end
