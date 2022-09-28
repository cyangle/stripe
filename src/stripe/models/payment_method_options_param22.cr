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
  # Payment-method-specific configuration for this SetupIntent.
  class PaymentMethodOptionsParam22
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    @[JSON::Field(key: "acss_debit", type: Stripe::SetupIntentPaymentMethodOptionsParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter acss_debit : Stripe::SetupIntentPaymentMethodOptionsParam? = nil

    @[JSON::Field(key: "blik", type: Stripe::SetupIntentPaymentMethodOptionsParam1?, default: nil, required: false, nullable: false, emit_null: false)]
    getter blik : Stripe::SetupIntentPaymentMethodOptionsParam1? = nil

    @[JSON::Field(key: "card", type: Stripe::SetupIntentParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter card : Stripe::SetupIntentParam? = nil

    @[JSON::Field(key: "link", type: Stripe::SetupIntentPaymentMethodOptionsParam2?, default: nil, required: false, nullable: false, emit_null: false)]
    getter link : Stripe::SetupIntentPaymentMethodOptionsParam2? = nil

    @[JSON::Field(key: "sepa_debit", type: Stripe::SetupIntentPaymentMethodOptionsParam3?, default: nil, required: false, nullable: false, emit_null: false)]
    getter sepa_debit : Stripe::SetupIntentPaymentMethodOptionsParam3? = nil

    @[JSON::Field(key: "us_bank_account", type: Stripe::SetupIntentPaymentMethodOptionsParam4?, default: nil, required: false, nullable: false, emit_null: false)]
    getter us_bank_account : Stripe::SetupIntentPaymentMethodOptionsParam4? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @acss_debit : Stripe::SetupIntentPaymentMethodOptionsParam? = nil,
      @blik : Stripe::SetupIntentPaymentMethodOptionsParam1? = nil,
      @card : Stripe::SetupIntentParam? = nil,
      @link : Stripe::SetupIntentPaymentMethodOptionsParam2? = nil,
      @sepa_debit : Stripe::SetupIntentPaymentMethodOptionsParam3? = nil,
      @us_bank_account : Stripe::SetupIntentPaymentMethodOptionsParam4? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      if _acss_debit = @acss_debit
        if _acss_debit.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_acss_debit.list_invalid_properties_for("acss_debit"))
        end
      end
      if _blik = @blik
        if _blik.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_blik.list_invalid_properties_for("blik"))
        end
      end
      if _card = @card
        if _card.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_card.list_invalid_properties_for("card"))
        end
      end
      if _link = @link
        if _link.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_link.list_invalid_properties_for("link"))
        end
      end
      if _sepa_debit = @sepa_debit
        if _sepa_debit.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_sepa_debit.list_invalid_properties_for("sepa_debit"))
        end
      end
      if _us_bank_account = @us_bank_account
        if _us_bank_account.is_a?(OpenApi::Validatable)
          invalid_properties.concat(_us_bank_account.list_invalid_properties_for("us_bank_account"))
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _acss_debit = @acss_debit
        if _acss_debit.is_a?(OpenApi::Validatable)
          return false unless _acss_debit.valid?
        end
      end
      if _blik = @blik
        if _blik.is_a?(OpenApi::Validatable)
          return false unless _blik.valid?
        end
      end
      if _card = @card
        if _card.is_a?(OpenApi::Validatable)
          return false unless _card.valid?
        end
      end
      if _link = @link
        if _link.is_a?(OpenApi::Validatable)
          return false unless _link.valid?
        end
      end
      if _sepa_debit = @sepa_debit
        if _sepa_debit.is_a?(OpenApi::Validatable)
          return false unless _sepa_debit.valid?
        end
      end
      if _us_bank_account = @us_bank_account
        if _us_bank_account.is_a?(OpenApi::Validatable)
          return false unless _us_bank_account.valid?
        end
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] acss_debit Object to be assigned
    def acss_debit=(acss_debit : Stripe::SetupIntentPaymentMethodOptionsParam?)
      if acss_debit.nil?
        return @acss_debit = nil
      end
      _acss_debit = acss_debit.not_nil!
      if _acss_debit.is_a?(OpenApi::Validatable)
        _acss_debit.validate
      end
      @acss_debit = _acss_debit
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] blik Object to be assigned
    def blik=(blik : Stripe::SetupIntentPaymentMethodOptionsParam1?)
      if blik.nil?
        return @blik = nil
      end
      _blik = blik.not_nil!
      if _blik.is_a?(OpenApi::Validatable)
        _blik.validate
      end
      @blik = _blik
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] card Object to be assigned
    def card=(card : Stripe::SetupIntentParam?)
      if card.nil?
        return @card = nil
      end
      _card = card.not_nil!
      if _card.is_a?(OpenApi::Validatable)
        _card.validate
      end
      @card = _card
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] link Object to be assigned
    def link=(link : Stripe::SetupIntentPaymentMethodOptionsParam2?)
      if link.nil?
        return @link = nil
      end
      _link = link.not_nil!
      if _link.is_a?(OpenApi::Validatable)
        _link.validate
      end
      @link = _link
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sepa_debit Object to be assigned
    def sepa_debit=(sepa_debit : Stripe::SetupIntentPaymentMethodOptionsParam3?)
      if sepa_debit.nil?
        return @sepa_debit = nil
      end
      _sepa_debit = sepa_debit.not_nil!
      if _sepa_debit.is_a?(OpenApi::Validatable)
        _sepa_debit.validate
      end
      @sepa_debit = _sepa_debit
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] us_bank_account Object to be assigned
    def us_bank_account=(us_bank_account : Stripe::SetupIntentPaymentMethodOptionsParam4?)
      if us_bank_account.nil?
        return @us_bank_account = nil
      end
      _us_bank_account = us_bank_account.not_nil!
      if _us_bank_account.is_a?(OpenApi::Validatable)
        _us_bank_account.validate
      end
      @us_bank_account = _us_bank_account
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@acss_debit, @blik, @card, @link, @sepa_debit, @us_bank_account)
  end
end
