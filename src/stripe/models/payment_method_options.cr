#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./payment_method_options_acss_debit"
require "./payment_method_options_bancontact1"
require "./payment_method_options_card"
require "./payment_method_options_customer_balance1"
require "./payment_method_options_konbini1"
require "./payment_method_options_sepa_debit"
require "./payment_method_options_us_bank_account"

module Stripe
  class PaymentMethodOptions
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "acss_debit", type: Stripe::PaymentMethodOptionsAcssDebit?, default: nil, required: false, nullable: false, emit_null: false)]
    getter acss_debit : Stripe::PaymentMethodOptionsAcssDebit? = nil

    @[JSON::Field(key: "bancontact", type: Stripe::PaymentMethodOptionsBancontact1?, default: nil, required: false, nullable: false, emit_null: false)]
    getter bancontact : Stripe::PaymentMethodOptionsBancontact1? = nil

    @[JSON::Field(key: "card", type: Stripe::PaymentMethodOptionsCard?, default: nil, required: false, nullable: false, emit_null: false)]
    getter card : Stripe::PaymentMethodOptionsCard? = nil

    @[JSON::Field(key: "customer_balance", type: Stripe::PaymentMethodOptionsCustomerBalance1?, default: nil, required: false, nullable: false, emit_null: false)]
    getter customer_balance : Stripe::PaymentMethodOptionsCustomerBalance1? = nil

    @[JSON::Field(key: "konbini", type: Stripe::PaymentMethodOptionsKonbini1?, default: nil, required: false, nullable: false, emit_null: false)]
    getter konbini : Stripe::PaymentMethodOptionsKonbini1? = nil

    @[JSON::Field(key: "sepa_debit", type: Stripe::PaymentMethodOptionsSepaDebit?, default: nil, required: false, nullable: false, emit_null: false)]
    getter sepa_debit : Stripe::PaymentMethodOptionsSepaDebit? = nil

    @[JSON::Field(key: "us_bank_account", type: Stripe::PaymentMethodOptionsUsBankAccount?, default: nil, required: false, nullable: false, emit_null: false)]
    getter us_bank_account : Stripe::PaymentMethodOptionsUsBankAccount? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @acss_debit : Stripe::PaymentMethodOptionsAcssDebit? = nil,
      @bancontact : Stripe::PaymentMethodOptionsBancontact1? = nil,
      @card : Stripe::PaymentMethodOptionsCard? = nil,
      @customer_balance : Stripe::PaymentMethodOptionsCustomerBalance1? = nil,
      @konbini : Stripe::PaymentMethodOptionsKonbini1? = nil,
      @sepa_debit : Stripe::PaymentMethodOptionsSepaDebit? = nil,
      @us_bank_account : Stripe::PaymentMethodOptionsUsBankAccount? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_acss_debit = @acss_debit).nil?
        invalid_properties.concat(_acss_debit.list_invalid_properties_for("acss_debit")) if _acss_debit.is_a?(OpenApi::Validatable)
      end
      unless (_bancontact = @bancontact).nil?
        invalid_properties.concat(_bancontact.list_invalid_properties_for("bancontact")) if _bancontact.is_a?(OpenApi::Validatable)
      end
      unless (_card = @card).nil?
        invalid_properties.concat(_card.list_invalid_properties_for("card")) if _card.is_a?(OpenApi::Validatable)
      end
      unless (_customer_balance = @customer_balance).nil?
        invalid_properties.concat(_customer_balance.list_invalid_properties_for("customer_balance")) if _customer_balance.is_a?(OpenApi::Validatable)
      end
      unless (_konbini = @konbini).nil?
        invalid_properties.concat(_konbini.list_invalid_properties_for("konbini")) if _konbini.is_a?(OpenApi::Validatable)
      end
      unless (_sepa_debit = @sepa_debit).nil?
        invalid_properties.concat(_sepa_debit.list_invalid_properties_for("sepa_debit")) if _sepa_debit.is_a?(OpenApi::Validatable)
      end
      unless (_us_bank_account = @us_bank_account).nil?
        invalid_properties.concat(_us_bank_account.list_invalid_properties_for("us_bank_account")) if _us_bank_account.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_acss_debit = @acss_debit).nil?
        return false if _acss_debit.is_a?(OpenApi::Validatable) && !_acss_debit.valid?
      end

      unless (_bancontact = @bancontact).nil?
        return false if _bancontact.is_a?(OpenApi::Validatable) && !_bancontact.valid?
      end

      unless (_card = @card).nil?
        return false if _card.is_a?(OpenApi::Validatable) && !_card.valid?
      end

      unless (_customer_balance = @customer_balance).nil?
        return false if _customer_balance.is_a?(OpenApi::Validatable) && !_customer_balance.valid?
      end

      unless (_konbini = @konbini).nil?
        return false if _konbini.is_a?(OpenApi::Validatable) && !_konbini.valid?
      end

      unless (_sepa_debit = @sepa_debit).nil?
        return false if _sepa_debit.is_a?(OpenApi::Validatable) && !_sepa_debit.valid?
      end

      unless (_us_bank_account = @us_bank_account).nil?
        return false if _us_bank_account.is_a?(OpenApi::Validatable) && !_us_bank_account.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] acss_debit Object to be assigned
    def acss_debit=(new_value : Stripe::PaymentMethodOptionsAcssDebit?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @acss_debit = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bancontact Object to be assigned
    def bancontact=(new_value : Stripe::PaymentMethodOptionsBancontact1?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @bancontact = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] card Object to be assigned
    def card=(new_value : Stripe::PaymentMethodOptionsCard?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @card = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] customer_balance Object to be assigned
    def customer_balance=(new_value : Stripe::PaymentMethodOptionsCustomerBalance1?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @customer_balance = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] konbini Object to be assigned
    def konbini=(new_value : Stripe::PaymentMethodOptionsKonbini1?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @konbini = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sepa_debit Object to be assigned
    def sepa_debit=(new_value : Stripe::PaymentMethodOptionsSepaDebit?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @sepa_debit = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] us_bank_account Object to be assigned
    def us_bank_account=(new_value : Stripe::PaymentMethodOptionsUsBankAccount?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @us_bank_account = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@acss_debit, @bancontact, @card, @customer_balance, @konbini, @sepa_debit, @us_bank_account)
  end
end
