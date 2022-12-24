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
  class ConnectJsAccountTokenSpecs
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "business_type", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter business_type : String? = nil
    ERROR_MESSAGE_FOR_BUSINESS_TYPE = "invalid value for \"business_type\", must be one of [company, government_entity, individual, non_profit]."
    VALID_VALUES_FOR_BUSINESS_TYPE  = String.static_array("company", "government_entity", "individual", "non_profit")

    @[JSON::Field(key: "company", type: Stripe::ConnectJsAccountTokenCompanySpecs?, default: nil, required: false, nullable: false, emit_null: false)]
    getter company : Stripe::ConnectJsAccountTokenCompanySpecs? = nil

    @[JSON::Field(key: "individual", type: Stripe::IndividualSpecs?, default: nil, required: false, nullable: false, emit_null: false)]
    getter individual : Stripe::IndividualSpecs? = nil

    @[JSON::Field(key: "tos_shown_and_accepted", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter tos_shown_and_accepted : Bool? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @business_type : String? = nil,
      @company : Stripe::ConnectJsAccountTokenCompanySpecs? = nil,
      @individual : Stripe::IndividualSpecs? = nil,
      @tos_shown_and_accepted : Bool? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_company = @company).nil?
        invalid_properties.concat(_company.list_invalid_properties_for("company")) if _company.is_a?(OpenApi::Validatable)
      end
      unless (_individual = @individual).nil?
        invalid_properties.concat(_individual.list_invalid_properties_for("individual")) if _individual.is_a?(OpenApi::Validatable)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_company = @company).nil?
        return false if _company.is_a?(OpenApi::Validatable) && !_company.valid?
      end

      unless (_individual = @individual).nil?
        return false if _individual.is_a?(OpenApi::Validatable) && !_individual.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] business_type Object to be assigned
    def business_type=(new_value : String?)
      @business_type = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] company Object to be assigned
    def company=(new_value : Stripe::ConnectJsAccountTokenCompanySpecs?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @company = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] individual Object to be assigned
    def individual=(new_value : Stripe::IndividualSpecs?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @individual = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tos_shown_and_accepted Object to be assigned
    def tos_shown_and_accepted=(new_value : Bool?)
      @tos_shown_and_accepted = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@business_type, @company, @individual, @tos_shown_and_accepted)
  end
end
