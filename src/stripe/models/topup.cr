#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2020-08-27
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module Stripe
  # To top up your Stripe balance, you create a top-up object. You can retrieve individual top-ups, as well as list all top-ups. Top-ups are identified by a unique, random ID.  Related guide: [Topping Up your Platform Account](https://stripe.com/docs/connect/top-ups).
  @[JSON::Serializable::Options(emit_nulls: true)]
  class Topup
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # Amount transferred.
    @[JSON::Field(key: "amount", type: Int64)]
    property amount : Int64

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64)]
    property created : Int64

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[JSON::Field(key: "currency", type: String)]
    getter currency : String

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String)]
    getter id : String

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool)]
    property livemode : Bool

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    @[JSON::Field(key: "metadata", type: Hash(String, String))]
    property metadata : Hash(String, String)

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String)]
    getter object : String

    ENUM_VALIDATOR_FOR_OBJECT = EnumValidator.new("object", "String", ["topup"])

    @[JSON::Field(key: "source", type: Source)]
    property source : Source

    # The status of the top-up is either `canceled`, `failed`, `pending`, `reversed`, or `succeeded`.
    @[JSON::Field(key: "status", type: String)]
    getter status : String

    ENUM_VALIDATOR_FOR_STATUS = EnumValidator.new("status", "String", ["canceled", "failed", "pending", "reversed", "succeeded"])

    # Optional properties

    @[JSON::Field(key: "balance_transaction", type: TopupBalanceTransaction?, presence: true, ignore_serialize: balance_transaction.nil? && !balance_transaction_present?)]
    property balance_transaction : TopupBalanceTransaction?

    @[JSON::Field(ignore: true)]
    property? balance_transaction_present : Bool = false

    # An arbitrary string attached to the object. Often useful for displaying to users.
    @[JSON::Field(key: "description", type: String?, presence: true, ignore_serialize: description.nil? && !description_present?)]
    getter description : String?

    @[JSON::Field(ignore: true)]
    property? description_present : Bool = false

    # Date the funds are expected to arrive in your Stripe account for payouts. This factors in delays like weekends or bank holidays. May not be specified depending on status of top-up.
    @[JSON::Field(key: "expected_availability_date", type: Int64?, presence: true, ignore_serialize: expected_availability_date.nil? && !expected_availability_date_present?)]
    property expected_availability_date : Int64?

    @[JSON::Field(ignore: true)]
    property? expected_availability_date_present : Bool = false

    # Error code explaining reason for top-up failure if available (see [the errors section](https://stripe.com/docs/api#errors) for a list of codes).
    @[JSON::Field(key: "failure_code", type: String?, presence: true, ignore_serialize: failure_code.nil? && !failure_code_present?)]
    getter failure_code : String?

    @[JSON::Field(ignore: true)]
    property? failure_code_present : Bool = false

    # Message to user further explaining reason for top-up failure if available.
    @[JSON::Field(key: "failure_message", type: String?, presence: true, ignore_serialize: failure_message.nil? && !failure_message_present?)]
    getter failure_message : String?

    @[JSON::Field(ignore: true)]
    property? failure_message_present : Bool = false

    # Extra information about a top-up. This will appear on your source's bank statement. It must contain at least one letter.
    @[JSON::Field(key: "statement_descriptor", type: String?, presence: true, ignore_serialize: statement_descriptor.nil? && !statement_descriptor_present?)]
    getter statement_descriptor : String?

    @[JSON::Field(ignore: true)]
    property? statement_descriptor_present : Bool = false

    # A string that identifies this top-up as part of a group.
    @[JSON::Field(key: "transfer_group", type: String?, presence: true, ignore_serialize: transfer_group.nil? && !transfer_group_present?)]
    getter transfer_group : String?

    @[JSON::Field(ignore: true)]
    property? transfer_group_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *, 
      # Required properties
      @amount : Int64, 
      @created : Int64, 
      @currency : String, 
      @id : String, 
      @livemode : Bool, 
      @metadata : Hash(String, String), 
      @object : String, 
      @source : Source, 
      @status : String, 
      # Optional properties
      @balance_transaction : TopupBalanceTransaction? = nil, 
      @description : String? = nil, 
      @expected_availability_date : Int64? = nil, 
      @failure_code : String? = nil, 
      @failure_message : String? = nil, 
      @statement_descriptor : String? = nil, 
      @transfer_group : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if @currency.to_s.size > 5000
        invalid_properties.push("invalid value for \"currency\", the character length must be smaller than or equal to 5000.")
      end

      if @id.to_s.size > 5000
        invalid_properties.push("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_OBJECT.error_message) unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)

      invalid_properties.push(ENUM_VALIDATOR_FOR_STATUS.error_message) unless ENUM_VALIDATOR_FOR_STATUS.valid?(@status, false)

      if !@description.nil? && @description.to_s.size > 5000
        invalid_properties.push("invalid value for \"description\", the character length must be smaller than or equal to 5000.")
      end

      if !@failure_code.nil? && @failure_code.to_s.size > 5000
        invalid_properties.push("invalid value for \"failure_code\", the character length must be smaller than or equal to 5000.")
      end

      if !@failure_message.nil? && @failure_message.to_s.size > 5000
        invalid_properties.push("invalid value for \"failure_message\", the character length must be smaller than or equal to 5000.")
      end

      if !@statement_descriptor.nil? && @statement_descriptor.to_s.size > 5000
        invalid_properties.push("invalid value for \"statement_descriptor\", the character length must be smaller than or equal to 5000.")
      end

      if !@transfer_group.nil? && @transfer_group.to_s.size > 5000
        invalid_properties.push("invalid value for \"transfer_group\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @currency.to_s.size > 5000
      return false if @id.to_s.size > 5000
      return false unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      return false unless ENUM_VALIDATOR_FOR_STATUS.valid?(@status, false)
      return false if !@description.nil? && @description.to_s.size > 5000
      return false if !@failure_code.nil? && @failure_code.to_s.size > 5000
      return false if !@failure_message.nil? && @failure_message.to_s.size > 5000
      return false if !@statement_descriptor.nil? && @statement_descriptor.to_s.size > 5000
      return false if !@transfer_group.nil? && @transfer_group.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] currency Value to be assigned
    def currency=(currency)
      if currency.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"currency\", the character length must be smaller than or equal to 5000.")
      end

      @currency = currency
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
      ENUM_VALIDATOR_FOR_OBJECT.valid!(object, false)
      @object = object
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status)
      ENUM_VALIDATOR_FOR_STATUS.valid!(status, false)
      @status = status
    end

    # Custom attribute writer method with validation
    # @param [Object] description Value to be assigned
    def description=(description)
      if !description.nil? && description.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"description\", the character length must be smaller than or equal to 5000.")
      end

      @description = description
    end

    # Custom attribute writer method with validation
    # @param [Object] failure_code Value to be assigned
    def failure_code=(failure_code)
      if !failure_code.nil? && failure_code.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"failure_code\", the character length must be smaller than or equal to 5000.")
      end

      @failure_code = failure_code
    end

    # Custom attribute writer method with validation
    # @param [Object] failure_message Value to be assigned
    def failure_message=(failure_message)
      if !failure_message.nil? && failure_message.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"failure_message\", the character length must be smaller than or equal to 5000.")
      end

      @failure_message = failure_message
    end

    # Custom attribute writer method with validation
    # @param [Object] statement_descriptor Value to be assigned
    def statement_descriptor=(statement_descriptor)
      if !statement_descriptor.nil? && statement_descriptor.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"statement_descriptor\", the character length must be smaller than or equal to 5000.")
      end

      @statement_descriptor = statement_descriptor
    end

    # Custom attribute writer method with validation
    # @param [Object] transfer_group Value to be assigned
    def transfer_group=(transfer_group)
      if !transfer_group.nil? && transfer_group.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"transfer_group\", the character length must be smaller than or equal to 5000.")
      end

      @transfer_group = transfer_group
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
    def_equals_and_hash(@amount, @created, @currency, @id, @livemode, @metadata, @object, @source, @status, @balance_transaction, @description, @expected_availability_date, @failure_code, @failure_message, @statement_descriptor, @transfer_group)
  end
end
