#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./authorization_controls_param"
require "./encrypted_pin_param"
require "./post_accounts_request_metadata"
require "./shipping_specs"

module Stripe
  class PostIssuingCardsCardRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # Reason why the `status` of this card is `canceled`.
    @[JSON::Field(key: "cancellation_reason", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter cancellation_reason : String? = nil
    ERROR_MESSAGE_FOR_CANCELLATION_REASON = "invalid value for \"cancellation_reason\", must be one of [lost, stolen]."
    VALID_VALUES_FOR_CANCELLATION_REASON  = String.static_array("lost", "stolen")

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    @[JSON::Field(key: "metadata", type: Stripe::PostAccountsRequestMetadata?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Stripe::PostAccountsRequestMetadata? = nil

    @[JSON::Field(key: "personalization_design", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter personalization_design : String? = nil
    MAX_LENGTH_FOR_PERSONALIZATION_DESIGN = 5000

    @[JSON::Field(key: "pin", type: Stripe::EncryptedPinParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter pin : Stripe::EncryptedPinParam? = nil

    @[JSON::Field(key: "shipping", type: Stripe::ShippingSpecs?, default: nil, required: false, nullable: false, emit_null: false)]
    getter shipping : Stripe::ShippingSpecs? = nil

    @[JSON::Field(key: "spending_controls", type: Stripe::AuthorizationControlsParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter spending_controls : Stripe::AuthorizationControlsParam? = nil

    # Dictates whether authorizations can be approved on this card. May be blocked from activating cards depending on past-due Cardholder requirements. Defaults to `inactive`. If this card is being canceled because it was lost or stolen, this information should be provided as `cancellation_reason`.
    @[JSON::Field(key: "status", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter status : String? = nil
    ERROR_MESSAGE_FOR_STATUS = "invalid value for \"status\", must be one of [active, canceled, inactive]."
    VALID_VALUES_FOR_STATUS  = String.static_array("active", "canceled", "inactive")

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @cancellation_reason : String? = nil,
      @expand : Array(String)? = nil,
      @metadata : Stripe::PostAccountsRequestMetadata? = nil,
      @personalization_design : String? = nil,
      @pin : Stripe::EncryptedPinParam? = nil,
      @shipping : Stripe::ShippingSpecs? = nil,
      @spending_controls : Stripe::AuthorizationControlsParam? = nil,
      @status : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_cancellation_reason = @cancellation_reason).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_CANCELLATION_REASON) unless OpenApi::EnumValidator.valid?(_cancellation_reason, VALID_VALUES_FOR_CANCELLATION_REASON)
      end

      unless (_metadata = @metadata).nil?
        invalid_properties.concat(_metadata.list_invalid_properties_for("metadata")) if _metadata.is_a?(OpenApi::Validatable)
      end
      unless (_personalization_design = @personalization_design).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("personalization_design", _personalization_design.to_s.size, MAX_LENGTH_FOR_PERSONALIZATION_DESIGN)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_pin = @pin).nil?
        invalid_properties.concat(_pin.list_invalid_properties_for("pin")) if _pin.is_a?(OpenApi::Validatable)
      end
      unless (_shipping = @shipping).nil?
        invalid_properties.concat(_shipping.list_invalid_properties_for("shipping")) if _shipping.is_a?(OpenApi::Validatable)
      end
      unless (_spending_controls = @spending_controls).nil?
        invalid_properties.concat(_spending_controls.list_invalid_properties_for("spending_controls")) if _spending_controls.is_a?(OpenApi::Validatable)
      end
      unless (_status = @status).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_STATUS) unless OpenApi::EnumValidator.valid?(_status, VALID_VALUES_FOR_STATUS)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_cancellation_reason = @cancellation_reason).nil?
        return false unless OpenApi::EnumValidator.valid?(_cancellation_reason, VALID_VALUES_FOR_CANCELLATION_REASON)
      end

      unless (_metadata = @metadata).nil?
        return false if _metadata.is_a?(OpenApi::Validatable) && !_metadata.valid?
      end

      unless (_personalization_design = @personalization_design).nil?
        return false if _personalization_design.to_s.size > MAX_LENGTH_FOR_PERSONALIZATION_DESIGN
      end

      unless (_pin = @pin).nil?
        return false if _pin.is_a?(OpenApi::Validatable) && !_pin.valid?
      end

      unless (_shipping = @shipping).nil?
        return false if _shipping.is_a?(OpenApi::Validatable) && !_shipping.valid?
      end

      unless (_spending_controls = @spending_controls).nil?
        return false if _spending_controls.is_a?(OpenApi::Validatable) && !_spending_controls.valid?
      end

      unless (_status = @status).nil?
        return false unless OpenApi::EnumValidator.valid?(_status, VALID_VALUES_FOR_STATUS)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cancellation_reason Object to be assigned
    def cancellation_reason=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("cancellation_reason", new_value, VALID_VALUES_FOR_CANCELLATION_REASON)
      end

      @cancellation_reason = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expand Object to be assigned
    def expand=(new_value : Array(String)?)
      @expand = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(new_value : Stripe::PostAccountsRequestMetadata?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @metadata = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] personalization_design Object to be assigned
    def personalization_design=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("personalization_design", new_value.to_s.size, MAX_LENGTH_FOR_PERSONALIZATION_DESIGN)
      end

      @personalization_design = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] pin Object to be assigned
    def pin=(new_value : Stripe::EncryptedPinParam?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @pin = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] shipping Object to be assigned
    def shipping=(new_value : Stripe::ShippingSpecs?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @shipping = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] spending_controls Object to be assigned
    def spending_controls=(new_value : Stripe::AuthorizationControlsParam?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @spending_controls = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("status", new_value, VALID_VALUES_FOR_STATUS)
      end

      @status = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@cancellation_reason, @expand, @metadata, @personalization_design, @pin, @shipping, @spending_controls, @status)
  end
end
