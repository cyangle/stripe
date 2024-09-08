#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./treasury_received_credits_resource_linked_flows_source_flow_details"

module Stripe
  #
  class TreasuryReceivedCreditsResourceLinkedFlows
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The CreditReversal created as a result of this ReceivedCredit being reversed.
    @[JSON::Field(key: "credit_reversal", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter credit_reversal : String? = nil
    MAX_LENGTH_FOR_CREDIT_REVERSAL = 5000

    # Set if the ReceivedCredit was created due to an [Issuing Authorization](https://stripe.com/docs/api#issuing_authorizations) object.
    @[JSON::Field(key: "issuing_authorization", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter issuing_authorization : String? = nil
    MAX_LENGTH_FOR_ISSUING_AUTHORIZATION = 5000

    # Set if the ReceivedCredit is also viewable as an [Issuing transaction](https://stripe.com/docs/api#issuing_transactions) object.
    @[JSON::Field(key: "issuing_transaction", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter issuing_transaction : String? = nil
    MAX_LENGTH_FOR_ISSUING_TRANSACTION = 5000

    # ID of the source flow. Set if `network` is `stripe` and the source flow is visible to the user. Examples of source flows include OutboundPayments, payouts, or CreditReversals.
    @[JSON::Field(key: "source_flow", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter source_flow : String? = nil
    MAX_LENGTH_FOR_SOURCE_FLOW = 5000

    # The type of flow that originated the ReceivedCredit (for example, `outbound_payment`).
    @[JSON::Field(key: "source_flow_type", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter source_flow_type : String? = nil
    MAX_LENGTH_FOR_SOURCE_FLOW_TYPE = 5000

    # End of Required Properties

    # Optional Properties

    @[JSON::Field(key: "source_flow_details", type: Stripe::TreasuryReceivedCreditsResourceLinkedFlowsSourceFlowDetails?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: source_flow_details.nil? && !source_flow_details_present?)]
    getter source_flow_details : Stripe::TreasuryReceivedCreditsResourceLinkedFlowsSourceFlowDetails? = nil

    @[JSON::Field(ignore: true)]
    property? source_flow_details_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @credit_reversal : String? = nil,
      @issuing_authorization : String? = nil,
      @issuing_transaction : String? = nil,
      @source_flow : String? = nil,
      @source_flow_type : String? = nil,
      # Optional properties
      @source_flow_details : Stripe::TreasuryReceivedCreditsResourceLinkedFlowsSourceFlowDetails? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_credit_reversal = @credit_reversal).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("credit_reversal", _credit_reversal.to_s.size, MAX_LENGTH_FOR_CREDIT_REVERSAL)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_issuing_authorization = @issuing_authorization).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("issuing_authorization", _issuing_authorization.to_s.size, MAX_LENGTH_FOR_ISSUING_AUTHORIZATION)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_issuing_transaction = @issuing_transaction).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("issuing_transaction", _issuing_transaction.to_s.size, MAX_LENGTH_FOR_ISSUING_TRANSACTION)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_source_flow = @source_flow).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("source_flow", _source_flow.to_s.size, MAX_LENGTH_FOR_SOURCE_FLOW)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_source_flow_type = @source_flow_type).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("source_flow_type", _source_flow_type.to_s.size, MAX_LENGTH_FOR_SOURCE_FLOW_TYPE)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_source_flow_details = @source_flow_details).nil?
        invalid_properties.concat(_source_flow_details.list_invalid_properties_for("source_flow_details")) if _source_flow_details.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_credit_reversal = @credit_reversal).nil?
        return false if _credit_reversal.to_s.size > MAX_LENGTH_FOR_CREDIT_REVERSAL
      end

      unless (_issuing_authorization = @issuing_authorization).nil?
        return false if _issuing_authorization.to_s.size > MAX_LENGTH_FOR_ISSUING_AUTHORIZATION
      end

      unless (_issuing_transaction = @issuing_transaction).nil?
        return false if _issuing_transaction.to_s.size > MAX_LENGTH_FOR_ISSUING_TRANSACTION
      end

      unless (_source_flow = @source_flow).nil?
        return false if _source_flow.to_s.size > MAX_LENGTH_FOR_SOURCE_FLOW
      end

      unless (_source_flow_type = @source_flow_type).nil?
        return false if _source_flow_type.to_s.size > MAX_LENGTH_FOR_SOURCE_FLOW_TYPE
      end

      unless (_source_flow_details = @source_flow_details).nil?
        return false if _source_flow_details.is_a?(OpenApi::Validatable) && !_source_flow_details.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] credit_reversal Object to be assigned
    def credit_reversal=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("credit_reversal", new_value.to_s.size, MAX_LENGTH_FOR_CREDIT_REVERSAL)
      end

      @credit_reversal = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] issuing_authorization Object to be assigned
    def issuing_authorization=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("issuing_authorization", new_value.to_s.size, MAX_LENGTH_FOR_ISSUING_AUTHORIZATION)
      end

      @issuing_authorization = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] issuing_transaction Object to be assigned
    def issuing_transaction=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("issuing_transaction", new_value.to_s.size, MAX_LENGTH_FOR_ISSUING_TRANSACTION)
      end

      @issuing_transaction = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] source_flow Object to be assigned
    def source_flow=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("source_flow", new_value.to_s.size, MAX_LENGTH_FOR_SOURCE_FLOW)
      end

      @source_flow = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] source_flow_type Object to be assigned
    def source_flow_type=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("source_flow_type", new_value.to_s.size, MAX_LENGTH_FOR_SOURCE_FLOW_TYPE)
      end

      @source_flow_type = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] source_flow_details Object to be assigned
    def source_flow_details=(new_value : Stripe::TreasuryReceivedCreditsResourceLinkedFlowsSourceFlowDetails?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @source_flow_details = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@credit_reversal, @issuing_authorization, @issuing_transaction, @source_flow, @source_flow_type, @source_flow_details, @source_flow_details_present)
  end
end
