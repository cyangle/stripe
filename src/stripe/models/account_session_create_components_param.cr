#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./account_config_param"
require "./base_config_param"
require "./payments_config_param"
require "./payouts_config_param"

module Stripe
  class AccountSessionCreateComponentsParam
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    @[JSON::Field(key: "account_management", type: Stripe::AccountConfigParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter account_management : Stripe::AccountConfigParam? = nil

    @[JSON::Field(key: "account_onboarding", type: Stripe::AccountConfigParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter account_onboarding : Stripe::AccountConfigParam? = nil

    @[JSON::Field(key: "balances", type: Stripe::PayoutsConfigParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter balances : Stripe::PayoutsConfigParam? = nil

    @[JSON::Field(key: "documents", type: Stripe::BaseConfigParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter documents : Stripe::BaseConfigParam? = nil

    @[JSON::Field(key: "notification_banner", type: Stripe::AccountConfigParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter notification_banner : Stripe::AccountConfigParam? = nil

    @[JSON::Field(key: "payment_details", type: Stripe::PaymentsConfigParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter payment_details : Stripe::PaymentsConfigParam? = nil

    @[JSON::Field(key: "payments", type: Stripe::PaymentsConfigParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter payments : Stripe::PaymentsConfigParam? = nil

    @[JSON::Field(key: "payouts", type: Stripe::PayoutsConfigParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter payouts : Stripe::PayoutsConfigParam? = nil

    @[JSON::Field(key: "payouts_list", type: Stripe::BaseConfigParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter payouts_list : Stripe::BaseConfigParam? = nil

    @[JSON::Field(key: "tax_registrations", type: Stripe::BaseConfigParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter tax_registrations : Stripe::BaseConfigParam? = nil

    @[JSON::Field(key: "tax_settings", type: Stripe::BaseConfigParam?, default: nil, required: false, nullable: false, emit_null: false)]
    getter tax_settings : Stripe::BaseConfigParam? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @account_management : Stripe::AccountConfigParam? = nil,
      @account_onboarding : Stripe::AccountConfigParam? = nil,
      @balances : Stripe::PayoutsConfigParam? = nil,
      @documents : Stripe::BaseConfigParam? = nil,
      @notification_banner : Stripe::AccountConfigParam? = nil,
      @payment_details : Stripe::PaymentsConfigParam? = nil,
      @payments : Stripe::PaymentsConfigParam? = nil,
      @payouts : Stripe::PayoutsConfigParam? = nil,
      @payouts_list : Stripe::BaseConfigParam? = nil,
      @tax_registrations : Stripe::BaseConfigParam? = nil,
      @tax_settings : Stripe::BaseConfigParam? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_account_management = @account_management).nil?
        invalid_properties.concat(_account_management.list_invalid_properties_for("account_management")) if _account_management.is_a?(OpenApi::Validatable)
      end
      unless (_account_onboarding = @account_onboarding).nil?
        invalid_properties.concat(_account_onboarding.list_invalid_properties_for("account_onboarding")) if _account_onboarding.is_a?(OpenApi::Validatable)
      end
      unless (_balances = @balances).nil?
        invalid_properties.concat(_balances.list_invalid_properties_for("balances")) if _balances.is_a?(OpenApi::Validatable)
      end
      unless (_documents = @documents).nil?
        invalid_properties.concat(_documents.list_invalid_properties_for("documents")) if _documents.is_a?(OpenApi::Validatable)
      end
      unless (_notification_banner = @notification_banner).nil?
        invalid_properties.concat(_notification_banner.list_invalid_properties_for("notification_banner")) if _notification_banner.is_a?(OpenApi::Validatable)
      end
      unless (_payment_details = @payment_details).nil?
        invalid_properties.concat(_payment_details.list_invalid_properties_for("payment_details")) if _payment_details.is_a?(OpenApi::Validatable)
      end
      unless (_payments = @payments).nil?
        invalid_properties.concat(_payments.list_invalid_properties_for("payments")) if _payments.is_a?(OpenApi::Validatable)
      end
      unless (_payouts = @payouts).nil?
        invalid_properties.concat(_payouts.list_invalid_properties_for("payouts")) if _payouts.is_a?(OpenApi::Validatable)
      end
      unless (_payouts_list = @payouts_list).nil?
        invalid_properties.concat(_payouts_list.list_invalid_properties_for("payouts_list")) if _payouts_list.is_a?(OpenApi::Validatable)
      end
      unless (_tax_registrations = @tax_registrations).nil?
        invalid_properties.concat(_tax_registrations.list_invalid_properties_for("tax_registrations")) if _tax_registrations.is_a?(OpenApi::Validatable)
      end
      unless (_tax_settings = @tax_settings).nil?
        invalid_properties.concat(_tax_settings.list_invalid_properties_for("tax_settings")) if _tax_settings.is_a?(OpenApi::Validatable)
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_account_management = @account_management).nil?
        return false if _account_management.is_a?(OpenApi::Validatable) && !_account_management.valid?
      end

      unless (_account_onboarding = @account_onboarding).nil?
        return false if _account_onboarding.is_a?(OpenApi::Validatable) && !_account_onboarding.valid?
      end

      unless (_balances = @balances).nil?
        return false if _balances.is_a?(OpenApi::Validatable) && !_balances.valid?
      end

      unless (_documents = @documents).nil?
        return false if _documents.is_a?(OpenApi::Validatable) && !_documents.valid?
      end

      unless (_notification_banner = @notification_banner).nil?
        return false if _notification_banner.is_a?(OpenApi::Validatable) && !_notification_banner.valid?
      end

      unless (_payment_details = @payment_details).nil?
        return false if _payment_details.is_a?(OpenApi::Validatable) && !_payment_details.valid?
      end

      unless (_payments = @payments).nil?
        return false if _payments.is_a?(OpenApi::Validatable) && !_payments.valid?
      end

      unless (_payouts = @payouts).nil?
        return false if _payouts.is_a?(OpenApi::Validatable) && !_payouts.valid?
      end

      unless (_payouts_list = @payouts_list).nil?
        return false if _payouts_list.is_a?(OpenApi::Validatable) && !_payouts_list.valid?
      end

      unless (_tax_registrations = @tax_registrations).nil?
        return false if _tax_registrations.is_a?(OpenApi::Validatable) && !_tax_registrations.valid?
      end

      unless (_tax_settings = @tax_settings).nil?
        return false if _tax_settings.is_a?(OpenApi::Validatable) && !_tax_settings.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account_management Object to be assigned
    def account_management=(new_value : Stripe::AccountConfigParam?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @account_management = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account_onboarding Object to be assigned
    def account_onboarding=(new_value : Stripe::AccountConfigParam?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @account_onboarding = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] balances Object to be assigned
    def balances=(new_value : Stripe::PayoutsConfigParam?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @balances = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] documents Object to be assigned
    def documents=(new_value : Stripe::BaseConfigParam?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @documents = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] notification_banner Object to be assigned
    def notification_banner=(new_value : Stripe::AccountConfigParam?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @notification_banner = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_details Object to be assigned
    def payment_details=(new_value : Stripe::PaymentsConfigParam?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @payment_details = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payments Object to be assigned
    def payments=(new_value : Stripe::PaymentsConfigParam?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @payments = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payouts Object to be assigned
    def payouts=(new_value : Stripe::PayoutsConfigParam?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @payouts = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payouts_list Object to be assigned
    def payouts_list=(new_value : Stripe::BaseConfigParam?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @payouts_list = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tax_registrations Object to be assigned
    def tax_registrations=(new_value : Stripe::BaseConfigParam?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @tax_registrations = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tax_settings Object to be assigned
    def tax_settings=(new_value : Stripe::BaseConfigParam?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @tax_settings = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@account_management, @account_onboarding, @balances, @documents, @notification_banner, @payment_details, @payments, @payouts, @payouts_list, @tax_registrations, @tax_settings)
  end
end
