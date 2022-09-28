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
  class SpendingLimitsParam
    include JSON::Serializable
    include JSON::Serializable::Unmapped
    include OpenApi::Validatable
    include OpenApi::Json

    # Required properties

    @[JSON::Field(key: "amount", type: Int64?, default: nil, required: true, nullable: false, emit_null: false)]
    getter amount : Int64? = nil

    @[JSON::Field(key: "interval", type: String?, default: nil, required: true, nullable: false, emit_null: false)]
    getter interval : String? = nil

    ENUM_VALIDATOR_FOR_INTERVAL = EnumValidator.new("interval", "String", ["all_time", "daily", "monthly", "per_authorization", "weekly", "yearly"])

    # Optional properties

    @[JSON::Field(key: "categories", type: Array(String)?, default: nil, required: false, nullable: false, emit_null: false)]
    getter categories : Array(String)? = nil

    ENUM_VALIDATOR_FOR_CATEGORIES = EnumValidator.new("categories", "Array(String)", ["ac_refrigeration_repair", "accounting_bookkeeping_services", "advertising_services", "agricultural_cooperative", "airlines_air_carriers", "airports_flying_fields", "ambulance_services", "amusement_parks_carnivals", "antique_reproductions", "antique_shops", "aquariums", "architectural_surveying_services", "art_dealers_and_galleries", "artists_supply_and_craft_shops", "auto_and_home_supply_stores", "auto_body_repair_shops", "auto_paint_shops", "auto_service_shops", "automated_cash_disburse", "automated_fuel_dispensers", "automobile_associations", "automotive_parts_and_accessories_stores", "automotive_tire_stores", "bail_and_bond_payments", "bakeries", "bands_orchestras", "barber_and_beauty_shops", "betting_casino_gambling", "bicycle_shops", "billiard_pool_establishments", "boat_dealers", "boat_rentals_and_leases", "book_stores", "books_periodicals_and_newspapers", "bowling_alleys", "bus_lines", "business_secretarial_schools", "buying_shopping_services", "cable_satellite_and_other_pay_television_and_radio", "camera_and_photographic_supply_stores", "candy_nut_and_confectionery_stores", "car_and_truck_dealers_new_used", "car_and_truck_dealers_used_only", "car_rental_agencies", "car_washes", "carpentry_services", "carpet_upholstery_cleaning", "caterers", "charitable_and_social_service_organizations_fundraising", "chemicals_and_allied_products", "child_care_services", "childrens_and_infants_wear_stores", "chiropodists_podiatrists", "chiropractors", "cigar_stores_and_stands", "civic_social_fraternal_associations", "cleaning_and_maintenance", "clothing_rental", "colleges_universities", "commercial_equipment", "commercial_footwear", "commercial_photography_art_and_graphics", "commuter_transport_and_ferries", "computer_network_services", "computer_programming", "computer_repair", "computer_software_stores", "computers_peripherals_and_software", "concrete_work_services", "construction_materials", "consulting_public_relations", "correspondence_schools", "cosmetic_stores", "counseling_services", "country_clubs", "courier_services", "court_costs", "credit_reporting_agencies", "cruise_lines", "dairy_products_stores", "dance_hall_studios_schools", "dating_escort_services", "dentists_orthodontists", "department_stores", "detective_agencies", "digital_goods_applications", "digital_goods_games", "digital_goods_large_volume", "digital_goods_media", "direct_marketing_catalog_merchant", "direct_marketing_combination_catalog_and_retail_merchant", "direct_marketing_inbound_telemarketing", "direct_marketing_insurance_services", "direct_marketing_other", "direct_marketing_outbound_telemarketing", "direct_marketing_subscription", "direct_marketing_travel", "discount_stores", "doctors", "door_to_door_sales", "drapery_window_covering_and_upholstery_stores", "drinking_places", "drug_stores_and_pharmacies", "drugs_drug_proprietaries_and_druggist_sundries", "dry_cleaners", "durable_goods", "duty_free_stores", "eating_places_restaurants", "educational_services", "electric_razor_stores", "electrical_parts_and_equipment", "electrical_services", "electronics_repair_shops", "electronics_stores", "elementary_secondary_schools", "employment_temp_agencies", "equipment_rental", "exterminating_services", "family_clothing_stores", "fast_food_restaurants", "financial_institutions", "fines_government_administrative_entities", "fireplace_fireplace_screens_and_accessories_stores", "floor_covering_stores", "florists", "florists_supplies_nursery_stock_and_flowers", "freezer_and_locker_meat_provisioners", "fuel_dealers_non_automotive", "funeral_services_crematories", "furniture_home_furnishings_and_equipment_stores_except_appliances", "furniture_repair_refinishing", "furriers_and_fur_shops", "general_services", "gift_card_novelty_and_souvenir_shops", "glass_paint_and_wallpaper_stores", "glassware_crystal_stores", "golf_courses_public", "government_services", "grocery_stores_supermarkets", "hardware_equipment_and_supplies", "hardware_stores", "health_and_beauty_spas", "hearing_aids_sales_and_supplies", "heating_plumbing_a_c", "hobby_toy_and_game_shops", "home_supply_warehouse_stores", "hospitals", "hotels_motels_and_resorts", "household_appliance_stores", "industrial_supplies", "information_retrieval_services", "insurance_default", "insurance_underwriting_premiums", "intra_company_purchases", "jewelry_stores_watches_clocks_and_silverware_stores", "landscaping_services", "laundries", "laundry_cleaning_services", "legal_services_attorneys", "luggage_and_leather_goods_stores", "lumber_building_materials_stores", "manual_cash_disburse", "marinas_service_and_supplies", "masonry_stonework_and_plaster", "massage_parlors", "medical_and_dental_labs", "medical_dental_ophthalmic_and_hospital_equipment_and_supplies", "medical_services", "membership_organizations", "mens_and_boys_clothing_and_accessories_stores", "mens_womens_clothing_stores", "metal_service_centers", "miscellaneous", "miscellaneous_apparel_and_accessory_shops", "miscellaneous_auto_dealers", "miscellaneous_business_services", "miscellaneous_food_stores", "miscellaneous_general_merchandise", "miscellaneous_general_services", "miscellaneous_home_furnishing_specialty_stores", "miscellaneous_publishing_and_printing", "miscellaneous_recreation_services", "miscellaneous_repair_shops", "miscellaneous_specialty_retail", "mobile_home_dealers", "motion_picture_theaters", "motor_freight_carriers_and_trucking", "motor_homes_dealers", "motor_vehicle_supplies_and_new_parts", "motorcycle_shops_and_dealers", "motorcycle_shops_dealers", "music_stores_musical_instruments_pianos_and_sheet_music", "news_dealers_and_newsstands", "non_fi_money_orders", "non_fi_stored_value_card_purchase_load", "nondurable_goods", "nurseries_lawn_and_garden_supply_stores", "nursing_personal_care", "office_and_commercial_furniture", "opticians_eyeglasses", "optometrists_ophthalmologist", "orthopedic_goods_prosthetic_devices", "osteopaths", "package_stores_beer_wine_and_liquor", "paints_varnishes_and_supplies", "parking_lots_garages", "passenger_railways", "pawn_shops", "pet_shops_pet_food_and_supplies", "petroleum_and_petroleum_products", "photo_developing", "photographic_photocopy_microfilm_equipment_and_supplies", "photographic_studios", "picture_video_production", "piece_goods_notions_and_other_dry_goods", "plumbing_heating_equipment_and_supplies", "political_organizations", "postal_services_government_only", "precious_stones_and_metals_watches_and_jewelry", "professional_services", "public_warehousing_and_storage", "quick_copy_repro_and_blueprint", "railroads", "real_estate_agents_and_managers_rentals", "record_stores", "recreational_vehicle_rentals", "religious_goods_stores", "religious_organizations", "roofing_siding_sheet_metal", "secretarial_support_services", "security_brokers_dealers", "service_stations", "sewing_needlework_fabric_and_piece_goods_stores", "shoe_repair_hat_cleaning", "shoe_stores", "small_appliance_repair", "snowmobile_dealers", "special_trade_services", "specialty_cleaning", "sporting_goods_stores", "sporting_recreation_camps", "sports_and_riding_apparel_stores", "sports_clubs_fields", "stamp_and_coin_stores", "stationary_office_supplies_printing_and_writing_paper", "stationery_stores_office_and_school_supply_stores", "swimming_pools_sales", "t_ui_travel_germany", "tailors_alterations", "tax_payments_government_agencies", "tax_preparation_services", "taxicabs_limousines", "telecommunication_equipment_and_telephone_sales", "telecommunication_services", "telegraph_services", "tent_and_awning_shops", "testing_laboratories", "theatrical_ticket_agencies", "timeshares", "tire_retreading_and_repair", "tolls_bridge_fees", "tourist_attractions_and_exhibits", "towing_services", "trailer_parks_campgrounds", "transportation_services", "travel_agencies_tour_operators", "truck_stop_iteration", "truck_utility_trailer_rentals", "typesetting_plate_making_and_related_services", "typewriter_stores", "u_s_federal_government_agencies_or_departments", "uniforms_commercial_clothing", "used_merchandise_and_secondhand_stores", "utilities", "variety_stores", "veterinary_services", "video_amusement_game_supplies", "video_game_arcades", "video_tape_rental_stores", "vocational_trade_schools", "watch_jewelry_repair", "welding_repair", "wholesale_clubs", "wig_and_toupee_stores", "wires_money_orders", "womens_accessory_and_specialty_shops", "womens_ready_to_wear_stores", "wrecking_and_salvage_yards"])

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(
      *,
      # Required properties
      @amount : Int64? = nil,
      @interval : String? = nil,
      # Optional properties
      @categories : Array(String)? = nil
    )
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties : Array(String)
      invalid_properties = Array(String).new
      invalid_properties.push("\"amount\" is required and cannot be null") if @amount.nil?

      invalid_properties.push(ENUM_VALIDATOR_FOR_INTERVAL.error_message) unless ENUM_VALIDATOR_FOR_INTERVAL.valid?(@interval, false)

      invalid_properties.push(ENUM_VALIDATOR_FOR_CATEGORIES.error_message) unless ENUM_VALIDATOR_FOR_CATEGORIES.all_valid?(@categories)

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid? : Bool
      return false if @amount.nil?

      return false unless ENUM_VALIDATOR_FOR_INTERVAL.valid?(@interval, false)
      return false unless ENUM_VALIDATOR_FOR_CATEGORIES.all_valid?(@categories)

      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] amount Object to be assigned
    def amount=(amount : Int64?)
      if amount.nil?
        raise ArgumentError.new("\"amount\" is required and cannot be null")
      end
      _amount = amount.not_nil!
      @amount = _amount
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] interval Object to be assigned
    def interval=(interval : String?)
      if interval.nil?
        raise ArgumentError.new("\"interval\" is required and cannot be null")
      end
      _interval = interval.not_nil!
      ENUM_VALIDATOR_FOR_INTERVAL.valid!(_interval)
      @interval = _interval
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] categories Object to be assigned
    def categories=(categories : Array(String)?)
      if categories.nil?
        return @categories = nil
      end
      _categories = categories.not_nil!
      ENUM_VALIDATOR_FOR_CATEGORIES.all_valid!(_categories)
      @categories = _categories
    end

    # Generates #hash and #== methods from all fields
    # #== @return [Bool]
    # #hash calculates hash code according to all attributes.
    # #hash @return [UInt64] Hash code
    def_equals_and_hash(@amount, @interval, @categories)
  end
end
