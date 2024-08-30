#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./payment_method_domain_resource_payment_method_status_details"

module Stripe
  # Indicates the status of a specific payment method on a payment method domain.
  class PaymentMethodDomainResourcePaymentMethodStatus
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The status of the payment method on the domain.
    @[JSON::Field(key: "status", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter status : String? = nil
    ERROR_MESSAGE_FOR_STATUS = "invalid value for \"status\", must be one of [active, inactive]."
    VALID_VALUES_FOR_STATUS  = String.static_array("active", "inactive")

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "status_details", type: Stripe::PaymentMethodDomainResourcePaymentMethodStatusDetails?, default: nil, required: false, nullable: false, emit_null: false)]
    getter status_details : Stripe::PaymentMethodDomainResourcePaymentMethodStatusDetails? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @status : String? = nil,
      # Optional properties
      @status_details : Stripe::PaymentMethodDomainResourcePaymentMethodStatusDetails? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"status\" is required and cannot be null") if @status.nil?

      unless (_status = @status).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_STATUS) unless OpenApi::EnumValidator.valid?(_status, VALID_VALUES_FOR_STATUS)
      end
      unless (_status_details = @status_details).nil?
        invalid_properties.concat(_status_details.list_invalid_properties_for("status_details")) if _status_details.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @status.nil?
      unless (_status = @status).nil?
        return false unless OpenApi::EnumValidator.valid?(_status, VALID_VALUES_FOR_STATUS)
      end

      unless (_status_details = @status_details).nil?
        return false if _status_details.is_a?(OpenApi::Validatable) && !_status_details.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(new_value : String?)
      raise ArgumentError.new("\"status\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::EnumValidator.validate("status", new_value, VALID_VALUES_FOR_STATUS)
      end

      @status = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status_details Object to be assigned
    def status_details=(new_value : Stripe::PaymentMethodDomainResourcePaymentMethodStatusDetails?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @status_details = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@status, @status_details)
  end
end