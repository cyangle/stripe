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
  #
  class SetupAttemptPaymentMethodDetailsCardPresent
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "generated_card", type: Stripe::SetupAttemptPaymentMethodDetailsCardPresentGeneratedCard?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: generated_card.nil? && !generated_card_present?)]
    getter generated_card : Stripe::SetupAttemptPaymentMethodDetailsCardPresentGeneratedCard? = nil

    @[JSON::Field(ignore: true)]
    property? generated_card_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @generated_card : Stripe::SetupAttemptPaymentMethodDetailsCardPresentGeneratedCard? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_generated_card = @generated_card).nil?
        invalid_properties.concat(_generated_card.list_invalid_properties_for("generated_card")) if _generated_card.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_generated_card = @generated_card).nil?
        return false if _generated_card.is_a?(OpenApi::Validatable) && !_generated_card.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] generated_card Object to be assigned
    def generated_card=(generated_card : Stripe::SetupAttemptPaymentMethodDetailsCardPresentGeneratedCard?)
      if generated_card.nil?
        return @generated_card = nil
      end
      _generated_card = generated_card.not_nil!
      _generated_card.validate if _generated_card.is_a?(OpenApi::Validatable)
      @generated_card = _generated_card
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@generated_card, @generated_card_present)
  end
end
