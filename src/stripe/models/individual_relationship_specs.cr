#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "./individual_relationship_specs_percent_ownership"

module Stripe
  class IndividualRelationshipSpecs
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Optional Properties

    # Whether the person is a director of the account's legal entity. Directors are typically members of the governing board of the company, or responsible for ensuring the company meets its regulatory obligations.
    @[JSON::Field(key: "director", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter director : Bool? = nil

    # Whether the person has significant responsibility to control, manage, or direct the organization.
    @[JSON::Field(key: "executive", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter executive : Bool? = nil

    # Whether the person is an owner of the account’s legal entity.
    @[JSON::Field(key: "owner", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter owner : Bool? = nil

    @[JSON::Field(key: "percent_ownership", type: Stripe::IndividualRelationshipSpecsPercentOwnership?, default: nil, required: false, nullable: false, emit_null: false)]
    getter percent_ownership : Stripe::IndividualRelationshipSpecsPercentOwnership? = nil

    # The person's title (e.g., CEO, Support Engineer).
    @[JSON::Field(key: "title", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter title : String? = nil
    MAX_LENGTH_FOR_TITLE = 5000

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Optional properties
      @director : Bool? = nil,
      @executive : Bool? = nil,
      @owner : Bool? = nil,
      @percent_ownership : Stripe::IndividualRelationshipSpecsPercentOwnership? = nil,
      @title : String? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new

      unless (_percent_ownership = @percent_ownership).nil?
        invalid_properties.concat(_percent_ownership.list_invalid_properties_for("percent_ownership")) if _percent_ownership.is_a?(OpenApi::Validatable)
      end
      unless (_title = @title).nil?
        if max_length_error = OpenApi::PrimitiveValidator.max_length_error("title", _title.to_s.size, MAX_LENGTH_FOR_TITLE)
          invalid_properties.push(max_length_error)
        end
      end
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      unless (_percent_ownership = @percent_ownership).nil?
        return false if _percent_ownership.is_a?(OpenApi::Validatable) && !_percent_ownership.valid?
      end

      unless (_title = @title).nil?
        return false if _title.to_s.size > MAX_LENGTH_FOR_TITLE
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] director Object to be assigned
    def director=(new_value : Bool?)
      @director = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] executive Object to be assigned
    def executive=(new_value : Bool?)
      @executive = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] owner Object to be assigned
    def owner=(new_value : Bool?)
      @owner = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] percent_ownership Object to be assigned
    def percent_ownership=(new_value : Stripe::IndividualRelationshipSpecsPercentOwnership?)
      unless new_value.nil?
        new_value.validate if new_value.is_a?(OpenApi::Validatable)
      end

      @percent_ownership = new_value
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] title Object to be assigned
    def title=(new_value : String?)
      unless new_value.nil?
        OpenApi::PrimitiveValidator.validate_max_length("title", new_value.to_s.size, MAX_LENGTH_FOR_TITLE)
      end

      @title = new_value
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@director, @executive, @owner, @percent_ownership, @title)
  end
end
