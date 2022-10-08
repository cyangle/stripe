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
  class SettingsSpecsUpdate
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "branding", type: Stripe::BrandingSettingsSpecs?, default: nil, required: false, nullable: false, emit_null: false)]
    getter branding : Stripe::BrandingSettingsSpecs? = nil

    @[JSON::Field(key: "card_issuing", type: Stripe::CardIssuingSettingsSpecs?, default: nil, required: false, nullable: false, emit_null: false)]
    getter card_issuing : Stripe::CardIssuingSettingsSpecs? = nil

    @[JSON::Field(key: "card_payments", type: Stripe::CardPaymentsSettingsSpecs?, default: nil, required: false, nullable: false, emit_null: false)]
    getter card_payments : Stripe::CardPaymentsSettingsSpecs? = nil

    @[JSON::Field(key: "payments", type: Stripe::PaymentsSettingsSpecs?, default: nil, required: false, nullable: false, emit_null: false)]
    getter payments : Stripe::PaymentsSettingsSpecs? = nil

    @[JSON::Field(key: "payouts", type: Stripe::PayoutSettingsSpecs?, default: nil, required: false, nullable: false, emit_null: false)]
    getter payouts : Stripe::PayoutSettingsSpecs? = nil

    @[JSON::Field(key: "treasury", type: Stripe::TreasurySettingsSpecs?, default: nil, required: false, nullable: false, emit_null: false)]
    getter treasury : Stripe::TreasurySettingsSpecs? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @branding : Stripe::BrandingSettingsSpecs? = nil,
      @card_issuing : Stripe::CardIssuingSettingsSpecs? = nil,
      @card_payments : Stripe::CardPaymentsSettingsSpecs? = nil,
      @payments : Stripe::PaymentsSettingsSpecs? = nil,
      @payouts : Stripe::PayoutSettingsSpecs? = nil,
      @treasury : Stripe::TreasurySettingsSpecs? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_branding = @branding).nil?
        invalid_properties.concat(_branding.list_invalid_properties_for("branding")) if _branding.is_a?(OpenApi::Validatable)
      end
      unless (_card_issuing = @card_issuing).nil?
        invalid_properties.concat(_card_issuing.list_invalid_properties_for("card_issuing")) if _card_issuing.is_a?(OpenApi::Validatable)
      end
      unless (_card_payments = @card_payments).nil?
        invalid_properties.concat(_card_payments.list_invalid_properties_for("card_payments")) if _card_payments.is_a?(OpenApi::Validatable)
      end
      unless (_payments = @payments).nil?
        invalid_properties.concat(_payments.list_invalid_properties_for("payments")) if _payments.is_a?(OpenApi::Validatable)
      end
      unless (_payouts = @payouts).nil?
        invalid_properties.concat(_payouts.list_invalid_properties_for("payouts")) if _payouts.is_a?(OpenApi::Validatable)
      end
      unless (_treasury = @treasury).nil?
        invalid_properties.concat(_treasury.list_invalid_properties_for("treasury")) if _treasury.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_branding = @branding).nil?
        return false if _branding.is_a?(OpenApi::Validatable) && !_branding.valid?
      end

      unless (_card_issuing = @card_issuing).nil?
        return false if _card_issuing.is_a?(OpenApi::Validatable) && !_card_issuing.valid?
      end

      unless (_card_payments = @card_payments).nil?
        return false if _card_payments.is_a?(OpenApi::Validatable) && !_card_payments.valid?
      end

      unless (_payments = @payments).nil?
        return false if _payments.is_a?(OpenApi::Validatable) && !_payments.valid?
      end

      unless (_payouts = @payouts).nil?
        return false if _payouts.is_a?(OpenApi::Validatable) && !_payouts.valid?
      end

      unless (_treasury = @treasury).nil?
        return false if _treasury.is_a?(OpenApi::Validatable) && !_treasury.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] branding Object to be assigned
    def branding=(branding : Stripe::BrandingSettingsSpecs?)
      if branding.nil?
        return @branding = nil
      end
      _branding = branding.not_nil!
      _branding.validate if _branding.is_a?(OpenApi::Validatable)
      @branding = _branding
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] card_issuing Object to be assigned
    def card_issuing=(card_issuing : Stripe::CardIssuingSettingsSpecs?)
      if card_issuing.nil?
        return @card_issuing = nil
      end
      _card_issuing = card_issuing.not_nil!
      _card_issuing.validate if _card_issuing.is_a?(OpenApi::Validatable)
      @card_issuing = _card_issuing
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] card_payments Object to be assigned
    def card_payments=(card_payments : Stripe::CardPaymentsSettingsSpecs?)
      if card_payments.nil?
        return @card_payments = nil
      end
      _card_payments = card_payments.not_nil!
      _card_payments.validate if _card_payments.is_a?(OpenApi::Validatable)
      @card_payments = _card_payments
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payments Object to be assigned
    def payments=(payments : Stripe::PaymentsSettingsSpecs?)
      if payments.nil?
        return @payments = nil
      end
      _payments = payments.not_nil!
      _payments.validate if _payments.is_a?(OpenApi::Validatable)
      @payments = _payments
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payouts Object to be assigned
    def payouts=(payouts : Stripe::PayoutSettingsSpecs?)
      if payouts.nil?
        return @payouts = nil
      end
      _payouts = payouts.not_nil!
      _payouts.validate if _payouts.is_a?(OpenApi::Validatable)
      @payouts = _payouts
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] treasury Object to be assigned
    def treasury=(treasury : Stripe::TreasurySettingsSpecs?)
      if treasury.nil?
        return @treasury = nil
      end
      _treasury = treasury.not_nil!
      _treasury.validate if _treasury.is_a?(OpenApi::Validatable)
      @treasury = _treasury
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@branding, @card_issuing, @card_payments, @payments, @payouts, @treasury)
  end
end
