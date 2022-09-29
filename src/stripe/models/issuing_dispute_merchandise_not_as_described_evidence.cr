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
  class IssuingDisputeMerchandiseNotAsDescribedEvidence
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "additional_documentation", type: Stripe::IssuingDisputeCanceledEvidenceAdditionalDocumentation?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: additional_documentation.nil? && !additional_documentation_present?)]
    getter additional_documentation : Stripe::IssuingDisputeCanceledEvidenceAdditionalDocumentation? = nil

    @[JSON::Field(ignore: true)]
    property? additional_documentation_present : Bool = false

    # Explanation of why the cardholder is disputing this transaction.
    @[JSON::Field(key: "explanation", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: explanation.nil? && !explanation_present?)]
    getter explanation : String? = nil

    @[JSON::Field(ignore: true)]
    property? explanation_present : Bool = false

    # Date when the product was received.
    @[JSON::Field(key: "received_at", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: received_at.nil? && !received_at_present?)]
    getter received_at : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? received_at_present : Bool = false

    # Description of the cardholder's attempt to return the product.
    @[JSON::Field(key: "return_description", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: return_description.nil? && !return_description_present?)]
    getter return_description : String? = nil

    @[JSON::Field(ignore: true)]
    property? return_description_present : Bool = false

    # Result of cardholder's attempt to return the product.
    @[JSON::Field(key: "return_status", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: return_status.nil? && !return_status_present?)]
    getter return_status : String? = nil

    @[JSON::Field(ignore: true)]
    property? return_status_present : Bool = false

    ENUM_VALIDATOR_FOR_RETURN_STATUS = OpenApi::EnumValidator.new("return_status", "String", ["merchant_rejected", "successful"])

    # Date when the product was returned or attempted to be returned.
    @[JSON::Field(key: "returned_at", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: returned_at.nil? && !returned_at_present?)]
    getter returned_at : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? returned_at_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @additional_documentation : Stripe::IssuingDisputeCanceledEvidenceAdditionalDocumentation? = nil,
      @explanation : String? = nil,
      @received_at : Int64? = nil,
      @return_description : String? = nil,
      @return_status : String? = nil,
      @returned_at : Int64? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      if _additional_documentation = @additional_documentation
        invalid_properties.concat(_additional_documentation.list_invalid_properties_for("additional_documentation")) if _additional_documentation.is_a?(OpenApi::Validatable)
      end
      if _explanation = @explanation
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("explanation", _explanation.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end

      if _return_description = @return_description
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("return_description", _return_description.to_s.size, 5000)
          invalid_properties.push(max_length_error)
        end
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_RETURN_STATUS.error_message) unless ENUM_VALIDATOR_FOR_RETURN_STATUS.valid?(@return_status)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _additional_documentation = @additional_documentation
        return false if _additional_documentation.is_a?(OpenApi::Validatable) && !_additional_documentation.valid?
      end
      if _explanation = @explanation
        return false if _explanation.to_s.size > 5000
      end

      if _return_description = @return_description
        return false if _return_description.to_s.size > 5000
      end
      return false unless ENUM_VALIDATOR_FOR_RETURN_STATUS.valid?(@return_status)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] additional_documentation Object to be assigned
    def additional_documentation=(additional_documentation : Stripe::IssuingDisputeCanceledEvidenceAdditionalDocumentation?)
      if additional_documentation.nil?
        return @additional_documentation = nil
      end
      _additional_documentation = additional_documentation.not_nil!
      _additional_documentation.validate if _additional_documentation.is_a?(OpenApi::Validatable)
      @additional_documentation = _additional_documentation
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] explanation Object to be assigned
    def explanation=(explanation : String?)
      if explanation.nil?
        return @explanation = nil
      end
      _explanation = explanation.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("explanation", _explanation.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @explanation = _explanation
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] received_at Object to be assigned
    def received_at=(received_at : Int64?)
      if received_at.nil?
        return @received_at = nil
      end
      _received_at = received_at.not_nil!
      @received_at = _received_at
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] return_description Object to be assigned
    def return_description=(return_description : String?)
      if return_description.nil?
        return @return_description = nil
      end
      _return_description = return_description.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("return_description", _return_description.to_s.size, 5000)
        raise ArgumentError.new(max_length_error)
      end

      @return_description = _return_description
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] return_status Object to be assigned
    def return_status=(return_status : String?)
      if return_status.nil?
        return @return_status = nil
      end
      _return_status = return_status.not_nil!
      ENUM_VALIDATOR_FOR_RETURN_STATUS.valid!(_return_status)
      @return_status = _return_status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] returned_at Object to be assigned
    def returned_at=(returned_at : Int64?)
      if returned_at.nil?
        return @returned_at = nil
      end
      _returned_at = returned_at.not_nil!
      @returned_at = _returned_at
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@additional_documentation, @additional_documentation_present, @explanation, @explanation_present, @received_at, @received_at_present, @return_description, @return_description_present, @return_status, @return_status_present, @returned_at, @returned_at_present)
  end
end
