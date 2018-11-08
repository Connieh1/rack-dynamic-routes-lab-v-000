class Application
  def call(env)
    resp = Rack::Response.new
    req  = Rack::Request.new(env)

    if req.path.match(/items/<ITEM NAME>)
      resp.write "#{item.price}"
    else
      resp.write "400 Item not found"
    end
    resp.finish
  end
end
