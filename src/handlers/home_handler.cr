class HomeHandler < Marten::Handler
  def get
    json({ message: "Hello, World!" })
  end
end