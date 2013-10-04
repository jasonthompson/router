module Router
  class Router
    attr_reader :app

    def initialize(app)
      @app = app
    end

    def call(env)
      req = Rack::Request.new(env)

      msg = matcher(req.path_info)
      res = Rack::Response.new
      res.write(msg)
      res.finish
    end

    def matcher(path)
      Route.new(path, routes).match
    end

    def routes
      {
        '/2013/02/this-is-a-title' => 'blog post!',
        '/:year/:month/:title' => "blog post in march"
        }
    end

    class Route
      attr_reader :path, :routes
      
      def initialize(path, routes)
        @path = path
        @routes = routes
      end

      def match
        routes[path]
      end
    end
  end
end
