class Application
  def call(env)
    resp = Rack::Response.new
    req  = Rack::Request.new(env)

    @@items = []

    if req.path.match(/items/)
      search_term = req.params["<Item Name>"]
      if @@items.include?(search_term)

      resp.write "#{search_term.price}\n"
    end
    else
      resp.write "404"
      resp.write "Route not found"

    end
    resp.finish
  end
end
