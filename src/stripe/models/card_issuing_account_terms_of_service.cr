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
  class CardIssuingAccountTermsOfService
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional properties

    # The Unix timestamp marking when the account representative accepted the service agreement.
    @[JSON::Field(key: "date", type: Int64?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: date.nil? && !date_present?)]
    getter date : Int64? = nil

    @[JSON::Field(ignore: true)]
    property? date_present : Bool = false

    # The IP address from which the account representative accepted the service agreement.
    @[JSON::Field(key: "ip", type: String?, default: nil, required: false, nullable: true, emit_null: true, presence: true, ignore_serialize: ip.nil? && !ip_present?)]
    getter ip : String? = nil

    @[JSON::Field(ignore: true)]
    property? ip_present : Bool = false

    # The user agent of the browser from which the account representative accepted the service agreement.
    @[JSON::Field(key: "user_agent", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter user_agent : String? = nil

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
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      if _ip = @ip
        if _ip.to_s.size > 5000
          invalid_properties.push("invalid value for \"ip\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _user_agent = @user_agent
        if _user_agent.to_s.size > 5000
          invalid_properties.push("invalid value for \"user_agent\", the character length must be smaller than or equal to 5000.")
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      if _ip = @ip
        return false if _ip.to_s.size > 5000
      end
      if _user_agent = @user_agent
        return false if _user_agent.to_s.size > 5000
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] date Object to be assigned
    def date=(date : Int64?)
      if date.nil?
        return @date = nil
      end
      _date = date.not_nil!
      @date = _date
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] ip Object to be assigned
    def ip=(ip : String?)
      if ip.nil?
        return @ip = nil
      end
      _ip = ip.not_nil!
      if _ip.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"ip\", the character length must be smaller than or equal to 5000.")
      end

      @ip = _ip
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] user_agent Object to be assigned
    def user_agent=(user_agent : String?)
      if user_agent.nil?
        return @user_agent = nil
      end
      _user_agent = user_agent.not_nil!
      if _user_agent.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"user_agent\", the character length must be smaller than or equal to 5000.")
      end

      @user_agent = _user_agent
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@date, @date_present, @ip, @ip_present, @user_agent)
  end
end
