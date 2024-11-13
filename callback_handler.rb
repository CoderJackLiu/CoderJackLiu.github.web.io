require 'sinatra'
require 'httpx'
require 'json'

client_id = 'Ov23liOwXgpwKGbOuQYn'
client_secret = 'dcc51ebc63fc724eaa1f841deadbe98895f78993'

configure do
  disable :protection # 禁用 Rack::Protection::JsonCsrf
end

get '/callback' do
  code = params['code']
  halt 403, "Forbidden: Missing code parameter" if code.nil?

  response = HTTPX.post('https://github.com/login/oauth/access_token',
                        json: {
                          client_id: client_id,
                          client_secret: client_secret,
                          code: code
                        },
                        headers: { 'Accept' => 'application/json' })

  if response.status == 200
    access_token = response.json['access_token']
    <<-HTML
      <script>
        window.opener.postMessage({ token: "#{access_token}" }, "*");
        window.close();
      </script>
    HTML
  else
    status 500
    'Error exchanging code for token'
  end
end

run! if __FILE__ == $0