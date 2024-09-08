#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../../core"

require "../models/deleted_tax_id"
require "../models/error"

require "../models/owner_params"
require "../models/tax_ids_list"
require "../models/tax_id"

module Stripe
  class TaxIdsApi
    property api_client : ApiClient

    delegate client_side_validation?, debugging?, to: @api_client.config

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end

    # <p>Deletes an existing account or customer <code>tax_id</code> object.</p>
    # @required @param id [String?]
    # @return [Stripe::DeletedTaxId]
    def delete_tax_ids_id(
      *,
      id : String? = nil
    ) : Stripe::DeletedTaxId
      data, _status_code, _headers = delete_tax_ids_id_with_http_info(id: id)
      data
    end

    # &lt;p&gt;Deletes an existing account or customer &lt;code&gt;tax_id&lt;/code&gt; object.&lt;/p&gt;
    # @required @param id [String?]
    # @return [Tuple(Stripe::DeletedTaxId, Integer, Hash)] Stripe::DeletedTaxId, response status code and response headers
    def delete_tax_ids_id_with_http_info(
      *,
      id : String? = nil
    ) : Tuple(Stripe::DeletedTaxId, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_delete_tax_ids_id(id: id)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging?
        Log.debug { "API called: TaxIdsApi#delete_tax_ids_id\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(Stripe::DeletedTaxId.from_json(body), status_code, headers)
    end

    # &lt;p&gt;Deletes an existing account or customer &lt;code&gt;tax_id&lt;/code&gt; object.&lt;/p&gt;
    # @required @param id [String?]
    # @return nil
    def delete_tax_ids_id(
      *,
      id : String? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_delete_tax_ids_id(id: id).execute(&block)
    end

    DELETE_TAX_IDS_ID_MAX_LENGTH_FOR_ID = 5000

    # @return Crest::Request
    def build_api_request_for_delete_tax_ids_id(
      *,
      id : String? = nil
    ) : Crest::Request
      if debugging?
        Log.debug { "Calling API: TaxIdsApi.delete_tax_ids_id ..." }
      end

      if client_side_validation?
        raise ArgumentError.new("\"id\" is required and cannot be null") if id.nil?
        unless (_id = id).nil?
          OpenApi::PrimitiveValidator.validate_max_length("id", id.to_s.size, DELETE_TAX_IDS_ID_MAX_LENGTH_FOR_ID)
        end
      end

      # resource path
      local_var_path = "/v1/tax_ids/{id}".sub("{" + "id" + "}", URI.encode_path(id.to_s))

      # header parameters
      header_params : Hash(String, String) = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])

      # cookie parameters
      cookie_params : Hash(String, String) = Hash(String, String).new

      # query parameters
      query_params : Hash(String, (String | Array(String) | JSON::Any)) = Hash(String, (String | Array(String) | JSON::Any)).new

      # form parameters
      form_params : Array(Tuple(String, Crest::ParamsValue)) | Nil = nil

      # http body (model)
      post_body : IO | String | Nil = nil

      # auth_names
      auth_names = ["basicAuth", "bearerAuth"]

      @api_client.build_api_request(
        http_method: :"DELETE",
        path: local_var_path,
        operation: "TaxIdsApi.delete_tax_ids_id",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        cookie_params: cookie_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # <p>Returns a list of tax IDs.</p>
    # @optional @param ending_before [String?] A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
    # @optional @param starting_after [String?] A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
    # @optional @param limit [Int32?] A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @optional @param owner [Stripe::OwnerParams?] The account or customer the tax ID belongs to. Defaults to `owner[type]=self`.
    # @return [Stripe::TaxIDsList]
    def get_tax_ids(
      *,
      ending_before : String? = nil,
      starting_after : String? = nil,
      limit : Int64? = nil,
      expand : Array(Array(String))? = nil,
      owner : Stripe::OwnerParams? = nil
    ) : Stripe::TaxIDsList
      data, _status_code, _headers = get_tax_ids_with_http_info(ending_before: ending_before, starting_after: starting_after, limit: limit, expand: expand, owner: owner)
      data
    end

    # &lt;p&gt;Returns a list of tax IDs.&lt;/p&gt;
    # @optional @param ending_before [String?] A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
    # @optional @param starting_after [String?] A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
    # @optional @param limit [Int32?] A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @optional @param owner [Stripe::OwnerParams?] The account or customer the tax ID belongs to. Defaults to `owner[type]=self`.
    # @return [Tuple(Stripe::TaxIDsList, Integer, Hash)] Stripe::TaxIDsList, response status code and response headers
    def get_tax_ids_with_http_info(
      *,
      ending_before : String? = nil,
      starting_after : String? = nil,
      limit : Int64? = nil,
      expand : Array(Array(String))? = nil,
      owner : Stripe::OwnerParams? = nil
    ) : Tuple(Stripe::TaxIDsList, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_get_tax_ids(ending_before: ending_before, starting_after: starting_after, limit: limit, expand: expand, owner: owner)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging?
        Log.debug { "API called: TaxIdsApi#get_tax_ids\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(Stripe::TaxIDsList.from_json(body), status_code, headers)
    end

    # &lt;p&gt;Returns a list of tax IDs.&lt;/p&gt;
    # @optional @param ending_before [String?] A cursor for use in pagination. `ending_before` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, starting with `obj_bar`, your subsequent call can include `ending_before=obj_bar` in order to fetch the previous page of the list.
    # @optional @param starting_after [String?] A cursor for use in pagination. `starting_after` is an object ID that defines your place in the list. For instance, if you make a list request and receive 100 objects, ending with `obj_foo`, your subsequent call can include `starting_after=obj_foo` in order to fetch the next page of the list.
    # @optional @param limit [Int32?] A limit on the number of objects to be returned. Limit can range between 1 and 100, and the default is 10.
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @optional @param owner [Stripe::OwnerParams?] The account or customer the tax ID belongs to. Defaults to `owner[type]=self`.
    # @return nil
    def get_tax_ids(
      *,
      ending_before : String? = nil,
      starting_after : String? = nil,
      limit : Int64? = nil,
      expand : Array(Array(String))? = nil,
      owner : Stripe::OwnerParams? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_get_tax_ids(ending_before: ending_before, starting_after: starting_after, limit: limit, expand: expand, owner: owner).execute(&block)
    end

    GET_TAX_IDS_MAX_LENGTH_FOR_ENDING_BEFORE  = 5000
    GET_TAX_IDS_MAX_LENGTH_FOR_STARTING_AFTER = 5000

    # @return Crest::Request
    def build_api_request_for_get_tax_ids(
      *,
      ending_before : String? = nil,
      starting_after : String? = nil,
      limit : Int64? = nil,
      expand : Array(Array(String))? = nil,
      owner : Stripe::OwnerParams? = nil
    ) : Crest::Request
      if debugging?
        Log.debug { "Calling API: TaxIdsApi.get_tax_ids ..." }
      end

      if client_side_validation?
        unless (_ending_before = ending_before).nil?
          OpenApi::PrimitiveValidator.validate_max_length("ending_before", ending_before.to_s.size, GET_TAX_IDS_MAX_LENGTH_FOR_ENDING_BEFORE)
        end
        unless (_starting_after = starting_after).nil?
          OpenApi::PrimitiveValidator.validate_max_length("starting_after", starting_after.to_s.size, GET_TAX_IDS_MAX_LENGTH_FOR_STARTING_AFTER)
        end

        unless (_owner = owner).nil?
          _owner.validate if _owner.is_a?(OpenApi::Validatable)
        end
      end

      # resource path
      local_var_path = "/v1/tax_ids"

      # header parameters
      header_params : Hash(String, String) = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])

      # cookie parameters
      cookie_params : Hash(String, String) = Hash(String, String).new

      # query parameters
      query_params : Hash(String, (String | Array(String) | JSON::Any)) = Hash(String, (String | Array(String) | JSON::Any)).new
      query_params["ending_before"] = ending_before.to_s if !ending_before.nil?
      query_params["starting_after"] = starting_after.to_s if !starting_after.nil?
      query_params["limit"] = limit.to_s if !limit.nil?
      query_params["expand"] = @api_client.build_collection_param(expand, "csv") if !expand.nil? && !expand.empty?
      query_params["owner"] = owner.to_s if !owner.nil?

      # form parameters
      form_params : Array(Tuple(String, Crest::ParamsValue)) | Nil = nil

      # http body (model)
      post_body : IO | String | Nil = nil

      # auth_names
      auth_names = ["basicAuth", "bearerAuth"]

      @api_client.build_api_request(
        http_method: :"GET",
        path: local_var_path,
        operation: "TaxIdsApi.get_tax_ids",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        cookie_params: cookie_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # <p>Retrieves an account or customer <code>tax_id</code> object.</p>
    # @required @param id [String?]
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @return [Stripe::TaxId]
    def get_tax_ids_id(
      *,
      id : String? = nil,
      expand : Array(Array(String))? = nil
    ) : Stripe::TaxId
      data, _status_code, _headers = get_tax_ids_id_with_http_info(id: id, expand: expand)
      data
    end

    # &lt;p&gt;Retrieves an account or customer &lt;code&gt;tax_id&lt;/code&gt; object.&lt;/p&gt;
    # @required @param id [String?]
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @return [Tuple(Stripe::TaxId, Integer, Hash)] Stripe::TaxId, response status code and response headers
    def get_tax_ids_id_with_http_info(
      *,
      id : String? = nil,
      expand : Array(Array(String))? = nil
    ) : Tuple(Stripe::TaxId, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_get_tax_ids_id(id: id, expand: expand)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging?
        Log.debug { "API called: TaxIdsApi#get_tax_ids_id\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(Stripe::TaxId.from_json(body), status_code, headers)
    end

    # &lt;p&gt;Retrieves an account or customer &lt;code&gt;tax_id&lt;/code&gt; object.&lt;/p&gt;
    # @required @param id [String?]
    # @optional @param expand [Array(Array(String))?] Specifies which fields in the response should be expanded.
    # @return nil
    def get_tax_ids_id(
      *,
      id : String? = nil,
      expand : Array(Array(String))? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_get_tax_ids_id(id: id, expand: expand).execute(&block)
    end

    GET_TAX_IDS_ID_MAX_LENGTH_FOR_ID = 5000

    # @return Crest::Request
    def build_api_request_for_get_tax_ids_id(
      *,
      id : String? = nil,
      expand : Array(Array(String))? = nil
    ) : Crest::Request
      if debugging?
        Log.debug { "Calling API: TaxIdsApi.get_tax_ids_id ..." }
      end

      if client_side_validation?
        raise ArgumentError.new("\"id\" is required and cannot be null") if id.nil?
        unless (_id = id).nil?
          OpenApi::PrimitiveValidator.validate_max_length("id", id.to_s.size, GET_TAX_IDS_ID_MAX_LENGTH_FOR_ID)
        end
      end

      # resource path
      local_var_path = "/v1/tax_ids/{id}".sub("{" + "id" + "}", URI.encode_path(id.to_s))

      # header parameters
      header_params : Hash(String, String) = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])

      # cookie parameters
      cookie_params : Hash(String, String) = Hash(String, String).new

      # query parameters
      query_params : Hash(String, (String | Array(String) | JSON::Any)) = Hash(String, (String | Array(String) | JSON::Any)).new
      query_params["expand"] = @api_client.build_collection_param(expand, "csv") if !expand.nil? && !expand.empty?

      # form parameters
      form_params : Array(Tuple(String, Crest::ParamsValue)) | Nil = nil

      # http body (model)
      post_body : IO | String | Nil = nil

      # auth_names
      auth_names = ["basicAuth", "bearerAuth"]

      @api_client.build_api_request(
        http_method: :"GET",
        path: local_var_path,
        operation: "TaxIdsApi.get_tax_ids_id",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        cookie_params: cookie_params,
        query_params: query_params,
        form_params: form_params
      )
    end

    # <p>Creates a new account or customer <code>tax_id</code> object.</p>
    # @required @param _type [String?] Type of the tax ID, one of `ad_nrt`, `ae_trn`, `ar_cuit`, `au_abn`, `au_arn`, `bg_uic`, `bh_vat`, `bo_tin`, `br_cnpj`, `br_cpf`, `ca_bn`, `ca_gst_hst`, `ca_pst_bc`, `ca_pst_mb`, `ca_pst_sk`, `ca_qst`, `ch_uid`, `ch_vat`, `cl_tin`, `cn_tin`, `co_nit`, `cr_tin`, `de_stn`, `do_rcn`, `ec_ruc`, `eg_tin`, `es_cif`, `eu_oss_vat`, `eu_vat`, `gb_vat`, `ge_vat`, `hk_br`, `hr_oib`, `hu_tin`, `id_npwp`, `il_vat`, `in_gst`, `is_vat`, `jp_cn`, `jp_rn`, `jp_trn`, `ke_pin`, `kr_brn`, `kz_bin`, `li_uid`, `mx_rfc`, `my_frp`, `my_itn`, `my_sst`, `ng_tin`, `no_vat`, `no_voec`, `nz_gst`, `om_vat`, `pe_ruc`, `ph_tin`, `ro_tin`, `rs_pib`, `ru_inn`, `ru_kpp`, `sa_vat`, `sg_gst`, `sg_uen`, `si_tin`, `sv_nit`, `th_vat`, `tr_tin`, `tw_vat`, `ua_vat`, `us_ein`, `uy_ruc`, `ve_rif`, `vn_tin`, or `za_vat`
    # @required @param value [String?] Value of the tax ID.
    # @optional @param expand [Array(String)?] Specifies which fields in the response should be expanded.
    # @optional @param owner [Stripe::OwnerParams?]
    # @return [Stripe::TaxId]
    def post_tax_ids(
      *,
      _type : String? = nil,
      value : String? = nil,
      expand : Array(String)? = nil,
      owner : Stripe::OwnerParams? = nil
    ) : Stripe::TaxId
      data, _status_code, _headers = post_tax_ids_with_http_info(_type: _type, value: value, expand: expand, owner: owner)
      data
    end

    # &lt;p&gt;Creates a new account or customer &lt;code&gt;tax_id&lt;/code&gt; object.&lt;/p&gt;
    # @required @param _type [String?] Type of the tax ID, one of `ad_nrt`, `ae_trn`, `ar_cuit`, `au_abn`, `au_arn`, `bg_uic`, `bh_vat`, `bo_tin`, `br_cnpj`, `br_cpf`, `ca_bn`, `ca_gst_hst`, `ca_pst_bc`, `ca_pst_mb`, `ca_pst_sk`, `ca_qst`, `ch_uid`, `ch_vat`, `cl_tin`, `cn_tin`, `co_nit`, `cr_tin`, `de_stn`, `do_rcn`, `ec_ruc`, `eg_tin`, `es_cif`, `eu_oss_vat`, `eu_vat`, `gb_vat`, `ge_vat`, `hk_br`, `hr_oib`, `hu_tin`, `id_npwp`, `il_vat`, `in_gst`, `is_vat`, `jp_cn`, `jp_rn`, `jp_trn`, `ke_pin`, `kr_brn`, `kz_bin`, `li_uid`, `mx_rfc`, `my_frp`, `my_itn`, `my_sst`, `ng_tin`, `no_vat`, `no_voec`, `nz_gst`, `om_vat`, `pe_ruc`, `ph_tin`, `ro_tin`, `rs_pib`, `ru_inn`, `ru_kpp`, `sa_vat`, `sg_gst`, `sg_uen`, `si_tin`, `sv_nit`, `th_vat`, `tr_tin`, `tw_vat`, `ua_vat`, `us_ein`, `uy_ruc`, `ve_rif`, `vn_tin`, or `za_vat`
    # @required @param value [String?] Value of the tax ID.
    # @optional @param expand [Array(String)?] Specifies which fields in the response should be expanded.
    # @optional @param owner [Stripe::OwnerParams?]
    # @return [Tuple(Stripe::TaxId, Integer, Hash)] Stripe::TaxId, response status code and response headers
    def post_tax_ids_with_http_info(
      *,
      _type : String? = nil,
      value : String? = nil,
      expand : Array(String)? = nil,
      owner : Stripe::OwnerParams? = nil
    ) : Tuple(Stripe::TaxId, Int32, Hash(String, Array(String) | String))
      request = build_api_request_for_post_tax_ids(_type: _type, value: value, expand: expand, owner: owner)

      body, status_code, headers = @api_client.execute_api_request(request)

      if debugging?
        Log.debug { "API called: TaxIdsApi#post_tax_ids\nBody: #{body.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}" }
      end

      Tuple.new(Stripe::TaxId.from_json(body), status_code, headers)
    end

    # &lt;p&gt;Creates a new account or customer &lt;code&gt;tax_id&lt;/code&gt; object.&lt;/p&gt;
    # @required @param _type [String?] Type of the tax ID, one of `ad_nrt`, `ae_trn`, `ar_cuit`, `au_abn`, `au_arn`, `bg_uic`, `bh_vat`, `bo_tin`, `br_cnpj`, `br_cpf`, `ca_bn`, `ca_gst_hst`, `ca_pst_bc`, `ca_pst_mb`, `ca_pst_sk`, `ca_qst`, `ch_uid`, `ch_vat`, `cl_tin`, `cn_tin`, `co_nit`, `cr_tin`, `de_stn`, `do_rcn`, `ec_ruc`, `eg_tin`, `es_cif`, `eu_oss_vat`, `eu_vat`, `gb_vat`, `ge_vat`, `hk_br`, `hr_oib`, `hu_tin`, `id_npwp`, `il_vat`, `in_gst`, `is_vat`, `jp_cn`, `jp_rn`, `jp_trn`, `ke_pin`, `kr_brn`, `kz_bin`, `li_uid`, `mx_rfc`, `my_frp`, `my_itn`, `my_sst`, `ng_tin`, `no_vat`, `no_voec`, `nz_gst`, `om_vat`, `pe_ruc`, `ph_tin`, `ro_tin`, `rs_pib`, `ru_inn`, `ru_kpp`, `sa_vat`, `sg_gst`, `sg_uen`, `si_tin`, `sv_nit`, `th_vat`, `tr_tin`, `tw_vat`, `ua_vat`, `us_ein`, `uy_ruc`, `ve_rif`, `vn_tin`, or `za_vat`
    # @required @param value [String?] Value of the tax ID.
    # @optional @param expand [Array(String)?] Specifies which fields in the response should be expanded.
    # @optional @param owner [Stripe::OwnerParams?]
    # @return nil
    def post_tax_ids(
      *,
      _type : String? = nil,
      value : String? = nil,
      expand : Array(String)? = nil,
      owner : Stripe::OwnerParams? = nil,
      &block : Crest::Response ->
    ) : Nil
      build_api_request_for_post_tax_ids(_type: _type, value: value, expand: expand, owner: owner).execute(&block)
    end

    POST_TAX_IDS_MAX_LENGTH_FOR__TYPE   = 5000
    POST_TAX_IDS_VALID_VALUES_FOR__TYPE = String.static_array("ad_nrt", "ae_trn", "ar_cuit", "au_abn", "au_arn", "bg_uic", "bh_vat", "bo_tin", "br_cnpj", "br_cpf", "ca_bn", "ca_gst_hst", "ca_pst_bc", "ca_pst_mb", "ca_pst_sk", "ca_qst", "ch_uid", "ch_vat", "cl_tin", "cn_tin", "co_nit", "cr_tin", "de_stn", "do_rcn", "ec_ruc", "eg_tin", "es_cif", "eu_oss_vat", "eu_vat", "gb_vat", "ge_vat", "hk_br", "hr_oib", "hu_tin", "id_npwp", "il_vat", "in_gst", "is_vat", "jp_cn", "jp_rn", "jp_trn", "ke_pin", "kr_brn", "kz_bin", "li_uid", "mx_rfc", "my_frp", "my_itn", "my_sst", "ng_tin", "no_vat", "no_voec", "nz_gst", "om_vat", "pe_ruc", "ph_tin", "ro_tin", "rs_pib", "ru_inn", "ru_kpp", "sa_vat", "sg_gst", "sg_uen", "si_tin", "sv_nit", "th_vat", "tr_tin", "tw_vat", "ua_vat", "us_ein", "uy_ruc", "ve_rif", "vn_tin", "za_vat")

    # @return Crest::Request
    def build_api_request_for_post_tax_ids(
      *,
      _type : String? = nil,
      value : String? = nil,
      expand : Array(String)? = nil,
      owner : Stripe::OwnerParams? = nil
    ) : Crest::Request
      if debugging?
        Log.debug { "Calling API: TaxIdsApi.post_tax_ids ..." }
      end

      if client_side_validation?
        raise ArgumentError.new("\"_type\" is required and cannot be null") if _type.nil?
        unless (__type = _type).nil?
          OpenApi::EnumValidator.validate("_type", __type, POST_TAX_IDS_VALID_VALUES_FOR__TYPE)
        end
        raise ArgumentError.new("\"value\" is required and cannot be null") if value.nil?

        unless (_owner = owner).nil?
          _owner.validate if _owner.is_a?(OpenApi::Validatable)
        end
      end

      # resource path
      local_var_path = "/v1/tax_ids"

      # header parameters
      header_params : Hash(String, String) = Hash(String, String).new
      # HTTP header "Accept" (if needed)
      header_params["Accept"] = @api_client.select_header_accept(["application/json"])
      # HTTP header "Content-Type"
      header_params["Content-Type"] = @api_client.select_header_content_type(["application/x-www-form-urlencoded"])

      # cookie parameters
      cookie_params : Hash(String, String) = Hash(String, String).new

      # query parameters
      query_params : Hash(String, (String | Array(String) | JSON::Any)) = Hash(String, (String | Array(String) | JSON::Any)).new

      # form parameters
      form_params : Array(Tuple(String, Crest::ParamsValue)) | Nil = Array(Tuple(String, Crest::ParamsValue)).new
      form_params.concat(Crest::ZeroEnumeratedFlatParamsEncoder.flatten_params(JSON.parse(expand.to_json), "expand")) if !expand.nil?
      form_params.concat(Crest::ZeroEnumeratedFlatParamsEncoder.flatten_params(JSON.parse(owner.to_json), "owner")) if !owner.nil?
      form_params << Tuple(String, Crest::ParamsValue).new("type", _type.to_s) if !_type.nil?
      form_params << Tuple(String, Crest::ParamsValue).new("value", value.to_s) if !value.nil?

      # http body (model)
      post_body : IO | String | Nil = nil

      # auth_names
      auth_names = ["basicAuth", "bearerAuth"]

      @api_client.build_api_request(
        http_method: :"POST",
        path: local_var_path,
        operation: "TaxIdsApi.post_tax_ids",
        post_body: post_body,
        auth_names: auth_names,
        header_params: header_params,
        cookie_params: cookie_params,
        query_params: query_params,
        form_params: form_params
      )
    end
  end
end
