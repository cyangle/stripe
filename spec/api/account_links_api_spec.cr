#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"
require "../../src/stripe/api/account_links_api"

# Unit tests for Stripe::AccountLinksApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe "AccountLinksApi" do
  describe "test an instance of AccountLinksApi" do
    it "should create an instance of AccountLinksApi" do
      api_instance = Stripe::AccountLinksApi.new
      api_instance.should be_a(Stripe::AccountLinksApi)
    end
  end

  # unit tests for post_account_links
  # &lt;p&gt;Creates an AccountLink object that includes a single-use Stripe URL that the platform can redirect their user to in order to take them through the Connect Onboarding flow.&lt;/p&gt;
  # @param account The identifier of the account to create an account link for.
  # @param _type The type of account link the user is requesting. Possible values are &#x60;account_onboarding&#x60; or &#x60;account_update&#x60;.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :collect The collect parameter is deprecated. Use &#x60;collection_options&#x60; instead.
  # @option opts [CollectionOptionsParams] :collection_options
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @option opts [String] :refresh_url The URL the user will be redirected to if the account link is expired, has been previously-visited, or is otherwise invalid. The URL you specify should attempt to generate a new account link with the same parameters used to create the original account link, then redirect the user to the new account link&#39;s URL so they can continue with Connect Onboarding. If a new account link cannot be generated or the redirect fails you should display a useful error to the user.
  # @option opts [String] :return_url The URL that the user will be redirected to upon leaving or completing the linked flow.
  # @return [AccountLink]
  describe "post_account_links test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
