require 'spec_helper'

describe HomeController do
  describe 'GET /' do
    describe 'for a site guest' do
      before { get :index }

      it { should respond_with :success }
      it { should render_template :index }
    end

    it 'assigns the list of entries to @entries' do
      5.times { Entry.create title: 'Ugly code', content: 'Seriously ugly' }
      get :index
      expect(assigns(:entries)).to eq Entry.order('created_at DESC')
    end

  end
end
