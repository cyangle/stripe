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
  class ServiceNotAsDescribed
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "additional_documentation", type: Stripe::BusinessProfileSpecsSupportUrl?, default: nil, required: false, nullable: false, emit_null: false)]
    getter additional_documentation : Stripe::BusinessProfileSpecsSupportUrl? = nil

    @[JSON::Field(key: "canceled_at", type: Stripe::GetInvoicesUpcomingSubscriptionCancelAtParameter?, default: nil, required: false, nullable: false, emit_null: false)]
    getter canceled_at : Stripe::GetInvoicesUpcomingSubscriptionCancelAtParameter? = nil

    @[JSON::Field(key: "cancellation_reason", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter cancellation_reason : String? = nil

    @[JSON::Field(key: "explanation", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter explanation : String? = nil

    @[JSON::Field(key: "received_at", type: Stripe::GetInvoicesUpcomingSubscriptionCancelAtParameter?, default: nil, required: false, nullable: false, emit_null: false)]
    getter received_at : Stripe::GetInvoicesUpcomingSubscriptionCancelAtParameter? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @additional_documentation : Stripe::BusinessProfileSpecsSupportUrl? = nil,
      @canceled_at : Stripe::GetInvoicesUpcomingSubscriptionCancelAtParameter? = nil,
      @cancellation_reason : String? = nil,
      @explanation : String? = nil,
      @received_at : Stripe::GetInvoicesUpcomingSubscriptionCancelAtParameter? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      if _additional_documentation = @additional_documentation
        invalid_properties.concat(_additional_documentation.list_invalid_properties_for("additional_documentation")) if _additional_documentation.is_a?(OpenApi::Validatable)
      end
      if _canceled_at = @canceled_at
        invalid_properties.concat(_canceled_at.list_invalid_properties_for("canceled_at")) if _canceled_at.is_a?(OpenApi::Validatable)
      end
      if _cancellation_reason = @cancellation_reason
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("cancellation_reason", _cancellation_reason.to_s.size, 1500)
          invalid_properties.push(max_length_error)
        end
      end
      if _explanation = @explanation
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("explanation", _explanation.to_s.size, 1500)
          invalid_properties.push(max_length_error)
        end
      end
      if _received_at = @received_at
        invalid_properties.concat(_received_at.list_invalid_properties_for("received_at")) if _received_at.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _additional_documentation = @additional_documentation
        return false if _additional_documentation.is_a?(OpenApi::Validatable) && !_additional_documentation.valid?
      end

      if _canceled_at = @canceled_at
        return false if _canceled_at.is_a?(OpenApi::Validatable) && !_canceled_at.valid?
      end

      if _cancellation_reason = @cancellation_reason
        return false if _cancellation_reason.to_s.size > 1500
      end

      if _explanation = @explanation
        return false if _explanation.to_s.size > 1500
      end

      if _received_at = @received_at
        return false if _received_at.is_a?(OpenApi::Validatable) && !_received_at.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] additional_documentation Object to be assigned
    def additional_documentation=(additional_documentation : Stripe::BusinessProfileSpecsSupportUrl?)
      if additional_documentation.nil?
        return @additional_documentation = nil
      end
      _additional_documentation = additional_documentation.not_nil!
      _additional_documentation.validate if _additional_documentation.is_a?(OpenApi::Validatable)
      @additional_documentation = _additional_documentation
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] canceled_at Object to be assigned
    def canceled_at=(canceled_at : Stripe::GetInvoicesUpcomingSubscriptionCancelAtParameter?)
      if canceled_at.nil?
        return @canceled_at = nil
      end
      _canceled_at = canceled_at.not_nil!
      _canceled_at.validate if _canceled_at.is_a?(OpenApi::Validatable)
      @canceled_at = _canceled_at
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cancellation_reason Object to be assigned
    def cancellation_reason=(cancellation_reason : String?)
      if cancellation_reason.nil?
        return @cancellation_reason = nil
      end
      _cancellation_reason = cancellation_reason.not_nil!
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("cancellation_reason", _cancellation_reason.to_s.size, 1500)
        raise ArgumentError.new(max_length_error)
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
      if max_length_error = OpenApi::PrimitiveValidator.max_length_error("explanation", _explanation.to_s.size, 1500)
        raise ArgumentError.new(max_length_error)
      end

      @explanation = _explanation
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] received_at Object to be assigned
    def received_at=(received_at : Stripe::GetInvoicesUpcomingSubscriptionCancelAtParameter?)
      if received_at.nil?
        return @received_at = nil
      end
      _received_at = received_at.not_nil!
      _received_at.validate if _received_at.is_a?(OpenApi::Validatable)
      @received_at = _received_at
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@additional_documentation, @canceled_at, @cancellation_reason, @explanation, @received_at)
  end
end
