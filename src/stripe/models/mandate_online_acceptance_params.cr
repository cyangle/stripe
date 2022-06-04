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
  @[JSON::Serializable::Options(emit_nulls: true)]
  class MandateOnlineAcceptanceParams
    include JSON::Serializable
    include JSON::Serializable::Unmapped


    # Optional properties

    @[JSON::Field(key: "date", type: Int64?, presence: true, ignore_serialize: date.nil? && !date_present?)]
    property date : Int64?

    @[JSON::Field(ignore: true)]
    property? date_present : Bool = false

    @[JSON::Field(key: "ip", type: String?, presence: true, ignore_serialize: ip.nil? && !ip_present?)]
    property ip : String?

    @[JSON::Field(ignore: true)]
    property? ip_present : Bool = false

    @[JSON::Field(key: "user_agent", type: String?, presence: true, ignore_serialize: user_agent.nil? && !user_agent_present?)]
    getter user_agent : String?

    @[JSON::Field(ignore: true)]
    property? user_agent_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *, 
      # Optional properties
      @date : Int64? = nil, 
      @ip : String? = nil, 
      @user_agent : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if !@user_agent.nil? && @user_agent.to_s.size > 5000
        invalid_properties.push("invalid value for \"user_agent\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@user_agent.nil? && @user_agent.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] user_agent Value to be assigned
    def user_agent=(user_agent)
      if !user_agent.nil? && user_agent.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"user_agent\", the character length must be smaller than or equal to 5000.")
      end

      @user_agent = user_agent
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
    def_equals_and_hash(@date, @ip, @user_agent)
  end
end
