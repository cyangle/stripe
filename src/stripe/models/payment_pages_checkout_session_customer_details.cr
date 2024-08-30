#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./address"
require "./payment_pages_checkout_session_tax_id"

module Stripe
  #
  class PaymentPagesCheckoutSessionCustomerDetails
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "address", type: Stripe::Address?, default: nil, required: true, nullable: true, emit_null: true)]
    getter address : Stripe::Address? = nil

    # The email associated with the Customer, if one exists, on the Checkout Session after a completed Checkout Session or at time of session expiry. Otherwise, if the customer has consented to promotional content, this value is the most recent valid email provided by the customer on the Checkout form.
    @[JSON::Field(key: "email", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter email : String? = nil
    MAX_LENGTH_FOR_EMAIL = 5000

    # The customer's name after a completed Checkout Session. Note: This property is populated only for sessions on or after March 30, 2022.
    @[JSON::Field(key: "name", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter name : String? = nil
    MAX_LENGTH_FOR_NAME = 5000

    # The customer's phone number after a completed Checkout Session.
    @[JSON::Field(key: "phone", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter phone : String? = nil
    MAX_LENGTH_FOR_PHONE = 5000

    # The customer’s tax exempt status after a completed Checkout Session.
    @[JSON::Field(key: "tax_exempt", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter tax_exempt : String? = nil
    ERROR_MESSAGE_FOR_TAX_EXEMPT = "invalid value for \"tax_exempt\", must be one of [exempt, none, reverse]."
    VALID_VALUES_FOR_TAX_EXEMPT  = String.static_array("exempt", "none", "reverse")

    # The customer’s tax IDs after a completed Checkout Session.
    @[JSON::Field(key: "tax_ids", type: Array(Stripe::PaymentPagesCheckoutSessionTaxId)?, default: nil, required: true, nullable: true, emit_null: true)]
    getter tax_ids : Array(Stripe::PaymentPagesCheckoutSessionTaxId)? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @address : Stripe::Address? = nil,
      @email : String? = nil,
      @name : String? = nil,
      @phone : String? = nil,
      @tax_exempt : String? = nil,
      @tax_ids : Array(Stripe::PaymentPagesCheckoutSessionTaxId)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_address = @address).nil?
        invalid_properties.concat(_address.list_invalid_properties_for("address")) if _address.is_a?(OpenApi::Validatable)
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
      unless (_phone = @phone).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("phone", _phone.to_s.size, MAX_LENGTH_FOR_PHONE)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_tax_exempt = @tax_exempt).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_TAX_EXEMPT) unless OpenApi::EnumValidator.valid?(_tax_exempt, VALID_VALUES_FOR_TAX_EXEMPT)
      end
      unless (_tax_ids = @tax_ids).nil?
        invalid_properties.concat(OpenApi::ContainerValidator.list_invalid_properties_for(key: "tax_ids", container: _tax_ids)) if _tax_ids.is_a?(Array)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_address = @address).nil?
        return false if _address.is_a?(OpenApi::Validatable) && !_address.valid?
      end

      unless (_email = @email).nil?
        return false if _email.to_s.size > MAX_LENGTH_FOR_EMAIL
      end

      unless (_name = @name).nil?
        return false if _name.to_s.size > MAX_LENGTH_FOR_NAME
      end

      unless (_phone = @phone).nil?
        return false if _phone.to_s.size > MAX_LENGTH_FOR_PHONE
      end

      unless (_tax_exempt = @tax_exempt).nil?
        return false unless OpenApi::EnumValidator.valid?(_tax_exempt, VALID_VALUES_FOR_TAX_EXEMPT)
      end

      unless (_tax_ids = @tax_ids).nil?
        return false if _tax_ids.is_a?(Array) && !OpenApi::ContainerValidator.valid?(container: _tax_ids)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] address Object to be assigned
    def address=(new_value : Stripe::Address?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @address = new_value
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
    # @param [Object] phone Object to be assigned
    def phone=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("phone", new_value.to_s.size, MAX_LENGTH_FOR_PHONE)
      end

      @phone = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tax_exempt Object to be assigned
    def tax_exempt=(new_value : String?)
      unless new_value.nil?
        OpenApi::EnumValidator.validate("tax_exempt", new_value, VALID_VALUES_FOR_TAX_EXEMPT)
      end

      @tax_exempt = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tax_ids Object to be assigned
    def tax_ids=(new_value : Array(Stripe::PaymentPagesCheckoutSessionTaxId)?)
      unless new_value.nil?
        OpenApi::ContainerValidator.validate(container: new_value) if new_value.is_a?(Array)
      end

      @tax_ids = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@address, @email, @name, @phone, @tax_exempt, @tax_ids)
  end
end
