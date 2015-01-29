require 'spec_helper'

describe "OmniAuth::Strategies::AffinityLive" do
  subject do
    OmniAuth::Strategies::AffinityLive.new(nil, {})
  end

  context 'client options' do
    it 'has correct authorize url' do
      subject.options.client_options.authorize_url.should eq('/oauth2/v0/authorize')
    end

    it 'has correct access token url' do
      subject.options.client_options.token_url.should eq('/oauth2/v0/token')
    end
  end
end
