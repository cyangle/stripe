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
  class CountrySpecVerificationFields
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Required properties

    @[JSON::Field(key: "company", type: Stripe::CountrySpecVerificationFieldDetails?, default: nil, required: true, nullable: false, emit_null: false)]
    getter company : Stripe::CountrySpecVerificationFieldDetails? = nil

    @[JSON::Field(key: "individual", type: Stripe::CountrySpecVerificationFieldDetails?, default: nil, required: true, nullable: false, emit_null: false)]
    getter individual : Stripe::CountrySpecVerificationFieldDetails? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @company : Stripe::CountrySpecVerificationFieldDetails? = nil,
      @individual : Stripe::CountrySpecVerificationFieldDetails? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      invalid_properties.push("\"company\" is required and cannot be null") if @company.nil?
      # This is a model company : Stripe::CountrySpecVerificationFieldDetails?
      invalid_properties.push("\"individual\" is required and cannot be null") if @individual.nil?
      # This is a model individual : Stripe::CountrySpecVerificationFieldDetails?

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @company.nil?
      return false if @individual.nil?

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] company Object to be assigned
    def company=(company : Stripe::CountrySpecVerificationFieldDetails?)
      if company.nil?
        raise ArgumentError.new("\"company\" is required and cannot be null")
      end
      @company = company
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] individual Object to be assigned
    def individual=(individual : Stripe::CountrySpecVerificationFieldDetails?)
      if individual.nil?
        raise ArgumentError.new("\"individual\" is required and cannot be null")
      end
      @individual = individual
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
    def_equals_and_hash(@company, @individual)
  end
end
