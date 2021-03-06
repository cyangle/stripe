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
  # When a non-stripe BIN is used, any use of an [issued card](https://stripe.com/docs/issuing) must be settled directly with the card network. The net amount owed is represented by an Issuing `Settlement` object.
  @[JSON::Serializable::Options(emit_nulls: true)]
  class IssuingSettlement
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # The Bank Identification Number reflecting this settlement record.
    @[JSON::Field(key: "bin", type: String)]
    getter bin : String

    # The date that the transactions are cleared and posted to user's accounts.
    @[JSON::Field(key: "clearing_date", type: Int64)]
    property clearing_date : Int64

    # Time at which the object was created. Measured in seconds since the Unix epoch.
    @[JSON::Field(key: "created", type: Int64)]
    property created : Int64

    # Three-letter [ISO currency code](https://www.iso.org/iso-4217-currency-codes.html), in lowercase. Must be a [supported currency](https://stripe.com/docs/currencies).
    @[JSON::Field(key: "currency", type: String)]
    property currency : String

    # Unique identifier for the object.
    @[JSON::Field(key: "id", type: String)]
    getter id : String

    # The total interchange received as reimbursement for the transactions.
    @[JSON::Field(key: "interchange_fees", type: Int64)]
    property interchange_fees : Int64

    # Has the value `true` if the object exists in live mode or the value `false` if the object exists in test mode.
    @[JSON::Field(key: "livemode", type: Bool)]
    property livemode : Bool

    # Set of [key-value pairs](https://stripe.com/docs/api/metadata) that you can attach to an object. This can be useful for storing additional information about the object in a structured format.
    @[JSON::Field(key: "metadata", type: Hash(String, String))]
    property metadata : Hash(String, String)

    # The total net amount required to settle with the network.
    @[JSON::Field(key: "net_total", type: Int64)]
    property net_total : Int64

    # The card network for this settlement report. One of [\"visa\"]
    @[JSON::Field(key: "network", type: String)]
    getter network : String

    ENUM_VALIDATOR_FOR_NETWORK = EnumValidator.new("network", "String", ["visa"])

    # The total amount of fees owed to the network.
    @[JSON::Field(key: "network_fees", type: Int64)]
    property network_fees : Int64

    # The Settlement Identification Number assigned by the network.
    @[JSON::Field(key: "network_settlement_identifier", type: String)]
    getter network_settlement_identifier : String

    # String representing the object's type. Objects of the same type share the same value.
    @[JSON::Field(key: "object", type: String)]
    getter object : String

    ENUM_VALIDATOR_FOR_OBJECT = EnumValidator.new("object", "String", ["issuing.settlement"])

    # One of `international` or `uk_national_net`.
    @[JSON::Field(key: "settlement_service", type: String)]
    getter settlement_service : String

    # The total number of transactions reflected in this settlement.
    @[JSON::Field(key: "transaction_count", type: Int64)]
    property transaction_count : Int64

    # The total transaction amount reflected in this settlement.
    @[JSON::Field(key: "transaction_volume", type: Int64)]
    property transaction_volume : Int64

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @bin : String,
      @clearing_date : Int64,
      @created : Int64,
      @currency : String,
      @id : String,
      @interchange_fees : Int64,
      @livemode : Bool,
      @metadata : Hash(String, String),
      @net_total : Int64,
      @network : String,
      @network_fees : Int64,
      @network_settlement_identifier : String,
      @object : String,
      @settlement_service : String,
      @transaction_count : Int64,
      @transaction_volume : Int64
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if @bin.to_s.size > 5000
        invalid_properties.push("invalid value for \"bin\", the character length must be smaller than or equal to 5000.")
      end

      if @id.to_s.size > 5000
        invalid_properties.push("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_NETWORK.error_message) unless ENUM_VALIDATOR_FOR_NETWORK.valid?(@network, false)

      if @network_settlement_identifier.to_s.size > 5000
        invalid_properties.push("invalid value for \"network_settlement_identifier\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_OBJECT.error_message) unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)

      if @settlement_service.to_s.size > 5000
        invalid_properties.push("invalid value for \"settlement_service\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @bin.to_s.size > 5000
      return false if @id.to_s.size > 5000
      return false unless ENUM_VALIDATOR_FOR_NETWORK.valid?(@network, false)
      return false if @network_settlement_identifier.to_s.size > 5000
      return false unless ENUM_VALIDATOR_FOR_OBJECT.valid?(@object, false)
      return false if @settlement_service.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] bin Value to be assigned
    def bin=(bin : String)
      if bin.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"bin\", the character length must be smaller than or equal to 5000.")
      end

      @bin = bin
    end

    # Custom attribute writer method with validation
    # @param [Object] id Value to be assigned
    def id=(id : String)
      if id.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      @id = id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] network Object to be assigned
    def network=(network : String)
      ENUM_VALIDATOR_FOR_NETWORK.valid!(network, false)
      @network = network
    end

    # Custom attribute writer method with validation
    # @param [Object] network_settlement_identifier Value to be assigned
    def network_settlement_identifier=(network_settlement_identifier : String)
      if network_settlement_identifier.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"network_settlement_identifier\", the character length must be smaller than or equal to 5000.")
      end

      @network_settlement_identifier = network_settlement_identifier
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] object Object to be assigned
    def object=(object : String)
      ENUM_VALIDATOR_FOR_OBJECT.valid!(object, false)
      @object = object
    end

    # Custom attribute writer method with validation
    # @param [Object] settlement_service Value to be assigned
    def settlement_service=(settlement_service : String)
      if settlement_service.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"settlement_service\", the character length must be smaller than or equal to 5000.")
      end

      @settlement_service = settlement_service
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
    def_equals_and_hash(@bin, @clearing_date, @created, @currency, @id, @interchange_fees, @livemode, @metadata, @net_total, @network, @network_fees, @network_settlement_identifier, @object, @settlement_service, @transaction_count, @transaction_volume)
  end
end
