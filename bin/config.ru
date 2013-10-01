class Routes
  attr_reader :app
  
  def initialize(app)
    @app = app
  end

  def get(path)
    return "the color is blue" if path == "/blue"
    "green"
  end
  def call(env)
    req = Rack::Request.new(env)
    
    res = Rack::Response.new
    res.write get(req.path_info)
    res.finish
  end
end

class Router
  def self.call(env)
    [200, {"Content-Type" => "text/plain"}, ["Hello from Rack!"]]
  end
end

use Routes
run Router

