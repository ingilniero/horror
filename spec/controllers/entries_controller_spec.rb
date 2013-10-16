require 'spec_helper'

describe EntriesController do
  let(:valid_attributes) do
    {
      entry: {
        title:        'Ugly code',
        content:      'Seriously ugly'
      }
    }
  end

  before do
    subject.stub(:user_handle).and_return('ugliness')
  end

  describe 'POST /' do
    it 'increases the number of Entry objects by 1' do
      expect{ post :create, valid_attributes }.to change(Entry, :count).by(1)
    end

    context 'with html format' do
      it 'redirects to root' do
        post :create, valid_attributes
        expect(response).to redirect_to root_path
      end
    end
  end
end
