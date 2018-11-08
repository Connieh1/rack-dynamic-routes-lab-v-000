class Application

  @@items = []


  def call(env)
    resp = Rack::Response.new
    req  = Rack::Request.new(env)



    if req.path.match(/items/)
      item_name =req.path.split("/items/").last

      item = @@items.find{|i| i.name == item_name}
      # if @@items.include?("#{item.name}")
        resp.write item.price

      # search_term = req.params["<Item Name>"]
      # if @@items.include?(search_term)

      # resp.write "#{search_term.price}\n"

    else
      resp.write "400"
      resp.write "404"
      resp.write "Item not found"
      resp.write "Route not found"

    end
    resp.finish
  end
end
