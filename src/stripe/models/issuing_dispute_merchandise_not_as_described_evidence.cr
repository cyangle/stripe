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

    ENUM_VALIDATOR_FOR_RETURN_STATUS = EnumValidator.new("return_status", "String", ["merchant_rejected", "successful"])

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
    def list_invalid_properties
      invalid_properties = Array(String).new
      # This is a model additional_documentation : Stripe::IssuingDisputeCanceledEvidenceAdditionalDocumentation?
      if _explanation = @explanation
        if _explanation.to_s.size > 5000
          invalid_properties.push("invalid value for \"explanation\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _return_description = @return_description
        if _return_description.to_s.size > 5000
          invalid_properties.push("invalid value for \"return_description\", the character length must be smaller than or equal to 5000.")
        end
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_RETURN_STATUS.error_message) unless ENUM_VALIDATOR_FOR_RETURN_STATUS.valid?(@return_status)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
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
      @additional_documentation = additional_documentation
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] explanation Object to be assigned
    def explanation=(explanation : String?)
      if explanation.nil?
        return @explanation = nil
      end
      _explanation = explanation.not_nil!
      if _explanation.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"explanation\", the character length must be smaller than or equal to 5000.")
      end

      @explanation = explanation
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] received_at Object to be assigned
    def received_at=(received_at : Int64?)
      if received_at.nil?
        return @received_at = nil
      end
      @received_at = received_at
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] return_description Object to be assigned
    def return_description=(return_description : String?)
      if return_description.nil?
        return @return_description = nil
      end
      _return_description = return_description.not_nil!
      if _return_description.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"return_description\", the character length must be smaller than or equal to 5000.")
      end

      @return_description = return_description
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] return_status Object to be assigned
    def return_status=(return_status : String?)
      if return_status.nil?
        return @return_status = nil
      end
      _return_status = return_status.not_nil!
      ENUM_VALIDATOR_FOR_RETURN_STATUS.valid!(_return_status)
      @return_status = return_status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] returned_at Object to be assigned
    def returned_at=(returned_at : Int64?)
      if returned_at.nil?
        return @returned_at = nil
      end
      @returned_at = returned_at
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@additional_documentation, @additional_documentation_present, @explanation, @explanation_present, @received_at, @received_at_present, @return_description, @return_description_present, @return_status, @return_status_present, @returned_at, @returned_at_present)
  end
end
