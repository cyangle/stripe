#  Stripe API
#
# The Stripe REST API. Please see https://stripe.com/docs/api for more details.
#
# The version of the OpenAPI document: 2024-06-20
# Contact: dev-platform@stripe.com
# Generated by: https://openapi-generator.tech
#

require "../spec_helper"
require "../../src/stripe/api/account_sessions_api"

# Unit tests for Stripe::AccountSessionsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe "AccountSessionsApi" do
  describe "test an instance of AccountSessionsApi" do
    it "should create an instance of AccountSessionsApi" do
      api_instance = Stripe::AccountSessionsApi.new
      api_instance.should be_a(Stripe::AccountSessionsApi)
    end
  end

  # unit tests for post_account_sessions
  # &lt;p&gt;Creates a AccountSession object that includes a single-use token that the platform can use on their front-end to grant client-side API access.&lt;/p&gt;
  # @param account The identifier of the account to create an Account Session for.
  # @param components
  # @param [Hash] opts the optional parameters
  # @option opts [Array(String)] :expand Specifies which fields in the response should be expanded.
  # @return [AccountSession]
  describe "post_account_sessions test" do
    it "should work" do
      # assertion here. ref: https://crystal-lang.org/reference/guides/testing.html
    end
  end
end
