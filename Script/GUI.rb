class GUI
  def initialize
    @layer_count1 = 0
    @layer_count2 = 0
  end

  def Draw1(x,y,drawimage)
    @layer_count1 = @layer_count1 + 1
    Window.draw(x, y,drawimage,@layer_count1)
  end

  def DrawScale(x,y,sizex,sizey,drawimage)
    @layer_count2 = @layer_count2 + 1
    Window.draw_scale(x ,y ,drawimage ,sizex ,sizey ,@layer_count2 )
  end
end
