#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

module Stripe
  class TosAcceptanceSpecs
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # The Unix timestamp marking when the account representative accepted their service agreement.
    @[JSON::Field(key: "date", type: Int64?, default: nil, required: false, nullable: false, emit_null: false)]
    getter date : Int64? = nil

    # The IP address from which the account representative accepted their service agreement.
    @[JSON::Field(key: "ip", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter ip : String? = nil

    # The user's service agreement type.
    @[JSON::Field(key: "service_agreement", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter service_agreement : String? = nil
    MAX_LENGTH_FOR_SERVICE_AGREEMENT = 5000

    # The user agent of the browser from which the account representative accepted their service agreement.
    @[JSON::Field(key: "user_agent", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter user_agent : String? = nil
    MAX_LENGTH_FOR_USER_AGENT = 5000

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @date : Int64? = nil,
      @ip : String? = nil,
      @service_agreement : String? = nil,
      @user_agent : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_service_agreement = @service_agreement).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("service_agreement", _service_agreement.to_s.size, MAX_LENGTH_FOR_SERVICE_AGREEMENT)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_user_agent = @user_agent).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("user_agent", _user_agent.to_s.size, MAX_LENGTH_FOR_USER_AGENT)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_service_agreement = @service_agreement).nil?
        return false if _service_agreement.to_s.size > MAX_LENGTH_FOR_SERVICE_AGREEMENT
      end

      unless (_user_agent = @user_agent).nil?
        return false if _user_agent.to_s.size > MAX_LENGTH_FOR_USER_AGENT
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] date Object to be assigned
    def date=(new_value : Int64?)
      @date = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] ip Object to be assigned
    def ip=(new_value : String?)
      @ip = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] service_agreement Object to be assigned
    def service_agreement=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("service_agreement", new_value.to_s.size, MAX_LENGTH_FOR_SERVICE_AGREEMENT)
      end

      @service_agreement = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] user_agent Object to be assigned
    def user_agent=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("user_agent", new_value.to_s.size, MAX_LENGTH_FOR_USER_AGENT)
      end

      @user_agent = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@date, @ip, @service_agreement, @user_agent)
  end
end
