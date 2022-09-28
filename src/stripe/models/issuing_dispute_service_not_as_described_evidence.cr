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
  class IssuingDisputeServiceNotAsDescribedEvidence
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "additional_documentation", type: Stripe::IssuingDisputeCanceledEvidenceAdditionalDocumentation?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: additional_documentation.nil? && !additional_documentation_present?)]
    getter additional_documentation : Stripe::IssuingDisputeCanceledEvidenceAdditionalDocumentation? = nil

    @[JSON::Field(ignore: true)]
    property? additional_documentation_present : Bool = false

    # Date when order was canceled.
    @[JSON::Field(key: "canceled_at", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: canceled_at.nil? && !canceled_at_present?)]
    getter canceled_at : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? canceled_at_present : Bool = false

    # Reason for canceling the order.
    @[JSON::Field(key: "cancellation_reason", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: cancellation_reason.nil? && !cancellation_reason_present?)]
    getter cancellation_reason : String? = nil

    @[JSON::Field(ignore: true)]
    property? cancellation_reason_present : Bool = false

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

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @additional_documentation : Stripe::IssuingDisputeCanceledEvidenceAdditionalDocumentation? = nil,
      @canceled_at : Int64? = nil,
      @cancellation_reason : String? = nil,
      @explanation : String? = nil,
      @received_at : Int64? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      if _additional_documentation = @additional_documentation
        if _additional_documentation.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_additional_documentation.list_invalid_properties_for("additional_documentation"))
        end
      end

      if _cancellation_reason = @cancellation_reason
        if _cancellation_reason.to_s.size > 5000
          invalid_properties.push("invalid value for \"cancellation_reason\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _explanation = @explanation
        if _explanation.to_s.size > 5000
          invalid_properties.push("invalid value for \"explanation\", the character length must be smaller than or equal to 5000.")
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _additional_documentation = @additional_documentation
        if _additional_documentation.is_a?(OpenApi::Validatable)
          return false unless _additional_documentation.valid?
        end
      end

      if _cancellation_reason = @cancellation_reason
        return false if _cancellation_reason.to_s.size > 5000
      end
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
      _additional_documentation = additional_documentation.not_nil!
      if _additional_documentation.is_a?(OpenApi::Validatable)
        _additional_documentation.validate
      end
      @additional_documentation = _additional_documentation
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] canceled_at Object to be assigned
    def canceled_at=(canceled_at : Int64?)
      if canceled_at.nil?
        return @canceled_at = nil
      end
      _canceled_at = canceled_at.not_nil!
      @canceled_at = _canceled_at
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cancellation_reason Object to be assigned
    def cancellation_reason=(cancellation_reason : String?)
      if cancellation_reason.nil?
        return @cancellation_reason = nil
      end
      _cancellation_reason = cancellation_reason.not_nil!
      if _cancellation_reason.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"cancellation_reason\", the character length must be smaller than or equal to 5000.")
      end

      @cancellation_reason = _cancellation_reason
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

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@additional_documentation, @additional_documentation_present, @canceled_at, @canceled_at_present, @cancellation_reason, @cancellation_reason_present, @explanation, @explanation_present, @received_at, @received_at_present)
  end
end
