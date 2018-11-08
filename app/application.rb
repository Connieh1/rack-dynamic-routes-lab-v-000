class Application
  def call(env)
    resp = Rack::Response.new
    req  = Rack::Request.new(env)

    @@items = []

    if req.path.match(/items/)
      @@items.each do |item| price

      resp.write "#{item.price}\n"
    else
      resp.write "404 Route not found"
      end
    end
    resp.finish
  end
end
