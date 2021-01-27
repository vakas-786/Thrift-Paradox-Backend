module AuthHelper
    def http_login 
        username ='testing'
        password = 'password'
      request.env['HTTP_AUTHORIZATION'] = ActionController::HttpAuthentication::Basic.encode_credentials(username, password)
    end  
  end