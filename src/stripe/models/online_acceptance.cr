#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2022-11-15
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "json"
require "time"
require "log"

module Stripe
  #
  class OnlineAcceptance
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # The IP address from which the Mandate was accepted by the customer.
    @[JSON::Field(key: "ip_address", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: ip_address.nil? && !ip_address_present?)]
    getter ip_address : String? = nil
    MAX_LENGTH_FOR_IP_ADDRESS = 5000

    @[JSON::Field(ignore: true)]
    property? ip_address_present : Bool = false

    # The user agent of the browser from which the Mandate was accepted by the customer.
    @[JSON::Field(key: "user_agent", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: user_agent.nil? && !user_agent_present?)]
    getter user_agent : String? = nil
    MAX_LENGTH_FOR_USER_AGENT = 5000

    @[JSON::Field(ignore: true)]
    property? user_agent_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @ip_address : String? = nil,
      @user_agent : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_ip_address = @ip_address).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("ip_address", _ip_address.to_s.size, MAX_LENGTH_FOR_IP_ADDRESS)
          invalid_properties.push(max_length_error)
        end
      end
      unless (_user_agent = @user_agent).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("user_agent", _user_agent.to_s.size, MAX_LENGTH_FOR_USER_AGENT)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_ip_address = @ip_address).nil?
        return false if _ip_address.to_s.size > MAX_LENGTH_FOR_IP_ADDRESS
      end

      unless (_user_agent = @user_agent).nil?
        return false if _user_agent.to_s.size > MAX_LENGTH_FOR_USER_AGENT
      end

      true
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

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] user_agent Object to be assigned
    def user_agent=(user_agent : String?)
      if user_agent.nil?
        return @user_agent = nil
      end
      _user_agent = user_agent.not_nil!
      OpenApi::PrimitiveValidator.validate_max_length("user_agent", _user_agent.to_s.size, MAX_LENGTH_FOR_USER_AGENT)
      @user_agent = _user_agent
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@ip_address, @ip_address_present, @user_agent, @user_agent_present)
  end
end
