class Application
  def call(env)
    resp = Rack::Response.new
    req  = Rack::Request.new(env)

    @@items = []

    if req.path.match(/items/)
      @@items.each do |item|
        item.name
        resp.write "#{item.price}"

      # search_term = req.params["<Item Name>"]
      # if @@items.include?(search_term)

      # resp.write "#{search_term.price}\n"
    # end
    else
      resp.write "404"
      resp.write "Item not found"
      resp.write "Route not found"

    end
    resp.finish
  end
end
