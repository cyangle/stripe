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
  # Some payment methods have no required amount that a customer must send. Customers can be instructed to send any amount, and it can be made up of multiple transactions. As such, sources can have multiple associated transactions.
  class SourceTransaction
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Required properties

    # A positive integer in the smallest currency unit (that is, 100 cents for $1.00, or 1 for ¥1, Japanese Yen being a zero-decimal currency) representing the amount your customer has pushed to the receiver.
    @[JSON::Field(key: "amount", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter amount : Int64? = nil

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter created : Int64? = nil

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[JSON::Field(key: "currency", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter currency : String? = nil

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter livemode : Bool? = nil

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter object : String? = nil

    ENUM_VALIDATOR_FOR_OBJECT = EnumValidator.new("object", "String", ["source_transaction"])

    # The ID of the source this transaction is attached to.
    @[JSON::Field(key: "source", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter source : String? = nil

    # The status of the transaction, one of `succeeded`, `pending`, or `failed`.
    @[JSON::Field(key: "status", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter status : String? = nil

    # The type of source this transaction is attached to.
    @[JSON::Field(key: "type", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter _type : String? = nil

    ENUM_VALIDATOR_FOR__TYPE = EnumValidator.new("_type", "String", ["ach_credit_transfer", "ach_debit", "alipay", "bancontact", "card", "card_present", "eps", "giropay", "ideal", "klarna", "multibanco", "p24", "sepa_debit", "sofort", "three_d_secure", "wechat"])

    # Optional properties

    @[JSON::Field(key: "ach_credit_transfer", type: Stripe::SourceTransactionAchCreditTransferData?, default: nil, required: false, nullable: false, emit_null: false)]
    getter ach_credit_transfer : Stripe::SourceTransactionAchCreditTransferData? = nil

    @[JSON::Field(key: "chf_credit_transfer", type: Stripe::SourceTransactionChfCreditTransferData?, default: nil, required: false, nullable: false, emit_null: false)]
    getter chf_credit_transfer : Stripe::SourceTransactionChfCreditTransferData? = nil

    @[JSON::Field(key: "gbp_credit_transfer", type: Stripe::SourceTransactionGbpCreditTransferData?, default: nil, required: false, nullable: false, emit_null: false)]
    getter gbp_credit_transfer : Stripe::SourceTransactionGbpCreditTransferData? = nil

    @[JSON::Field(key: "paper_check", type: Stripe::SourceTransactionPaperCheckData?, default: nil, required: false, nullable: false, emit_null: false)]
    getter paper_check : Stripe::SourceTransactionPaperCheckData? = nil

    @[JSON::Field(key: "sepa_credit_transfer", type: Stripe::SourceTransactionSepaCreditTransferData?, default: nil, required: false, nullable: false, emit_null: false)]
    getter sepa_credit_transfer : Stripe::SourceTransactionSepaCreditTransferData? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @amount : Int64? = nil,
      @created : Int64? = nil,
      @currency : String? = nil,
      @id : String? = nil,
      @livemode : Bool? = nil,
      @object : String? = nil,
      @source : String? = nil,
      @status : String? = nil,
      @_type : String? = nil,
      # Optional properties
      @ach_credit_transfer : Stripe::SourceTransactionAchCreditTransferData? = nil,
      @chf_credit_transfer : Stripe::SourceTransactionChfCreditTransferData? = nil,
      @gbp_credit_transfer : Stripe::SourceTransactionGbpCreditTransferData? = nil,
      @paper_check : Stripe::SourceTransactionPaperCheckData? = nil,
      @sepa_credit_transfer : Stripe::SourceTransactionSepaCreditTransferData? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      invalid_properties.push("\"amount\" is required and cannot be null") if @amount.nil?
      invalid_properties.push("\"created\" is required and cannot be null") if @created.nil?
      invalid_properties.push("\"currency\" is required and cannot be null") if @currency.nil?
      invalid_properties.push("\"id\" is required and cannot be null") if @id.nil?
      if _id = @id
        if _id.to_s.size > 5000
          invalid_properties.push("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
        end
      end
      invalid_properties.push("\"livemode\" is required and cannot be null") if @livemode.nil?

      invalid_properties.push(ENUM_VALIDATOR_FOR_OBJECT.error_message) unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      invalid_properties.push("\"source\" is required and cannot be null") if @source.nil?
      if _source = @source
        if _source.to_s.size > 5000
          invalid_properties.push("invalid value for \"source\", the character length must be smaller than or equal to 5000.")
        end
      end
      invalid_properties.push("\"status\" is required and cannot be null") if @status.nil?
      if _status = @status
        if _status.to_s.size > 5000
          invalid_properties.push("invalid value for \"status\", the character length must be smaller than or equal to 5000.")
        end
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR__TYPE.error_message) unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type, false)
      # This is a model ach_credit_transfer : Stripe::SourceTransactionAchCreditTransferData?
      # This is a model chf_credit_transfer : Stripe::SourceTransactionChfCreditTransferData?
      # This is a model gbp_credit_transfer : Stripe::SourceTransactionGbpCreditTransferData?
      # This is a model paper_check : Stripe::SourceTransactionPaperCheckData?
      # This is a model sepa_credit_transfer : Stripe::SourceTransactionSepaCreditTransferData?

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @amount.nil?
      return false if @created.nil?
      return false if @currency.nil?
      return false if @id.nil?
      if _id = @id
        return false if _id.to_s.size > 5000
      end
      return false if @livemode.nil?
      return false unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      return false if @source.nil?
      if _source = @source
        return false if _source.to_s.size > 5000
      end
      return false if @status.nil?
      if _status = @status
        return false if _status.to_s.size > 5000
      end
      return false unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type, false)

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
    # @param [Object] livemode Object to be assigned
    def livemode=(livemode : Bool?)
      if livemode.nil?
        raise ArgumentError.new("\"livemode\" is required and cannot be null")
      end
      @livemode = livemode
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
    # @param [Object] source Object to be assigned
    def source=(source : String?)
      if source.nil?
        raise ArgumentError.new("\"source\" is required and cannot be null")
      end
      _source = source.not_nil!
      if _source.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"source\", the character length must be smaller than or equal to 5000.")
      end

      @source = source
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status : String?)
      if status.nil?
        raise ArgumentError.new("\"status\" is required and cannot be null")
      end
      _status = status.not_nil!
      if _status.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"status\", the character length must be smaller than or equal to 5000.")
      end

      @status = status
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(_type : String?)
      if _type.nil?
        raise ArgumentError.new("\"_type\" is required and cannot be null")
      end
      __type = _type.not_nil!
      ENUM_VALIDATOR_FOR__TYPE.valid!(__type)
      @_type = _type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] ach_credit_transfer Object to be assigned
    def ach_credit_transfer=(ach_credit_transfer : Stripe::SourceTransactionAchCreditTransferData?)
      if ach_credit_transfer.nil?
        return @ach_credit_transfer = nil
      end
      @ach_credit_transfer = ach_credit_transfer
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] chf_credit_transfer Object to be assigned
    def chf_credit_transfer=(chf_credit_transfer : Stripe::SourceTransactionChfCreditTransferData?)
      if chf_credit_transfer.nil?
        return @chf_credit_transfer = nil
      end
      @chf_credit_transfer = chf_credit_transfer
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] gbp_credit_transfer Object to be assigned
    def gbp_credit_transfer=(gbp_credit_transfer : Stripe::SourceTransactionGbpCreditTransferData?)
      if gbp_credit_transfer.nil?
        return @gbp_credit_transfer = nil
      end
      @gbp_credit_transfer = gbp_credit_transfer
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] paper_check Object to be assigned
    def paper_check=(paper_check : Stripe::SourceTransactionPaperCheckData?)
      if paper_check.nil?
        return @paper_check = nil
      end
      @paper_check = paper_check
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] sepa_credit_transfer Object to be assigned
    def sepa_credit_transfer=(sepa_credit_transfer : Stripe::SourceTransactionSepaCreditTransferData?)
      if sepa_credit_transfer.nil?
        return @sepa_credit_transfer = nil
      end
      @sepa_credit_transfer = sepa_credit_transfer
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
    def_equals_and_hash(@amount, @created, @currency, @id, @livemode, @object, @source, @status, @_type, @ach_credit_transfer, @chf_credit_transfer, @gbp_credit_transfer, @paper_check, @sepa_credit_transfer)
  end
end
