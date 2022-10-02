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
  # Evidence provided for the dispute.
  class EvidenceParam
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "canceled", type: Stripe::EvidenceParamCanceled?, default: nil, required: false, nullable: false, emit_null: false)]
    getter canceled : Stripe::EvidenceParamCanceled? = nil

    @[JSON::Field(key: "duplicate", type: Stripe::EvidenceParamDuplicate?, default: nil, required: false, nullable: false, emit_null: false)]
    getter duplicate : Stripe::EvidenceParamDuplicate? = nil

    @[JSON::Field(key: "fraudulent", type: Stripe::EvidenceParamFraudulent?, default: nil, required: false, nullable: false, emit_null: false)]
    getter fraudulent : Stripe::EvidenceParamFraudulent? = nil

    @[JSON::Field(key: "merchandise_not_as_described", type: Stripe::EvidenceParamMerchandiseNotAsDescribed?, default: nil, required: false, nullable: false, emit_null: false)]
    getter merchandise_not_as_described : Stripe::EvidenceParamMerchandiseNotAsDescribed? = nil

    @[JSON::Field(key: "not_received", type: Stripe::EvidenceParamNotReceived?, default: nil, required: false, nullable: false, emit_null: false)]
    getter not_received : Stripe::EvidenceParamNotReceived? = nil

    @[JSON::Field(key: "other", type: Stripe::EvidenceParamOther?, default: nil, required: false, nullable: false, emit_null: false)]
    getter other : Stripe::EvidenceParamOther? = nil

    @[JSON::Field(key: "reason", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter reason : String? = nil
    ERROR_MESSAGE_FOR_REASON = "invalid value for \"reason\", must be one of [canceled, duplicate, fraudulent, merchandise_not_as_described, not_received, other, service_not_as_described]."
    VALID_VALUES_FOR_REASON  = StaticArray["canceled", "duplicate", "fraudulent", "merchandise_not_as_described", "not_received", "other", "service_not_as_described"]

    @[JSON::Field(key: "service_not_as_described", type: Stripe::EvidenceParamServiceNotAsDescribed?, default: nil, required: false, nullable: false, emit_null: false)]
    getter service_not_as_described : Stripe::EvidenceParamServiceNotAsDescribed? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @canceled : Stripe::EvidenceParamCanceled? = nil,
      @duplicate : Stripe::EvidenceParamDuplicate? = nil,
      @fraudulent : Stripe::EvidenceParamFraudulent? = nil,
      @merchandise_not_as_described : Stripe::EvidenceParamMerchandiseNotAsDescribed? = nil,
      @not_received : Stripe::EvidenceParamNotReceived? = nil,
      @other : Stripe::EvidenceParamOther? = nil,
      @reason : String? = nil,
      @service_not_as_described : Stripe::EvidenceParamServiceNotAsDescribed? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      if _canceled = @canceled
        invalid_properties.concat(_canceled.list_invalid_properties_for("canceled")) if _canceled.is_a?(OpenApi::Validatable)
      end
      if _duplicate = @duplicate
        invalid_properties.concat(_duplicate.list_invalid_properties_for("duplicate")) if _duplicate.is_a?(OpenApi::Validatable)
      end
      if _fraudulent = @fraudulent
        invalid_properties.concat(_fraudulent.list_invalid_properties_for("fraudulent")) if _fraudulent.is_a?(OpenApi::Validatable)
      end
      if _merchandise_not_as_described = @merchandise_not_as_described
        invalid_properties.concat(_merchandise_not_as_described.list_invalid_properties_for("merchandise_not_as_described")) if _merchandise_not_as_described.is_a?(OpenApi::Validatable)
      end
      if _not_received = @not_received
        invalid_properties.concat(_not_received.list_invalid_properties_for("not_received")) if _not_received.is_a?(OpenApi::Validatable)
      end
      if _other = @other
        invalid_properties.concat(_other.list_invalid_properties_for("other")) if _other.is_a?(OpenApi::Validatable)
      end
      if _reason = @reason
        invalid_properties.push(ERROR_MESSAGE_FOR_REASON) unless OpenApi::EnumValidator.valid?(_reason, VALID_VALUES_FOR_REASON)
      end
      if _service_not_as_described = @service_not_as_described
        invalid_properties.concat(_service_not_as_described.list_invalid_properties_for("service_not_as_described")) if _service_not_as_described.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _canceled = @canceled
        return false if _canceled.is_a?(OpenApi::Validatable) && !_canceled.valid?
      end

      if _duplicate = @duplicate
        return false if _duplicate.is_a?(OpenApi::Validatable) && !_duplicate.valid?
      end

      if _fraudulent = @fraudulent
        return false if _fraudulent.is_a?(OpenApi::Validatable) && !_fraudulent.valid?
      end

      if _merchandise_not_as_described = @merchandise_not_as_described
        return false if _merchandise_not_as_described.is_a?(OpenApi::Validatable) && !_merchandise_not_as_described.valid?
      end

      if _not_received = @not_received
        return false if _not_received.is_a?(OpenApi::Validatable) && !_not_received.valid?
      end

      if _other = @other
        return false if _other.is_a?(OpenApi::Validatable) && !_other.valid?
      end

      if _reason = @reason
        return false unless OpenApi::EnumValidator.valid?(_reason, VALID_VALUES_FOR_REASON)
      end

      if _service_not_as_described = @service_not_as_described
        return false if _service_not_as_described.is_a?(OpenApi::Validatable) && !_service_not_as_described.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] canceled Object to be assigned
    def canceled=(canceled : Stripe::EvidenceParamCanceled?)
      if canceled.nil?
        return @canceled = nil
      end
      _canceled = canceled.not_nil!
      _canceled.validate if _canceled.is_a?(OpenApi::Validatable)
      @canceled = _canceled
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] duplicate Object to be assigned
    def duplicate=(duplicate : Stripe::EvidenceParamDuplicate?)
      if duplicate.nil?
        return @duplicate = nil
      end
      _duplicate = duplicate.not_nil!
      _duplicate.validate if _duplicate.is_a?(OpenApi::Validatable)
      @duplicate = _duplicate
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] fraudulent Object to be assigned
    def fraudulent=(fraudulent : Stripe::EvidenceParamFraudulent?)
      if fraudulent.nil?
        return @fraudulent = nil
      end
      _fraudulent = fraudulent.not_nil!
      _fraudulent.validate if _fraudulent.is_a?(OpenApi::Validatable)
      @fraudulent = _fraudulent
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] merchandise_not_as_described Object to be assigned
    def merchandise_not_as_described=(merchandise_not_as_described : Stripe::EvidenceParamMerchandiseNotAsDescribed?)
      if merchandise_not_as_described.nil?
        return @merchandise_not_as_described = nil
      end
      _merchandise_not_as_described = merchandise_not_as_described.not_nil!
      _merchandise_not_as_described.validate if _merchandise_not_as_described.is_a?(OpenApi::Validatable)
      @merchandise_not_as_described = _merchandise_not_as_described
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] not_received Object to be assigned
    def not_received=(not_received : Stripe::EvidenceParamNotReceived?)
      if not_received.nil?
        return @not_received = nil
      end
      _not_received = not_received.not_nil!
      _not_received.validate if _not_received.is_a?(OpenApi::Validatable)
      @not_received = _not_received
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] other Object to be assigned
    def other=(other : Stripe::EvidenceParamOther?)
      if other.nil?
        return @other = nil
      end
      _other = other.not_nil!
      _other.validate if _other.is_a?(OpenApi::Validatable)
      @other = _other
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] reason Object to be assigned
    def reason=(reason : String?)
      if reason.nil?
        return @reason = nil
      end
      _reason = reason.not_nil!
      OpenApi::EnumValidator.validate("reason", _reason, VALID_VALUES_FOR_REASON)
      @reason = _reason
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] service_not_as_described Object to be assigned
    def service_not_as_described=(service_not_as_described : Stripe::EvidenceParamServiceNotAsDescribed?)
      if service_not_as_described.nil?
        return @service_not_as_described = nil
      end
      _service_not_as_described = service_not_as_described.not_nil!
      _service_not_as_described.validate if _service_not_as_described.is_a?(OpenApi::Validatable)
      @service_not_as_described = _service_not_as_described
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@canceled, @duplicate, @fraudulent, @merchandise_not_as_described, @not_received, @other, @reason, @service_not_as_described)
  end
end
