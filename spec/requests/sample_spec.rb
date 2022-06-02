require 'rails_helper'

RSpec.describe "Samples", type: :request do
  describe 'GET /users' do
    it do
      get url_for(%i[users])
      assert_response_schema_confirm
    end
  end
end
