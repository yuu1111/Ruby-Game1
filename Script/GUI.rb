class GUI
  def Draw1(drawimage)
    layer_count = layer_count + 1
    Window.draw(100, 100,drawimage,layer_count)
  end
end
