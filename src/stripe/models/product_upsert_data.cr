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
  class ProductUpsertData
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Json

    # Required properties

    @[JSON::Field(key: "id", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter id : String? = nil

    @[JSON::Field(key: "name", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter name : String? = nil

    # Optional properties

    @[JSON::Field(key: "description", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter description : String? = nil

    @[JSON::Field(key: "images", type: Stripe::ProductUpsertDataImages?, default: nil, required: false, nullable: false, emit_null: false)]
    getter images : Stripe::ProductUpsertDataImages? = nil

    @[JSON::Field(key: "metadata", type: Stripe::IndividualSpecsMetadata?, default: nil, required: false, nullable: false, emit_null: false)]
    getter metadata : Stripe::IndividualSpecsMetadata? = nil

    @[JSON::Field(key: "package_dimensions", type: Stripe::ProductUpsertDataPackageDimensions?, default: nil, required: false, nullable: false, emit_null: false)]
    getter package_dimensions : Stripe::ProductUpsertDataPackageDimensions? = nil

    @[JSON::Field(key: "shippable", type: Bool?, default: nil, required: false, nullable: false, emit_null: false)]
    getter shippable : Bool? = nil

    @[JSON::Field(key: "tax_code", type: String?, default: nil, required: false, nullable: false, emit_null: false)]
    getter tax_code : String? = nil

    @[JSON::Field(key: "url", type: Stripe::BusinessProfileSpecsSupportUrl?, default: nil, required: false, nullable: false, emit_null: false)]
    getter url : Stripe::BusinessProfileSpecsSupportUrl? = nil

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @id : String? = nil,
      @name : String? = nil,
      # Optional properties
      @description : String? = nil,
      @images : Stripe::ProductUpsertDataImages? = nil,
      @metadata : Stripe::IndividualSpecsMetadata? = nil,
      @package_dimensions : Stripe::ProductUpsertDataPackageDimensions? = nil,
      @shippable : Bool? = nil,
      @tax_code : String? = nil,
      @url : Stripe::BusinessProfileSpecsSupportUrl? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array(String).new
      invalid_properties.push("\"id\" is required and cannot be null") if @id.nil?
      if _id = @id
        if _id.to_s.size > 5000
          invalid_properties.push("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
        end
      end
      invalid_properties.push("\"name\" is required and cannot be null") if @name.nil?
      if _name = @name
        if _name.to_s.size > 5000
          invalid_properties.push("invalid value for \"name\", the character length must be smaller than or equal to 5000.")
        end
      end
      if _description = @description
        if _description.to_s.size > 40000
          invalid_properties.push("invalid value for \"description\", the character length must be smaller than or equal to 40000.")
        end
      end
      # This is a model images : Stripe::ProductUpsertDataImages?
      # This is a model metadata : Stripe::IndividualSpecsMetadata?
      # This is a model package_dimensions : Stripe::ProductUpsertDataPackageDimensions?
      if _tax_code = @tax_code
        if _tax_code.to_s.size > 5000
          invalid_properties.push("invalid value for \"tax_code\", the character length must be smaller than or equal to 5000.")
        end
      end
      # This is a model url : Stripe::BusinessProfileSpecsSupportUrl?

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      if _id = @id
        return false if _id.to_s.size > 5000
      end
      return false if @name.nil?
      if _name = @name
        return false if _name.to_s.size > 5000
      end
      if _description = @description
        return false if _description.to_s.size > 40000
      end
      if _tax_code = @tax_code
        return false if _tax_code.to_s.size > 5000
      end

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] id Object to be assigned
    def id=(id : String?)
      if id.nil?
        raise ArgumentError.new("\"id\" is required and cannot be null")
      end
      _id = id.not_nil!
      if _id.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"id\", the character length must be smaller than or equal to 5000.")
      end

      @id = id
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] name Object to be assigned
    def name=(name : String?)
      if name.nil?
        raise ArgumentError.new("\"name\" is required and cannot be null")
      end
      _name = name.not_nil!
      if _name.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"name\", the character length must be smaller than or equal to 5000.")
      end

      @name = name
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] description Object to be assigned
    def description=(description : String?)
      if description.nil?
        return @description = nil
      end
      _description = description.not_nil!
      if _description.to_s.size > 40000
        raise ArgumentError.new("invalid value for \"description\", the character length must be smaller than or equal to 40000.")
      end

      @description = description
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] images Object to be assigned
    def images=(images : Stripe::ProductUpsertDataImages?)
      if images.nil?
        return @images = nil
      end
      @images = images
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] metadata Object to be assigned
    def metadata=(metadata : Stripe::IndividualSpecsMetadata?)
      if metadata.nil?
        return @metadata = nil
      end
      @metadata = metadata
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] package_dimensions Object to be assigned
    def package_dimensions=(package_dimensions : Stripe::ProductUpsertDataPackageDimensions?)
      if package_dimensions.nil?
        return @package_dimensions = nil
      end
      @package_dimensions = package_dimensions
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] shippable Object to be assigned
    def shippable=(shippable : Bool?)
      if shippable.nil?
        return @shippable = nil
      end
      @shippable = shippable
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] tax_code Object to be assigned
    def tax_code=(tax_code : String?)
      if tax_code.nil?
        return @tax_code = nil
      end
      _tax_code = tax_code.not_nil!
      if _tax_code.to_s.size > 5000
        raise ArgumentError.new("invalid value for \"tax_code\", the character length must be smaller than or equal to 5000.")
      end

      @tax_code = tax_code
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] url Object to be assigned
    def url=(url : Stripe::BusinessProfileSpecsSupportUrl?)
      if url.nil?
        return @url = nil
      end
      @url = url
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
    def_equals_and_hash(@id, @name, @description, @images, @metadata, @package_dimensions, @shippable, @tax_code, @url)
  end
end