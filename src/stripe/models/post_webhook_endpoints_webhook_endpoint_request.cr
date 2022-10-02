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
  class PostWebhookEndpointsWebhookEndpointRequest
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    # An optional description of what the webhook is used for.
    @[JSON::Field(key: "description", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter description : String? = nil
    MAX_LENGTH_FOR_DESCRIPTION = 5000

    # Disable the webhook endpoint if set to true.
    @[JSON::Field(key: "disabled", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter disabled : Bool? = nil

    # The list of events to enable for this endpoint. You may specify `['*']` to enable all events, except those that require explicit selection.
    @[JSON::Field(key: "enabled_events", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter enabled_events : Array(String)? = nil
    ERROR_MESSAGE_FOR_ENABLED_EVENTS = "invalid value for \"enabled_events\", must be one of [*, account.application.authorized, account.application.deauthorized, account.external_account.created, account.external_account.deleted, account.external_account.updated, account.updated, application_fee.created, application_fee.refund.updated, application_fee.refunded, balance.available, billing_portal.configuration.created, billing_portal.configuration.updated, billing_portal.session.created, capability.updated, cash_balance.funds_available, charge.captured, charge.dispute.closed, charge.dispute.created, charge.dispute.funds_reinstated, charge.dispute.funds_withdrawn, charge.dispute.updated, charge.expired, charge.failed, charge.pending, charge.refund.updated, charge.refunded, charge.succeeded, charge.updated, checkout.session.async_payment_failed, checkout.session.async_payment_succeeded, checkout.session.completed, checkout.session.expired, coupon.created, coupon.deleted, coupon.updated, credit_note.created, credit_note.updated, credit_note.voided, customer.created, customer.deleted, customer.discount.created, customer.discount.deleted, customer.discount.updated, customer.source.created, customer.source.deleted, customer.source.expiring, customer.source.updated, customer.subscription.created, customer.subscription.deleted, customer.subscription.pending_update_applied, customer.subscription.pending_update_expired, customer.subscription.trial_will_end, customer.subscription.updated, customer.tax_id.created, customer.tax_id.deleted, customer.tax_id.updated, customer.updated, customer_cash_balance_transaction.created, file.created, financial_connections.account.created, financial_connections.account.deactivated, financial_connections.account.disconnected, financial_connections.account.reactivated, financial_connections.account.refreshed_balance, identity.verification_session.canceled, identity.verification_session.created, identity.verification_session.processing, identity.verification_session.redacted, identity.verification_session.requires_input, identity.verification_session.verified, invoice.created, invoice.deleted, invoice.finalization_failed, invoice.finalized, invoice.marked_uncollectible, invoice.paid, invoice.payment_action_required, invoice.payment_failed, invoice.payment_succeeded, invoice.sent, invoice.upcoming, invoice.updated, invoice.voided, invoiceitem.created, invoiceitem.deleted, invoiceitem.updated, issuing_authorization.created, issuing_authorization.request, issuing_authorization.updated, issuing_card.created, issuing_card.updated, issuing_cardholder.created, issuing_cardholder.updated, issuing_dispute.closed, issuing_dispute.created, issuing_dispute.funds_reinstated, issuing_dispute.submitted, issuing_dispute.updated, issuing_transaction.created, issuing_transaction.updated, mandate.updated, order.created, payment_intent.amount_capturable_updated, payment_intent.canceled, payment_intent.created, payment_intent.partially_funded, payment_intent.payment_failed, payment_intent.processing, payment_intent.requires_action, payment_intent.succeeded, payment_link.created, payment_link.updated, payment_method.attached, payment_method.automatically_updated, payment_method.detached, payment_method.updated, payout.canceled, payout.created, payout.failed, payout.paid, payout.updated, person.created, person.deleted, person.updated, plan.created, plan.deleted, plan.updated, price.created, price.deleted, price.updated, product.created, product.deleted, product.updated, promotion_code.created, promotion_code.updated, quote.accepted, quote.canceled, quote.created, quote.finalized, radar.early_fraud_warning.created, radar.early_fraud_warning.updated, recipient.created, recipient.deleted, recipient.updated, reporting.report_run.failed, reporting.report_run.succeeded, reporting.report_type.updated, review.closed, review.opened, setup_intent.canceled, setup_intent.created, setup_intent.requires_action, setup_intent.setup_failed, setup_intent.succeeded, sigma.scheduled_query_run.created, sku.created, sku.deleted, sku.updated, source.canceled, source.chargeable, source.failed, source.mandate_notification, source.refund_attributes_required, source.transaction.created, source.transaction.updated, subscription_schedule.aborted, subscription_schedule.canceled, subscription_schedule.completed, subscription_schedule.created, subscription_schedule.expiring, subscription_schedule.released, subscription_schedule.updated, tax_rate.created, tax_rate.updated, terminal.reader.action_failed, terminal.reader.action_succeeded, test_helpers.test_clock.advancing, test_helpers.test_clock.created, test_helpers.test_clock.deleted, test_helpers.test_clock.internal_failure, test_helpers.test_clock.ready, topup.canceled, topup.created, topup.failed, topup.reversed, topup.succeeded, transfer.created, transfer.reversed, transfer.updated, treasury.credit_reversal.created, treasury.credit_reversal.posted, treasury.debit_reversal.completed, treasury.debit_reversal.created, treasury.debit_reversal.initial_credit_granted, treasury.financial_account.closed, treasury.financial_account.created, treasury.financial_account.features_status_updated, treasury.inbound_transfer.canceled, treasury.inbound_transfer.created, treasury.inbound_transfer.failed, treasury.inbound_transfer.succeeded, treasury.outbound_payment.canceled, treasury.outbound_payment.created, treasury.outbound_payment.expected_arrival_date_updated, treasury.outbound_payment.failed, treasury.outbound_payment.posted, treasury.outbound_payment.returned, treasury.outbound_transfer.canceled, treasury.outbound_transfer.created, treasury.outbound_transfer.expected_arrival_date_updated, treasury.outbound_transfer.failed, treasury.outbound_transfer.posted, treasury.outbound_transfer.returned, treasury.received_credit.created, treasury.received_credit.failed, treasury.received_credit.succeeded, treasury.received_debit.created]."
    VALID_VALUES_FOR_ENABLED_EVENTS  = StaticArray["*", "account.application.authorized", "account.application.deauthorized", "account.external_account.created", "account.external_account.deleted", "account.external_account.updated", "account.updated", "application_fee.created", "application_fee.refund.updated", "application_fee.refunded", "balance.available", "billing_portal.configuration.created", "billing_portal.configuration.updated", "billing_portal.session.created", "capability.updated", "cash_balance.funds_available", "charge.captured", "charge.dispute.closed", "charge.dispute.created", "charge.dispute.funds_reinstated", "charge.dispute.funds_withdrawn", "charge.dispute.updated", "charge.expired", "charge.failed", "charge.pending", "charge.refund.updated", "charge.refunded", "charge.succeeded", "charge.updated", "checkout.session.async_payment_failed", "checkout.session.async_payment_succeeded", "checkout.session.completed", "checkout.session.expired", "coupon.created", "coupon.deleted", "coupon.updated", "credit_note.created", "credit_note.updated", "credit_note.voided", "customer.created", "customer.deleted", "customer.discount.created", "customer.discount.deleted", "customer.discount.updated", "customer.source.created", "customer.source.deleted", "customer.source.expiring", "customer.source.updated", "customer.subscription.created", "customer.subscription.deleted", "customer.subscription.pending_update_applied", "customer.subscription.pending_update_expired", "customer.subscription.trial_will_end", "customer.subscription.updated", "customer.tax_id.created", "customer.tax_id.deleted", "customer.tax_id.updated", "customer.updated", "customer_cash_balance_transaction.created", "file.created", "financial_connections.account.created", "financial_connections.account.deactivated", "financial_connections.account.disconnected", "financial_connections.account.reactivated", "financial_connections.account.refreshed_balance", "identity.verification_session.canceled", "identity.verification_session.created", "identity.verification_session.processing", "identity.verification_session.redacted", "identity.verification_session.requires_input", "identity.verification_session.verified", "invoice.created", "invoice.deleted", "invoice.finalization_failed", "invoice.finalized", "invoice.marked_uncollectible", "invoice.paid", "invoice.payment_action_required", "invoice.payment_failed", "invoice.payment_succeeded", "invoice.sent", "invoice.upcoming", "invoice.updated", "invoice.voided", "invoiceitem.created", "invoiceitem.deleted", "invoiceitem.updated", "issuing_authorization.created", "issuing_authorization.request", "issuing_authorization.updated", "issuing_card.created", "issuing_card.updated", "issuing_cardholder.created", "issuing_cardholder.updated", "issuing_dispute.closed", "issuing_dispute.created", "issuing_dispute.funds_reinstated", "issuing_dispute.submitted", "issuing_dispute.updated", "issuing_transaction.created", "issuing_transaction.updated", "mandate.updated", "order.created", "payment_intent.amount_capturable_updated", "payment_intent.canceled", "payment_intent.created", "payment_intent.partially_funded", "payment_intent.payment_failed", "payment_intent.processing", "payment_intent.requires_action", "payment_intent.succeeded", "payment_link.created", "payment_link.updated", "payment_method.attached", "payment_method.automatically_updated", "payment_method.detached", "payment_method.updated", "payout.canceled", "payout.created", "payout.failed", "payout.paid", "payout.updated", "person.created", "person.deleted", "person.updated", "plan.created", "plan.deleted", "plan.updated", "price.created", "price.deleted", "price.updated", "product.created", "product.deleted", "product.updated", "promotion_code.created", "promotion_code.updated", "quote.accepted", "quote.canceled", "quote.created", "quote.finalized", "radar.early_fraud_warning.created", "radar.early_fraud_warning.updated", "recipient.created", "recipient.deleted", "recipient.updated", "reporting.report_run.failed", "reporting.report_run.succeeded", "reporting.report_type.updated", "review.closed", "review.opened", "setup_intent.canceled", "setup_intent.created", "setup_intent.requires_action", "setup_intent.setup_failed", "setup_intent.succeeded", "sigma.scheduled_query_run.created", "sku.created", "sku.deleted", "sku.updated", "source.canceled", "source.chargeable", "source.failed", "source.mandate_notification", "source.refund_attributes_required", "source.transaction.created", "source.transaction.updated", "subscription_schedule.aborted", "subscription_schedule.canceled", "subscription_schedule.completed", "subscription_schedule.created", "subscription_schedule.expiring", "subscription_schedule.released", "subscription_schedule.updated", "tax_rate.created", "tax_rate.updated", "terminal.reader.action_failed", "terminal.reader.action_succeeded", "test_helpers.test_clock.advancing", "test_helpers.test_clock.created", "test_helpers.test_clock.deleted", "test_helpers.test_clock.internal_failure", "test_helpers.test_clock.ready", "topup.canceled", "topup.created", "topup.failed", "topup.reversed", "topup.succeeded", "transfer.created", "transfer.reversed", "transfer.updated", "treasury.credit_reversal.created", "treasury.credit_reversal.posted", "treasury.debit_reversal.completed", "treasury.debit_reversal.created", "treasury.debit_reversal.initial_credit_granted", "treasury.financial_account.closed", "treasury.financial_account.created", "treasury.financial_account.features_status_updated", "treasury.inbound_transfer.canceled", "treasury.inbound_transfer.created", "treasury.inbound_transfer.failed", "treasury.inbound_transfer.succeeded", "treasury.outbound_payment.canceled", "treasury.outbound_payment.created", "treasury.outbound_payment.expected_arrival_date_updated", "treasury.outbound_payment.failed", "treasury.outbound_payment.posted", "treasury.outbound_payment.returned", "treasury.outbound_transfer.canceled", "treasury.outbound_transfer.created", "treasury.outbound_transfer.expected_arrival_date_updated", "treasury.outbound_transfer.failed", "treasury.outbound_transfer.posted", "treasury.outbound_transfer.returned", "treasury.received_credit.created", "treasury.received_credit.failed", "treasury.received_credit.succeeded", "treasury.received_debit.created"]

    # Specifies which fields in the response should be expanded.
    @[JSON::Field(key: "expand", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter expand : Array(String)? = nil

    @[JSON::Field(key: "metadata", type: Stripe::PostAccountRequestMetadata?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Stripe::PostAccountRequestMetadata? = nil

    # The URL of the webhook endpoint.
    @[JSON::Field(key: "url", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter url : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @description : String? = nil,
      @disabled : Bool? = nil,
      @enabled_events : Array(String)? = nil,
      @expand : Array(String)? = nil,
      @metadata : Stripe::PostAccountRequestMetadata? = nil,
      @url : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      if _description = @description
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("description", _description.to_s.size, MAX_LENGTH_FOR_DESCRIPTION)
          invalid_properties.push(max_length_error)
        end
      end

      if _enabled_events = @enabled_events
        invalid_properties.push(ERROR_MESSAGE_FOR_ENABLED_EVENTS) unless OpenApi::EnumValidator.valid?(_enabled_events, VALID_VALUES_FOR_ENABLED_EVENTS)
      end

      if _metadata = @metadata
        invalid_properties.concat(_metadata.list_invalid_properties_for("metadata")) if _metadata.is_a?(OpenApi::Validatable)
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _description = @description
        return false if _description.to_s.size > MAX_LENGTH_FOR_DESCRIPTION
      end

      if _enabled_events = @enabled_events
        return false unless OpenApi::EnumValidator.valid?(_enabled_events, VALID_VALUES_FOR_ENABLED_EVENTS)
      end

      if _metadata = @metadata
        return false if _metadata.is_a?(OpenApi::Validatable) && !_metadata.valid?
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] description Object to be assigned
    def description=(description : String?)
      if description.nil?
        return @description = nil
      end
      _description = description.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("description", _description.to_s.size, MAX_LENGTH_FOR_DESCRIPTION)
      @description = _description
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] disabled Object to be assigned
    def disabled=(disabled : Bool?)
      if disabled.nil?
        return @disabled = nil
      end
      _disabled = disabled.not_nil!
      @disabled = _disabled
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] enabled_events Object to be assigned
    def enabled_events=(enabled_events : Array(String)?)
      if enabled_events.nil?
        return @enabled_events = nil
      end
      _enabled_events = enabled_events.not_nil!
      OpenApi::EnumValidator.validate("enabled_events", _enabled_events, VALID_VALUES_FOR_ENABLED_EVENTS)
      @enabled_events = _enabled_events
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] expand Object to be assigned
    def expand=(expand : Array(String)?)
      if expand.nil?
        return @expand = nil
      end
      _expand = expand.not_nil!
      @expand = _expand
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(metadata : Stripe::PostAccountRequestMetadata?)
      if metadata.nil?
        return @metadata = nil
      end
      _metadata = metadata.not_nil!
      _metadata.validate if _metadata.is_a?(OpenApi::Validatable)
      @metadata = _metadata
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] url Object to be assigned
    def url=(url : String?)
      if url.nil?
        return @url = nil
      end
      _url = url.not_nil!
      @url = _url
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@description, @disabled, @enabled_events, @expand, @metadata, @url)
  end
end
