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
  #
  class TreasuryOutboundPaymentsResourceOutboundPaymentResourceEndUserDetails
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    # `true`` if the OutboundPayment creation request is being made on behalf of an end user by a platform. Otherwise, `false`.
    @[JSON::Field(key: "present", type: Bool?, default: nil, required: true, nullable: false, emit_null: false)]
    getter present : Bool? = nil

    # Optional properties

    # IP address of the user initiating the OutboundPayment. Set if `present` is set to `true`. IP address collection is required for risk and compliance reasons. This will be used to help determine if the OutboundPayment is authorized or should be blocked.
    @[JSON::Field(key: "ip_address", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: ip_address.nil? && !ip_address_present?)]
    getter ip_address : String? = nil
    MAX_LENGTH_FOR_IP_ADDRESS = 5000

    @[JSON::Field(ignore: true)]
    property? ip_address_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @present : Bool? = nil,
      # Optional properties
      @ip_address : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      invalid_properties.push("\"present\" is required and cannot be null") if @present.nil?

      if _ip_address = @ip_address
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("ip_address", _ip_address.to_s.size, MAX_LENGTH_FOR_IP_ADDRESS)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @present.nil?

      if _ip_address = @ip_address
        return false if _ip_address.to_s.size > MAX_LENGTH_FOR_IP_ADDRESS
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] present Object to be assigned
    def present=(present : Bool?)
      if present.nil?
        raise ArgumentError.new("\"present\" is required and cannot be null")
      end
      _present = present.not_nil!
      @present = _present
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] ip_address Object to be assigned
    def ip_address=(ip_address : String?)
      if ip_address.nil?
        return @ip_address = nil
      end
      _ip_address = ip_address.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("ip_address", _ip_address.to_s.size, MAX_LENGTH_FOR_IP_ADDRESS)
      @ip_address = _ip_address
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@present, @ip_address, @ip_address_present)
  end
end
