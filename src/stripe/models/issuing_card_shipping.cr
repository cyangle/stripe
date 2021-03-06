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
  #
  @[JSON::Serializable::Options(emit_nulls: true)]
  class IssuingCardShipping
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    @[JSON::Field(key: "address", type: Address)]
    property address : Address

    # Recipient name.
    @[JSON::Field(key: "name", type: String)]
    getter name : String

    # Shipment service, such as `standard` or `express`.
    @[JSON::Field(key: "service", type: String)]
    getter service : String

    ENUM_VALIDATOR_FOR_SERVICE = EnumValidator.new("service", "String", ["express", "priority", "standard"])

    # Packaging options.
    @[JSON::Field(key: "type", type: String)]
    getter _type : String

    ENUM_VALIDATOR_FOR__TYPE = EnumValidator.new("_type", "String", ["bulk", "individual"])

    # Optional properties

    # The delivery company that shipped a card.
    @[JSON::Field(key: "carrier", type: String?, presence: true, ignore_serialize: carrier.nil? && !carrier_present?)]
    getter carrier : String?

    @[JSON::Field(ignore: true)]
    property? carrier_present : Bool = false

    ENUM_VALIDATOR_FOR_CARRIER = EnumValidator.new("carrier", "String", ["dhl", "fedex", "royal_mail", "usps"])

    # A unix timestamp representing a best estimate of when the card will be delivered.
    @[JSON::Field(key: "eta", type: Int64?, presence: true, ignore_serialize: eta.nil? && !eta_present?)]
    property eta : Int64?

    @[JSON::Field(ignore: true)]
    property? eta_present : Bool = false

    # The delivery status of the card.
    @[JSON::Field(key: "status", type: String?, presence: true, ignore_serialize: status.nil? && !status_present?)]
    getter status : String?

    @[JSON::Field(ignore: true)]
    property? status_present : Bool = false

    ENUM_VALIDATOR_FOR_STATUS = EnumValidator.new("status", "String", ["canceled", "delivered", "failure", "pending", "returned", "shipped"])

    # A tracking number for a card shipment.
    @[JSON::Field(key: "tracking_number", type: String?, presence: true, ignore_serialize: tracking_number.nil? && !tracking_number_present?)]
    getter tracking_number : String?

    @[JSON::Field(ignore: true)]
    property? tracking_number_present : Bool = false

    # A link to the shipping carrier's site where you can view detailed information about a card shipment.
    @[JSON::Field(key: "tracking_url", type: String?, presence: true, ignore_serialize: tracking_url.nil? && !tracking_url_present?)]
    getter tracking_url : String?

    @[JSON::Field(ignore: true)]
    property? tracking_url_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @address : Address,
      @name : String,
      @service : String,
      @_type : String,
      # Optional properties
      @carrier : String? = nil,
      @eta : Int64? = nil,
      @status : String? = nil,
      @tracking_number : String? = nil,
      @tracking_url : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if @name.to_s.size > 5000
        invalid_properties.push("invalid value for \"name\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties.push(ENUM_VALIDATOR_FOR_SERVICE.error_message) unless ENUM_VALIDATOR_FOR_SERVICE.valid?(@service, false)

      invalid_properties.push(ENUM_VALIDATOR_FOR__TYPE.error_message) unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type, false)

      invalid_properties.push(ENUM_VALIDATOR_FOR_CARRIER.error_message) unless ENUM_VALIDATOR_FOR_CARRIER.valid?(@carrier)

      invalid_properties.push(ENUM_VALIDATOR_FOR_STATUS.error_message) unless ENUM_VALIDATOR_FOR_STATUS.valid?(@status)

      if !@tracking_number.nil? && @tracking_number.to_s.size > 5000
        invalid_properties.push("invalid value for \"tracking_number\", the character length must be smaller than or equal to 5000.")
      end

      if !@tracking_url.nil? && @tracking_url.to_s.size > 5000
        invalid_properties.push("invalid value for \"tracking_url\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @name.to_s.size > 5000
      return false unless ENUM_VALIDATOR_FOR_SERVICE.valid?(@service, false)
      return false unless ENUM_VALIDATOR_FOR__TYPE.valid?(@_type, false)
      return false unless ENUM_VALIDATOR_FOR_CARRIER.valid?(@carrier)
      return false unless ENUM_VALIDATOR_FOR_STATUS.valid?(@status)
      return false if !@tracking_number.nil? && @tracking_number.to_s.size > 5000
      return false if !@tracking_url.nil? && @tracking_url.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] name Value to be assigned
    def name=(name : String)
      if name.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"name\", the character length must be smaller than or equal to 5000.")
      end

      @name = name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] service Object to be assigned
    def service=(service : String)
      ENUM_VALIDATOR_FOR_SERVICE.valid!(service, false)
      @service = service
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] _type Object to be assigned
    def _type=(_type : String)
      ENUM_VALIDATOR_FOR__TYPE.valid!(_type, false)
      @_type = _type
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] carrier Object to be assigned
    def carrier=(carrier : String?)
      ENUM_VALIDATOR_FOR_CARRIER.valid!(carrier)
      @carrier = carrier
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] status Object to be assigned
    def status=(status : String?)
      ENUM_VALIDATOR_FOR_STATUS.valid!(status)
      @status = status
    end

    # Custom attribute writer method with validation
    # @param [Object] tracking_number Value to be assigned
    def tracking_number=(tracking_number : String?)
      if !tracking_number.nil? && tracking_number.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"tracking_number\", the character length must be smaller than or equal to 5000.")
      end

      @tracking_number = tracking_number
    end

    # Custom attribute writer method with validation
    # @param [Object] tracking_url Value to be assigned
    def tracking_url=(tracking_url : String?)
      if !tracking_url.nil? && tracking_url.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"tracking_url\", the character length must be smaller than or equal to 5000.")
      end

      @tracking_url = tracking_url
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
    def_equals_and_hash(@address, @name, @service, @_type, @carrier, @carrier_present, @eta, @eta_present, @status, @status_present, @tracking_number, @tracking_number_present, @tracking_url, @tracking_url_present)
  end
end
