require 'omniauth-oauth2'

require "omniauth/strategies/oauth"
require "multi_xml"

module OmniAuth
  module Strategies
    class Affinitylive < OmniAuth::Strategies::OAuth2
      option :name, "affinitylive"

      option :client_options, {
        :authorize_url => "/oauth2/v0/authorize",
        :token_url => "/oauth2/v0/token"
      }

      option :authorize_params, {
        :scope =>"read(all)"
      }

      # These are called after authentication has succeeded. If
      # possible, you should try to set the UID without making
      # additional calls (if the user id is returned with the token
      # or as a URI parameter). This may not be possible with all
      # providers.
      uid{ raw_info['id'] }

      info do
        {
          :name => raw_info['name'],
          :email => raw_info['email']
        }
      end

      extra do
        {
          'raw_info' => raw_info
        }
      end

      def raw_info
        @raw_info ||= access_token.get('/api/v0/user').parsed
      end
    end
  end
end
