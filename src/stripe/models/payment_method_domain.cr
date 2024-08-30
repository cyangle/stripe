#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./payment_method_domain_resource_payment_method_status"

module Stripe
  # A payment method domain represents a web domain that you have registered with Stripe. Stripe Elements use registered payment method domains to control where certain payment methods are shown.  Related guide: [Payment method domains](https://stripe.com/docs/payments/payment-methods/pmd-registration).
  class PaymentMethodDomain
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "apple_pay", type: Stripe::PaymentMethodDomainResourcePaymentMethodStatus?, default: nil, required: true, nullable: false, emit_null: false)]
    getter apple_pay : Stripe::PaymentMethodDomainResourcePaymentMethodStatus? = nil

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter created : Int64? = nil

    # The domain name that this payment method domain object represents.
    @[JSON::Field(key: "domain_name", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter domain_name : String? = nil
    MAX_LENGTH_FOR_DOMAIN_NAME = 5000

    # Whether this payment method domain is enabled. If the domain is not enabled, payment methods that require a payment method domain will not appear in Elements.
    @[JSON::Field(key: "enabled", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter enabled : Bool? = nil

    @[JSON::Field(key: "google_pay", type: Stripe::PaymentMethodDomainResourcePaymentMethodStatus?, default: nil, required: true, nullable: false, emit_null: false)]
    getter google_pay : Stripe::PaymentMethodDomainResourcePaymentMethodStatus? = nil

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil
    MAX_LENGTH_FOR_ID = 5000

    @[JSON::Field(key: "link", type: Stripe::PaymentMethodDomainResourcePaymentMethodStatus?, default: nil, required: true, nullable: false, emit_null: false)]
    getter link : Stripe::PaymentMethodDomainResourcePaymentMethodStatus? = nil

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter livemode : Bool? = nil

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter object : String? = nil
    ERROR_MESSAGE_FOR_OBJECT = "invalid value for \"object\", must be one of [payment_method_domain]."
    VALID_VALUES_FOR_OBJECT  = String.static_array("payment_method_domain")

    @[JSON::Field(key: "paypal", type: Stripe::PaymentMethodDomainResourcePaymentMethodStatus?, default: nil, required: true, nullable: false, emit_null: false)]
    getter paypal : Stripe::PaymentMethodDomainResourcePaymentMethodStatus? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @apple_pay : Stripe::PaymentMethodDomainResourcePaymentMethodStatus? = nil,
      @created : Int64? = nil,
      @domain_name : String? = nil,
      @enabled : Bool? = nil,
      @google_pay : Stripe::PaymentMethodDomainResourcePaymentMethodStatus? = nil,
      @id : String? = nil,
      @link : Stripe::PaymentMethodDomainResourcePaymentMethodStatus? = nil,
      @livemode : Bool? = nil,
      @object : String? = nil,
      @paypal : Stripe::PaymentMethodDomainResourcePaymentMethodStatus? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"apple_pay\" is required and cannot be null") if @apple_pay.nil?

      unless (_apple_pay = @apple_pay).nil?
        invalid_properties.concat(_apple_pay.list_invalid_properties_for("apple_pay")) if _apple_pay.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"created\" is required and cannot be null") if @created.nil?

      invalid_properties.push("\"domain_name\" is required and cannot be null") if @domain_name.nil?

      unless (_domain_name = @domain_name).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("domain_name", _domain_name.to_s.size, MAX_LENGTH_FOR_DOMAIN_NAME)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"enabled\" is required and cannot be null") if @enabled.nil?

      invalid_properties.push("\"google_pay\" is required and cannot be null") if @google_pay.nil?

      unless (_google_pay = @google_pay).nil?
        invalid_properties.concat(_google_pay.list_invalid_properties_for("google_pay")) if _google_pay.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"id\" is required and cannot be null") if @id.nil?

      unless (_id = @id).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("id", _id.to_s.size, MAX_LENGTH_FOR_ID)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"link\" is required and cannot be null") if @link.nil?

      unless (_link = @link).nil?
        invalid_properties.concat(_link.list_invalid_properties_for("link")) if _link.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"livemode\" is required and cannot be null") if @livemode.nil?

      invalid_properties.push("\"object\" is required and cannot be null") if @object.nil?

      unless (_object = @object).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_OBJECT) unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end
      invalid_properties.push("\"paypal\" is required and cannot be null") if @paypal.nil?

      unless (_paypal = @paypal).nil?
        invalid_properties.concat(_paypal.list_invalid_properties_for("paypal")) if _paypal.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @apple_pay.nil?
      unless (_apple_pay = @apple_pay).nil?
        return false if _apple_pay.is_a?(OpenApi::Validatable) && !_apple_pay.valid?
      end

      return false if @created.nil?

      return false if @domain_name.nil?
      unless (_domain_name = @domain_name).nil?
        return false if _domain_name.to_s.size > MAX_LENGTH_FOR_DOMAIN_NAME
      end

      return false if @enabled.nil?

      return false if @google_pay.nil?
      unless (_google_pay = @google_pay).nil?
        return false if _google_pay.is_a?(OpenApi::Validatable) && !_google_pay.valid?
      end

      return false if @id.nil?
      unless (_id = @id).nil?
        return false if _id.to_s.size > MAX_LENGTH_FOR_ID
      end

      return false if @link.nil?
      unless (_link = @link).nil?
        return false if _link.is_a?(OpenApi::Validatable) && !_link.valid?
      end

      return false if @livemode.nil?

      return false if @object.nil?
      unless (_object = @object).nil?
        return false unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end

      return false if @paypal.nil?
      unless (_paypal = @paypal).nil?
        return false if _paypal.is_a?(OpenApi::Validatable) && !_paypal.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] apple_pay Object to be assigned
    def apple_pay=(new_value : Stripe::PaymentMethodDomainResourcePaymentMethodStatus?)
      raise ArgumentError.new("\"apple_pay\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @apple_pay = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] created Object to be assigned
    def created=(new_value : Int64?)
      raise ArgumentError.new("\"created\" is required and cannot be null") if new_value.nil?

      @created = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] domain_name Object to be assigned
    def domain_name=(new_value : String?)
      raise ArgumentError.new("\"domain_name\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("domain_name", new_value.to_s.size, MAX_LENGTH_FOR_DOMAIN_NAME)
      end

      @domain_name = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] enabled Object to be assigned
    def enabled=(new_value : Bool?)
      raise ArgumentError.new("\"enabled\" is required and cannot be null") if new_value.nil?

      @enabled = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] google_pay Object to be assigned
    def google_pay=(new_value : Stripe::PaymentMethodDomainResourcePaymentMethodStatus?)
      raise ArgumentError.new("\"google_pay\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @google_pay = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] id Object to be assigned
    def id=(new_value : String?)
      raise ArgumentError.new("\"id\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("id", new_value.to_s.size, MAX_LENGTH_FOR_ID)
      end

      @id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] link Object to be assigned
    def link=(new_value : Stripe::PaymentMethodDomainResourcePaymentMethodStatus?)
      raise ArgumentError.new("\"link\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @link = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] livemode Object to be assigned
    def livemode=(new_value : Bool?)
      raise ArgumentError.new("\"livemode\" is required and cannot be null") if new_value.nil?

      @livemode = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(new_value : String?)
      raise ArgumentError.new("\"object\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::EnumValidator.validate("object", new_value, VALID_VALUES_FOR_OBJECT)
      end

      @object = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] paypal Object to be assigned
    def paypal=(new_value : Stripe::PaymentMethodDomainResourcePaymentMethodStatus?)
      raise ArgumentError.new("\"paypal\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @paypal = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@apple_pay, @created, @domain_name, @enabled, @google_pay, @id, @link, @livemode, @object, @paypal)
  end
end
