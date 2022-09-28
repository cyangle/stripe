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
  class EmailSent
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    # The timestamp when the email was sent.
    @[JSON::Field(key: "email_sent_at", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter email_sent_at : Int64? = nil

    # The recipient's email address.
    @[JSON::Field(key: "email_sent_to", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter email_sent_to : String? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @email_sent_at : Int64? = nil,
      @email_sent_to : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      invalid_properties.push("\"email_sent_at\" is required and cannot be null") if @email_sent_at.nil?

      invalid_properties.push("\"email_sent_to\" is required and cannot be null") if @email_sent_to.nil?
      if _email_sent_to = @email_sent_to
        if _email_sent_to.to_s.size > 5000
          invalid_properties.push("invalid value for \"email_sent_to\", the character length must be smaller than or equal to 5000.")
        end
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @email_sent_at.nil?

      return false if @email_sent_to.nil?
      if _email_sent_to = @email_sent_to
        return false if _email_sent_to.to_s.size > 5000
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] email_sent_at Object to be assigned
    def email_sent_at=(email_sent_at : Int64?)
      if email_sent_at.nil?
        raise ArgumentError.new("\"email_sent_at\" is required and cannot be null")
      end
      _email_sent_at = email_sent_at.not_nil!
      @email_sent_at = _email_sent_at
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] email_sent_to Object to be assigned
    def email_sent_to=(email_sent_to : String?)
      if email_sent_to.nil?
        raise ArgumentError.new("\"email_sent_to\" is required and cannot be null")
      end
      _email_sent_to = email_sent_to.not_nil!
      if _email_sent_to.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"email_sent_to\", the character length must be smaller than or equal to 5000.")
      end

      @email_sent_to = _email_sent_to
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@email_sent_at, @email_sent_to)
  end
end
