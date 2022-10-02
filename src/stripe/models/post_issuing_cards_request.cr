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
  class PostIssuingCardsRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    # The currency for the card.
    @[JSON::Field(key: "currency", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter currency : String? = nil

    # The type of card to issue. Possible values are `physical` or `virtual`.
    @[JSON::Field(key: "type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter _type : String? = nil
    ERROR_MESSAGE_FOR__TYPE = "invalid value for \"_type\", must be one of [physical, virtual]."
    VALID_VALUES_FOR__TYPE  = StaticArray["physical", "virtual"]

    # Optional properties

    # The [Cardholder](https://stripe.com/docs/api#issuing_cardholder_object) object with which the card will be associated.
    @[JSON::Field(key: "cardholder", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter cardholder : String? = nil
    MAX_LENGTH_FOR_CARDHOLDER = 5000

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    @[JSON::Field(key: "financial_account", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter financial_account : String? = nil

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format. Individual keys can be unset by posting an empty value to them. All keys can be unset by posting an empty value to `metadata`.
    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Hash(String, String)? = nil

    # The card this is meant to be a replacement for (if any).
    @[JSON::Field(key: "replacement_for", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter replacement_for : String? = nil
    MAX_LENGTH_FOR_REPLACEMENT_FOR = 5000

    # If `replacement_for` is specified, this should indicate why that card is being replaced.
    @[JSON::Field(key: "replacement_reason", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter replacement_reason : String? = nil
    ERROR_MESSAGE_FOR_REPLACEMENT_REASON = "invalid value for \"replacement_reason\", must be one of [damaged, expired, lost, stolen]."
    VALID_VALUES_FOR_REPLACEMENT_REASON  = StaticArray["damaged", "expired", "lost", "stolen"]

    @[JSON::Field(key: "shipping", type: Stripe::ShippingSpecs?, default: nil, required: false, nullable: false, emit_null: false)]
    getter shipping : Stripe::ShippingSpecs? = nil

    @[JSON::Field(key: "spending_controls", type: Stripe::AuthorizationControlsParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter spending_controls : Stripe::AuthorizationControlsParam? = nil

    # Whether authorizations can be approved on this card. Defaults to `inactive`.
    @[JSON::Field(key: "status", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter status : String? = nil
    ERROR_MESSAGE_FOR_STATUS = "invalid value for \"status\", must be one of [active, inactive]."
    VALID_VALUES_FOR_STATUS  = StaticArray["active", "inactive"]

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @currency : String? = nil,
      @_type : String? = nil,
      # Optional properties
      @cardholder : String? = nil,
      @expand : Array(String)? = nil,
      @financial_account : String? = nil,
      @metadata : Hash(String, String)? = nil,
      @replacement_for : String? = nil,
      @replacement_reason : String? = nil,
      @shipping : Stripe::ShippingSpecs? = nil,
      @spending_controls : Stripe::AuthorizationControlsParam? = nil,
      @status : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"currency\" is required and cannot be null") if @currency.nil?

      invalid_properties.push("\"_type\" is required and cannot be null") if @_type.nil?

      if __type = @_type
        invalid_properties.push(ERROR_MESSAGE_FOR__TYPE) unless OpenApi::EnumValidator.valid?(__type, VALID_VALUES_FOR__TYPE)
      end
      if _cardholder = @cardholder
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("cardholder", _cardholder.to_s.size, MAX_LENGTH_FOR_CARDHOLDER)
          invalid_properties.push(max_length_error)
        end
      end

      if _replacement_for = @replacement_for
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("replacement_for", _replacement_for.to_s.size, MAX_LENGTH_FOR_REPLACEMENT_FOR)
          invalid_properties.push(max_length_error)
        end
      end
      if _replacement_reason = @replacement_reason
        invalid_properties.push(ERROR_MESSAGE_FOR_REPLACEMENT_REASON) unless OpenApi::EnumValidator.valid?(_replacement_reason, VALID_VALUES_FOR_REPLACEMENT_REASON)
      end
      if _shipping = @shipping
        invalid_properties.concat(_shipping.list_invalid_properties_for("shipping")) if _shipping.is_a?(OpenApi::Validatable)
      end
      if _spending_controls = @spending_controls
        invalid_properties.concat(_spending_controls.list_invalid_properties_for("spending_controls")) if _spending_controls.is_a?(OpenApi::Validatable)
      end
      if _status = @status
        invalid_properties.push(ERROR_MESSAGE_FOR_STATUS) unless OpenApi::EnumValidator.valid?(_status, VALID_VALUES_FOR_STATUS)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @currency.nil?

      return false if @_type.nil?
      if __type = @_type
        return false unless OpenApi::EnumValidator.valid?(__type, VALID_VALUES_FOR__TYPE)
      end

      if _cardholder = @cardholder
        return false if _cardholder.to_s.size > MAX_LENGTH_FOR_CARDHOLDER
      end

      if _replacement_for = @replacement_for
        return false if _replacement_for.to_s.size > MAX_LENGTH_FOR_REPLACEMENT_FOR
      end

      if _replacement_reason = @replacement_reason
        return false unless OpenApi::EnumValidator.valid?(_replacement_reason, VALID_VALUES_FOR_REPLACEMENT_REASON)
      end

      if _shipping = @shipping
        return false if _shipping.is_a?(OpenApi::Validatable) && !_shipping.valid?
      end

      if _spending_controls = @spending_controls
        return false if _spending_controls.is_a?(OpenApi::Validatable) && !_spending_controls.valid?
      end

      if _status = @status
        return false unless OpenApi::EnumValidator.valid?(_status, VALID_VALUES_FOR_STATUS)
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] currency Object to be assigned
    def currency=(currency : String?)
      if currency.nil?
        raise ArgumentError.new("\"currency\" is required and cannot be null")
      end
      _currency = currency.not_nil!
      @currency = _currency
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(_type : String?)
      if _type.nil?
        raise ArgumentError.new("\"_type\" is required and cannot be null")
      end
      __type = _type.not_nil!
      OpenApi::EnumValidator.validate("_type", __type, VALID_VALUES_FOR__TYPE)
      @_type = __type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cardholder Object to be assigned
    def cardholder=(cardholder : String?)
      if cardholder.nil?
        return @cardholder = nil
      end
      _cardholder = cardholder.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("cardholder", _cardholder.to_s.size, MAX_LENGTH_FOR_CARDHOLDER)
      @cardholder = _cardholder
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
    # @param [Object] financial_account Object to be assigned
    def financial_account=(financial_account : String?)
      if financial_account.nil?
        return @financial_account = nil
      end
      _financial_account = financial_account.not_nil!
      @financial_account = _financial_account
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
    # @param [Object] replacement_for Object to be assigned
    def replacement_for=(replacement_for : String?)
      if replacement_for.nil?
        return @replacement_for = nil
      end
      _replacement_for = replacement_for.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("replacement_for", _replacement_for.to_s.size, MAX_LENGTH_FOR_REPLACEMENT_FOR)
      @replacement_for = _replacement_for
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] replacement_reason Object to be assigned
    def replacement_reason=(replacement_reason : String?)
      if replacement_reason.nil?
        return @replacement_reason = nil
      end
      _replacement_reason = replacement_reason.not_nil!
      OpenApi::EnumValidator.validate("replacement_reason", _replacement_reason, VALID_VALUES_FOR_REPLACEMENT_REASON)
      @replacement_reason = _replacement_reason
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] shipping Object to be assigned
    def shipping=(shipping : Stripe::ShippingSpecs?)
      if shipping.nil?
        return @shipping = nil
      end
      _shipping = shipping.not_nil!
      _shipping.validate if _shipping.is_a?(OpenApi::Validatable)
      @shipping = _shipping
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] spending_controls Object to be assigned
    def spending_controls=(spending_controls : Stripe::AuthorizationControlsParam?)
      if spending_controls.nil?
        return @spending_controls = nil
      end
      _spending_controls = spending_controls.not_nil!
      _spending_controls.validate if _spending_controls.is_a?(OpenApi::Validatable)
      @spending_controls = _spending_controls
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status : String?)
      if status.nil?
        return @status = nil
      end
      _status = status.not_nil!
      OpenApi::EnumValidator.validate("status", _status, VALID_VALUES_FOR_STATUS)
      @status = _status
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@currency, @_type, @cardholder, @expand, @financial_account, @metadata, @replacement_for, @replacement_reason, @shipping, @spending_controls, @status)
  end
end
