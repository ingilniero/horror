require 'spec_helper.rb'

describe SessionConcern do
  let(:dummy) { Object.new.extend SessionConcern }

  before :each do
    dummy.define_singleton_method :session do
      @session ||= {
        auth_info: {
          'email'   => 'jon.snow@you-know.nothing',
          'handle'  => 'jonsnow',
          'image'   => 'bastard.jpg'
        }
      }
    end
  end

  describe '#current_user' do
    it 'returns the :auth_info key of the session' do
      expect(dummy.current_user).to eq dummy.session[:auth_info]
    end
  end

  describe '#user_avatar' do
    context 'with an image in the auth hash' do
      it 'returns the bastard.jpg image' do
        expect(dummy.user_avatar).to eq 'bastard.jpg'
      end
    end

    context 'without an image in the auth hash' do
      before :each do
        dummy.session[:auth_info].delete('image')
      end

      it 'returns an empty string' do
        expect(dummy.user_avatar).to eq ''
      end
    end
  end

  describe '#user_handle' do
    context 'with a handle in the session auth_info' do
      it 'returns the handle' do
        expect(dummy.user_handle).to eq 'jonsnow'
      end
    end

    context 'without a handle, but with an email in the session auth_info' do
      before do
        dummy.session[:auth_info].delete('handle')
      end

      it 'returns the email' do
        expect(dummy.user_handle).to eq dummy.current_user['email']
      end
    end
  end
end
