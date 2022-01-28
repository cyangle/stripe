#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-08-27
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "nason"
require "time"
require "log"

module Stripe
  # Subscriptions allow you to charge a customer on a recurring basis.  Related guide: [Creating Subscriptions](https://stripe.com/docs/billing/subscriptions/creating).
  class Subscription
    include NASON::Serializable

    # Required properties
    @[NASON::Field(key: "automatic_tax", type: SubscriptionAutomaticTax)]
    property automatic_tax : SubscriptionAutomaticTax

    # Determines the date of the first full invoice, and, for plans with `month` or `year` intervals, the day of the month for subsequent invoices.
    @[NASON::Field(key: "billing_cycle_anchor", type: Int64)]
    property billing_cycle_anchor : Int64

    # If the subscription has been canceled with the `at_period_end` flag set to `true`, `cancel_at_period_end` on the subscription will be true. You can use this attribute to determine whether a subscription that has a status of active is scheduled to be canceled at the end of the current period.
    @[NASON::Field(key: "cancel_at_period_end", type: Bool)]
    property cancel_at_period_end : Bool

    # Either `charge_automatically`, or `send_invoice`. When charging automatically, Stripe will attempt to pay this subscription at the end of the cycle using the default source attached to the customer. When sending an invoice, Stripe will email your customer an invoice with payment instructions.
    @[NASON::Field(key: "collection_method", type: String)]
    property collection_method : String

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[NASON::Field(key: "created", type: Int64)]
    property created : Int64

    # End of the current period that the subscription has been invoiced for. At the end of this period, a new invoice will be created.
    @[NASON::Field(key: "current_period_end", type: Int64)]
    property current_period_end : Int64

    # Start of the current period that the subscription has been invoiced for.
    @[NASON::Field(key: "current_period_start", type: Int64)]
    property current_period_start : Int64

    # ID of the customer who owns the subscription.
    @[NASON::Field(key: "customer", type: String | Customer | Null, nillable: false)]
    property customer : String | Customer | Null

    # Unique identifier for the object.
    @[NASON::Field(key: "id", type: String)]
    property id : String

    @[NASON::Field(key: "items", type: SubscriptionItemList)]
    property items : SubscriptionItemList

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[NASON::Field(key: "livemode", type: Bool)]
    property livemode : Bool

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    @[NASON::Field(key: "metadata", type: Hash(String, String))]
    property metadata : Hash(String, String)

    # String representing the object's type. Objects of the same type share the same value.
    @[NASON::Field(key: "object", type: String)]
    property object : String

    # Date when the subscription was first created. The date might differ from the `created` date due to backdating.
    @[NASON::Field(key: "start_date", type: Int64)]
    property start_date : Int64

    # Possible values are `incomplete`, `incomplete_expired`, `trialing`, `active`, `past_due`, `canceled`, or `unpaid`.   For `collection_method=charge_automatically` a subscription moves into `incomplete` if the initial payment attempt fails. A subscription in this state can only have metadata and default_source updated. Once the first invoice is paid, the subscription moves into an `active` state. If the first invoice is not paid within 23 hours, the subscription transitions to `incomplete_expired`. This is a terminal state, the open invoice will be voided and no further invoices will be generated.   A subscription that is currently in a trial period is `trialing` and moves to `active` when the trial period is over.   If subscription `collection_method=charge_automatically` it becomes `past_due` when payment to renew it fails and `canceled` or `unpaid` (depending on your subscriptions settings) when Stripe has exhausted all payment retry attempts.   If subscription `collection_method=send_invoice` it becomes `past_due` when its invoice is not paid by the due date, and `canceled` or `unpaid` if it is still not paid by an additional deadline after that. Note that when a subscription has a status of `unpaid`, no subsequent invoices will be attempted (invoices will be created, but then immediately automatically closed). After receiving updated payment information from a customer, you may choose to reopen and pay their closed invoices.
    @[NASON::Field(key: "status", type: String)]
    property status : String

    # Optional properties
    # A non-negative decimal between 0 and 100, with at most two decimal places. This represents the percentage of the subscription invoice subtotal that will be transferred to the application owner's Stripe account.
    @[NASON::Field(key: "application_fee_percent", type: Float64? | Null, nillable: true)]
    property application_fee_percent : Float64? | Null

    # Define thresholds at which an invoice will be sent, and the subscription advanced to a new billing period
    @[NASON::Field(key: "billing_thresholds", type: SubscriptionBillingThresholds? | Null, nillable: true)]
    property billing_thresholds : SubscriptionBillingThresholds? | Null

    # A date in the future at which the subscription will automatically get canceled
    @[NASON::Field(key: "cancel_at", type: Int64? | Null, nillable: true)]
    property cancel_at : Int64? | Null

    # If the subscription has been canceled, the date of that cancellation. If the subscription was canceled with `cancel_at_period_end`, `canceled_at` will reflect the time of the most recent update request, not the end of the subscription period when the subscription is automatically moved to a canceled state.
    @[NASON::Field(key: "canceled_at", type: Int64? | Null, nillable: true)]
    property canceled_at : Int64? | Null

    # Number of days a customer has to pay invoices generated by this subscription. This value will be `null` for subscriptions where `collection_method=charge_automatically`.
    @[NASON::Field(key: "days_until_due", type: Int64? | Null, nillable: true)]
    property days_until_due : Int64? | Null

    # ID of the default payment method for the subscription. It must belong to the customer associated with the subscription. This takes precedence over `default_source`. If neither are set, invoices will use the customer's [invoice_settings.default_payment_method](https://stripe.com/docs/api/customers/object#customer_object-invoice_settings-default_payment_method) or [default_source](https://stripe.com/docs/api/customers/object#customer_object-default_source).
    @[NASON::Field(key: "default_payment_method", type: String | PaymentMethod? | Null, nillable: true)]
    property default_payment_method : String | PaymentMethod? | Null

    # ID of the default payment source for the subscription. It must belong to the customer associated with the subscription and be in a chargeable state. If `default_payment_method` is also set, `default_payment_method` will take precedence. If neither are set, invoices will use the customer's [invoice_settings.default_payment_method](https://stripe.com/docs/api/customers/object#customer_object-invoice_settings-default_payment_method) or [default_source](https://stripe.com/docs/api/customers/object#customer_object-default_source).
    @[NASON::Field(key: "default_source", type: String | AlipayAccount | BankAccount | BitcoinReceiver | Card | Source? | Null, nillable: true)]
    property default_source : String | AlipayAccount | BankAccount | BitcoinReceiver | Card | Source? | Null

    # The tax rates that will apply to any subscription item that does not have `tax_rates` set. Invoices created will have their `default_tax_rates` populated from the subscription.
    @[NASON::Field(key: "default_tax_rates", type: Array(TaxRate)? | Null, nillable: true)]
    property default_tax_rates : Array(TaxRate)? | Null

    # Describes the current discount applied to this subscription, if there is one. When billing, a discount applied to a subscription overrides a discount applied on a customer-wide basis.
    @[NASON::Field(key: "discount", type: Discount? | Null, nillable: true)]
    property discount : Discount? | Null

    # If the subscription has ended, the date the subscription ended.
    @[NASON::Field(key: "ended_at", type: Int64? | Null, nillable: true)]
    property ended_at : Int64? | Null

    # The most recent invoice this subscription has generated.
    @[NASON::Field(key: "latest_invoice", type: String | Invoice? | Null, nillable: true)]
    property latest_invoice : String | Invoice? | Null

    # Specifies the approximate timestamp on which any pending invoice items will be billed according to the schedule provided at `pending_invoice_item_interval`.
    @[NASON::Field(key: "next_pending_invoice_item_invoice", type: Int64? | Null, nillable: true)]
    property next_pending_invoice_item_invoice : Int64? | Null

    # If specified, payment collection for this subscription will be paused.
    @[NASON::Field(key: "pause_collection", type: SubscriptionsResourcePauseCollection? | Null, nillable: true)]
    property pause_collection : SubscriptionsResourcePauseCollection? | Null

    # Payment settings passed on to invoices created by the subscription.
    @[NASON::Field(key: "payment_settings", type: SubscriptionsResourcePaymentSettings? | Null, nillable: true)]
    property payment_settings : SubscriptionsResourcePaymentSettings? | Null

    # Specifies an interval for how often to bill for any pending invoice items. It is analogous to calling [Create an invoice](https://stripe.com/docs/api#create_invoice) for the given subscription at the specified interval.
    @[NASON::Field(key: "pending_invoice_item_interval", type: SubscriptionPendingInvoiceItemInterval? | Null, nillable: true)]
    property pending_invoice_item_interval : SubscriptionPendingInvoiceItemInterval? | Null

    # You can use this [SetupIntent](https://stripe.com/docs/api/setup_intents) to collect user authentication when creating a subscription without immediate payment or updating a subscription's payment method, allowing you to optimize for off-session payments. Learn more in the [SCA Migration Guide](https://stripe.com/docs/billing/migration/strong-customer-authentication#scenario-2).
    @[NASON::Field(key: "pending_setup_intent", type: String | SetupIntent? | Null, nillable: true)]
    property pending_setup_intent : String | SetupIntent? | Null

    # If specified, [pending updates](https://stripe.com/docs/billing/subscriptions/pending-updates) that will be applied to the subscription once the `latest_invoice` has been paid.
    @[NASON::Field(key: "pending_update", type: SubscriptionsResourcePendingUpdate? | Null, nillable: true)]
    property pending_update : SubscriptionsResourcePendingUpdate? | Null

    # The schedule attached to the subscription
    @[NASON::Field(key: "schedule", type: String | SubscriptionSchedule? | Null, nillable: true)]
    property schedule : String | SubscriptionSchedule? | Null

    # The account (if any) the subscription's payments will be attributed to for tax reporting, and where funds from each payment will be transferred to for each of the subscription's invoices.
    @[NASON::Field(key: "transfer_data", type: SubscriptionTransferData? | Null, nillable: true)]
    property transfer_data : SubscriptionTransferData? | Null

    # If the subscription has a trial, the end of that trial.
    @[NASON::Field(key: "trial_end", type: Int64? | Null, nillable: true)]
    property trial_end : Int64? | Null

    # If the subscription has a trial, the beginning of that trial.
    @[NASON::Field(key: "trial_start", type: Int64? | Null, nillable: true)]
    property trial_start : Int64? | Null

    class EnumAttributeValidator
      getter datatype : String
      getter allowable_values : Array(String | Int64 | Float64)

      def initialize(datatype, allowable_values)
        @datatype = datatype
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        value.nil? || value.null? || allowable_values.includes?(value)
      end
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(*, @automatic_tax : SubscriptionAutomaticTax, @billing_cycle_anchor : Int64, @cancel_at_period_end : Bool, @collection_method : String, @created : Int64, @current_period_end : Int64, @current_period_start : Int64, @customer : String | Customer | Null, @id : String, @items : SubscriptionItemList, @livemode : Bool, @metadata : Hash(String, String), @object : String, @start_date : Int64, @status : String, @application_fee_percent : Float64? | Null = nil, @billing_thresholds : SubscriptionBillingThresholds? | Null = nil, @cancel_at : Int64? | Null = nil, @canceled_at : Int64? | Null = nil, @days_until_due : Int64? | Null = nil, @default_payment_method : String | PaymentMethod? | Null = nil, @default_source : String | AlipayAccount | BankAccount | BitcoinReceiver | Card | Source? | Null = nil, @default_tax_rates : Array(TaxRate)? | Null = nil, @discount : Discount? | Null = nil, @ended_at : Int64? | Null = nil, @latest_invoice : String | Invoice? | Null = nil, @next_pending_invoice_item_invoice : Int64? | Null = nil, @pause_collection : SubscriptionsResourcePauseCollection? | Null = nil, @payment_settings : SubscriptionsResourcePaymentSettings? | Null = nil, @pending_invoice_item_interval : SubscriptionPendingInvoiceItemInterval? | Null = nil, @pending_setup_intent : String | SetupIntent? | Null = nil, @pending_update : SubscriptionsResourcePendingUpdate? | Null = nil, @schedule : String | SubscriptionSchedule? | Null = nil, @transfer_data : SubscriptionTransferData? | Null = nil, @trial_end : Int64? | Null = nil, @trial_start : Int64? | Null = nil)
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      if @id.to_s.size > 5000
        invalid_properties.push("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      collection_method_validator = EnumAttributeValidator.new("String", ["charge_automatically", "send_invoice"])
      return false unless collection_method_validator.valid?(@collection_method)
      return false if @id.to_s.size > 5000
      object_validator = EnumAttributeValidator.new("String", ["subscription"])
      return false unless object_validator.valid?(@object)
      status_validator = EnumAttributeValidator.new("String", ["active", "canceled", "incomplete", "incomplete_expired", "past_due", "trialing", "unpaid"])
      return false unless status_validator.valid?(@status)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] collection_method Object to be assigned
    def collection_method=(collection_method)
      validator = EnumAttributeValidator.new("String", ["charge_automatically", "send_invoice"])
      unless validator.valid?(collection_method)
        raise ArgumentError.new("invalid value for \"collection_method\", must be one of #{validator.allowable_values}.")
      end
      @collection_method = collection_method
    end

    # Custom attribute writer method with validation
    # @param [Object] id Value to be assigned
    def id=(id)
      if id.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      @id = id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object)
      validator = EnumAttributeValidator.new("String", ["subscription"])
      unless validator.valid?(object)
        raise ArgumentError.new("invalid value for \"object\", must be one of #{validator.allowable_values}.")
      end
      @object = object
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      validator = EnumAttributeValidator.new("String", ["active", "canceled", "incomplete", "incomplete_expired", "past_due", "trialing", "unpaid"])
      unless validator.valid?(status)
        raise ArgumentError.new("invalid value for \"status\", must be one of #{validator.allowable_values}.")
      end
      @status = status
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.same?(o)
      self.class == o.class &&
        application_fee_percent == o.application_fee_percent &&
        automatic_tax == o.automatic_tax &&
        billing_cycle_anchor == o.billing_cycle_anchor &&
        billing_thresholds == o.billing_thresholds &&
        cancel_at == o.cancel_at &&
        cancel_at_period_end == o.cancel_at_period_end &&
        canceled_at == o.canceled_at &&
        collection_method == o.collection_method &&
        created == o.created &&
        current_period_end == o.current_period_end &&
        current_period_start == o.current_period_start &&
        customer == o.customer &&
        days_until_due == o.days_until_due &&
        default_payment_method == o.default_payment_method &&
        default_source == o.default_source &&
        default_tax_rates == o.default_tax_rates &&
        discount == o.discount &&
        ended_at == o.ended_at &&
        id == o.id &&
        items == o.items &&
        latest_invoice == o.latest_invoice &&
        livemode == o.livemode &&
        metadata == o.metadata &&
        next_pending_invoice_item_invoice == o.next_pending_invoice_item_invoice &&
        object == o.object &&
        pause_collection == o.pause_collection &&
        payment_settings == o.payment_settings &&
        pending_invoice_item_interval == o.pending_invoice_item_interval &&
        pending_setup_intent == o.pending_setup_intent &&
        pending_update == o.pending_update &&
        schedule == o.schedule &&
        start_date == o.start_date &&
        status == o.status &&
        transfer_data == o.transfer_data &&
        trial_end == o.trial_end &&
        trial_start == o.trial_start
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [application_fee_percent, automatic_tax, billing_cycle_anchor, billing_thresholds, cancel_at, cancel_at_period_end, canceled_at, collection_method, created, current_period_end, current_period_start, customer, days_until_due, default_payment_method, default_source, default_tax_rates, discount, ended_at, id, items, latest_invoice, livemode, metadata, next_pending_invoice_item_invoice, object, pause_collection, payment_settings, pending_invoice_item_interval, pending_setup_intent, pending_update, schedule, start_date, status, transfer_data, trial_end, trial_start].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if !attributes[self.class.attribute_map[key]]? && self.class.openapi_nullable.includes?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        ({} of String => String).tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = Stripe.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {} of String => String
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.includes?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        ({} of String => String).tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end