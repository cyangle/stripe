#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./event_request"
require "./notification_event_data"

module Stripe
  # Events are our way of letting you know when something interesting happens in your account. When an interesting event occurs, we create a new `Event` object. For example, when a charge succeeds, we create a `charge.succeeded` event, and when an invoice payment attempt fails, we create an `invoice.payment_failed` event. Certain API requests might create multiple events. For example, if you create a new subscription for a customer, you receive both a `customer.subscription.created` event and a `charge.succeeded` event.  Events occur when the state of another API resource changes. The event's data field embeds the resource's state at the time of the change. For example, a `charge.succeeded` event contains a charge, and an `invoice.payment_failed` event contains an invoice.  As with other API resources, you can use endpoints to retrieve an [individual event](https://stripe.com/docs/api#retrieve_event) or a [list of events](https://stripe.com/docs/api#list_events) from the API. We also have a separate [webhooks](http://en.wikipedia.org/wiki/Webhook) system for sending the `Event` objects directly to an endpoint on your server. You can manage webhooks in your [account settings](https://dashboard.stripe.com/account/webhooks). Learn how to [listen for events](https://docs.stripe.com/webhooks) so that your integration can automatically trigger reactions.  When using [Connect](https://docs.stripe.com/connect), you can also receive event notifications that occur in connected accounts. For these events, there's an additional `account` attribute in the received `Event` object.  We only guarantee access to events through the [Retrieve Event API](https://stripe.com/docs/api#retrieve_event) for 30 days.
  class Event
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required Properties

    # The Stripe API version used to render `data`. This property is populated only for events on or after October 31, 2014.
    @[JSON::Field(key: "api_version", type: String?, default: nil, required: true, nullable: true, emit_null: true)]
    getter api_version : String? = nil
    MAX_LENGTH_FOR_API_VERSION = 5000

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter created : Int64? = nil

    @[JSON::Field(key: "data", type: Stripe::NotificationEventData?, default: nil, required: true, nullable: false, emit_null: false)]
    getter data : Stripe::NotificationEventData? = nil

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil
    MAX_LENGTH_FOR_ID = 5000

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter livemode : Bool? = nil

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter object : String? = nil
    ERROR_MESSAGE_FOR_OBJECT = "invalid value for \"object\", must be one of [event]."
    VALID_VALUES_FOR_OBJECT  = String.static_array("event")

    # Number of webhooks that haven't been successfully delivered (for example, to return a 20x response) to the URLs you specify.
    @[JSON::Field(key: "pending_webhooks", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter pending_webhooks : Int64? = nil

    @[JSON::Field(key: "request", type: Stripe::EventRequest?, default: nil, required: true, nullable: true, emit_null: true)]
    getter request : Stripe::EventRequest? = nil

    # Description of the event (for example, `invoice.created` or `charge.refunded`).
    @[JSON::Field(key: "type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter _type : String? = nil
    MAX_LENGTH_FOR__TYPE    = 5000
    ERROR_MESSAGE_FOR__TYPE = "invalid value for \"_type\", must be one of [account.application.authorized, account.application.deauthorized, account.external_account.created, account.external_account.deleted, account.external_account.updated, account.updated, application_fee.created, application_fee.refund.updated, application_fee.refunded, balance.available, billing.alert.triggered, billing_portal.configuration.created, billing_portal.configuration.updated, billing_portal.session.created, capability.updated, cash_balance.funds_available, charge.captured, charge.dispute.closed, charge.dispute.created, charge.dispute.funds_reinstated, charge.dispute.funds_withdrawn, charge.dispute.updated, charge.expired, charge.failed, charge.pending, charge.refund.updated, charge.refunded, charge.succeeded, charge.updated, checkout.session.async_payment_failed, checkout.session.async_payment_succeeded, checkout.session.completed, checkout.session.expired, climate.order.canceled, climate.order.created, climate.order.delayed, climate.order.delivered, climate.order.product_substituted, climate.product.created, climate.product.pricing_updated, coupon.created, coupon.deleted, coupon.updated, credit_note.created, credit_note.updated, credit_note.voided, customer.created, customer.deleted, customer.discount.created, customer.discount.deleted, customer.discount.updated, customer.source.created, customer.source.deleted, customer.source.expiring, customer.source.updated, customer.subscription.created, customer.subscription.deleted, customer.subscription.paused, customer.subscription.pending_update_applied, customer.subscription.pending_update_expired, customer.subscription.resumed, customer.subscription.trial_will_end, customer.subscription.updated, customer.tax_id.created, customer.tax_id.deleted, customer.tax_id.updated, customer.updated, customer_cash_balance_transaction.created, entitlements.active_entitlement_summary.updated, file.created, financial_connections.account.created, financial_connections.account.deactivated, financial_connections.account.disconnected, financial_connections.account.reactivated, financial_connections.account.refreshed_balance, financial_connections.account.refreshed_ownership, financial_connections.account.refreshed_transactions, identity.verification_session.canceled, identity.verification_session.created, identity.verification_session.processing, identity.verification_session.redacted, identity.verification_session.requires_input, identity.verification_session.verified, invoice.created, invoice.deleted, invoice.finalization_failed, invoice.finalized, invoice.marked_uncollectible, invoice.overdue, invoice.paid, invoice.payment_action_required, invoice.payment_failed, invoice.payment_succeeded, invoice.sent, invoice.upcoming, invoice.updated, invoice.voided, invoice.will_be_due, invoiceitem.created, invoiceitem.deleted, issuing_authorization.created, issuing_authorization.request, issuing_authorization.updated, issuing_card.created, issuing_card.updated, issuing_cardholder.created, issuing_cardholder.updated, issuing_dispute.closed, issuing_dispute.created, issuing_dispute.funds_reinstated, issuing_dispute.funds_rescinded, issuing_dispute.submitted, issuing_dispute.updated, issuing_personalization_design.activated, issuing_personalization_design.deactivated, issuing_personalization_design.rejected, issuing_personalization_design.updated, issuing_token.created, issuing_token.updated, issuing_transaction.created, issuing_transaction.updated, mandate.updated, payment_intent.amount_capturable_updated, payment_intent.canceled, payment_intent.created, payment_intent.partially_funded, payment_intent.payment_failed, payment_intent.processing, payment_intent.requires_action, payment_intent.succeeded, payment_link.created, payment_link.updated, payment_method.attached, payment_method.automatically_updated, payment_method.detached, payment_method.updated, payout.canceled, payout.created, payout.failed, payout.paid, payout.reconciliation_completed, payout.updated, person.created, person.deleted, person.updated, plan.created, plan.deleted, plan.updated, price.created, price.deleted, price.updated, product.created, product.deleted, product.updated, promotion_code.created, promotion_code.updated, quote.accepted, quote.canceled, quote.created, quote.finalized, radar.early_fraud_warning.created, radar.early_fraud_warning.updated, refund.created, refund.updated, reporting.report_run.failed, reporting.report_run.succeeded, reporting.report_type.updated, review.closed, review.opened, setup_intent.canceled, setup_intent.created, setup_intent.requires_action, setup_intent.setup_failed, setup_intent.succeeded, sigma.scheduled_query_run.created, source.canceled, source.chargeable, source.failed, source.mandate_notification, source.refund_attributes_required, source.transaction.created, source.transaction.updated, subscription_schedule.aborted, subscription_schedule.canceled, subscription_schedule.completed, subscription_schedule.created, subscription_schedule.expiring, subscription_schedule.released, subscription_schedule.updated, tax.settings.updated, tax_rate.created, tax_rate.updated, terminal.reader.action_failed, terminal.reader.action_succeeded, test_helpers.test_clock.advancing, test_helpers.test_clock.created, test_helpers.test_clock.deleted, test_helpers.test_clock.internal_failure, test_helpers.test_clock.ready, topup.canceled, topup.created, topup.failed, topup.reversed, topup.succeeded, transfer.created, transfer.reversed, transfer.updated, treasury.credit_reversal.created, treasury.credit_reversal.posted, treasury.debit_reversal.completed, treasury.debit_reversal.created, treasury.debit_reversal.initial_credit_granted, treasury.financial_account.closed, treasury.financial_account.created, treasury.financial_account.features_status_updated, treasury.inbound_transfer.canceled, treasury.inbound_transfer.created, treasury.inbound_transfer.failed, treasury.inbound_transfer.succeeded, treasury.outbound_payment.canceled, treasury.outbound_payment.created, treasury.outbound_payment.expected_arrival_date_updated, treasury.outbound_payment.failed, treasury.outbound_payment.posted, treasury.outbound_payment.returned, treasury.outbound_payment.tracking_details_updated, treasury.outbound_transfer.canceled, treasury.outbound_transfer.created, treasury.outbound_transfer.expected_arrival_date_updated, treasury.outbound_transfer.failed, treasury.outbound_transfer.posted, treasury.outbound_transfer.returned, treasury.outbound_transfer.tracking_details_updated, treasury.received_credit.created, treasury.received_credit.failed, treasury.received_credit.succeeded, treasury.received_debit.created]."
    VALID_VALUES_FOR__TYPE  = String.static_array("account.application.authorized", "account.application.deauthorized", "account.external_account.created", "account.external_account.deleted", "account.external_account.updated", "account.updated", "application_fee.created", "application_fee.refund.updated", "application_fee.refunded", "balance.available", "billing.alert.triggered", "billing_portal.configuration.created", "billing_portal.configuration.updated", "billing_portal.session.created", "capability.updated", "cash_balance.funds_available", "charge.captured", "charge.dispute.closed", "charge.dispute.created", "charge.dispute.funds_reinstated", "charge.dispute.funds_withdrawn", "charge.dispute.updated", "charge.expired", "charge.failed", "charge.pending", "charge.refund.updated", "charge.refunded", "charge.succeeded", "charge.updated", "checkout.session.async_payment_failed", "checkout.session.async_payment_succeeded", "checkout.session.completed", "checkout.session.expired", "climate.order.canceled", "climate.order.created", "climate.order.delayed", "climate.order.delivered", "climate.order.product_substituted", "climate.product.created", "climate.product.pricing_updated", "coupon.created", "coupon.deleted", "coupon.updated", "credit_note.created", "credit_note.updated", "credit_note.voided", "customer.created", "customer.deleted", "customer.discount.created", "customer.discount.deleted", "customer.discount.updated", "customer.source.created", "customer.source.deleted", "customer.source.expiring", "customer.source.updated", "customer.subscription.created", "customer.subscription.deleted", "customer.subscription.paused", "customer.subscription.pending_update_applied", "customer.subscription.pending_update_expired", "customer.subscription.resumed", "customer.subscription.trial_will_end", "customer.subscription.updated", "customer.tax_id.created", "customer.tax_id.deleted", "customer.tax_id.updated", "customer.updated", "customer_cash_balance_transaction.created", "entitlements.active_entitlement_summary.updated", "file.created", "financial_connections.account.created", "financial_connections.account.deactivated", "financial_connections.account.disconnected", "financial_connections.account.reactivated", "financial_connections.account.refreshed_balance", "financial_connections.account.refreshed_ownership", "financial_connections.account.refreshed_transactions", "identity.verification_session.canceled", "identity.verification_session.created", "identity.verification_session.processing", "identity.verification_session.redacted", "identity.verification_session.requires_input", "identity.verification_session.verified", "invoice.created", "invoice.deleted", "invoice.finalization_failed", "invoice.finalized", "invoice.marked_uncollectible", "invoice.overdue", "invoice.paid", "invoice.payment_action_required", "invoice.payment_failed", "invoice.payment_succeeded", "invoice.sent", "invoice.upcoming", "invoice.updated", "invoice.voided", "invoice.will_be_due", "invoiceitem.created", "invoiceitem.deleted", "issuing_authorization.created", "issuing_authorization.request", "issuing_authorization.updated", "issuing_card.created", "issuing_card.updated", "issuing_cardholder.created", "issuing_cardholder.updated", "issuing_dispute.closed", "issuing_dispute.created", "issuing_dispute.funds_reinstated", "issuing_dispute.funds_rescinded", "issuing_dispute.submitted", "issuing_dispute.updated", "issuing_personalization_design.activated", "issuing_personalization_design.deactivated", "issuing_personalization_design.rejected", "issuing_personalization_design.updated", "issuing_token.created", "issuing_token.updated", "issuing_transaction.created", "issuing_transaction.updated", "mandate.updated", "payment_intent.amount_capturable_updated", "payment_intent.canceled", "payment_intent.created", "payment_intent.partially_funded", "payment_intent.payment_failed", "payment_intent.processing", "payment_intent.requires_action", "payment_intent.succeeded", "payment_link.created", "payment_link.updated", "payment_method.attached", "payment_method.automatically_updated", "payment_method.detached", "payment_method.updated", "payout.canceled", "payout.created", "payout.failed", "payout.paid", "payout.reconciliation_completed", "payout.updated", "person.created", "person.deleted", "person.updated", "plan.created", "plan.deleted", "plan.updated", "price.created", "price.deleted", "price.updated", "product.created", "product.deleted", "product.updated", "promotion_code.created", "promotion_code.updated", "quote.accepted", "quote.canceled", "quote.created", "quote.finalized", "radar.early_fraud_warning.created", "radar.early_fraud_warning.updated", "refund.created", "refund.updated", "reporting.report_run.failed", "reporting.report_run.succeeded", "reporting.report_type.updated", "review.closed", "review.opened", "setup_intent.canceled", "setup_intent.created", "setup_intent.requires_action", "setup_intent.setup_failed", "setup_intent.succeeded", "sigma.scheduled_query_run.created", "source.canceled", "source.chargeable", "source.failed", "source.mandate_notification", "source.refund_attributes_required", "source.transaction.created", "source.transaction.updated", "subscription_schedule.aborted", "subscription_schedule.canceled", "subscription_schedule.completed", "subscription_schedule.created", "subscription_schedule.expiring", "subscription_schedule.released", "subscription_schedule.updated", "tax.settings.updated", "tax_rate.created", "tax_rate.updated", "terminal.reader.action_failed", "terminal.reader.action_succeeded", "test_helpers.test_clock.advancing", "test_helpers.test_clock.created", "test_helpers.test_clock.deleted", "test_helpers.test_clock.internal_failure", "test_helpers.test_clock.ready", "topup.canceled", "topup.created", "topup.failed", "topup.reversed", "topup.succeeded", "transfer.created", "transfer.reversed", "transfer.updated", "treasury.credit_reversal.created", "treasury.credit_reversal.posted", "treasury.debit_reversal.completed", "treasury.debit_reversal.created", "treasury.debit_reversal.initial_credit_granted", "treasury.financial_account.closed", "treasury.financial_account.created", "treasury.financial_account.features_status_updated", "treasury.inbound_transfer.canceled", "treasury.inbound_transfer.created", "treasury.inbound_transfer.failed", "treasury.inbound_transfer.succeeded", "treasury.outbound_payment.canceled", "treasury.outbound_payment.created", "treasury.outbound_payment.expected_arrival_date_updated", "treasury.outbound_payment.failed", "treasury.outbound_payment.posted", "treasury.outbound_payment.returned", "treasury.outbound_payment.tracking_details_updated", "treasury.outbound_transfer.canceled", "treasury.outbound_transfer.created", "treasury.outbound_transfer.expected_arrival_date_updated", "treasury.outbound_transfer.failed", "treasury.outbound_transfer.posted", "treasury.outbound_transfer.returned", "treasury.outbound_transfer.tracking_details_updated", "treasury.received_credit.created", "treasury.received_credit.failed", "treasury.received_credit.succeeded", "treasury.received_debit.created")

    # End of Required Properties

    # Optional Properties

    # The connected account that originates the event.
    @[JSON::Field(key: "account", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter account : String? = nil
    MAX_LENGTH_FOR_ACCOUNT = 5000

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @api_version : String? = nil,
      @created : Int64? = nil,
      @data : Stripe::NotificationEventData? = nil,
      @id : String? = nil,
      @livemode : Bool? = nil,
      @object : String? = nil,
      @pending_webhooks : Int64? = nil,
      @request : Stripe::EventRequest? = nil,
      @_type : String? = nil,
      # Optional properties
      @account : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_api_version = @api_version).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("api_version", _api_version.to_s.size, MAX_LENGTH_FOR_API_VERSION)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"created\" is required and cannot be null") if @created.nil?

      invalid_properties.push("\"data\" is required and cannot be null") if @data.nil?

      unless (_data = @data).nil?
        invalid_properties.concat(_data.list_invalid_properties_for("data")) if _data.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"id\" is required and cannot be null") if @id.nil?

      unless (_id = @id).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("id", _id.to_s.size, MAX_LENGTH_FOR_ID)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties.push("\"livemode\" is required and cannot be null") if @livemode.nil?

      invalid_properties.push("\"object\" is required and cannot be null") if @object.nil?

      unless (_object = @object).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR_OBJECT) unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end
      invalid_properties.push("\"pending_webhooks\" is required and cannot be null") if @pending_webhooks.nil?

      unless (_request = @request).nil?
        invalid_properties.concat(_request.list_invalid_properties_for("request")) if _request.is_a?(OpenApi::Validatable)
      end
      invalid_properties.push("\"_type\" is required and cannot be null") if @_type.nil?

      unless (__type = @_type).nil?
        invalid_properties.push(ERROR_MESSAGE_FOR__TYPE) unless OpenApi::EnumValidator.valid?(__type, VALID_VALUES_FOR__TYPE)
      end
      unless (_account = @account).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("account", _account.to_s.size, MAX_LENGTH_FOR_ACCOUNT)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_api_version = @api_version).nil?
        return false if _api_version.to_s.size > MAX_LENGTH_FOR_API_VERSION
      end

      return false if @created.nil?

      return false if @data.nil?
      unless (_data = @data).nil?
        return false if _data.is_a?(OpenApi::Validatable) && !_data.valid?
      end

      return false if @id.nil?
      unless (_id = @id).nil?
        return false if _id.to_s.size > MAX_LENGTH_FOR_ID
      end

      return false if @livemode.nil?

      return false if @object.nil?
      unless (_object = @object).nil?
        return false unless OpenApi::EnumValidator.valid?(_object, VALID_VALUES_FOR_OBJECT)
      end

      return false if @pending_webhooks.nil?

      unless (_request = @request).nil?
        return false if _request.is_a?(OpenApi::Validatable) && !_request.valid?
      end

      return false if @_type.nil?
      unless (__type = @_type).nil?
        return false unless OpenApi::EnumValidator.valid?(__type, VALID_VALUES_FOR__TYPE)
      end

      unless (_account = @account).nil?
        return false if _account.to_s.size > MAX_LENGTH_FOR_ACCOUNT
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] api_version Object to be assigned
    def api_version=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("api_version", new_value.to_s.size, MAX_LENGTH_FOR_API_VERSION)
      end

      @api_version = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] created Object to be assigned
    def created=(new_value : Int64?)
      raise ArgumentError.new("\"created\" is required and cannot be null") if new_value.nil?

      @created = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] data Object to be assigned
    def data=(new_value : Stripe::NotificationEventData?)
      raise ArgumentError.new("\"data\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @data = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] id Object to be assigned
    def id=(new_value : String?)
      raise ArgumentError.new("\"id\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("id", new_value.to_s.size, MAX_LENGTH_FOR_ID)
      end

      @id = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] livemode Object to be assigned
    def livemode=(new_value : Bool?)
      raise ArgumentError.new("\"livemode\" is required and cannot be null") if new_value.nil?

      @livemode = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(new_value : String?)
      raise ArgumentError.new("\"object\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::EnumValidator.validate("object", new_value, VALID_VALUES_FOR_OBJECT)
      end

      @object = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] pending_webhooks Object to be assigned
    def pending_webhooks=(new_value : Int64?)
      raise ArgumentError.new("\"pending_webhooks\" is required and cannot be null") if new_value.nil?

      @pending_webhooks = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] request Object to be assigned
    def request=(new_value : Stripe::EventRequest?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @request = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(new_value : String?)
      raise ArgumentError.new("\"_type\" is required and cannot be null") if new_value.nil?
      unless new_value.nil?
        OpenApi::EnumValidator.validate("_type", new_value, VALID_VALUES_FOR__TYPE)
      end

      @_type = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] account Object to be assigned
    def account=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("account", new_value.to_s.size, MAX_LENGTH_FOR_ACCOUNT)
      end

      @account = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@api_version, @created, @data, @id, @livemode, @object, @pending_webhooks, @request, @_type, @account)
  end
end
