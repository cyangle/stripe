#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./payment_method_card_wallet_masterpass_billing_address"
require "./payment_method_card_wallet_masterpass_shipping_address"

module Stripe
  #
  class PaymentMethodDetailsCardWalletVisaCheckout
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "billing_address", type: Stripe::PaymentMethodCardWalletMasterpassBillingAddress?, default: nil, required: true, nullable: true, emit_null: true)]
    getter billing_address : Stripe::PaymentMethodCardWalletMasterpassBillingAddress? = nil

    # Owner's verified email. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
    @[JSON::Field(key: "email", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter email : String? = nil
    MAX_LENGTH_FOR_EMAIL = 5000

    # Owner's verified full name. Values are verified or provided by the wallet directly (if supported) at the time of authorization or settlement. They cannot be set or mutated.
    @[JSON::Field(key: "name", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter name : String? = nil
    MAX_LENGTH_FOR_NAME = 5000

    @[JSON::Field(key: "shipping_address", type: Stripe::PaymentMethodCardWalletMasterpassShippingAddress?, default: nil, required: true, nullable: true, emit_null: true)]
    getter shipping_address : Stripe::PaymentMethodCardWalletMasterpassShippingAddress? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @billing_address : Stripe::PaymentMethodCardWalletMasterpassBillingAddress? = nil,
      @email : String? = nil,
      @name : String? = nil,
      @shipping_address : Stripe::PaymentMethodCardWalletMasterpassShippingAddress? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_billing_address = @billing_address).nil?
        invalid_properties.concat(_billing_address.list_invalid_properties_for("billing_address")) if _billing_address.is_a?(OpenApi::Validatable)
      end
      unless (_email = @email).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("email", _email.to_s.size, MAX_LENGTH_FOR_EMAIL)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_name = @name).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("name", _name.to_s.size, MAX_LENGTH_FOR_NAME)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_shipping_address = @shipping_address).nil?
        invalid_properties.concat(_shipping_address.list_invalid_properties_for("shipping_address")) if _shipping_address.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_billing_address = @billing_address).nil?
        return false if _billing_address.is_a?(OpenApi::Validatable) && !_billing_address.valid?
      end

      unless (_email = @email).nil?
        return false if _email.to_s.size > MAX_LENGTH_FOR_EMAIL
      end

      unless (_name = @name).nil?
        return false if _name.to_s.size > MAX_LENGTH_FOR_NAME
      end

      unless (_shipping_address = @shipping_address).nil?
        return false if _shipping_address.is_a?(OpenApi::Validatable) && !_shipping_address.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] billing_address Object to be assigned
    def billing_address=(new_value : Stripe::PaymentMethodCardWalletMasterpassBillingAddress?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @billing_address = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] email Object to be assigned
    def email=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("email", new_value.to_s.size, MAX_LENGTH_FOR_EMAIL)
      end

      @email = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] name Object to be assigned
    def name=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("name", new_value.to_s.size, MAX_LENGTH_FOR_NAME)
      end

      @name = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] shipping_address Object to be assigned
    def shipping_address=(new_value : Stripe::PaymentMethodCardWalletMasterpassShippingAddress?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @shipping_address = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@billing_address, @email, @name, @shipping_address)
  end
end
