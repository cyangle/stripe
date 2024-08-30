#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./issuing_cardholder_user_terms_acceptance"

module Stripe
  #
  class IssuingCardholderCardIssuing
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    @[JSON::Field(key: "user_terms_acceptance", type: Stripe::IssuingCardholderUserTermsAcceptance?, default: nil, required: true, nullable: true, emit_null: true)]
    getter user_terms_acceptance : Stripe::IssuingCardholderUserTermsAcceptance? = nil

    # End of Required Properties

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @user_terms_acceptance : Stripe::IssuingCardholderUserTermsAcceptance? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_user_terms_acceptance = @user_terms_acceptance).nil?
        invalid_properties.concat(_user_terms_acceptance.list_invalid_properties_for("user_terms_acceptance")) if _user_terms_acceptance.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_user_terms_acceptance = @user_terms_acceptance).nil?
        return false if _user_terms_acceptance.is_a?(OpenApi::Validatable) && !_user_terms_acceptance.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] user_terms_acceptance Object to be assigned
    def user_terms_acceptance=(new_value : Stripe::IssuingCardholderUserTermsAcceptance?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @user_terms_acceptance = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@user_terms_acceptance)
  end
end
