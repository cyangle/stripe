#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-11-15
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

    # Optional Properties

    @[JSON::Field(key: "additional_documentation", type: Stripe::BbposWisePoseSplashscreen?, default: nil, required: false, nullable: false, emit_null: false)]
    getter additional_documentation : Stripe::BbposWisePoseSplashscreen? = nil

    @[JSON::Field(key: "canceled_at", type: Stripe::GetInvoicesUpcomingSubscriptionCancelAtParameter?, default: nil, required: false, nullable: false, emit_null: false)]
    getter canceled_at : Stripe::GetInvoicesUpcomingSubscriptionCancelAtParameter? = nil

    @[JSON::Field(key: "cancellation_reason", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter cancellation_reason : String? = nil
    MAX_LENGTH_FOR_CANCELLATION_REASON = 1500

    @[JSON::Field(key: "explanation", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter explanation : String? = nil
    MAX_LENGTH_FOR_EXPLANATION = 1500

    @[JSON::Field(key: "received_at", type: Stripe::GetInvoicesUpcomingSubscriptionCancelAtParameter?, default: nil, required: false, nullable: false, emit_null: false)]
    getter received_at : Stripe::GetInvoicesUpcomingSubscriptionCancelAtParameter? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @additional_documentation : Stripe::BbposWisePoseSplashscreen? = nil,
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

      unless (_additional_documentation = @additional_documentation).nil?
        invalid_properties.concat(_additional_documentation.list_invalid_properties_for("additional_documentation")) if _additional_documentation.is_a?(OpenApi::Validatable)
      end
      unless (_canceled_at = @canceled_at).nil?
        invalid_properties.concat(_canceled_at.list_invalid_properties_for("canceled_at")) if _canceled_at.is_a?(OpenApi::Validatable)
      end
      unless (_cancellation_reason = @cancellation_reason).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("cancellation_reason", _cancellation_reason.to_s.size, MAX_LENGTH_FOR_CANCELLATION_REASON)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_explanation = @explanation).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("explanation", _explanation.to_s.size, MAX_LENGTH_FOR_EXPLANATION)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_received_at = @received_at).nil?
        invalid_properties.concat(_received_at.list_invalid_properties_for("received_at")) if _received_at.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_additional_documentation = @additional_documentation).nil?
        return false if _additional_documentation.is_a?(OpenApi::Validatable) && !_additional_documentation.valid?
      end

      unless (_canceled_at = @canceled_at).nil?
        return false if _canceled_at.is_a?(OpenApi::Validatable) && !_canceled_at.valid?
      end

      unless (_cancellation_reason = @cancellation_reason).nil?
        return false if _cancellation_reason.to_s.size > MAX_LENGTH_FOR_CANCELLATION_REASON
      end

      unless (_explanation = @explanation).nil?
        return false if _explanation.to_s.size > MAX_LENGTH_FOR_EXPLANATION
      end

      unless (_received_at = @received_at).nil?
        return false if _received_at.is_a?(OpenApi::Validatable) && !_received_at.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] additional_documentation Object to be assigned
    def additional_documentation=(new_value : Stripe::BbposWisePoseSplashscreen?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @additional_documentation = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] canceled_at Object to be assigned
    def canceled_at=(new_value : Stripe::GetInvoicesUpcomingSubscriptionCancelAtParameter?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @canceled_at = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] cancellation_reason Object to be assigned
    def cancellation_reason=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("cancellation_reason", new_value.to_s.size, MAX_LENGTH_FOR_CANCELLATION_REASON)
      end

      @cancellation_reason = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] explanation Object to be assigned
    def explanation=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("explanation", new_value.to_s.size, MAX_LENGTH_FOR_EXPLANATION)
      end

      @explanation = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] received_at Object to be assigned
    def received_at=(new_value : Stripe::GetInvoicesUpcomingSubscriptionCancelAtParameter?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @received_at = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@additional_documentation, @canceled_at, @cancellation_reason, @explanation, @received_at)
  end
end
