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
  # A dispute occurs when a customer questions your charge with their card issuer. When this happens, you're given the opportunity to respond to the dispute with evidence that shows that the charge is legitimate. You can find more information about the dispute process in our [Disputes and Fraud](/docs/disputes) documentation.  Related guide: [Disputes and Fraud](https://stripe.com/docs/disputes).
  class Dispute
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Required properties

    # Disputed amount. Usually the amount of the charge, but can differ (usually because of currency fluctuation or because only part of the order is disputed).
    @[JSON::Field(key: "amount", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter amount : Int64? = nil

    # List of zero, one, or two balance transactions that show funds withdrawn and reinstated to your Stripe account as a result of this dispute.
    @[JSON::Field(key: "balance_transactions", type: Array(Stripe::BalanceTransaction)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter balance_transactions : Array(Stripe::BalanceTransaction)? = nil

    @[JSON::Field(key: "charge", type: Stripe::DisputeCharge?, default: nil, required: true, nullable: false, emit_null: false)]
    getter charge : Stripe::DisputeCharge? = nil

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter created : Int64? = nil

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[JSON::Field(key: "currency", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter currency : String? = nil

    @[JSON::Field(key: "evidence", type: Stripe::DisputeEvidence?, default: nil, required: true, nullable: false, emit_null: false)]
    getter evidence : Stripe::DisputeEvidence? = nil

    @[JSON::Field(key: "evidence_details", type: Stripe::DisputeEvidenceDetails?, default: nil, required: true, nullable: false, emit_null: false)]
    getter evidence_details : Stripe::DisputeEvidenceDetails? = nil

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil

    # If true, it is still possible to refund the disputed payment. Once the payment has been fully refunded, no further funds will be withdrawn from your Stripe account as a result of this dispute.
    @[JSON::Field(key: "is_charge_refundable", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter is_charge_refundable : Bool? = nil

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter livemode : Bool? = nil

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    @[JSON::Field(key: "metadata", type: Hash(String, String)?, default: nil, required: true, nullable: false, emit_null: false)]
    getter metadata : Hash(String, String)? = nil

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter object : String? = nil

    ENUM_VALIDATOR_FOR_OBJECT = EnumValidator.new("object", "String", ["dispute"])

    # Reason given by cardholder for dispute. Possible values are `bank_cannot_process`, `check_returned`, `credit_not_processed`, `customer_initiated`, `debit_not_authorized`, `duplicate`, `fraudulent`, `general`, `incorrect_account_details`, `insufficient_funds`, `product_not_received`, `product_unacceptable`, `subscription_canceled`, or `unrecognized`. Read more about [dispute reasons](https://stripe.com/docs/disputes/categories).
    @[JSON::Field(key: "reason", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter reason : String? = nil

    # Current status of dispute. Possible values are `warning_needs_response`, `warning_under_review`, `warning_closed`, `needs_response`, `under_review`, `charge_refunded`, `won`, or `lost`.
    @[JSON::Field(key: "status", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter status : String? = nil

    ENUM_VALIDATOR_FOR_STATUS = EnumValidator.new("status", "String", ["charge_refunded", "lost", "needs_response", "under_review", "warning_closed", "warning_needs_response", "warning_under_review", "won"])

    # Optional properties

    @[JSON::Field(key: "payment_intent", type: Stripe::DisputePaymentIntent?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: payment_intent.nil? && !payment_intent_present?)]
    getter payment_intent : Stripe::DisputePaymentIntent? = nil

    @[JSON::Field(ignore: true)]
    property? payment_intent_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @amount : Int64? = nil,
      @balance_transactions : Array(Stripe::BalanceTransaction)? = nil,
      @charge : Stripe::DisputeCharge? = nil,
      @created : Int64? = nil,
      @currency : String? = nil,
      @evidence : Stripe::DisputeEvidence? = nil,
      @evidence_details : Stripe::DisputeEvidenceDetails? = nil,
      @id : String? = nil,
      @is_charge_refundable : Bool? = nil,
      @livemode : Bool? = nil,
      @metadata : Hash(String, String)? = nil,
      @object : String? = nil,
      @reason : String? = nil,
      @status : String? = nil,
      # Optional properties
      @payment_intent : Stripe::DisputePaymentIntent? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      invalid_properties.push("\"amount\" is required and cannot be null") if @amount.nil?
      invalid_properties.push("\"balance_transactions\" is required and cannot be null") if @balance_transactions.nil?
      # Container balance_transactions array has values of Stripe::BalanceTransaction
      invalid_properties.push("\"charge\" is required and cannot be null") if @charge.nil?
      # This is a model charge : Stripe::DisputeCharge?
      invalid_properties.push("\"created\" is required and cannot be null") if @created.nil?
      invalid_properties.push("\"currency\" is required and cannot be null") if @currency.nil?
      invalid_properties.push("\"evidence\" is required and cannot be null") if @evidence.nil?
      # This is a model evidence : Stripe::DisputeEvidence?
      invalid_properties.push("\"evidence_details\" is required and cannot be null") if @evidence_details.nil?
      # This is a model evidence_details : Stripe::DisputeEvidenceDetails?
      invalid_properties.push("\"id\" is required and cannot be null") if @id.nil?
      if _id = @id
        if _id.to_s.size > 5000
          invalid_properties.push("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
        end
      end
      invalid_properties.push("\"is_charge_refundable\" is required and cannot be null") if @is_charge_refundable.nil?
      invalid_properties.push("\"livemode\" is required and cannot be null") if @livemode.nil?
      invalid_properties.push("\"metadata\" is required and cannot be null") if @metadata.nil?

      invalid_properties.push(ENUM_VALIDATOR_FOR_OBJECT.error_message) unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      invalid_properties.push("\"reason\" is required and cannot be null") if @reason.nil?
      if _reason = @reason
        if _reason.to_s.size > 5000
          invalid_properties.push("invalid value for \"reason\", the character length must be smaller than or equal to 5000.")
        end
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_STATUS.error_message) unless ENUM_VALIDATOR_FOR_STATUS.valid?(@status, false)
      # This is a model payment_intent : Stripe::DisputePaymentIntent?

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @amount.nil?
      return false if @balance_transactions.nil?
      return false if @charge.nil?
      return false if @created.nil?
      return false if @currency.nil?
      return false if @evidence.nil?
      return false if @evidence_details.nil?
      return false if @id.nil?
      if _id = @id
        return false if _id.to_s.size > 5000
      end
      return false if @is_charge_refundable.nil?
      return false if @livemode.nil?
      return false if @metadata.nil?
      return false unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      return false if @reason.nil?
      if _reason = @reason
        return false if _reason.to_s.size > 5000
      end
      return false unless ENUM_VALIDATOR_FOR_STATUS.valid?(@status, false)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount Object to be assigned
    def amount=(amount : Int64?)
      if amount.nil?
        raise ArgumentError.new("\"amount\" is required and cannot be null")
      end
      @amount = amount
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] balance_transactions Object to be assigned
    def balance_transactions=(balance_transactions : Array(Stripe::BalanceTransaction)?)
      if balance_transactions.nil?
        raise ArgumentError.new("\"balance_transactions\" is required and cannot be null")
      end
      @balance_transactions = balance_transactions
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] charge Object to be assigned
    def charge=(charge : Stripe::DisputeCharge?)
      if charge.nil?
        raise ArgumentError.new("\"charge\" is required and cannot be null")
      end
      @charge = charge
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] created Object to be assigned
    def created=(created : Int64?)
      if created.nil?
        raise ArgumentError.new("\"created\" is required and cannot be null")
      end
      @created = created
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] currency Object to be assigned
    def currency=(currency : String?)
      if currency.nil?
        raise ArgumentError.new("\"currency\" is required and cannot be null")
      end
      @currency = currency
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] evidence Object to be assigned
    def evidence=(evidence : Stripe::DisputeEvidence?)
      if evidence.nil?
        raise ArgumentError.new("\"evidence\" is required and cannot be null")
      end
      @evidence = evidence
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] evidence_details Object to be assigned
    def evidence_details=(evidence_details : Stripe::DisputeEvidenceDetails?)
      if evidence_details.nil?
        raise ArgumentError.new("\"evidence_details\" is required and cannot be null")
      end
      @evidence_details = evidence_details
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] id Object to be assigned
    def id=(id : String?)
      if id.nil?
        raise ArgumentError.new("\"id\" is required and cannot be null")
      end
      _id = id.not_nil!
      if _id.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      @id = id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] is_charge_refundable Object to be assigned
    def is_charge_refundable=(is_charge_refundable : Bool?)
      if is_charge_refundable.nil?
        raise ArgumentError.new("\"is_charge_refundable\" is required and cannot be null")
      end
      @is_charge_refundable = is_charge_refundable
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] livemode Object to be assigned
    def livemode=(livemode : Bool?)
      if livemode.nil?
        raise ArgumentError.new("\"livemode\" is required and cannot be null")
      end
      @livemode = livemode
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(metadata : Hash(String, String)?)
      if metadata.nil?
        raise ArgumentError.new("\"metadata\" is required and cannot be null")
      end
      @metadata = metadata
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object : String?)
      if object.nil?
        raise ArgumentError.new("\"object\" is required and cannot be null")
      end
      _object = object.not_nil!
      ENUM_VALIDATOR_FOR_OBJECT.valid!(_object)
      @object = object
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] reason Object to be assigned
    def reason=(reason : String?)
      if reason.nil?
        raise ArgumentError.new("\"reason\" is required and cannot be null")
      end
      _reason = reason.not_nil!
      if _reason.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"reason\", the character length must be smaller than or equal to 5000.")
      end

      @reason = reason
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status : String?)
      if status.nil?
        raise ArgumentError.new("\"status\" is required and cannot be null")
      end
      _status = status.not_nil!
      ENUM_VALIDATOR_FOR_STATUS.valid!(_status)
      @status = status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] payment_intent Object to be assigned
    def payment_intent=(payment_intent : Stripe::DisputePaymentIntent?)
      if payment_intent.nil?
        return @payment_intent = nil
      end
      @payment_intent = payment_intent
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@amount, @balance_transactions, @charge, @created, @currency, @evidence, @evidence_details, @id, @is_charge_refundable, @livemode, @metadata, @object, @reason, @status, @payment_intent, @payment_intent_present)
  end
end
