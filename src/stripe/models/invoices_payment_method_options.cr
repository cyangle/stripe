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
  class InvoicesPaymentMethodOptions
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "acss_debit", type: Stripe::InvoicesPaymentMethodOptionsAcssDebit?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: acss_debit.nil? && !acss_debit_present?)]
    getter acss_debit : Stripe::InvoicesPaymentMethodOptionsAcssDebit? = nil

    @[JSON::Field(ignore: true)]
    property? acss_debit_present : Bool = false

    @[JSON::Field(key: "bancontact", type: Stripe::InvoicesPaymentMethodOptionsBancontact?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: bancontact.nil? && !bancontact_present?)]
    getter bancontact : Stripe::InvoicesPaymentMethodOptionsBancontact? = nil

    @[JSON::Field(ignore: true)]
    property? bancontact_present : Bool = false

    @[JSON::Field(key: "card", type: Stripe::InvoicesPaymentMethodOptionsCard?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: card.nil? && !card_present?)]
    getter card : Stripe::InvoicesPaymentMethodOptionsCard? = nil

    @[JSON::Field(ignore: true)]
    property? card_present : Bool = false

    @[JSON::Field(key: "customer_balance", type: Stripe::InvoicesPaymentMethodOptionsCustomerBalance?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: customer_balance.nil? && !customer_balance_present?)]
    getter customer_balance : Stripe::InvoicesPaymentMethodOptionsCustomerBalance? = nil

    @[JSON::Field(ignore: true)]
    property? customer_balance_present : Bool = false

    @[JSON::Field(key: "konbini", type: Stripe::InvoicesPaymentMethodOptionsKonbini?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: konbini.nil? && !konbini_present?)]
    getter konbini : Stripe::InvoicesPaymentMethodOptionsKonbini? = nil

    @[JSON::Field(ignore: true)]
    property? konbini_present : Bool = false

    @[JSON::Field(key: "us_bank_account", type: Stripe::InvoicesPaymentMethodOptionsUsBankAccount?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: us_bank_account.nil? && !us_bank_account_present?)]
    getter us_bank_account : Stripe::InvoicesPaymentMethodOptionsUsBankAccount? = nil

    @[JSON::Field(ignore: true)]
    property? us_bank_account_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @acss_debit : Stripe::InvoicesPaymentMethodOptionsAcssDebit? = nil,
      @bancontact : Stripe::InvoicesPaymentMethodOptionsBancontact? = nil,
      @card : Stripe::InvoicesPaymentMethodOptionsCard? = nil,
      @customer_balance : Stripe::InvoicesPaymentMethodOptionsCustomerBalance? = nil,
      @konbini : Stripe::InvoicesPaymentMethodOptionsKonbini? = nil,
      @us_bank_account : Stripe::InvoicesPaymentMethodOptionsUsBankAccount? = nil
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

      unless (_us_bank_account = @us_bank_account).nil?
        return false if _us_bank_account.is_a?(OpenApi::Validatable) && !_us_bank_account.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] acss_debit Object to be assigned
    def acss_debit=(new_value : Stripe::InvoicesPaymentMethodOptionsAcssDebit?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @acss_debit = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] bancontact Object to be assigned
    def bancontact=(new_value : Stripe::InvoicesPaymentMethodOptionsBancontact?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @bancontact = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] card Object to be assigned
    def card=(new_value : Stripe::InvoicesPaymentMethodOptionsCard?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @card = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] customer_balance Object to be assigned
    def customer_balance=(new_value : Stripe::InvoicesPaymentMethodOptionsCustomerBalance?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @customer_balance = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] konbini Object to be assigned
    def konbini=(new_value : Stripe::InvoicesPaymentMethodOptionsKonbini?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @konbini = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] us_bank_account Object to be assigned
    def us_bank_account=(new_value : Stripe::InvoicesPaymentMethodOptionsUsBankAccount?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @us_bank_account = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@acss_debit, @acss_debit_present, @bancontact, @bancontact_present, @card, @card_present2, @customer_balance, @customer_balance_present, @konbini, @konbini_present, @us_bank_account, @us_bank_account_present)
  end
end
