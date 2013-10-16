require 'spec_helper'

describe HomeController do
  describe 'GET /' do
    it 'responds with success' do
      get :index
      expect(response).to be_success
    end

    it 'assigns the list of entries to @entries' do
      Entry.new title: 'Ugly code', content: 'Seriously ugly'
      get :index
      expect(assigns(:entries)).to eq Entry.order('created_at DESC')
    end
  end
end
