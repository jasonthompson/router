module Router
  class Router
    attr_reader :app

    def initialize(app)
      @app = app
    end

    def call(env)
      req = Rack::Request.new(env)

      msg = route(req.path_info)
      res = Rack::Response.new
      res.write(msg)
      res.finish
    end

    def route(path_info)
      routes[path_info]
    end

    def routes
      {
        '/2013/02/this-is-a-title' => 'blog post!'
        }
    end
  end
end
