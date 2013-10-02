require 'router'

class App
  def self.call(env)
    [200, {"Content-Type" => "text/plain"}, ["Hello from Rack!"]]
  end
end

use Router::Router
run App
