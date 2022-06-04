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
  class RelationshipSpecs1
    include JSON::Serializable
    include JSON::Serializable::Unmapped


    # Optional properties

    @[JSON::Field(key: "director", type: Bool?, presence: true, ignore_serialize: director.nil? && !director_present?)]
    property director : Bool?

    @[JSON::Field(ignore: true)]
    property? director_present : Bool = false

    @[JSON::Field(key: "executive", type: Bool?, presence: true, ignore_serialize: executive.nil? && !executive_present?)]
    property executive : Bool?

    @[JSON::Field(ignore: true)]
    property? executive_present : Bool = false

    @[JSON::Field(key: "owner", type: Bool?, presence: true, ignore_serialize: owner.nil? && !owner_present?)]
    property owner : Bool?

    @[JSON::Field(ignore: true)]
    property? owner_present : Bool = false

    @[JSON::Field(key: "percent_ownership", type: RelationshipSpecsPercentOwnership?, presence: true, ignore_serialize: percent_ownership.nil? && !percent_ownership_present?)]
    property percent_ownership : RelationshipSpecsPercentOwnership?

    @[JSON::Field(ignore: true)]
    property? percent_ownership_present : Bool = false

    @[JSON::Field(key: "representative", type: Bool?, presence: true, ignore_serialize: representative.nil? && !representative_present?)]
    property representative : Bool?

    @[JSON::Field(ignore: true)]
    property? representative_present : Bool = false

    @[JSON::Field(key: "title", type: String?, presence: true, ignore_serialize: title.nil? && !title_present?)]
    getter title : String?

    @[JSON::Field(ignore: true)]
    property? title_present : Bool = false

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *, 
      # Optional properties
      @director : Bool? = nil, 
      @executive : Bool? = nil, 
      @owner : Bool? = nil, 
      @percent_ownership : RelationshipSpecsPercentOwnership? = nil, 
      @representative : Bool? = nil, 
      @title : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new

      if !@title.nil? && @title.to_s.size > 5000
        invalid_properties.push("invalid value for \"title\", the character length must be smaller than or equal to 5000.")
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if !@title.nil? && @title.to_s.size > 5000

      true
    end

    # Custom attribute writer method with validation
    # @param [Object] title Value to be assigned
    def title=(title)
      if !title.nil? && title.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"title\", the character length must be smaller than or equal to 5000.")
      end

      @title = title
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
    def_equals_and_hash(@director, @executive, @owner, @percent_ownership, @representative, @title)
  end
end
