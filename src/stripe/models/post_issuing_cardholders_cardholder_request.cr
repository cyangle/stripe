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
  class PostIssuingCardholdersCardholderRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "billing", type: Stripe::BillingSpecs?, default: nil, required: false, nullable: false, emit_null: false)]
    getter billing : Stripe::BillingSpecs? = nil

    @[JSON::Field(key: "company", type: Stripe::CompanyParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter company : Stripe::CompanyParam? = nil

    # The cardholder's email address.
    @[JSON::Field(key: "email", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter email : String? = nil

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    @[JSON::Field(key: "individual", type: Stripe::IndividualParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter individual : Stripe::IndividualParam? = nil

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Hash(String, String)? = nil

    # The cardholder's phone number. This is required for all cardholders who will be creating EU cards. See the [3D Secure documentation](https://stripe.com/docs/issuing/3d-secure) for more details.
    @[JSON::Field(key: "phone_number", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter phone_number : String? = nil

    @[JSON::Field(key: "spending_controls", type: Stripe::AuthorizationControlsParamV2?, default: nil, required: false, nullable: false, emit_null: false)]
    getter spending_controls : Stripe::AuthorizationControlsParamV2? = nil

    # Specifies whether to permit authorizations on this cardholder's cards.
    @[JSON::Field(key: "status", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter status : String? = nil

    ENUM_VALIDATOR_FOR_STATUS = EnumValidator.new("status", "String", ["active", "inactive"])

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @billing : Stripe::BillingSpecs? = nil,
      @company : Stripe::CompanyParam? = nil,
      @email : String? = nil,
      @expand : Array(String)? = nil,
      @individual : Stripe::IndividualParam? = nil,
      @metadata : Hash(String, String)? = nil,
      @phone_number : String? = nil,
      @spending_controls : Stripe::AuthorizationControlsParamV2? = nil,
      @status : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      if _billing = @billing
        if _billing.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_billing.list_invalid_properties_for("billing"))
        end
      end
      if _company = @company
        if _company.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_company.list_invalid_properties_for("company"))
        end
      end

      if _individual = @individual
        if _individual.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_individual.list_invalid_properties_for("individual"))
        end
      end

      if _spending_controls = @spending_controls
        if _spending_controls.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_spending_controls.list_invalid_properties_for("spending_controls"))
        end
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_STATUS.error_message) unless ENUM_VALIDATOR_FOR_STATUS.valid?(@status)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _billing = @billing
        if _billing.is_a?(OpenApi::Validatable)
          return false unless _billing.valid?
        end
      end
      if _company = @company
        if _company.is_a?(OpenApi::Validatable)
          return false unless _company.valid?
        end
      end

      if _individual = @individual
        if _individual.is_a?(OpenApi::Validatable)
          return false unless _individual.valid?
        end
      end

      if _spending_controls = @spending_controls
        if _spending_controls.is_a?(OpenApi::Validatable)
          return false unless _spending_controls.valid?
        end
      end
      return false unless ENUM_VALIDATOR_FOR_STATUS.valid?(@status)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] billing Object to be assigned
    def billing=(billing : Stripe::BillingSpecs?)
      if billing.nil?
        return @billing = nil
      end
      _billing = billing.not_nil!
      if _billing.is_a?(OpenApi::Validatable)
        _billing.validate
      end
      @billing = _billing
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] company Object to be assigned
    def company=(company : Stripe::CompanyParam?)
      if company.nil?
        return @company = nil
      end
      _company = company.not_nil!
      if _company.is_a?(OpenApi::Validatable)
        _company.validate
      end
      @company = _company
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] email Object to be assigned
    def email=(email : String?)
      if email.nil?
        return @email = nil
      end
      _email = email.not_nil!
      @email = _email
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
    # @param [Object] individual Object to be assigned
    def individual=(individual : Stripe::IndividualParam?)
      if individual.nil?
        return @individual = nil
      end
      _individual = individual.not_nil!
      if _individual.is_a?(OpenApi::Validatable)
        _individual.validate
      end
      @individual = _individual
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
    # @param [Object] phone_number Object to be assigned
    def phone_number=(phone_number : String?)
      if phone_number.nil?
        return @phone_number = nil
      end
      _phone_number = phone_number.not_nil!
      @phone_number = _phone_number
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] spending_controls Object to be assigned
    def spending_controls=(spending_controls : Stripe::AuthorizationControlsParamV2?)
      if spending_controls.nil?
        return @spending_controls = nil
      end
      _spending_controls = spending_controls.not_nil!
      if _spending_controls.is_a?(OpenApi::Validatable)
        _spending_controls.validate
      end
      @spending_controls = _spending_controls
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status : String?)
      if status.nil?
        return @status = nil
      end
      _status = status.not_nil!
      ENUM_VALIDATOR_FOR_STATUS.valid!(_status)
      @status = _status
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@billing, @company, @email, @expand, @individual, @metadata, @phone_number, @spending_controls, @status)
  end
end
