require 'spec_helper'

describe SessionsController do
  let(:fake_auth_hash) do
    {'info' => {name: 'Clepton Emers', handle: 'cleptonems'}}
  end

  describe '#create' do
    before do
      subject.stub(:auth_hash).and_return fake_auth_hash
      get :create
    end

    it 'sets the session' do
      expect(subject.session[:auth_info]).to eq fake_auth_hash['info']
    end

    it 'redirects to root' do
      expect(response).to redirect_to root_path
    end
  end

  describe '#destroy' do
    it 'redirects to root' do
      delete :destroy
      expect(response).to redirect_to root_path
    end
  end
end
