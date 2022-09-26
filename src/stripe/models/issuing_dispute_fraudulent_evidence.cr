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
  class IssuingDisputeFraudulentEvidence
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

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @additional_documentation : Stripe::IssuingDisputeCanceledEvidenceAdditionalDocumentation? = nil,
      @explanation : String? = nil
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

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      if _explanation = @explanation
        return false if _explanation.to_s.size > 5000
      end

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

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@additional_documentation, @additional_documentation_present, @explanation, @explanation_present)
  end
end
