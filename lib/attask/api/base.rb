module Attask
  module API
    class Base
      include HTTParty
      #include HTTMultiParty

      #debug_output $stdout

      attr_reader :credentials

      def initialize(credentials)
        @credentials = credentials
      end

      class << self
        def api_model(klass)
          class_eval <<-END
            def api_model
              #{klass}
            end
          END
        end
      end

      protected
        LOGIN_PATH = "/login"

        def login(credentials,options = {})
          params = {}
          params[:options] = options
          query = {:username => credentials.username,:password => credentials.password}

          response = self.class.send(:get, "#{credentials.host}#{LOGIN_PATH}",
                                   :query => query
          )
          case response.code
            when 200..201
              credentials.session = response["data"]["sessionID"]
            when 400
              raise Attask::BadRequest.new(response, params)
            when 401
              raise Attask::AuthenticationFailed.new(response, params)
            when 404
              raise Attask::NotFound.new(response, params)
            when 500
              raise Attask::ServerError.new(response, params)
            when 502
              raise Attask::Unavailable.new(response, params)
            when 503
              raise Attask::RateLimited.new(response, params)
            else
              raise Attask::InformHarvest.new(response, params)
          end
        end


        def request(method, credentials, path, options = {})
          if (!credentials.is_loged?)
            login(credentials)
          end
          params = {}
          params[:path] = path
          params[:options] = options
          params[:method] = method
          response = self.class.send(method, "#{credentials.host}#{path}",
                                   :query => options[:query],
                                   :body => options[:body],
                                   :headers => {
                                       "sessionId" => credentials.session,
                                       "Accept" => "application/json",
                                       "Content-Type" => "application/json; charset=utf-8",
                                       "Content-Length" => "0"
                                      }
          )
          params[:response] = response.inspect.to_s

          get_response(response, params)
        end

        def uploads(credentials, object)
          if (!credentials.is_loged?)
            login(credentials)
          end
          params = {}
          params[:path] = '/uploads'
          params[:method] = 'post'

          response = self.class.send( :post, "#{credentials.host}/uploads",
                                      :query => {:uploadedFile => object},
                                      :headers =>  {
                                         "sessionId" => credentials.session,
                                         "Accept" => "application/json",
                                         "Content-Type" => "multipart/form-data"
                                        }
          )

          get_response(response, params)
        end

        def get_response(response, params)
          case response.code
            when 200..201
              response
            when 400
              raise Attask::BadRequest.new(response, params)
            when 401
              raise Attask::AuthenticationFailed.new(response, params)
            when 404
              raise Attask::NotFound.new(response, params)
            when 500
              raise Attask::ServerError.new(response, params)
            when 502
              raise Attask::Unavailable.new(response, params)
            when 503
              raise Attask::RateLimited.new(response, params)
            else
              raise Attask::InformHarvest.new(response, params)
          end
        end
    end
  end
end