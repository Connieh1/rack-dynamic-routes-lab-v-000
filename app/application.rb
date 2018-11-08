class Application
  def call(env)
    resp = Rack::Response.new
    req  = Rack::Request.new(env)

    @@items = []

    if req.path.match(/items/)
      @@items.each do |item|

      resp.write "#{item.price}\n"
    end
    else
      resp.write "404"
      resp.write "Route not found"
      
    end
    resp.finish
  end
end
