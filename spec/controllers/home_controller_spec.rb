require 'spec_helper'

describe HomeController do
  describe 'GET /' do
    it 'responds with success' do
      get :index
      expect(response).to be_success
    end
  end
end
