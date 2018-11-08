class Application
  def call(env)
    resp = Rack::Response.new
    req  = Rack::Request.new(env)

    @@items = []

    if req.path.match(/items/)
      @@items.each do |item|

      resp.write "#{item.price}\n"
    else
      resp.write "404 Route not found"
    end
    resp.finish
  end
end
