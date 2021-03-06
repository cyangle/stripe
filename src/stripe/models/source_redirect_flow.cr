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
  class SourceRedirectFlow
    include JSON::Serializable
    include JSON::Serializable::Unmapped

    # Required properties

    # The URL you provide to redirect the customer to after they authenticated their payment.
    @[JSON::Field(key: "return_url", type: String)]
    getter return_url : String

    # The status of the redirect, either `pending` (ready to be used by your customer to authenticate the transaction), `succeeded` (succesful authentication, cannot be reused) or `not_required` (redirect should not be used) or `failed` (failed authentication, cannot be reused).
    @[JSON::Field(key: "status", type: String)]
    getter status : String

    # The URL provided to you to redirect a customer to as part of a `redirect` authentication flow.
    @[JSON::Field(key: "url", type: String)]
    getter url : String

    # Optional properties

    # The failure reason for the redirect, either `user_abort` (the customer aborted or dropped out of the redirect flow), `declined` (the authentication failed or the transaction was declined), or `processing_error` (the redirect failed due to a technical error). Present only if the redirect status is `failed`.
    @[JSON::Field(key: "failure_reason", type: String?, presence: true, ignore_serialize: failure_reason.nil? && !failure_reason_present?)]
    getter failure_reason : String?

    @[JSON::Field(ignore: true)]
    property? failure_reason_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @return_url : String,
      @status : String,
      @url : String,
      # Optional properties
      @failure_reason : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if @return_url.to_s.size > 5000
        invalid_properties.push("invalid value for \"return_url\", the character length must be smaller than or equal to 5000.")
      end

      if @status.to_s.size > 5000
        invalid_properties.push("invalid value for \"status\", the character length must be smaller than or equal to 5000.")
      end

      if @url.to_s.size > 2048
        invalid_properties.push("invalid value for \"url\", the character length must be smaller than or equal to 2048.")
      end

      if !@failure_reason.nil? && @failure_reason.to_s.size > 5000
        invalid_properties.push("invalid value for \"failure_reason\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @return_url.to_s.size > 5000
      return false if @status.to_s.size > 5000
      return false if @url.to_s.size > 2048
      return false if !@failure_reason.nil? && @failure_reason.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] return_url Value to be assigned
    def return_url=(return_url : String)
      if return_url.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"return_url\", the character length must be smaller than or equal to 5000.")
      end

      @return_url = return_url
    end

    # Custom attribute writer method with validation
    # @param [Object] status Value to be assigned
    def status=(status : String)
      if status.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"status\", the character length must be smaller than or equal to 5000.")
      end

      @status = status
    end

    # Custom attribute writer method with validation
    # @param [Object] url Value to be assigned
    def url=(url : String)
      if url.to_s.size > 2048
        raise ArgumentError.new("invalid value for \"url\", the character length must be smaller than or equal to 2048.")
      end

      @url = url
    end

    # Custom attribute writer method with validation
    # @param [Object] failure_reason Value to be assigned
    def failure_reason=(failure_reason : String?)
      if !failure_reason.nil? && failure_reason.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"failure_reason\", the character length must be smaller than or equal to 5000.")
      end

      @failure_reason = failure_reason
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
    def_equals_and_hash(@return_url, @status, @url, @failure_reason, @failure_reason_present)
  end
end
