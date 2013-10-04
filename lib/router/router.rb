module Router
  class Router
    def initialize(app)
       @app = app
    end

    # def call(env)
    #   req = Rack::Request.new(env)

    #   res = Rack::Response.new
    #   res.write(path_info)
    #   res.finish
    # end

    def route(path, &block)
      path_params = get_path_params path
      resource = path.split('/')[0]
      puts path_params.to_s + resource
    end
    # Todo: get resource (first item always empty string).
    # Is next item a path_param? If so, resource is '/'.
    
    private
    
    def get_path_params(path)
      regex = /(?<=:)\w+/
      path_params = path.scan regex
      path_params.collect {|p| p.intern}
    end
      
  end
end
