module Router
  class Router
    attr_reader :app

    def initialize(app)
      @app = app
    end

    def call(env)
      req = Rack::Request.new(env)
      request_info = {
        method: req.request_method,
        path:   req.path_info,
        type:   req.media_type
      }

      res = Rack::Response.new
      res.write(request_info)
      res.finish
    end
  end
end
